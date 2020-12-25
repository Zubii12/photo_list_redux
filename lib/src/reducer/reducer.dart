import 'package:photo_list_redux/src/actions/get_photos.dart';
import 'package:photo_list_redux/src/actions/search_photos.dart';
import 'package:photo_list_redux/src/actions/set_history_suggestions.dart';
import 'package:photo_list_redux/src/actions/set_page.dart';
import 'package:photo_list_redux/src/actions/set_photos.dart';
import 'package:photo_list_redux/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();

  /// Gets
  if (action is GetPhotosStart) {
    //
  } else if (action is GetPhotosSuccessful) {
    builder
      ..photos.addAll(action.photos)
      ..page = builder.page + 1;
  } else if (action is GetPhotosError) {
    print(action.toString());
  }

  /// Searches
  else if (action is SearchPhotosStart) {
    //
  } else if (action is SearchPhotosSuccessful) {
    builder
      ..photos.addAll(action.photos)
      ..page = builder.page + 1;
  } else if (action is SearchPhotosError) {
    print(action.toString());
  }

  /// Sets
  else if (action is SetHistorySuggestionsAdd) {
    builder.historySuggestions.add(action.history);
  } else if (action is SetHistorySuggestionsAddAll) {
    builder.historySuggestions.addAll(action.historyList);
  } else if (action is SetPage) {
    builder.page = action.page;
  } else if (action is SetPhotos) {
    builder.photos.clear();
    builder.photos.addAll(action.photos);
  }
  return builder.build();
}
