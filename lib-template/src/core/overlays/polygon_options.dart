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

part of google_maps;

@wrapper abstract class PolygonOptions extends jsw.TypedJsObject {
  PolygonOptions();

  bool clickable;
  bool draggable;
  bool editable;
  String fillColor;
  num fillOpacity;
  bool geodesic;
  GMap map;
  dynamic/*MVCArray.<MVCArray.<LatLng>>|MVCArray.<LatLng>|Array.<Array.<LatLng>>|Array.<LatLng>*/ get paths {
    final result = $unsafe['paths'];
    if (MVCArray.isInstance(result)) {
      return MVCArray.$wrapSerializables(result, (e) => LatLng.isInstance(e) ? LatLng.$wrap(e) : MVCArray.$wrapSerializables(e, LatLng.$wrap));
    }
    return jsw.TypedJsArray.$wrapSerializables(result, (e) => LatLng.isInstance(e) ? LatLng.$wrap(e) : jsw.TypedJsArray.$wrapSerializables(e, LatLng.$wrap));
  }
  set paths(dynamic/*MVCArray.<MVCArray.<LatLng>>|MVCArray.<LatLng>|Array.<Array.<LatLng>>|Array.<LatLng>*/ paths) => $unsafe['paths'] = paths == null ? null : paths is js.JsArray ? paths : paths is List ? jsw.jsify(paths) : paths;
  String strokeColor;
  num strokeOpacity;
  StrokePosition strokePosition;
  num strokeWeight;
  bool visible;
  num zIndex;
}