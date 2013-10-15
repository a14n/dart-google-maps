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

class HeatmapLayerOptions extends jsw.TypedJsObject {
  static HeatmapLayerOptions cast(js.JsObject jsObject) => jsObject == null ? null : new HeatmapLayerOptions.fromJsObject(jsObject);
  HeatmapLayerOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  HeatmapLayerOptions()
      : super();

  MVCArray<LatLng> get data => MVCArray.castListOfSerializables($unsafe['data'], LatLng.cast);
  set data(MVCArray<LatLng> data) => $unsafe['data'] = data;
  set dissipating(bool dissipating) => $unsafe['dissipating'] = dissipating;
  bool get dissipating => $unsafe['dissipating'];
  set gradient(List<String> gradient) => $unsafe['gradient'] = gradient == null ? null : gradient is js.Serializable ? gradient : js.jsify(gradient);
  List<String> get gradient => jsw.TypedJsArray.cast($unsafe['gradient']);
  set map(GMap map) => $unsafe['map'] = map;
  GMap get map => GMap.cast($unsafe['map']);
  set maxIntensity(num maxIntensity) => $unsafe['maxIntensity'] = maxIntensity;
  num get maxIntensity => $unsafe['maxIntensity'];
  set opacity(num opacity) => $unsafe['opacity'] = opacity;
  num get opacity => $unsafe['opacity'];
  set radius(num radius) => $unsafe['radius'] = radius;
  num get radius => $unsafe['radius'];
}
