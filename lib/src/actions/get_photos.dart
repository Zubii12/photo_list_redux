library get_photos;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_list_redux/src/models/photo.dart';

part 'get_photos.freezed.dart';

@freezed
abstract class GetPhotos with _$GetPhotos {
  const factory GetPhotos.start({int page}) = GetPhotosStart;

  const factory GetPhotos.successful({List<Photo> photos}) = GetPhotosSuccessful;

  const factory GetPhotos.error({dynamic error}) = GetPhotosError;
}
