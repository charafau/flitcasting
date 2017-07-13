library movie;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {

  String get name;

  Movie._();

  factory Movie([updates(MovieBuilder b)]) = _$Movie;



}