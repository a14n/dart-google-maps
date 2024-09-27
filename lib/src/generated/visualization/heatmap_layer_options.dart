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

part of '../visualization.dart';

extension type HeatmapLayerOptions._(JSObject _) implements JSObject {
  external HeatmapLayerOptions({
    JSAny? /*(MVCArray<LatLng|WeightedLocation>|Array<LatLng|WeightedLocation>)?*/
        data,
    bool? dissipating,
    JSArray<JSString>? gradient,
    Map? map,
    num? maxIntensity,
    num? opacity,
    num? radius,
  });
  external JSAny? /*(MVCArray<LatLng|WeightedLocation>|Array<LatLng|WeightedLocation>)?*/
      data;
  external bool? dissipating;
  @JS('gradient')
  external JSArray<JSString>? _gradient;
  List<String>? get gradient =>
      _gradient?.toDart.map((type) => type.toDart).toList();
  set gradient(List<String>? value) =>
      _gradient = value.jsify() as JSArray<JSString>?;
  external Map? map;
  external num? maxIntensity;
  external num? opacity;
  external num? radius;
}
