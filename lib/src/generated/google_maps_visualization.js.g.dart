// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

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

@JS()
library google_maps.visualization;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

@JS('google.maps.visualization.HeatmapLayer')
class HeatmapLayer extends MVCObject {
  external HeatmapLayer([
    HeatmapLayerOptions? opts, // ignore: unused_element
  ]);
}

extension HeatmapLayer$Ext on HeatmapLayer {
  MVCArray<Object? /*LatLng?|WeightedLocation?*/ >? get data => _getData();
  GMap? get map => _getMap();
  set data(
          Object? /*MVCArray<Object?/*LatLng?|WeightedLocation?*/>?|List<Object?/*LatLng?|WeightedLocation?*/>?*/ data) =>
      _setData(data);
  set map(GMap? map) => _setMap(map);
  set options(HeatmapLayerOptions? options) => _setOptions(options);

  MVCArray<Object? /*LatLng?|WeightedLocation?*/ >? _getData() =>
      callMethod(this, 'getData', []);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  void _setData(
      Object? /*MVCArray<Object?/*LatLng?|WeightedLocation?*/>?|List<Object?/*LatLng?|WeightedLocation?*/>?*/ data) {
    callMethod(this, 'setData', [data]);
  }

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(HeatmapLayerOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }
}

@JS()
@anonymous
class HeatmapLayerOptions {
  external factory HeatmapLayerOptions();

  external Object? /*MVCArray<Object?/*LatLng?|WeightedLocation?*/>?|List<Object?/*LatLng?|WeightedLocation?*/>?*/ get data;

  external set data(
      Object? /*MVCArray<Object?/*LatLng?|WeightedLocation?*/>?|List<Object?/*LatLng?|WeightedLocation?*/>?*/ value);

  external bool? get dissipating;

  external set dissipating(bool? value);

  external GMap? get map;

  external set map(GMap? value);

  external num? get maxIntensity;

  external set maxIntensity(num? value);

  external num? get opacity;

  external set opacity(num? value);

  external num? get radius;

  external set radius(num? value);
}

extension HeatmapLayerOptions$Ext on HeatmapLayerOptions {
  List<String?>? get gradient => getProperty(this, 'gradient')?.cast<String?>();

  set gradient(List<String?>? value) {
    setProperty(this, 'gradient', value);
  }
}

@JS()
@anonymous
class WeightedLocation {
  external factory WeightedLocation();

  external LatLng? get location;

  external set location(LatLng? value);

  external num? get weight;

  external set weight(num? value);
}
