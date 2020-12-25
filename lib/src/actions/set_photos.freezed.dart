// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_photos;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetPhotosTearOff {
  const _$SetPhotosTearOff();

// ignore: unused_element
  _SetPhotos call({List<Photo> photos}) {
    return _SetPhotos(
      photos: photos,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetPhotos = _$SetPhotosTearOff();

/// @nodoc
mixin _$SetPhotos {
  List<Photo> get photos;

  $SetPhotosCopyWith<SetPhotos> get copyWith;
}

/// @nodoc
abstract class $SetPhotosCopyWith<$Res> {
  factory $SetPhotosCopyWith(SetPhotos value, $Res Function(SetPhotos) then) = _$SetPhotosCopyWithImpl<$Res>;

  $Res call({List<Photo> photos});
}

/// @nodoc
class _$SetPhotosCopyWithImpl<$Res> implements $SetPhotosCopyWith<$Res> {
  _$SetPhotosCopyWithImpl(this._value, this._then);

  final SetPhotos _value;

  // ignore: unused_field
  final $Res Function(SetPhotos) _then;

  @override
  $Res call({
    Object photos = freezed,
  }) {
    return _then(_value.copyWith(
      photos: photos == freezed ? _value.photos : photos as List<Photo>,
    ));
  }
}

/// @nodoc
abstract class _$SetPhotosCopyWith<$Res> implements $SetPhotosCopyWith<$Res> {
  factory _$SetPhotosCopyWith(_SetPhotos value, $Res Function(_SetPhotos) then) = __$SetPhotosCopyWithImpl<$Res>;

  @override
  $Res call({List<Photo> photos});
}

/// @nodoc
class __$SetPhotosCopyWithImpl<$Res> extends _$SetPhotosCopyWithImpl<$Res> implements _$SetPhotosCopyWith<$Res> {
  __$SetPhotosCopyWithImpl(_SetPhotos _value, $Res Function(_SetPhotos) _then)
      : super(_value, (v) => _then(v as _SetPhotos));

  @override
  _SetPhotos get _value => super._value as _SetPhotos;

  @override
  $Res call({
    Object photos = freezed,
  }) {
    return _then(_SetPhotos(
      photos: photos == freezed ? _value.photos : photos as List<Photo>,
    ));
  }
}

/// @nodoc
class _$_SetPhotos implements _SetPhotos {
  const _$_SetPhotos({this.photos});

  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'SetPhotos(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetPhotos &&
            (identical(other.photos, photos) || const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @override
  _$SetPhotosCopyWith<_SetPhotos> get copyWith => __$SetPhotosCopyWithImpl<_SetPhotos>(this, _$identity);
}

abstract class _SetPhotos implements SetPhotos {
  const factory _SetPhotos({List<Photo> photos}) = _$_SetPhotos;

  @override
  List<Photo> get photos;

  @override
  _$SetPhotosCopyWith<_SetPhotos> get copyWith;
}
