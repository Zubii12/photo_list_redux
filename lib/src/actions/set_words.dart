library set_words;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_words.freezed.dart';

@freezed
abstract class SetWords with _$SetWords {
  const factory SetWords({List<String> words}) = _SetWords;
}
