library flitcasting.routes.home;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flitcasting/common/utils.dart';
import 'package:flitcasting/redux/app_store.dart';

class HomeView extends StatefulWidget {

  static final String path = "/";

  @override
  _HomeViewState createState() => new _HomeViewState();

  static void go(BuildContext context, {bool replace: true}) {
//    fetchMovies();
    materialNavigateTo(context, new HomeView(),
        path: HomeView.path, replace: replace);
  }


}

class _HomeViewState extends State<HomeView> {

  StreamSubscription _subscription;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Movies"),
      ),
      body: new Center(
        child: new ListView.builder(
          padding: new EdgeInsets.all(8.0),
          itemCount: appStore.state.movies.length,
          itemExtent: 20.0,
          itemBuilder: (BuildContext context, int index){
            return new Text(appStore.state.movies[index].name);
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _subscription = appStore.onChange.listen((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }
}
