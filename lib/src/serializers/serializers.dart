library serializers;

import 'package:built_collection/built_collection.dart'; // To be used if the JSON contains a list of data
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:imdbapp/src/models/movies/movie.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  MovieData,
  Movie,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
