import 'dart:async';

import 'network.dart';
import 'package:imdbapp/src/serializers/serializers.dart';

// Models
import 'package:imdbapp/src/models/movies/movie.dart';
import 'package:imdbapp/src/models/trailers/trailer.dart';

class IDMBAPI {
  NetworkUtil _networkUtil = new NetworkUtil();

  static final String apiKey = '323f871a3935a91d3b6a8adbf679c86d';
  static final String baseUrl =
      'http://api.themoviedb.org/3/movie';

  Future<MovieData> getMovies() async {
    final String getMoviesUrl = '$baseUrl/popular?api_key=$apiKey';

    return _networkUtil.get(getMoviesUrl).then((dynamic res) {
      if (res == null) return null;

      return serializers.deserializeWith(MovieData.serializer, res);
    });
  }

  Future<TrailerData> getTrailers(int movieId) async {
    final String getTrailersUrl = '$baseUrl/$movieId/videos?api_key=$apiKey';
    
    return _networkUtil.get(getTrailersUrl).then((dynamic res) {
      if (res == null) return null;

      return serializers.deserializeWith(TrailerData.serializer, res);
    });
  }
}
