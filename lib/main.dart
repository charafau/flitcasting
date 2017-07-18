import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:io';
import 'dart:core';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flitcasting/services/movie_service.dart';
import 'package:flitcasting/model/accesstoken.dart';
import 'package:built_value/serializer.dart';
import 'package:flitcasting/serializers.dart';
import 'package:flitcasting/constants.dart';
import 'package:redux/redux.dart';
import 'package:flitcasting/redux/app_store.dart';
import 'package:flitcasting/redux/app_reducer.dart';
import 'package:flitcasting/routes/home.dart';

const PREF_TOKEN = "pref_access_token";
const APP_TITLE = 'Flitcasting';

AccessToken accessToken;


Future main() async {
  runApp(new SplashPage());

  await _init();

  final token = await _loadToken();

  if (token.token_type.isNotEmpty) {
    accessToken = token;
    final ms = new MovieService(accessToken);
    runApp(new MaterialApp(
      theme: themeData,
      title: APP_TITLE,
      routes: {
        HomeView.path: (BuildContext context) {
          return new HomeView(accessToken: token,
            movieService: ms);
        },
      },
    ));

    ms.fetchMovies();

  } else {
    runApp(new MaterialApp(
        home: new Scaffold(
            body: new HomePage()),
        theme: themeData)
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {

  var _subscription;

  _AppState() {
    _subscription = appStore.onChange.listen((_) async {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container();
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }


}


Future _init() async {
  appStore = new AppStore(new AppReducer());
}

final themeData = new ThemeData(
  primarySwatch: Colors.blue,
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: APP_TITLE,
      theme: themeData,
      home: new HomePage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            body: new Column(children: [
              new Center(
                  child: new FlutterLogo(
                      colors: Colors.pink,
                      size: 80.0)),
              new Center(
                  child: new Text(
                      APP_TITLE, style: new TextStyle(fontSize: 32.0))),
              new Center(
                  child:
                  new Text("for Gitter", style: new TextStyle(fontSize: 16.0)))
            ], mainAxisAlignment: MainAxisAlignment.center)),
        theme: themeData);
  }
}


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String url = 'http://apiv2.twitcasting.tv/oauth2/authorize?client_id=${CLIENT_ID}&response_type=code';
//    String url = 'https://google.com';
    final encodedUrl = Uri.encodeFull(url);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flitcasting"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                var flutterWebviewPlugin = new FlutterWebviewPlugin();
                flutterWebviewPlugin.launch(encodedUrl);

                _getToken().then((value) => flutterWebviewPlugin.close());
              },
              child: const Text('click'),
            ),
            new RaisedButton(
              onPressed: () {
                print('loading token');
                _loadToken();
              },
              child: const Text('Load token '),
            ),
          ],
        ),
      ),
    );
  }


}

Future _postToken(String code) async {
  final httpClient = createHttpClient();

  final response = await httpClient.post(
      'https://apiv2.twitcasting.tv/oauth2/access_token',
      body: {
        'code': code,
        'grant_type': 'authorization_code',
        'client_id': CLIENT_ID,
        'client_secret': CLIENT_SECRET,
        'redirect_uri': 'https://localhost:8080'
      });
  print('response ${response}');
  final accessToken = serializers.deserializeWith(
      AccessToken.serializer, JSON.decode(response.body));
  print(accessToken);
  final prefs = await SharedPreferences.getInstance();

  prefs.setString(PREF_TOKEN, response.body);
}

Future<Stream<String>> _startServer() async {
  final StreamController<String> onCode = new StreamController();

  HttpServer server = await HttpServer.bind(
      InternetAddress.LOOPBACK_IP_V4, 8080);
  server.listen((HttpRequest request) async {
    final String code = request.uri.queryParameters["code"];
    request.response
      ..statusCode = 200
      ..headers.set("Content-type", ContentType.HTML.mimeType)
      ..write("<html><h1>You can now close this window</h1></html>");
    await request.response.close();
    await server.close(force: true);
    onCode.add(code);
    await onCode.close();
  });

  return onCode.stream;
}

Future _getToken() async {
  Stream<String> onCode = await _startServer();
  final String code = await onCode.first;
  print('token should be: ${code}');
  _postToken(code);
//  _saveToken(code);
}

Future _saveToken(String code) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('pref_token', code);
}

Future <AccessToken> _loadToken() async {
  final prefs = await SharedPreferences.getInstance();
  final tokenJson = prefs.getString(PREF_TOKEN);
  if (tokenJson != null) {
    final token = serializers.deserializeWith(
        AccessToken.serializer, JSON.decode(tokenJson));

//    final AccessToken token = serializers.serialize(tokenJson, specifiedType: const FullType(AccessToken));

    print(token);
    return new Future(() => token);
  } else {
    return new Future(
            () =>
        new AccessToken((b) =>
        b
          ..access_token = ''
          ..token_type = ''
          ..expires_in = 0)
    );
  }
}