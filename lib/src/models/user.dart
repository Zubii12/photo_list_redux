library user;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  factory User([void Function(UserBuilder builder) updates]) = _$User;

  factory User.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  User._();

  String get id;

  @BuiltValueField(wireName: 'username')
  String get userName;

  @nullable
  @BuiltValueField(wireName: 'twitter_username')
  String get twitterUserName;

  @nullable
  @BuiltValueField(wireName: 'portfolio_url')
  String get portfolioUrl;

  @nullable
  String get bio;

  @nullable
  String get location;

  BuiltMap<String, String> get links;

  @BuiltValueField(wireName: 'profile_image')
  BuiltMap<String, String> get profileImage;

  @nullable
  @BuiltValueField(wireName: 'instagram_username')
  String get instagramUsername;

  @BuiltValueField(wireName: 'total_photos')
  int get totalPhotos;

  static Serializer<User> get serializer => _$userSerializer;
}
