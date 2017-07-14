library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flitcasting/model/accesstoken.dart';
import 'package:flitcasting/model/movie.dart';
import 'package:flitcasting/model/broadcaster.dart';
import 'package:flitcasting/model/movie_response.dart';
import 'package:flitcasting/model/movie_response_list.dart';

part 'serializers.g.dart';

Serializers serializers = (
    _$serializers.toBuilder()..addPlugin(new StandardJsonPlugin())
).build();