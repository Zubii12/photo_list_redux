library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:english_words/english_words.dart' as english_words;
import 'package:photo_list_redux/src/models/photo.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState(
      (AppStateBuilder builder) {
        builder.page = 1;
        builder.words.addAll(List<String>.from(Set<dynamic>.from(english_words.all)));
        builder.historySuggestions.addAll(<String>['winter', 'moon', 'office', 'christmas']);
      },
    );
  }

  AppState._();

  BuiltList<Photo> get photos;

  BuiltList<String> get words;

  int get page;

  @nullable
  String get query;

  BuiltList<String> get historySuggestions;
}
