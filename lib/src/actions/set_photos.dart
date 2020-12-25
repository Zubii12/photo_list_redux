library set_photos;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_list_redux/src/models/photo.dart';

part 'set_photos.freezed.dart';

@freezed
abstract class SetPhotos with _$SetPhotos {
  const factory SetPhotos({List<Photo> photos}) = _SetPhotos;
}
