library appstate;

import 'package:flitcasting/model/movie.dart';
import 'package:flitcasting/state/movie_state.dart';
import 'package:flitcasting/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'dart:convert';

part 'app_state.g.dart';

abstract class AppState implements  Built<AppState, AppStateBuilder> {

  BuiltList<Movie> get movies;

  AppState._();

  factory AppState([updates(AppStateBuilder b)]) = _$AppState;



}