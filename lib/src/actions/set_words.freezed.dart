// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_words;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetWordsTearOff {
  const _$SetWordsTearOff();

// ignore: unused_element
  _SetWords call({List<String> words}) {
    return _SetWords(
      words: words,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetWords = _$SetWordsTearOff();

/// @nodoc
mixin _$SetWords {
  List<String> get words;

  $SetWordsCopyWith<SetWords> get copyWith;
}

/// @nodoc
abstract class $SetWordsCopyWith<$Res> {
  factory $SetWordsCopyWith(SetWords value, $Res Function(SetWords) then) = _$SetWordsCopyWithImpl<$Res>;

  $Res call({List<String> words});
}

/// @nodoc
class _$SetWordsCopyWithImpl<$Res> implements $SetWordsCopyWith<$Res> {
  _$SetWordsCopyWithImpl(this._value, this._then);

  final SetWords _value;

  // ignore: unused_field
  final $Res Function(SetWords) _then;

  @override
  $Res call({
    Object words = freezed,
  }) {
    return _then(_value.copyWith(
      words: words == freezed ? _value.words : words as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$SetWordsCopyWith<$Res> implements $SetWordsCopyWith<$Res> {
  factory _$SetWordsCopyWith(_SetWords value, $Res Function(_SetWords) then) = __$SetWordsCopyWithImpl<$Res>;

  @override
  $Res call({List<String> words});
}

/// @nodoc
class __$SetWordsCopyWithImpl<$Res> extends _$SetWordsCopyWithImpl<$Res> implements _$SetWordsCopyWith<$Res> {
  __$SetWordsCopyWithImpl(_SetWords _value, $Res Function(_SetWords) _then)
      : super(_value, (v) => _then(v as _SetWords));

  @override
  _SetWords get _value => super._value as _SetWords;

  @override
  $Res call({
    Object words = freezed,
  }) {
    return _then(_SetWords(
      words: words == freezed ? _value.words : words as List<String>,
    ));
  }
}

/// @nodoc
class _$_SetWords implements _SetWords {
  const _$_SetWords({this.words});

  @override
  final List<String> words;

  @override
  String toString() {
    return 'SetWords(words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetWords &&
            (identical(other.words, words) || const DeepCollectionEquality().equals(other.words, words)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(words);

  @override
  _$SetWordsCopyWith<_SetWords> get copyWith => __$SetWordsCopyWithImpl<_SetWords>(this, _$identity);
}

abstract class _SetWords implements SetWords {
  const factory _SetWords({List<String> words}) = _$_SetWords;

  @override
  List<String> get words;

  @override
  _$SetWordsCopyWith<_SetWords> get copyWith;
}
