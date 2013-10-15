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
  static GSymbol cast(js.JsObject jsObject) => jsObject == null ? null : new GSymbol.fromJsObject(jsObject);
  GSymbol.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  GSymbol()
      : super();

  set anchor(Point anchor) => $unsafe['anchor'] = anchor;
  Point get anchor => Point.cast($unsafe['anchor']);
  set fillColor(String fillColor) => $unsafe['fillColor'] = fillColor;
  String get fillColor => $unsafe['fillColor'];
  set fillOpacity(num fillOpacity) => $unsafe['fillOpacity'] = fillOpacity;
  num get fillOpacity => $unsafe['fillOpacity'];
  dynamic /*SymbolPath|string*/ get path {
    final result = $unsafe['path'];
    if (result is int) {
      return SymbolPath.find(result);
    } else {
      return result;
    }
  }
  set path(dynamic path) => $unsafe['path'] = path;
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
