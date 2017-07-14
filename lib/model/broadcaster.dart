library broadcaster;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'broadcaster.g.dart';

abstract class Broadcaster implements Built<Broadcaster, BroadcasterBuilder> {

  String get id;
  String get screen_id;
  String get name;
  String get image;
  String get profile;
  int get level;
  String get last_movie_id;
  bool get is_live;
  num get created;

  Broadcaster._();

  factory Broadcaster([updates(BroadcasterBuilder b)]) = _$Broadcaster;

  static Serializer<Broadcaster> get serializer => _$broadcasterSerializer;


}