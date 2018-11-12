library trailer;

import 'package:built_collection/built_collection.dart'; // To be used together with BuiltList if JSON contains nested lists

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trailer.g.dart';

abstract class TrailerData implements Built<TrailerData, TrailerDataBuilder> {
  int get id;

  @nullable
  BuiltList<Trailer> get results;

  TrailerData._();
  factory TrailerData([updates(TrailerDataBuilder trailerDataBuilder)]) =
      _$TrailerData;
  static Serializer<TrailerData> get serializer => _$trailerDataSerializer;
}

abstract class Trailer implements Built<Trailer, TrailerBuilder> {
  String get id;
  @nullable
  String get iso_639_1;
  @nullable
  String get iso_3166_1;
  @nullable
  String get key;
  @nullable
  String get name;
  @nullable
  String get site;
  @nullable
  int get size;
  @nullable
  String get type;

  Trailer._();
  factory Trailer([updates(TrailerBuilder trailerBuilder)]) = _$Trailer;
  static Serializer<Trailer> get serializer => _$trailerSerializer;
}
