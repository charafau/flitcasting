// GENERATED CODE - DO NOT MODIFY BY HAND

part of movieresponselist;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library movieresponselist
// **************************************************************************

Serializer<MovieResponseList> _$movieResponseListSerializer =
    new _$MovieResponseListSerializer();

class _$MovieResponseListSerializer
    implements StructuredSerializer<MovieResponseList> {
  @override
  final Iterable<Type> types = const [MovieResponseList, _$MovieResponseList];
  @override
  final String wireName = 'MovieResponseList';

  @override
  Iterable serialize(Serializers serializers, MovieResponseList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'movies',
      serializers.serialize(object.movies,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MovieResponse)])),
    ];

    return result;
  }

  @override
  MovieResponseList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MovieResponseListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'movies':
          result.movies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieResponse)]))
              as BuiltList<MovieResponse>);
          break;
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class MovieResponseList
// **************************************************************************

// ignore_for_file: annotate_overrides
class _$MovieResponseList extends MovieResponseList {
  @override
  final BuiltList<MovieResponse> movies;

  factory _$MovieResponseList([void updates(MovieResponseListBuilder b)]) =>
      (new MovieResponseListBuilder()..update(updates)).build();

  _$MovieResponseList._({this.movies}) : super._() {
    if (movies == null) throw new ArgumentError.notNull('movies');
  }

  @override
  MovieResponseList rebuild(void updates(MovieResponseListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieResponseListBuilder toBuilder() =>
      new MovieResponseListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MovieResponseList) return false;
    return movies == other.movies;
  }

  @override
  int get hashCode {
    return $jf($jc(0, movies.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieResponseList')
          ..add('movies', movies))
        .toString();
  }
}

class MovieResponseListBuilder
    implements Builder<MovieResponseList, MovieResponseListBuilder> {
  _$MovieResponseList _$v;

  ListBuilder<MovieResponse> _movies;
  ListBuilder<MovieResponse> get movies =>
      _$this._movies ??= new ListBuilder<MovieResponse>();
  set movies(ListBuilder<MovieResponse> movies) => _$this._movies = movies;

  MovieResponseListBuilder();

  MovieResponseListBuilder get _$this {
    if (_$v != null) {
      _movies = _$v.movies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieResponseList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MovieResponseList;
  }

  @override
  void update(void updates(MovieResponseListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieResponseList build() {
    final result = _$v ?? new _$MovieResponseList._(movies: movies?.build());
    replace(result);
    return result;
  }
}
