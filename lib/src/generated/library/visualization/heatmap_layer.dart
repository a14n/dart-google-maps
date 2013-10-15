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
  static HeatmapLayer cast(js.JsObject jsObject) => jsObject == null ? null : new HeatmapLayer.fromJsObject(jsObject);
  HeatmapLayer.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  HeatmapLayer([HeatmapLayerOptions opts])
      : super(maps['visualization']['HeatmapLayer'], [opts]);

  MVCArray<dynamic/*LatLng|WeightedLocation*/ > get data => MVCArray.castListOfSerializables($unsafe.callMethod('getData'), (e) => LatLng.isInstance(e) ? LatLng.cast(e) : WeightedLocation.cast(e));
  GMap get map => GMap.cast($unsafe.callMethod('getMap'));
  set data(dynamic /*MVCArray.<LatLng|WeightedLocation>|Array.<LatLng|WeightedLocation>*/ data) {
    $unsafe.callMethod('setData', [data == null ? null : data is js.Serializable ? data : js.jsify(data)]);
  }
  set map(GMap map) => $unsafe.callMethod('setMap', [map]);
  set options(HeatmapLayerOptions options) => $unsafe.callMethod('setOptions', [options]);
}
