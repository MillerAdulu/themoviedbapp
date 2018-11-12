library movie;

import 'package:built_collection/built_collection.dart'; // To be used together with BuiltList if JSON contains nested lists

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie.g.dart';

abstract class MovieData implements Built<MovieData, MovieDataBuilder> {
  int get page;
  int get total_results;
  int get total_pages;
  BuiltList<Movie> get results;

  MovieData._();
  factory MovieData([updates(MovieDataBuilder movieDataBuilder)]) = _$MovieData;
  static Serializer<MovieData> get serializer => _$movieDataSerializer;
}

abstract class Movie implements Built<Movie, MovieBuilder> {
  @nullable
  int get vote_count;
  @nullable
  int get id;
  @nullable
  bool get video;
  @nullable
  double get vote_average;
  @nullable
  String get title;
  @nullable
  double get popularity;
  @nullable
  String get poster_path;
  @nullable
  String get original_language;
  @nullable
  String get original_title;
  @nullable
  String get backdrop_path;
  @nullable
  bool get adult;
  @nullable
  String get overview;
  @nullable
  String get release_date;
  @nullable
  BuiltList<int> get genre_ids;

  Movie._();
  factory Movie([updates(MovieBuilder movieBuilder)]) = _$Movie;
  static Serializer<Movie> get serializer => _$movieSerializer;
}
