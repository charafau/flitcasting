// GENERATED CODE - DO NOT MODIFY BY HAND

part of accesstoken;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library accesstoken
// **************************************************************************

Serializer<AccessToken> _$accessTokenSerializer = new _$AccessTokenSerializer();

class _$AccessTokenSerializer implements StructuredSerializer<AccessToken> {
  @override
  final Iterable<Type> types = const [AccessToken, _$AccessToken];
  @override
  final String wireName = 'AccessToken';

  @override
  Iterable serialize(Serializers serializers, AccessToken object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'token_type',
      serializers.serialize(object.token_type,
          specifiedType: const FullType(String)),
      'expires_in',
      serializers.serialize(object.expires_in,
          specifiedType: const FullType(int)),
      'access_token',
      serializers.serialize(object.access_token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AccessToken deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AccessTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'token_type':
          result.token_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_in':
          result.expires_in = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class AccessToken
// **************************************************************************

// ignore_for_file: annotate_overrides
class _$AccessToken extends AccessToken {
  @override
  final String token_type;
  @override
  final int expires_in;
  @override
  final String access_token;

  factory _$AccessToken([void updates(AccessTokenBuilder b)]) =>
      (new AccessTokenBuilder()..update(updates)).build();

  _$AccessToken._({this.token_type, this.expires_in, this.access_token})
      : super._() {
    if (token_type == null) throw new ArgumentError.notNull('token_type');
    if (expires_in == null) throw new ArgumentError.notNull('expires_in');
    if (access_token == null) throw new ArgumentError.notNull('access_token');
  }

  @override
  AccessToken rebuild(void updates(AccessTokenBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessTokenBuilder toBuilder() => new AccessTokenBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AccessToken) return false;
    return token_type == other.token_type &&
        expires_in == other.expires_in &&
        access_token == other.access_token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, token_type.hashCode), expires_in.hashCode),
        access_token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccessToken')
          ..add('token_type', token_type)
          ..add('expires_in', expires_in)
          ..add('access_token', access_token))
        .toString();
  }
}

class AccessTokenBuilder implements Builder<AccessToken, AccessTokenBuilder> {
  _$AccessToken _$v;

  String _token_type;
  String get token_type => _$this._token_type;
  set token_type(String token_type) => _$this._token_type = token_type;

  int _expires_in;
  int get expires_in => _$this._expires_in;
  set expires_in(int expires_in) => _$this._expires_in = expires_in;

  String _access_token;
  String get access_token => _$this._access_token;
  set access_token(String access_token) => _$this._access_token = access_token;

  AccessTokenBuilder();

  AccessTokenBuilder get _$this {
    if (_$v != null) {
      _token_type = _$v.token_type;
      _expires_in = _$v.expires_in;
      _access_token = _$v.access_token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessToken other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AccessToken;
  }

  @override
  void update(void updates(AccessTokenBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AccessToken build() {
    final result = _$v ??
        new _$AccessToken._(
            token_type: token_type,
            expires_in: expires_in,
            access_token: access_token);
    replace(result);
    return result;
  }
}
