// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<MovieData> _$movieDataSerializer = new _$MovieDataSerializer();
Serializer<Movie> _$movieSerializer = new _$MovieSerializer();

class _$MovieDataSerializer implements StructuredSerializer<MovieData> {
  @override
  final Iterable<Type> types = const [MovieData, _$MovieData];
  @override
  final String wireName = 'MovieData';

  @override
  Iterable serialize(Serializers serializers, MovieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.total_results,
          specifiedType: const FullType(int)),
      'total_pages',
      serializers.serialize(object.total_pages,
          specifiedType: const FullType(int)),
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Movie)])),
    ];

    return result;
  }

  @override
  MovieData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_results':
          result.total_results = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_pages':
          result.total_pages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Movie)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable serialize(Serializers serializers, Movie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.vote_count != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(object.vote_count,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.video != null) {
      result
        ..add('video')
        ..add(serializers.serialize(object.video,
            specifiedType: const FullType(bool)));
    }
    if (object.vote_average != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(object.vote_average,
            specifiedType: const FullType(double)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.popularity != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(object.popularity,
            specifiedType: const FullType(double)));
    }
    if (object.poster_path != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.poster_path,
            specifiedType: const FullType(String)));
    }
    if (object.original_language != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(object.original_language,
            specifiedType: const FullType(String)));
    }
    if (object.original_title != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(object.original_title,
            specifiedType: const FullType(String)));
    }
    if (object.backdrop_path != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdrop_path,
            specifiedType: const FullType(String)));
    }
    if (object.adult != null) {
      result
        ..add('adult')
        ..add(serializers.serialize(object.adult,
            specifiedType: const FullType(bool)));
    }
    if (object.overview != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(object.overview,
            specifiedType: const FullType(String)));
    }
    if (object.release_date != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(object.release_date,
            specifiedType: const FullType(String)));
    }
    if (object.genre_ids != null) {
      result
        ..add('genre_ids')
        ..add(serializers.serialize(object.genre_ids,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }

    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vote_count':
          result.vote_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'vote_average':
          result.vote_average = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'poster_path':
          result.poster_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_language':
          result.original_language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.original_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'backdrop_path':
          result.backdrop_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.release_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genre_ids':
          result.genre_ids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$MovieData extends MovieData {
  @override
  final int page;
  @override
  final int total_results;
  @override
  final int total_pages;
  @override
  final BuiltList<Movie> results;

  factory _$MovieData([void updates(MovieDataBuilder b)]) =>
      (new MovieDataBuilder()..update(updates)).build();

  _$MovieData._({this.page, this.total_results, this.total_pages, this.results})
      : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('MovieData', 'page');
    }
    if (total_results == null) {
      throw new BuiltValueNullFieldError('MovieData', 'total_results');
    }
    if (total_pages == null) {
      throw new BuiltValueNullFieldError('MovieData', 'total_pages');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('MovieData', 'results');
    }
  }

  @override
  MovieData rebuild(void updates(MovieDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDataBuilder toBuilder() => new MovieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieData &&
        page == other.page &&
        total_results == other.total_results &&
        total_pages == other.total_pages &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, page.hashCode), total_results.hashCode),
            total_pages.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieData')
          ..add('page', page)
          ..add('total_results', total_results)
          ..add('total_pages', total_pages)
          ..add('results', results))
        .toString();
  }
}

class MovieDataBuilder implements Builder<MovieData, MovieDataBuilder> {
  _$MovieData _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _total_results;
  int get total_results => _$this._total_results;
  set total_results(int total_results) => _$this._total_results = total_results;

  int _total_pages;
  int get total_pages => _$this._total_pages;
  set total_pages(int total_pages) => _$this._total_pages = total_pages;

  ListBuilder<Movie> _results;
  ListBuilder<Movie> get results =>
      _$this._results ??= new ListBuilder<Movie>();
  set results(ListBuilder<Movie> results) => _$this._results = results;

  MovieDataBuilder();

  MovieDataBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _total_results = _$v.total_results;
      _total_pages = _$v.total_pages;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MovieData;
  }

  @override
  void update(void updates(MovieDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieData build() {
    _$MovieData _$result;
    try {
      _$result = _$v ??
          new _$MovieData._(
              page: page,
              total_results: total_results,
              total_pages: total_pages,
              results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Movie extends Movie {
  @override
  final int vote_count;
  @override
  final int id;
  @override
  final bool video;
  @override
  final double vote_average;
  @override
  final String title;
  @override
  final double popularity;
  @override
  final String poster_path;
  @override
  final String original_language;
  @override
  final String original_title;
  @override
  final String backdrop_path;
  @override
  final bool adult;
  @override
  final String overview;
  @override
  final String release_date;
  @override
  final BuiltList<int> genre_ids;

  factory _$Movie([void updates(MovieBuilder b)]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.vote_count,
      this.id,
      this.video,
      this.vote_average,
      this.title,
      this.popularity,
      this.poster_path,
      this.original_language,
      this.original_title,
      this.backdrop_path,
      this.adult,
      this.overview,
      this.release_date,
      this.genre_ids})
      : super._();

  @override
  Movie rebuild(void updates(MovieBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        vote_count == other.vote_count &&
        id == other.id &&
        video == other.video &&
        vote_average == other.vote_average &&
        title == other.title &&
        popularity == other.popularity &&
        poster_path == other.poster_path &&
        original_language == other.original_language &&
        original_title == other.original_title &&
        backdrop_path == other.backdrop_path &&
        adult == other.adult &&
        overview == other.overview &&
        release_date == other.release_date &&
        genre_ids == other.genre_ids;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            0,
                                                            vote_count
                                                                .hashCode),
                                                        id.hashCode),
                                                    video.hashCode),
                                                vote_average.hashCode),
                                            title.hashCode),
                                        popularity.hashCode),
                                    poster_path.hashCode),
                                original_language.hashCode),
                            original_title.hashCode),
                        backdrop_path.hashCode),
                    adult.hashCode),
                overview.hashCode),
            release_date.hashCode),
        genre_ids.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('vote_count', vote_count)
          ..add('id', id)
          ..add('video', video)
          ..add('vote_average', vote_average)
          ..add('title', title)
          ..add('popularity', popularity)
          ..add('poster_path', poster_path)
          ..add('original_language', original_language)
          ..add('original_title', original_title)
          ..add('backdrop_path', backdrop_path)
          ..add('adult', adult)
          ..add('overview', overview)
          ..add('release_date', release_date)
          ..add('genre_ids', genre_ids))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie _$v;

  int _vote_count;
  int get vote_count => _$this._vote_count;
  set vote_count(int vote_count) => _$this._vote_count = vote_count;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _video;
  bool get video => _$this._video;
  set video(bool video) => _$this._video = video;

  double _vote_average;
  double get vote_average => _$this._vote_average;
  set vote_average(double vote_average) => _$this._vote_average = vote_average;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _poster_path;
  String get poster_path => _$this._poster_path;
  set poster_path(String poster_path) => _$this._poster_path = poster_path;

  String _original_language;
  String get original_language => _$this._original_language;
  set original_language(String original_language) =>
      _$this._original_language = original_language;

  String _original_title;
  String get original_title => _$this._original_title;
  set original_title(String original_title) =>
      _$this._original_title = original_title;

  String _backdrop_path;
  String get backdrop_path => _$this._backdrop_path;
  set backdrop_path(String backdrop_path) =>
      _$this._backdrop_path = backdrop_path;

  bool _adult;
  bool get adult => _$this._adult;
  set adult(bool adult) => _$this._adult = adult;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _release_date;
  String get release_date => _$this._release_date;
  set release_date(String release_date) => _$this._release_date = release_date;

  ListBuilder<int> _genre_ids;
  ListBuilder<int> get genre_ids =>
      _$this._genre_ids ??= new ListBuilder<int>();
  set genre_ids(ListBuilder<int> genre_ids) => _$this._genre_ids = genre_ids;

  MovieBuilder();

  MovieBuilder get _$this {
    if (_$v != null) {
      _vote_count = _$v.vote_count;
      _id = _$v.id;
      _video = _$v.video;
      _vote_average = _$v.vote_average;
      _title = _$v.title;
      _popularity = _$v.popularity;
      _poster_path = _$v.poster_path;
      _original_language = _$v.original_language;
      _original_title = _$v.original_title;
      _backdrop_path = _$v.backdrop_path;
      _adult = _$v.adult;
      _overview = _$v.overview;
      _release_date = _$v.release_date;
      _genre_ids = _$v.genre_ids?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Movie;
  }

  @override
  void update(void updates(MovieBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    _$Movie _$result;
    try {
      _$result = _$v ??
          new _$Movie._(
              vote_count: vote_count,
              id: id,
              video: video,
              vote_average: vote_average,
              title: title,
              popularity: popularity,
              poster_path: poster_path,
              original_language: original_language,
              original_title: original_title,
              backdrop_path: backdrop_path,
              adult: adult,
              overview: overview,
              release_date: release_date,
              genre_ids: _genre_ids?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genre_ids';
        _genre_ids?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Movie', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
