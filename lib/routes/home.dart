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
      body: new Center(
        child: new Text('jhello'),
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
