import 'dart:async';
import 'package:rxdart/rxdart.dart';

import '../../../models/trailers/trailer.dart';
import '../../../utils/api.dart';

class MovieDetailBloc {
  IDMBAPI _api = new IDMBAPI();
  final _movieId = PublishSubject<int>();
  final _trailers = BehaviorSubject<Future<TrailerData>>();

  Function(int) get fetchTrailersById => _movieId.sink.add;

  Observable<Future<TrailerData>> get movieTrailers => _trailers.stream;

  MovieDetailBloc() {
    _movieId.stream.transform(_itemTransformer()).pipe(_trailers);
  }

  dipose() async {
    _movieId.close();
    await _trailers.drain();
    _trailers.close();
  }

  _itemTransformer() {
    return ScanStreamTransformer(
      (Future<TrailerData> trailer, int id, int index) {
        print(index);
        trailer = _api.getTrailers(id);
        return trailer;
      }
    );
  }
}