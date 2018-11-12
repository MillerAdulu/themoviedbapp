// GENERATED CODE - DO NOT MODIFY BY HAND

part of trailer;

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

Serializer<TrailerData> _$trailerDataSerializer = new _$TrailerDataSerializer();
Serializer<Trailer> _$trailerSerializer = new _$TrailerSerializer();

class _$TrailerDataSerializer implements StructuredSerializer<TrailerData> {
  @override
  final Iterable<Type> types = const [TrailerData, _$TrailerData];
  @override
  final String wireName = 'TrailerData';

  @override
  Iterable serialize(Serializers serializers, TrailerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.results != null) {
      result
        ..add('results')
        ..add(serializers.serialize(object.results,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Trailer)])));
    }

    return result;
  }

  @override
  TrailerData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrailerDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Trailer)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$TrailerSerializer implements StructuredSerializer<Trailer> {
  @override
  final Iterable<Type> types = const [Trailer, _$Trailer];
  @override
  final String wireName = 'Trailer';

  @override
  Iterable serialize(Serializers serializers, Trailer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.iso_639_1 != null) {
      result
        ..add('iso_639_1')
        ..add(serializers.serialize(object.iso_639_1,
            specifiedType: const FullType(String)));
    }
    if (object.iso_3166_1 != null) {
      result
        ..add('iso_3166_1')
        ..add(serializers.serialize(object.iso_3166_1,
            specifiedType: const FullType(String)));
    }
    if (object.key != null) {
      result
        ..add('key')
        ..add(serializers.serialize(object.key,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.site != null) {
      result
        ..add('site')
        ..add(serializers.serialize(object.site,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Trailer deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrailerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_639_1':
          result.iso_639_1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_3166_1':
          result.iso_3166_1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site':
          result.site = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TrailerData extends TrailerData {
  @override
  final int id;
  @override
  final BuiltList<Trailer> results;

  factory _$TrailerData([void updates(TrailerDataBuilder b)]) =>
      (new TrailerDataBuilder()..update(updates)).build();

  _$TrailerData._({this.id, this.results}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('TrailerData', 'id');
    }
  }

  @override
  TrailerData rebuild(void updates(TrailerDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TrailerDataBuilder toBuilder() => new TrailerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrailerData && id == other.id && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrailerData')
          ..add('id', id)
          ..add('results', results))
        .toString();
  }
}

class TrailerDataBuilder implements Builder<TrailerData, TrailerDataBuilder> {
  _$TrailerData _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<Trailer> _results;
  ListBuilder<Trailer> get results =>
      _$this._results ??= new ListBuilder<Trailer>();
  set results(ListBuilder<Trailer> results) => _$this._results = results;

  TrailerDataBuilder();

  TrailerDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrailerData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrailerData;
  }

  @override
  void update(void updates(TrailerDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TrailerData build() {
    _$TrailerData _$result;
    try {
      _$result = _$v ?? new _$TrailerData._(id: id, results: _results?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TrailerData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Trailer extends Trailer {
  @override
  final String id;
  @override
  final String iso_639_1;
  @override
  final String iso_3166_1;
  @override
  final String key;
  @override
  final String name;
  @override
  final String site;
  @override
  final int size;
  @override
  final String type;

  factory _$Trailer([void updates(TrailerBuilder b)]) =>
      (new TrailerBuilder()..update(updates)).build();

  _$Trailer._(
      {this.id,
      this.iso_639_1,
      this.iso_3166_1,
      this.key,
      this.name,
      this.site,
      this.size,
      this.type})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Trailer', 'id');
    }
  }

  @override
  Trailer rebuild(void updates(TrailerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TrailerBuilder toBuilder() => new TrailerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Trailer &&
        id == other.id &&
        iso_639_1 == other.iso_639_1 &&
        iso_3166_1 == other.iso_3166_1 &&
        key == other.key &&
        name == other.name &&
        site == other.site &&
        size == other.size &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), iso_639_1.hashCode),
                            iso_3166_1.hashCode),
                        key.hashCode),
                    name.hashCode),
                site.hashCode),
            size.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Trailer')
          ..add('id', id)
          ..add('iso_639_1', iso_639_1)
          ..add('iso_3166_1', iso_3166_1)
          ..add('key', key)
          ..add('name', name)
          ..add('site', site)
          ..add('size', size)
          ..add('type', type))
        .toString();
  }
}

class TrailerBuilder implements Builder<Trailer, TrailerBuilder> {
  _$Trailer _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _iso_639_1;
  String get iso_639_1 => _$this._iso_639_1;
  set iso_639_1(String iso_639_1) => _$this._iso_639_1 = iso_639_1;

  String _iso_3166_1;
  String get iso_3166_1 => _$this._iso_3166_1;
  set iso_3166_1(String iso_3166_1) => _$this._iso_3166_1 = iso_3166_1;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _site;
  String get site => _$this._site;
  set site(String site) => _$this._site = site;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  TrailerBuilder();

  TrailerBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _iso_639_1 = _$v.iso_639_1;
      _iso_3166_1 = _$v.iso_3166_1;
      _key = _$v.key;
      _name = _$v.name;
      _site = _$v.site;
      _size = _$v.size;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Trailer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Trailer;
  }

  @override
  void update(void updates(TrailerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Trailer build() {
    final _$result = _$v ??
        new _$Trailer._(
            id: id,
            iso_639_1: iso_639_1,
            iso_3166_1: iso_3166_1,
            key: key,
            name: name,
            site: site,
            size: size,
            type: type);
    replace(_$result);
    return _$result;
  }
}
