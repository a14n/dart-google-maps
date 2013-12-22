// Copyright (c) 2013, Alexandre Ardhuin
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

class DynamicMapsEngineLayerOptions extends jsw.TypedJsObject {
  static DynamicMapsEngineLayerOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new DynamicMapsEngineLayerOptions.fromJsObject(jsObject);
  DynamicMapsEngineLayerOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DynamicMapsEngineLayerOptions()
      : super();

  set accessToken(String accessToken) => $unsafe['accessToken'] = accessToken;
  String get accessToken => $unsafe['accessToken'];
  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  bool get clickable => $unsafe['clickable'];
  set layerId(String layerId) => $unsafe['layerId'] = layerId;
  String get layerId => $unsafe['layerId'];
  set layerKey(String layerKey) => $unsafe['layerKey'] = layerKey;
  String get layerKey => $unsafe['layerKey'];
  set map(GMap map) => $unsafe['map'] = map == null ? null : map.$unsafe;
  GMap get map => GMap.$wrap($unsafe['map']);
  set mapId(String mapId) => $unsafe['mapId'] = mapId;
  String get mapId => $unsafe['mapId'];
  set suppressInfoWindows(bool suppressInfoWindows) => $unsafe['suppressInfoWindows'] = suppressInfoWindows;
  bool get suppressInfoWindows => $unsafe['suppressInfoWindows'];
}
