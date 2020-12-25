library photo;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:photo_list_redux/src/models/user.dart';
import 'serializers.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  factory Photo([void Function(PhotoBuilder builder) updates]) = _$Photo;

  factory Photo.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  Photo._();

  String get id;

  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  BuiltMap<String, String> get urls;

  int get likes;

  User get user;

  static Serializer<Photo> get serializer => _$photoSerializer;
}
