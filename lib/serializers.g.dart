// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library serializers
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AccessToken.serializer)
      ..add(Broadcaster.serializer)
      ..add(Movie.serializer)
      ..add(MovieResponse.serializer)
      ..add(MovieResponseList.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MovieResponse)]),
          () => new ListBuilder<MovieResponse>()))
    .build();
