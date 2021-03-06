import 'dart:async';

import 'package:build_runner/build_runner.dart';
import 'package:built_value_generator/built_value_generator.dart';
import 'package:source_gen/source_gen.dart';

Future main(List<String> args) async {
  await build([
    new BuildAction(
        new PartBuilder([
          new BuiltValueGenerator(),
        ]),
        'idmbapp',
        inputs: const ['lib/*.dart'])
  ], deleteFilesByDefault: true);
}
