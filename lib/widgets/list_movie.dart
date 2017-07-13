import 'package:flitcasting/model/movie.dart';
import 'package:flutter/material.dart';
import 'package:flitcasting/redux/app_store.dart';
import 'package:meta/meta.dart';

class ListMovie extends StatelessWidget {

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  new GlobalKey<RefreshIndicatorState>();

  final List<Movie> movies;
  final RefreshCallback onRefresh;

  ListMovie({@required this.movies, @required this.onRefresh});


  @override
  Widget build(BuildContext context) {
    return new RefreshIndicator(
        child: new ListView.builder(
            itemCount: movies.length,
            itemBuilder: _buildListTile),
        onRefresh: onRefresh);
  }

  Widget _buildListTile(BuildContext context, int index) {
    return new Text('hello');
  }
}
