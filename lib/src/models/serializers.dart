library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:photo_list_redux/src/models/user.dart';

import 'photo.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Photo,
  User,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
