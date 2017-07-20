// GENERATED CODE - DO NOT MODIFY BY HAND

part of broadcaster;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library broadcaster
// **************************************************************************

Serializer<Broadcaster> _$broadcasterSerializer = new _$BroadcasterSerializer();

class _$BroadcasterSerializer implements StructuredSerializer<Broadcaster> {
  @override
  final Iterable<Type> types = const [Broadcaster, _$Broadcaster];
  @override
  final String wireName = 'Broadcaster';

  @override
  Iterable serialize(Serializers serializers, Broadcaster object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'screen_id',
      serializers.serialize(object.screen_id,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'profile',
      serializers.serialize(object.profile,
          specifiedType: const FullType(String)),
      'level',
      serializers.serialize(object.level, specifiedType: const FullType(int)),
      'is_live',
      serializers.serialize(object.is_live,
          specifiedType: const FullType(bool)),
      'created',
      serializers.serialize(object.created, specifiedType: const FullType(num)),
    ];
    if (object.last_movie_id != null) {
      result
        ..add('last_movie_id')
        ..add(serializers.serialize(object.last_movie_id,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Broadcaster deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new BroadcasterBuilder();

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
        case 'screen_id':
          result.screen_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile':
          result.profile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_movie_id':
          result.last_movie_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_live':
          result.is_live = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Broadcaster
// **************************************************************************

// ignore_for_file: annotate_overrides
class _$Broadcaster extends Broadcaster {
  @override
  final String id;
  @override
  final String screen_id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String profile;
  @override
  final int level;
  @override
  final String last_movie_id;
  @override
  final bool is_live;
  @override
  final num created;

  factory _$Broadcaster([void updates(BroadcasterBuilder b)]) =>
      (new BroadcasterBuilder()..update(updates)).build();

  _$Broadcaster._(
      {this.id,
      this.screen_id,
      this.name,
      this.image,
      this.profile,
      this.level,
      this.last_movie_id,
      this.is_live,
      this.created})
      : super._() {
    if (id == null) throw new ArgumentError.notNull('id');
    if (screen_id == null) throw new ArgumentError.notNull('screen_id');
    if (name == null) throw new ArgumentError.notNull('name');
    if (image == null) throw new ArgumentError.notNull('image');
    if (profile == null) throw new ArgumentError.notNull('profile');
    if (level == null) throw new ArgumentError.notNull('level');
    if (is_live == null) throw new ArgumentError.notNull('is_live');
    if (created == null) throw new ArgumentError.notNull('created');
  }

  @override
  Broadcaster rebuild(void updates(BroadcasterBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BroadcasterBuilder toBuilder() => new BroadcasterBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Broadcaster) return false;
    return id == other.id &&
        screen_id == other.screen_id &&
        name == other.name &&
        image == other.image &&
        profile == other.profile &&
        level == other.level &&
        last_movie_id == other.last_movie_id &&
        is_live == other.is_live &&
        created == other.created;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), screen_id.hashCode),
                                name.hashCode),
                            image.hashCode),
                        profile.hashCode),
                    level.hashCode),
                last_movie_id.hashCode),
            is_live.hashCode),
        created.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Broadcaster')
          ..add('id', id)
          ..add('screen_id', screen_id)
          ..add('name', name)
          ..add('image', image)
          ..add('profile', profile)
          ..add('level', level)
          ..add('last_movie_id', last_movie_id)
          ..add('is_live', is_live)
          ..add('created', created))
        .toString();
  }
}

class BroadcasterBuilder implements Builder<Broadcaster, BroadcasterBuilder> {
  _$Broadcaster _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _screen_id;
  String get screen_id => _$this._screen_id;
  set screen_id(String screen_id) => _$this._screen_id = screen_id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _profile;
  String get profile => _$this._profile;
  set profile(String profile) => _$this._profile = profile;

  int _level;
  int get level => _$this._level;
  set level(int level) => _$this._level = level;

  String _last_movie_id;
  String get last_movie_id => _$this._last_movie_id;
  set last_movie_id(String last_movie_id) =>
      _$this._last_movie_id = last_movie_id;

  bool _is_live;
  bool get is_live => _$this._is_live;
  set is_live(bool is_live) => _$this._is_live = is_live;

  num _created;
  num get created => _$this._created;
  set created(num created) => _$this._created = created;

  BroadcasterBuilder();

  BroadcasterBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _screen_id = _$v.screen_id;
      _name = _$v.name;
      _image = _$v.image;
      _profile = _$v.profile;
      _level = _$v.level;
      _last_movie_id = _$v.last_movie_id;
      _is_live = _$v.is_live;
      _created = _$v.created;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Broadcaster other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Broadcaster;
  }

  @override
  void update(void updates(BroadcasterBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Broadcaster build() {
    final result = _$v ??
        new _$Broadcaster._(
            id: id,
            screen_id: screen_id,
            name: name,
            image: image,
            profile: profile,
            level: level,
            last_movie_id: last_movie_id,
            is_live: is_live,
            created: created);
    replace(result);
    return result;
  }
}
