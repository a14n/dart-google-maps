// Copyright (c) 2015, Alexandre Ardhuin
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

part of '../data.dart';

extension type DataDataOptions._(JSObject _) implements JSObject {
  external DataDataOptions({
    Map map,
    ControlPosition? controlPosition,
    JSArray<JSString>? controls,
    String? drawingMode,
    JSFunction /*DataFeature Function(DataGeometry)*/ ? featureFactory,
    JSAny? /*(Data.StylingFunction|Data.StyleOptions)?*/ style,
  });
  external Map map;
  external ControlPosition? controlPosition;
  @JS('controls')
  external JSArray<JSString>? _controls;
  List<String>? get controls =>
      _controls?.toDart.map((type) => type.toDart).toList();
  set controls(List<String>? value) =>
      _controls = value.jsify() as JSArray<JSString>?;
  external String? drawingMode;
  external JSFunction /*DataFeature Function(DataGeometry)*/ ? featureFactory;
  external JSAny? /*(Data.StylingFunction|Data.StyleOptions)?*/ style;
}
