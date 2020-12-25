import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:photo_list_redux/src/actions/get_photos.dart';
import 'package:photo_list_redux/src/data/unsplash_api.dart';
import 'package:photo_list_redux/src/middleware/app_middleware.dart';
import 'package:photo_list_redux/src/models/app_state.dart';
import 'package:photo_list_redux/src/presentation/home_page.dart';
import 'package:photo_list_redux/src/reducer/reducer.dart';
import 'package:redux/redux.dart';

void main() {
  final Client client = Client();
  final UnsplashApi unsplashApi = UnsplashApi(client: client);
  final AppMiddleware appMiddleware = AppMiddleware(unsplashApi: unsplashApi);
  final AppState initialState = AppState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: appMiddleware.middleware,
  );
  store.dispatch(const GetPhotos.start(page: 1));
  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);
  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
