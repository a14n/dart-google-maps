// Copyright (c) 2012, Alexandre Ardhuin
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

part of google_maps_visualization;

class HeatmapLayer extends MVCObject {
  static HeatmapLayer cast(js.Proxy proxy) => proxy == null ? null : new HeatmapLayer.fromProxy(proxy);

  HeatmapLayer([HeatmapLayerOptions opts]) : super(maps.visualization.HeatmapLayer, [opts]);
  HeatmapLayer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  MVCArray<dynamic/*LatLng|WeightedLocation*/> get data => MVCArray.castListOfSerializables($unsafe.getData(), (e) => LatLng.isInstance(e) ? LatLng.cast(e) : WeightedLocation.cast(e));
  GMap get map => GMap.cast($unsafe.getMap());
  set data(dynamic/*MVCArray.<LatLng|WeightedLocation>|Array.<LatLng|WeightedLocation>*/ data) {
    $unsafe.setData(MVCArray.isInstance(data) ? MVCArray.cast(data) : jsifyList(data));
  }
  set map(GMap map) => $unsafe.setMap(map);
  set options(HeatmapLayerOptions options) => $unsafe.setOptions(options);
}