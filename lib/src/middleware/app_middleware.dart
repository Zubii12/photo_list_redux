import 'package:flutter/cupertino.dart';
import 'package:photo_list_redux/src/actions/get_photos.dart';
import 'package:photo_list_redux/src/actions/search_photos.dart';
import 'package:photo_list_redux/src/data/unsplash_api.dart';
import 'package:photo_list_redux/src/models/app_state.dart';
import 'package:photo_list_redux/src/models/photo.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  const AppMiddleware({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getPhotosMiddleware,
      _searchPhotosMiddleware,
    ];
  }

  Future<void> _getPhotosMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is! GetPhotosStart) {
      return;
    }
    try {
      final GetPhotosStart startAction = action as GetPhotosStart;
      final List<Photo> photos = await _unsplashApi.getPhotos(page: startAction.page);
      final GetPhotos successful = GetPhotos.successful(photos: photos);
      store.dispatch(successful);
    } catch (e) {
      final GetPhotos error = GetPhotos.error(error: e);
      store.dispatch(error);
    }
  }

  Future<void> _searchPhotosMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is! SearchPhotosStart) {
      return;
    }
    try {
      final SearchPhotosStart startAction = action as SearchPhotosStart;
      final List<Photo> photos = await _unsplashApi.searchPhotos(page: startAction.page, query: startAction.query);
      final SearchPhotos successful = SearchPhotos.successful(photos: photos);
      store.dispatch(successful);
    } catch (e) {
      final SearchPhotos error = SearchPhotos.error(error: e);
      store.dispatch(error);
    }
  }
}
