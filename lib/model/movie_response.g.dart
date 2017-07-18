// GENERATED CODE - DO NOT MODIFY BY HAND

part of movieresponse;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library movieresponse
// **************************************************************************

Serializer<MovieResponse> _$movieResponseSerializer =
    new _$MovieResponseSerializer();

class _$MovieResponseSerializer implements StructuredSerializer<MovieResponse> {
  @override
  final Iterable<Type> types = const [MovieResponse, _$MovieResponse];
  @override
  final String wireName = 'MovieResponse';

  @override
  Iterable serialize(Serializers serializers, MovieResponse object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'movie',
      serializers.serialize(object.movie, specifiedType: const FullType(Movie)),
      'broadcaster',
      serializers.serialize(object.broadcaster,
          specifiedType: const FullType(Broadcaster)),
    ];

    return result;
  }

  @override
  MovieResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MovieResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'movie':
          result.movie.replace(serializers.deserialize(value,
              specifiedType: const FullType(Movie)) as Movie);
          break;
        case 'broadcaster':
          result.broadcaster.replace(serializers.deserialize(value,
              specifiedType: const FullType(Broadcaster)) as Broadcaster);
          break;
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class MovieResponse
// **************************************************************************

// ignore_for_file: annotate_overrides
class _$MovieResponse extends MovieResponse {
  @override
  final Movie movie;
  @override
  final Broadcaster broadcaster;

  factory _$MovieResponse([void updates(MovieResponseBuilder b)]) =>
      (new MovieResponseBuilder()..update(updates)).build();

  _$MovieResponse._({this.movie, this.broadcaster}) : super._() {
    if (movie == null) throw new ArgumentError.notNull('movie');
    if (broadcaster == null) throw new ArgumentError.notNull('broadcaster');
  }

  @override
  MovieResponse rebuild(void updates(MovieResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieResponseBuilder toBuilder() => new MovieResponseBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MovieResponse) return false;
    return movie == other.movie && broadcaster == other.broadcaster;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, movie.hashCode), broadcaster.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieResponse')
          ..add('movie', movie)
          ..add('broadcaster', broadcaster))
        .toString();
  }
}

class MovieResponseBuilder
    implements Builder<MovieResponse, MovieResponseBuilder> {
  _$MovieResponse _$v;

  MovieBuilder _movie;
  MovieBuilder get movie => _$this._movie ??= new MovieBuilder();
  set movie(MovieBuilder movie) => _$this._movie = movie;

  BroadcasterBuilder _broadcaster;
  BroadcasterBuilder get broadcaster =>
      _$this._broadcaster ??= new BroadcasterBuilder();
  set broadcaster(BroadcasterBuilder broadcaster) =>
      _$this._broadcaster = broadcaster;

  MovieResponseBuilder();

  MovieResponseBuilder get _$this {
    if (_$v != null) {
      _movie = _$v.movie?.toBuilder();
      _broadcaster = _$v.broadcaster?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieResponse other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MovieResponse;
  }

  @override
  void update(void updates(MovieResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieResponse build() {
    final result = _$v ??
        new _$MovieResponse._(
            movie: movie?.build(), broadcaster: broadcaster?.build());
    replace(result);
    return result;
  }
}
