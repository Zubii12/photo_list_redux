library set_history_suggestions;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_history_suggestions.freezed.dart';

@freezed
abstract class SetHistorySuggestions with _$SetHistorySuggestions {
  const factory SetHistorySuggestions.addAll({List<String> historyList}) = SetHistorySuggestionsAddAll;

  const factory SetHistorySuggestions.add({String history}) = SetHistorySuggestionsAdd;
}
