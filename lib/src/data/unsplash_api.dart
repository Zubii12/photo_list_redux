import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:photo_list_redux/src/models/photo.dart';

class UnsplashApi {
  const UnsplashApi({@required Client client})
      : assert(client != null),
        _client = client;
  final Client _client;

  static const String key = 'r-_uZpoVx98zBrsw2Pj0OAazZ_xsqTgn4JRHksJ_VYI';

  Future<List<Photo>> getPhotos({int page = 1}) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: <String>['photos'],
      queryParameters: <String, String>{
        'client_id': key,
        'per_page': '8',
        'page': page.toString(),
      },
    );
    final Response response = await _client.get(url);
    final List<dynamic> data = jsonDecode(response.body);
    return data.map((dynamic json) => Photo.fromJson(json)).toList();
  }

  Future<List<Photo>> searchPhotos({int page = 1, @required String query}) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: <String>['search', 'photos'],
      queryParameters: <String, String>{
        'client_id': key,
        'per_page': '8',
        'page': page.toString(),
        'query': query,
      },
    );
    final Response response = await _client.get(url);
    final List<dynamic> data = jsonDecode(response.body)['results'];
    return data.map((dynamic json) => Photo.fromJson(json)).toList();
  }
}
