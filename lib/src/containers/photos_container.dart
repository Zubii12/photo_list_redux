import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_list_redux/src/models/app_state.dart';
import 'package:photo_list_redux/src/models/photo.dart';
import 'package:redux/redux.dart';

class PhotosContainer extends StatelessWidget {
  const PhotosContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Photo>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Photo>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.photos.asList(),
    );
  }
}
