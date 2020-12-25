import 'package:flutter/material.dart';
import 'package:photo_list_redux/src/models/photo.dart';
import 'package:url_launcher/url_launcher.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key key, this.photo}) : super(key: key);
  final Photo photo;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo.user.userName),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.network(
                photo.urls['regular'],
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.2,
                errorBuilder: (BuildContext context, Object error, StackTrace stackTrace) => const Icon(Icons.error),
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
            ],
          ),
          Card(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: <Widget>[
                      Image.network(
                        photo.user.profileImage['medium'],
                        width: 50,
                        height: 50,
                        errorBuilder: (BuildContext context, Object error, StackTrace stackTrace) =>
                            const Icon(Icons.error),
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
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(photo.user.userName),
                          Text('Likes: ' + photo.likes.toString()),
                          if (photo.user.location != null) Text('Location: ' + photo.user.location),
                        ],
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            photo.createdAt.split('T')[0],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (photo.user.bio != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(photo.user.bio),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    child: Text(photo.user.userName + '`s total photos: ' + photo.user.totalPhotos.toString()),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () => _launchInBrowser(photo.user.portfolioUrl),
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.home,
                            size: 30,
                          ),
                          Text(
                            'Portfolio',
                            style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (photo.user.twitterUserName != null && photo.user.twitterUserName.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: <Widget>[
                          Image.network(
                            'https://i.pinimg.com/564x/67/79/98/677998821068d76e45c85404a87a2b35.jpg',
                            width: 25,
                            height: 25,
                            errorBuilder: (BuildContext context, Object error, StackTrace stackTrace) =>
                                const Icon(Icons.error),
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
                          const SizedBox(width: 4.0),
                          Text(photo.user.twitterUserName),
                        ],
                      ),
                    ),
                  ),
                if (photo.user.instagramUsername != null && photo.user.instagramUsername.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: <Widget>[
                          Image.network(
                            'https://i.pinimg.com/564x/3a/cf/03/3acf034a3c9786e8110ed4b5b89f1d0b.jpg',
                            width: 25,
                            height: 25,
                            errorBuilder: (BuildContext context, Object error, StackTrace stackTrace) =>
                                const Icon(Icons.error),
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
                          const SizedBox(width: 4.0),
                          Text(photo.user.instagramUsername),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
