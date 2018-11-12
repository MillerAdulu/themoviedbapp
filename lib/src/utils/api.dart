import 'dart:async';

import 'network.dart';
import 'package:imdbapp/src/serializers/serializers.dart';

// Models
import 'package:imdbapp/src/models/movies/movie.dart';

class IDMBAPI {
  NetworkUtil _networkUtil = new NetworkUtil();

  static final String apiKey = '323f871a3935a91d3b6a8adbf679c86d';
  static final String baseUrl =
      'http://api.themoviedb.org/3/movie/popular?api_key=$apiKey';

  Future<MovieData> getMovies() {
    final String getUsersUrl = '$baseUrl';

    return _networkUtil.get(getUsersUrl).then((dynamic res) {
      if (res == null) return null;

      return serializers.deserializeWith(MovieData.serializer, res);
    });
  }
}
