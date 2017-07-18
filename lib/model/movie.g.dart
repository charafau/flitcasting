// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library movie
// **************************************************************************

Serializer<Movie> _$movieSerializer = new _$MovieSerializer();

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable serialize(Serializers serializers, Movie object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'user_id',
      serializers.serialize(object.user_id,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'link',
      serializers.serialize(object.link, specifiedType: const FullType(String)),
      'is_live',
      serializers.serialize(object.is_live,
          specifiedType: const FullType(bool)),
      'is_recorded',
      serializers.serialize(object.is_recorded,
          specifiedType: const FullType(bool)),
      'comment_count',
      serializers.serialize(object.comment_count,
          specifiedType: const FullType(int)),
      'large_thumbnail',
      serializers.serialize(object.large_thumbnail,
          specifiedType: const FullType(String)),
      'small_thumbnail',
      serializers.serialize(object.small_thumbnail,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'is_collabo',
      serializers.serialize(object.is_collabo,
          specifiedType: const FullType(bool)),
      'is_protected',
      serializers.serialize(object.is_protected,
          specifiedType: const FullType(bool)),
      'max_view_count',
      serializers.serialize(object.max_view_count,
          specifiedType: const FullType(int)),
      'current_view_count',
      serializers.serialize(object.current_view_count,
          specifiedType: const FullType(int)),
      'total_view_count',
      serializers.serialize(object.total_view_count,
          specifiedType: const FullType(int)),
      'hls_url',
      serializers.serialize(object.hls_url,
          specifiedType: const FullType(String)),
    ];
    if (object.subtitle != null) {
      result
        ..add('subtitle')
        ..add(serializers.serialize(object.subtitle,
            specifiedType: const FullType(String)));
    }
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.user_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_live':
          result.is_live = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_recorded':
          result.is_recorded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'comment_count':
          result.comment_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'large_thumbnail':
          result.large_thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'small_thumbnail':
          result.small_thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_collabo':
          result.is_collabo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_protected':
          result.is_protected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'max_view_count':
          result.max_view_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'current_view_count':
          result.current_view_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_view_count':
          result.total_view_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'hls_url':
          result.hls_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Movie
// **************************************************************************

// ignore_for_file: annotate_overrides
class _$Movie extends Movie {
  @override
  final String id;
  @override
  final String user_id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String category;
  @override
  final String link;
  @override
  final bool is_live;
  @override
  final bool is_recorded;
  @override
  final int comment_count;
  @override
  final String large_thumbnail;
  @override
  final String small_thumbnail;
  @override
  final String country;
  @override
  final bool is_collabo;
  @override
  final bool is_protected;
  @override
  final int max_view_count;
  @override
  final int current_view_count;
  @override
  final int total_view_count;
  @override
  final String hls_url;

  factory _$Movie([void updates(MovieBuilder b)]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.id,
      this.user_id,
      this.title,
      this.subtitle,
      this.category,
      this.link,
      this.is_live,
      this.is_recorded,
      this.comment_count,
      this.large_thumbnail,
      this.small_thumbnail,
      this.country,
      this.is_collabo,
      this.is_protected,
      this.max_view_count,
      this.current_view_count,
      this.total_view_count,
      this.hls_url})
      : super._() {
    if (id == null) throw new ArgumentError.notNull('id');
    if (user_id == null) throw new ArgumentError.notNull('user_id');
    if (title == null) throw new ArgumentError.notNull('title');
    if (link == null) throw new ArgumentError.notNull('link');
    if (is_live == null) throw new ArgumentError.notNull('is_live');
    if (is_recorded == null) throw new ArgumentError.notNull('is_recorded');
    if (comment_count == null) throw new ArgumentError.notNull('comment_count');
    if (large_thumbnail == null)
      throw new ArgumentError.notNull('large_thumbnail');
    if (small_thumbnail == null)
      throw new ArgumentError.notNull('small_thumbnail');
    if (country == null) throw new ArgumentError.notNull('country');
    if (is_collabo == null) throw new ArgumentError.notNull('is_collabo');
    if (is_protected == null) throw new ArgumentError.notNull('is_protected');
    if (max_view_count == null)
      throw new ArgumentError.notNull('max_view_count');
    if (current_view_count == null)
      throw new ArgumentError.notNull('current_view_count');
    if (total_view_count == null)
      throw new ArgumentError.notNull('total_view_count');
    if (hls_url == null) throw new ArgumentError.notNull('hls_url');
  }

  @override
  Movie rebuild(void updates(MovieBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Movie) return false;
    return id == other.id &&
        user_id == other.user_id &&
        title == other.title &&
        subtitle == other.subtitle &&
        category == other.category &&
        link == other.link &&
        is_live == other.is_live &&
        is_recorded == other.is_recorded &&
        comment_count == other.comment_count &&
        large_thumbnail == other.large_thumbnail &&
        small_thumbnail == other.small_thumbnail &&
        country == other.country &&
        is_collabo == other.is_collabo &&
        is_protected == other.is_protected &&
        max_view_count == other.max_view_count &&
        current_view_count == other.current_view_count &&
        total_view_count == other.total_view_count &&
        hls_url == other.hls_url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            id
                                                                                .hashCode),
                                                                        user_id
                                                                            .hashCode),
                                                                    title
                                                                        .hashCode),
                                                                subtitle
                                                                    .hashCode),
                                                            category.hashCode),
                                                        link.hashCode),
                                                    is_live.hashCode),
                                                is_recorded.hashCode),
                                            comment_count.hashCode),
                                        large_thumbnail.hashCode),
                                    small_thumbnail.hashCode),
                                country.hashCode),
                            is_collabo.hashCode),
                        is_protected.hashCode),
                    max_view_count.hashCode),
                current_view_count.hashCode),
            total_view_count.hashCode),
        hls_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('id', id)
          ..add('user_id', user_id)
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('category', category)
          ..add('link', link)
          ..add('is_live', is_live)
          ..add('is_recorded', is_recorded)
          ..add('comment_count', comment_count)
          ..add('large_thumbnail', large_thumbnail)
          ..add('small_thumbnail', small_thumbnail)
          ..add('country', country)
          ..add('is_collabo', is_collabo)
          ..add('is_protected', is_protected)
          ..add('max_view_count', max_view_count)
          ..add('current_view_count', current_view_count)
          ..add('total_view_count', total_view_count)
          ..add('hls_url', hls_url))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _user_id;
  String get user_id => _$this._user_id;
  set user_id(String user_id) => _$this._user_id = user_id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  bool _is_live;
  bool get is_live => _$this._is_live;
  set is_live(bool is_live) => _$this._is_live = is_live;

  bool _is_recorded;
  bool get is_recorded => _$this._is_recorded;
  set is_recorded(bool is_recorded) => _$this._is_recorded = is_recorded;

  int _comment_count;
  int get comment_count => _$this._comment_count;
  set comment_count(int comment_count) => _$this._comment_count = comment_count;

  String _large_thumbnail;
  String get large_thumbnail => _$this._large_thumbnail;
  set large_thumbnail(String large_thumbnail) =>
      _$this._large_thumbnail = large_thumbnail;

  String _small_thumbnail;
  String get small_thumbnail => _$this._small_thumbnail;
  set small_thumbnail(String small_thumbnail) =>
      _$this._small_thumbnail = small_thumbnail;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  bool _is_collabo;
  bool get is_collabo => _$this._is_collabo;
  set is_collabo(bool is_collabo) => _$this._is_collabo = is_collabo;

  bool _is_protected;
  bool get is_protected => _$this._is_protected;
  set is_protected(bool is_protected) => _$this._is_protected = is_protected;

  int _max_view_count;
  int get max_view_count => _$this._max_view_count;
  set max_view_count(int max_view_count) =>
      _$this._max_view_count = max_view_count;

  int _current_view_count;
  int get current_view_count => _$this._current_view_count;
  set current_view_count(int current_view_count) =>
      _$this._current_view_count = current_view_count;

  int _total_view_count;
  int get total_view_count => _$this._total_view_count;
  set total_view_count(int total_view_count) =>
      _$this._total_view_count = total_view_count;

  String _hls_url;
  String get hls_url => _$this._hls_url;
  set hls_url(String hls_url) => _$this._hls_url = hls_url;

  MovieBuilder();

  MovieBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _user_id = _$v.user_id;
      _title = _$v.title;
      _subtitle = _$v.subtitle;
      _category = _$v.category;
      _link = _$v.link;
      _is_live = _$v.is_live;
      _is_recorded = _$v.is_recorded;
      _comment_count = _$v.comment_count;
      _large_thumbnail = _$v.large_thumbnail;
      _small_thumbnail = _$v.small_thumbnail;
      _country = _$v.country;
      _is_collabo = _$v.is_collabo;
      _is_protected = _$v.is_protected;
      _max_view_count = _$v.max_view_count;
      _current_view_count = _$v.current_view_count;
      _total_view_count = _$v.total_view_count;
      _hls_url = _$v.hls_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Movie;
  }

  @override
  void update(void updates(MovieBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    final result = _$v ??
        new _$Movie._(
            id: id,
            user_id: user_id,
            title: title,
            subtitle: subtitle,
            category: category,
            link: link,
            is_live: is_live,
            is_recorded: is_recorded,
            comment_count: comment_count,
            large_thumbnail: large_thumbnail,
            small_thumbnail: small_thumbnail,
            country: country,
            is_collabo: is_collabo,
            is_protected: is_protected,
            max_view_count: max_view_count,
            current_view_count: current_view_count,
            total_view_count: total_view_count,
            hls_url: hls_url);
    replace(result);
    return result;
  }
}
