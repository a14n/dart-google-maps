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

class GSymbol extends jsw.TypedJsObject {
  static GSymbol $wrap(js.JsObject jsObject) => jsObject == null ? null : new GSymbol.fromJsObject(jsObject);
  GSymbol.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  static bool isInstance(js.JsObject jsObject) => jsObject != null && jsObject['_jsw.type'] == 'google_maps.GSymbol';

  GSymbol() {
    $unsafe['_jsw.type'] = 'google_maps.GSymbol';
  }

  set anchor(Point anchor) => $unsafe['anchor'] = anchor == null ? null : anchor.$unsafe;
  Point get anchor => Point.$wrap($unsafe['anchor']);
  set fillColor(String fillColor) => $unsafe['fillColor'] = fillColor;
  String get fillColor => $unsafe['fillColor'];
  set fillOpacity(num fillOpacity) => $unsafe['fillOpacity'] = fillOpacity;
  num get fillOpacity => $unsafe['fillOpacity'];
  set path(dynamic path) => $unsafe['path'] = path is SymbolPath ? path.$unsafe : path is String ? path : path == null ? null : throw "bad type";
  dynamic get path => ((v3) => ((v2) => v2 != null ? v2 : ((v1) => v1 is String ? v1 : ((v0) => v0)(v1))(v3))(SymbolPath.$wrap(v3)))($unsafe['path']);
  set rotation(num rotation) => $unsafe['rotation'] = rotation;
  num get rotation => $unsafe['rotation'];
  set scale(num scale) => $unsafe['scale'] = scale;
  num get scale => $unsafe['scale'];
  set strokeColor(String strokeColor) => $unsafe['strokeColor'] = strokeColor;
  String get strokeColor => $unsafe['strokeColor'];
  set strokeOpacity(num strokeOpacity) => $unsafe['strokeOpacity'] = strokeOpacity;
  num get strokeOpacity => $unsafe['strokeOpacity'];
  set strokeWeight(num strokeWeight) => $unsafe['strokeWeight'] = strokeWeight;
  num get strokeWeight => $unsafe['strokeWeight'];
}
