library flitcasting.routes.home;

import 'dart:async';

import 'package:flitcasting/model/accesstoken.dart';
import 'package:flitcasting/services/movie_service.dart';
import 'package:flitcasting/widgets/list_movie.dart';
import 'package:flutter/material.dart';
import 'package:flitcasting/common/utils.dart';
import 'package:flitcasting/redux/app_store.dart';

class HomeView extends StatefulWidget {

  static final String path = "/";
  final RefreshCallback onRefresh;
  final AccessToken accessToken;

  HomeView({this.onRefresh, this.accessToken});


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
    final movieSerivce = new MovieService(widget.accessToken);
    movieSerivce.fetchMovies();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Movies"),
      ),
      body: new ListMovie(
        movies: appStore.state.movies,
        onRefresh: () {
          if (widget.onRefresh != null) {
            return widget.onRefresh();
          }
        },
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
