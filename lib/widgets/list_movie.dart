import 'package:built_collection/built_collection.dart';
import 'package:flitcasting/model/movie.dart';
import 'package:flutter/material.dart';
import 'package:flitcasting/redux/app_store.dart';
import 'package:meta/meta.dart';
import 'package:flitcasting/services/movie_service.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';

class ListMovie extends StatelessWidget {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  final BuiltList<Movie> movies;
  final RefreshCallback onRefresh;

  ListMovie({@required this.movies, @required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return new RefreshIndicator(
        key: _refreshIndicatorKey,
        child: new ListView.builder(
            itemCount: movies.length, itemBuilder: _buildListTile),
        onRefresh: onRefresh);
  }

  Widget _buildListTile(BuildContext context, int index) {
    final movie = movies[index];

    return new Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 2.0),
      child: _buildCard(movie),
    );
  }

  _buildCard(Movie movie) {
    return new Card(
      child: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: new ClipRRect(
                borderRadius: new BorderRadius.circular(50.0),
                child: new Image.network(
                  movie.small_thumbnail,
                  width: 40.0,
                  height: 40.0,
                  alignment: FractionalOffset.centerLeft,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new Expanded(
              child: new Text(movie.title, textAlign: TextAlign.left),
            ),
            new RaisedButton(
              onPressed: () => _launchPlatformCount(),
              child: const Text('print'),
            ),
          ],
        ),
      ),
    );
  }

  static const MethodChannel _methodChannel =
  const MethodChannel("com.yourcompany.flitcasting/video_activity");


  Future<Null> _launchPlatformCount() async {
    final int platformCounter =
    await _methodChannel.invokeMethod("switchview", "hello");
  }
}

