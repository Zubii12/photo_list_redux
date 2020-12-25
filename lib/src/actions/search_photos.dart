library search_photos;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_list_redux/src/models/photo.dart';

part 'search_photos.freezed.dart';

@freezed
abstract class SearchPhotos with _$SearchPhotos {
  const factory SearchPhotos.start({int page, String query}) = SearchPhotosStart;

  const factory SearchPhotos.successful({List<Photo> photos}) = SearchPhotosSuccessful;

  const factory SearchPhotos.error({dynamic error}) = SearchPhotosError;
}
