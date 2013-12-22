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

class DynamicMapsEngineMouseEvent extends jsw.TypedJsObject {
  static DynamicMapsEngineMouseEvent $wrap(js.JsObject jsObject) => jsObject == null ? null : new DynamicMapsEngineMouseEvent.fromJsObject(jsObject);
  DynamicMapsEngineMouseEvent.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DynamicMapsEngineMouseEvent()
      : super();

  void getDetails(void callback(MapsEngineMouseEvent e)) =>
  $unsafe.callMethod('getDetails', [(e) => callback(MapsEngineMouseEvent.$wrap(e))]);

  set featureId(String featureId) => $unsafe['featureId'] = featureId;
  String get featureId => $unsafe['featureId'];
  set latLng(LatLng latLng) => $unsafe['latLng'] = latLng == null ? null : latLng.$unsafe;
  LatLng get latLng => LatLng.$wrap($unsafe['latLng']);
}
