import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_list_redux/src/actions/get_photos.dart';
import 'package:photo_list_redux/src/actions/set_page.dart';
import 'package:photo_list_redux/src/actions/set_photos.dart';
import 'package:photo_list_redux/src/containers/photos_container.dart';
import 'package:photo_list_redux/src/models/app_state.dart';
import 'package:photo_list_redux/src/models/photo.dart';
import 'package:photo_list_redux/src/presentation/photo_page.dart';
import 'package:photo_list_redux/src/presentation/search_photo.dart';
import 'package:redux/redux.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhotosContainer(
      builder: (BuildContext context, List<Photo> photos) {
        return Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () async {
                  final Store<AppState> store = StoreProvider.of<AppState>(context);
                  await showSearch<String>(
                    context: context,
                    delegate: SearchPhoto(store.state.words.toList()),
                  );
                  store //
                    ..dispatch(const SetPage(page: 1))
                    ..dispatch(const SetPhotos(photos: <Photo>[]))
                    ..dispatch(const GetPhotos.start(page: 1));
                },
              ),
            ],
            centerTitle: true,
            title: const Text('Search bar'),
          ),
          body: StaggeredGridView.countBuilder(
            padding: const EdgeInsets.all(2.0),
            crossAxisCount: 4,
            itemCount: photos.length,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            itemBuilder: (BuildContext context, int index) {
              final Photo photo = photos[index];
              return Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (BuildContext context) => PhotoPage(photo: photo),
                      ),
                    );
                  },
                  child: Image.network(
                    photo.urls['small'],
                    fit: BoxFit.fill,
                    errorBuilder: (BuildContext context, Object error, StackTrace stackTrace) {
                      return const Icon(Icons.error);
                    },
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                              : null,
                        ),
                      );
                    },
                  ),
                ),
              );
            },
            staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 2 : 1.47),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              final Store<AppState> store = StoreProvider.of<AppState>(context);
              store.dispatch(GetPhotos.start(page: store.state.page));
            },
            label: const Text('Load more'),
            backgroundColor: Colors.pink,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}
