// Copyright (c) 2016, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

library js_wrapping_generator.tool.phases;

import 'package:build/build.dart';
import 'package:js_wrapping_generator/js_interface_generator.dart';
import 'package:source_gen/source_gen.dart';

final _builder = new GeneratorBuilder([
  new JsInterfaceGenerator(),
]);

final PhaseGroup phases = new PhaseGroup()
  ..addPhase(new Phase()
    ..addAction(
        _builder,
        new InputSet('google_maps', const [
          'lib/src/google_maps_src.dart',
        ])))
  ..addPhase(new Phase()
    ..addAction(
        _builder,
        new InputSet('google_maps', const [
          'lib/src/google_maps_src_*.dart',
        ])))
  ..addPhase(new Phase()
    ..addAction(
        _builder,
        new InputSet('google_maps', const [
          'example/**/*.dart',
          'example/*.dart',
        ])));
