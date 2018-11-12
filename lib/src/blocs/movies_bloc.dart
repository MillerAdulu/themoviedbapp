import 'package:rxdart/rxdart.dart';

import '../models/movies/movie.dart';
import '../utils/api.dart';

class MoviesBloc {
  IDMBAPI _api = new IDMBAPI();
  final _moviesFetcher = PublishSubject<MovieData>();

  Observable<MovieData> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async {
    MovieData movieData = await _api.getMovies();
    _moviesFetcher.sink.add(movieData);
  }

  dispose() {
    _moviesFetcher.close();
  }
}

final bloc = MoviesBloc();
