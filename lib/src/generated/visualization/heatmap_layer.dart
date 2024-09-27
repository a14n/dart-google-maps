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

part of '../visualization.dart';

@JS('google.maps.visualization.HeatmapLayer')
extension type HeatmapLayer._(MVCObject _) implements MVCObject {
  external HeatmapLayer([
    HeatmapLayerOptions? opts,
  ]);
  @JS('getData')
  external MVCArray<JSAny /*LatLng|WeightedLocation*/ > _getData();
  MVCArray<JSAny /*LatLng|WeightedLocation*/ > get data => _getData();
  @JS('getMap')
  external Map? _getMap();
  Map? get map => _getMap();
  @JS('setData')
  external void _setData(
      JSAny /*MVCArray<LatLng|WeightedLocation>|Array<LatLng|WeightedLocation>*/
          data);
  void set data(
          JSAny /*MVCArray<LatLng|WeightedLocation>|Array<LatLng|WeightedLocation>*/
              data) =>
      _setData(data);
  @JS('setMap')
  external void _setMap(Map? map);
  void set map(Map? map) => _setMap(map);
  @JS('setOptions')
  external void _setOptions(HeatmapLayerOptions? options);
  void set options(HeatmapLayerOptions? options) => _setOptions(options);
}
