library movieresponse;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flitcasting/model/broadcaster.dart';
import 'package:flitcasting/model/movie.dart';

part 'movie_response.g.dart';

abstract class MovieResponse implements Built<MovieResponse, MovieResponseBuilder> {

  Movie get movie;
  Broadcaster get broadcaster;

  MovieResponse._();

  factory MovieResponse([updates(MovieResponseBuilder b)]) = _$MovieResponse;

  static Serializer<MovieResponse> get serializer => _$movieResponseSerializer;


}