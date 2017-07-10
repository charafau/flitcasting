library accesstoken;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'accesstoken.g.dart';

abstract class AccessToken implements Built<AccessToken, AccessTokenBuilder> {
  String get token_type;
  int get expires_in;
  String get access_token;

  AccessToken._();

  factory AccessToken([updates(AccessTokenBuilder b)]) = _$AccessToken;

  static Serializer<AccessToken> get serializer => _$accessTokenSerializer;


}
