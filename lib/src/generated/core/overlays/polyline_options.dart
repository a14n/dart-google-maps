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
  static PolylineOptions cast(js.JsObject jsObject) => jsObject == null ? null : new PolylineOptions.fromJsObject(jsObject);
  PolylineOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  PolylineOptions()
      : super();

  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  bool get clickable => $unsafe['clickable'];
  set draggable(bool draggable) => $unsafe['draggable'] = draggable;
  bool get draggable => $unsafe['draggable'];
  set editable(bool editable) => $unsafe['editable'] = editable;
  bool get editable => $unsafe['editable'];
  set geodesic(bool geodesic) => $unsafe['geodesic'] = geodesic;
  bool get geodesic => $unsafe['geodesic'];
  set icons(List<IconSequence> icons) => $unsafe['icons'] = icons == null ? null : icons is js.Serializable ? icons : js.jsify(icons);
  List<IconSequence> get icons => jsw.TypedJsArray.castListOfSerializables($unsafe['icons'], IconSequence.cast);
  set map(GMap map) => $unsafe['map'] = map;
  GMap get map => GMap.cast($unsafe['map']);
  dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ get path {
    final result = $unsafe['path'];
    if (MVCArray.isInstance(result)) {
      return MVCArray.castListOfSerializables(result, LatLng.cast);
    } else {
      return jsw.TypedJsArray.castListOfSerializables(result, LatLng.cast);
    }
  }
  set path(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path) => $unsafe['path'] = path == null ? null : path is js.Serializable ? path : path is List ? js.jsify(path) : path;
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
