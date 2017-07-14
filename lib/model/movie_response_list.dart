library movieresponselist;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flitcasting/model/broadcaster.dart';
import 'package:flitcasting/model/movie.dart';
import 'package:flitcasting/model/movie_response.dart';

part 'movie_response_list.g.dart';

abstract class MovieResponseList implements Built<MovieResponseList, MovieResponseListBuilder> {

  BuiltList<MovieResponse> get movies;

  MovieResponseList._();

  factory MovieResponseList([updates(MovieResponseListBuilder b)]) = _$MovieResponseList;

  static Serializer<MovieResponseList> get serializer => _$movieResponseListSerializer;


}