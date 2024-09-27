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

part of '../polygon.dart';

extension type CircleOptions._(JSObject _) implements JSObject {
  external CircleOptions({
    LatLngOrLatLngLiteral? center,
    bool? clickable,
    bool? draggable,
    bool? editable,
    String? fillColor,
    num? fillOpacity,
    Map? map,
    num? radius,
    String? strokeColor,
    num? strokeOpacity,
    StrokePosition? strokePosition,
    num? strokeWeight,
    bool? visible,
    num? zIndex,
  });
  external LatLngOrLatLngLiteral? center;
  external bool? clickable;
  external bool? draggable;
  external bool? editable;
  external String? fillColor;
  external num? fillOpacity;
  external Map? map;
  external num? radius;
  external String? strokeColor;
  external num? strokeOpacity;
  external StrokePosition? strokePosition;
  external num? strokeWeight;
  external bool? visible;
  external num? zIndex;
}
