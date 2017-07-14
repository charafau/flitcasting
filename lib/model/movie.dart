library movie;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {

  String get id;
  String get user_id;
  String get title;
  @nullable
  String get subtitle;
  @nullable
  String get category;
  String get link;
  bool get is_live;
  bool get is_recorded;
  int get comment_count;
  String get large_thumbnail;
  String get small_thumbnail;
  String get country;
  bool get is_collabo;
  bool get is_protected;
  int get max_view_count;
  int get current_view_count;
  int get total_view_count;
  String get hls_url;

  Movie._();

  factory Movie([updates(MovieBuilder b)]) = _$Movie;

  static Serializer<Movie> get serializer => _$movieSerializer;


}