// GENERATED CODE - DO NOT MODIFY BY HAND

part of user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
      'links',
      serializers.serialize(object.links,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
      'profile_image',
      serializers.serialize(object.profileImage,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
      'total_photos',
      serializers.serialize(object.totalPhotos,
          specifiedType: const FullType(int)),
    ];
    if (object.twitterUserName != null) {
      result
        ..add('twitter_username')
        ..add(serializers.serialize(object.twitterUserName,
            specifiedType: const FullType(String)));
    }
    if (object.portfolioUrl != null) {
      result
        ..add('portfolio_url')
        ..add(serializers.serialize(object.portfolioUrl,
            specifiedType: const FullType(String)));
    }
    if (object.bio != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(object.bio,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.instagramUsername != null) {
      result
        ..add('instagram_username')
        ..add(serializers.serialize(object.instagramUsername,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

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
        case 'username':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'twitter_username':
          result.twitterUserName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'portfolio_url':
          result.portfolioUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)])));
          break;
        case 'profile_image':
          result.profileImage.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)])));
          break;
        case 'instagram_username':
          result.instagramUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_photos':
          result.totalPhotos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String id;
  @override
  final String userName;
  @override
  final String twitterUserName;
  @override
  final String portfolioUrl;
  @override
  final String bio;
  @override
  final String location;
  @override
  final BuiltMap<String, String> links;
  @override
  final BuiltMap<String, String> profileImage;
  @override
  final String instagramUsername;
  @override
  final int totalPhotos;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      this.userName,
      this.twitterUserName,
      this.portfolioUrl,
      this.bio,
      this.location,
      this.links,
      this.profileImage,
      this.instagramUsername,
      this.totalPhotos})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('User', 'id');
    }
    if (userName == null) {
      throw new BuiltValueNullFieldError('User', 'userName');
    }
    if (links == null) {
      throw new BuiltValueNullFieldError('User', 'links');
    }
    if (profileImage == null) {
      throw new BuiltValueNullFieldError('User', 'profileImage');
    }
    if (totalPhotos == null) {
      throw new BuiltValueNullFieldError('User', 'totalPhotos');
    }
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        userName == other.userName &&
        twitterUserName == other.twitterUserName &&
        portfolioUrl == other.portfolioUrl &&
        bio == other.bio &&
        location == other.location &&
        links == other.links &&
        profileImage == other.profileImage &&
        instagramUsername == other.instagramUsername &&
        totalPhotos == other.totalPhotos;
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
                                $jc($jc($jc(0, id.hashCode), userName.hashCode),
                                    twitterUserName.hashCode),
                                portfolioUrl.hashCode),
                            bio.hashCode),
                        location.hashCode),
                    links.hashCode),
                profileImage.hashCode),
            instagramUsername.hashCode),
        totalPhotos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('userName', userName)
          ..add('twitterUserName', twitterUserName)
          ..add('portfolioUrl', portfolioUrl)
          ..add('bio', bio)
          ..add('location', location)
          ..add('links', links)
          ..add('profileImage', profileImage)
          ..add('instagramUsername', instagramUsername)
          ..add('totalPhotos', totalPhotos))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _twitterUserName;
  String get twitterUserName => _$this._twitterUserName;
  set twitterUserName(String twitterUserName) =>
      _$this._twitterUserName = twitterUserName;

  String _portfolioUrl;
  String get portfolioUrl => _$this._portfolioUrl;
  set portfolioUrl(String portfolioUrl) => _$this._portfolioUrl = portfolioUrl;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  MapBuilder<String, String> _links;
  MapBuilder<String, String> get links =>
      _$this._links ??= new MapBuilder<String, String>();
  set links(MapBuilder<String, String> links) => _$this._links = links;

  MapBuilder<String, String> _profileImage;
  MapBuilder<String, String> get profileImage =>
      _$this._profileImage ??= new MapBuilder<String, String>();
  set profileImage(MapBuilder<String, String> profileImage) =>
      _$this._profileImage = profileImage;

  String _instagramUsername;
  String get instagramUsername => _$this._instagramUsername;
  set instagramUsername(String instagramUsername) =>
      _$this._instagramUsername = instagramUsername;

  int _totalPhotos;
  int get totalPhotos => _$this._totalPhotos;
  set totalPhotos(int totalPhotos) => _$this._totalPhotos = totalPhotos;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _userName = _$v.userName;
      _twitterUserName = _$v.twitterUserName;
      _portfolioUrl = _$v.portfolioUrl;
      _bio = _$v.bio;
      _location = _$v.location;
      _links = _$v.links?.toBuilder();
      _profileImage = _$v.profileImage?.toBuilder();
      _instagramUsername = _$v.instagramUsername;
      _totalPhotos = _$v.totalPhotos;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              userName: userName,
              twitterUserName: twitterUserName,
              portfolioUrl: portfolioUrl,
              bio: bio,
              location: location,
              links: links.build(),
              profileImage: profileImage.build(),
              instagramUsername: instagramUsername,
              totalPhotos: totalPhotos);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
        _$failedField = 'profileImage';
        profileImage.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
