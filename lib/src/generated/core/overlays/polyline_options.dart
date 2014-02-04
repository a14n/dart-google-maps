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

class PolylineOptions extends jsw.TypedJsObject {
  static PolylineOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new PolylineOptions.fromJsObject(jsObject);
  PolylineOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  PolylineOptions();

  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  bool get clickable => $unsafe['clickable'];
  set draggable(bool draggable) => $unsafe['draggable'] = draggable;
  bool get draggable => $unsafe['draggable'];
  set editable(bool editable) => $unsafe['editable'] = editable;
  bool get editable => $unsafe['editable'];
  set geodesic(bool geodesic) => $unsafe['geodesic'] = geodesic;
  bool get geodesic => $unsafe['geodesic'];
  set icons(List<IconSequence> icons) => $unsafe['icons'] = jsw.jsify(icons);
  List<IconSequence> get icons => jsw.TypedJsArray.$wrapSerializables($unsafe['icons'], IconSequence.$wrap);
  set map(GMap map) => $unsafe['map'] = map == null ? null : map.$unsafe;
  GMap get map => GMap.$wrap($unsafe['map']);
  dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ get path {
    final result = $unsafe['path'];
    if (MVCArray.isInstance(result)) {
      return MVCArray.$wrapSerializables(result, LatLng.$wrap);
    } else {
      return jsw.TypedJsArray.$wrapSerializables(result, LatLng.$wrap);
    }
  }
  set path(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path) => $unsafe['path'] = path == null ? null : path is js.JsArray ? path : path is List ? jsw.jsify(path) : path;
  set strokeColor(String strokeColor) => $unsafe['strokeColor'] = strokeColor;
  String get strokeColor => $unsafe['strokeColor'];
  set strokeOpacity(num strokeOpacity) => $unsafe['strokeOpacity'] = strokeOpacity;
  num get strokeOpacity => $unsafe['strokeOpacity'];
  set strokeWeight(num strokeWeight) => $unsafe['strokeWeight'] = strokeWeight;
  num get strokeWeight => $unsafe['strokeWeight'];
  set visible(bool visible) => $unsafe['visible'] = visible;
  bool get visible => $unsafe['visible'];
  set zIndex(num zIndex) => $unsafe['zIndex'] = zIndex;
  num get zIndex => $unsafe['zIndex'];
}
