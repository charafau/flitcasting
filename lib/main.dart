import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:io';
import 'dart:core';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flitcasting/model/accesstoken.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';
import 'constants.dart';

final PREF_TOKEN = "pref_access_token";

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flitcasting',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  var _onCodeStream;

  @override
  Widget build(BuildContext context) {
    final StreamController<String> _onCode = new StreamController();
    final FlutterWebviewPlugin flutterWebviewPlugin = new FlutterWebviewPlugin();
    String code;
    String url = 'https://apiv2.twitcasting.tv/oauth2/authorize?client_id=${CLIENT_ID}&response_type=code';
    final encodedUrl = Uri.encodeFull(url);
    Stream<String> onCode = _onCode.stream.asBroadcastStream();

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
//
//                final accessToken = new AccessToken((b) => b
//                  ..accessToken = 'access token'
//                  ..tokenType = 'token type'
//                  ..expiresIn = 123123);

//                var serialized = serializers.serialize(accessToken);

//                print('this is serialized ${JSON.encode(serialized)}');

//                var json = "{ \"token_type\": \"test\"}";
//
//                var ttt = serializers.deserializeWith(AccessToken.serializer, JSON.decode(json));
//
//                var ttt2  = serializers.serializeWith(AccessToken.serializer, ttt);
//                print('yo $ttt');
//                print('yo2 $ttt2');

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
//    _saveToken(code);
  }

  Future _saveToken(String code) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('pref_token', code);
  }

  Future _loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    final tokenJson = prefs.getString(PREF_TOKEN);
    if (tokenJson != null) {
//     serializers.deserialize(tokenJson, )
//      final token = new AccessToken.fromJson(tokenJson);
//      print('token from prefs is ${token.toString()}');
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
          'redirect_uri': 'http://localhost:8080'
        });
    print('response ${response}');
    final accessToken = serializers.deserializeWith(
        AccessToken.serializer, JSON.decode(response.body));
    print(accessToken);
    final prefs = await SharedPreferences.getInstance();

    prefs.setString(PREF_TOKEN, accessToken.toString());
  }
}

