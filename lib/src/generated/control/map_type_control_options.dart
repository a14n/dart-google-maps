// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../control.dart';

extension type MapTypeControlOptions._(JSObject _) implements JSObject {
  external MapTypeControlOptions({
    JSArray<JSAny /*MapTypeId|string*/ >? mapTypeIds,
    ControlPosition? position,
    MapTypeControlStyle? style,
  });
  @JS('mapTypeIds')
  external JSArray<JSAny /*MapTypeId|string*/ >? _mapTypeIds;
  List<JSAny /*MapTypeId|string*/ >? get mapTypeIds => _mapTypeIds?.toDart;
  set mapTypeIds(List<JSAny /*MapTypeId|string*/ >? value) =>
      _mapTypeIds = value?.toJS;
  external ControlPosition? position;
  external MapTypeControlStyle? style;
}
