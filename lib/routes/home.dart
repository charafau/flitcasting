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
  final MovieService movieService;

  HomeView({this.onRefresh, this.accessToken, this.movieService});

  static void go(BuildContext context, AccessToken accessToken,
      {bool replace: true}) {
    final movieService = new MovieService(accessToken);

    materialNavigateTo(context,
        new HomeView(movieService: movieService, accessToken: accessToken),
        path: HomeView.path, replace: replace);
  }

  @override
  _HomeViewState createState() => new _HomeViewState();

}

class _HomeViewState extends State<HomeView> {

  StreamSubscription _subscription;

  @override
  Widget build(BuildContext context) {
    var body;

    if (appStore.state.movies != null) {
      body = new ListMovie(
        movies: appStore.state.movies,
        onRefresh: () {
          if (widget.onRefresh != null) {
            return widget.onRefresh();
          }
          return widget.movieService.fetchMovies();
        },
      );
    } else {
      body = new LoadingView();
    }


    return new Scaffold(
      body: body,
      appBar: new AppBar(
        title: new Text("Movies"),
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


class LoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      new Center(child: new CircularProgressIndicator());
}
