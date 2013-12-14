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

@wrapper abstract class PolylineOptions extends jsw.TypedJsObject {
  PolylineOptions();

  bool clickable;
  bool draggable;
  bool  editable;
  bool geodesic;
  List<IconSequence> icons;
  GMap map;
  dynamic/*MVCArray.<LatLng>|Array.<LatLng>*/ get path {
    final result = $unsafe['path'];
    if (MVCArray.isInstance(result)) {
      return MVCArray.$wrapSerializables(result, LatLng.$wrap);
    } else {
      return jsw.TypedJsArray.$wrapSerializables(result, LatLng.$wrap);
    }
  }
  set path(dynamic/*MVCArray.<LatLng>|Array.<LatLng>*/ path) => $unsafe['path'] = path == null ? null : path is js.JsArray ? path : path is List ? jsw.jsify(path) : path;
  String strokeColor;
  num strokeOpacity;
  num strokeWeight;
  bool visible;
  num zIndex;
}
