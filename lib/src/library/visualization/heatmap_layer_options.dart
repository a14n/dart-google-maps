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

class HeatmapLayerOptions extends jsw.TypedProxy {
  static HeatmapLayerOptions cast(js.Proxy proxy) => proxy == null ? null : new HeatmapLayerOptions.fromProxy(proxy);

  HeatmapLayerOptions() : super();
  HeatmapLayerOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  MVCArray<LatLng> get data => MVCArray.castListOfSerializables($unsafe['data'], LatLng.cast);
  bool get dissipating => $unsafe['dissipating'];
  List<String> get gradient => jsw.JsArrayToListAdapter.cast($unsafe['gradient']);
  GMap get map => $unsafe['map'];
  num get maxIntensity => $unsafe['maxIntensity'];
  num get opacity => $unsafe['opacity'];
  num get radius => $unsafe['radius'];
  set data(MVCArray<LatLng> data) => $unsafe['data'] = data;
  set dissipating(bool dissipating) => $unsafe['dissipating'] = dissipating;
  set gradient(List<String> gradient) => $unsafe['gradient'] = jsifyList(gradient);
  set map(GMap map) => $unsafe['map'] = map;
  set maxIntensity(num maxIntensity) => $unsafe['maxIntensity'] = maxIntensity;
  set opacity(num opacity) => $unsafe['opacity'] = opacity;
  set radius(num radius) => $unsafe['radius'] = radius;
}