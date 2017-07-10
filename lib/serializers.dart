library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'model/accesstoken.dart';

part 'serializers.g.dart';

Serializers serializers = (
    _$serializers.toBuilder()..addPlugin(new StandardJsonPlugin())
).build();