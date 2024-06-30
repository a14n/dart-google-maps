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

part of '../polygon.dart';

extension type PolylineOptions._(JSObject _) implements JSObject {
  external PolylineOptions({
    bool? clickable,
    bool? draggable,
    bool? editable,
    bool? geodesic,
    JSArray<IconSequence>? icons,
    Map? map,
    JSAny? /*(MVCArray<LatLng>|Array<LatLng|LatLngLiteral>)?*/ path,
    String? strokeColor,
    num? strokeOpacity,
    num? strokeWeight,
    bool? visible,
    num? zIndex,
  });
  external bool? clickable;
  external bool? draggable;
  external bool? editable;
  external bool? geodesic;
  @JS('icons')
  external JSArray<IconSequence>? _icons;
  List<IconSequence>? get icons => _icons?.toDart;
  set icons(List<IconSequence>? value) => _icons = value?.toJS;
  external Map? map;
  external JSAny? /*(MVCArray<LatLng>|Array<LatLng|LatLngLiteral>)?*/ path;
  external String? strokeColor;
  external num? strokeOpacity;
  external num? strokeWeight;
  external bool? visible;
  external num? zIndex;
}
