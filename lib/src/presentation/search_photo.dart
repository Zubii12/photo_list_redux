import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_list_redux/src/actions/search_photos.dart';
import 'package:photo_list_redux/src/actions/set_history_suggestions.dart';
import 'package:photo_list_redux/src/actions/set_page.dart';
import 'package:photo_list_redux/src/actions/set_photos.dart';
import 'package:photo_list_redux/src/containers/photos_container.dart';
import 'package:photo_list_redux/src/models/app_state.dart';
import 'package:photo_list_redux/src/models/photo.dart';
import 'package:photo_list_redux/src/presentation/photo_page.dart';
import 'package:redux/redux.dart';

class SearchPhoto extends SearchDelegate<String> {
  SearchPhoto(this._words);

  String selectedResult;

  final List<String> _words;

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    StoreProvider.of<AppState>(context).dispatch(const SetPage(page: 1));
    return PhotosContainer(
      builder: (BuildContext context, List<Photo> photos) {
        return Stack(
          children: <Widget>[
            StaggeredGridView.countBuilder(
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
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    final Store<AppState> store = StoreProvider.of<AppState>(context);
                    store.dispatch(SearchPhotos.start(page: store.state.page, query: selectedResult));
                  },
                  label: const Text('Load more'),
                  backgroundColor: Colors.pink,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = <String>[];
    query.isEmpty
        ? suggestionList = StoreProvider.of<AppState>(context).state.historySuggestions.toList()
        : suggestionList.addAll(
            _words.where(
              (String element) => element.contains(query),
            ),
          );
    StoreProvider.of<AppState>(context).dispatch(const SetPhotos(photos: <Photo>[]));
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            suggestionList[index],
          ),
          leading: query.isEmpty ? const Icon(Icons.access_time) : const SizedBox(),
          onTap: () {
            selectedResult = suggestionList[index];
            StoreProvider.of<AppState>(context).dispatch(SetHistorySuggestions.add(history: selectedResult));
            showResults(context);
            StoreProvider.of<AppState>(context).dispatch(SearchPhotos.start(page: 1, query: selectedResult));
          },
        );
      },
    );
  }
}
