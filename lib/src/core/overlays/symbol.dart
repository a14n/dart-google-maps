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

class GSymbol extends jsw.TypedProxy {
  static GSymbol cast(js.Proxy proxy) => proxy == null ? null : new GSymbol.fromProxy(proxy);

  GSymbol() : super();
  GSymbol.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  Point get anchor => Point.cast($unsafe['anchor']);
  String get fillColor => $unsafe['fillColor'];
  num get fillOpacity => $unsafe['fillOpacity'];
  dynamic/*SymbolPath|string*/ get path {
    final result = $unsafe['path'];
    if (result is js.Proxy) {
      return SymbolPath.find(result);
    } else {
      return result;
    }
  }
  num get rotation => $unsafe['rotation'];
  num get scale => $unsafe['scale'];
  String get strokeColor => $unsafe['strokeColor'];
  num get strokeOpacity => $unsafe['strokeOpacity'];
  num get strokeWeight => $unsafe['strokeWeight'];
  set anchor(Point anchor) => $unsafe['anchor'] = anchor;
  set fillColor(String fillColor) => $unsafe['fillColor'] = fillColor;
  set fillOpacity(num fillOpacity) => $unsafe['fillOpacity'] = fillOpacity;
  set path(dynamic/*SymbolPath|string*/ path) => $unsafe['path'] = path;
  set rotation(num rotation) => $unsafe['rotation'] = rotation;
  set scale(num scale) => $unsafe['scale'] = scale;
  set strokeColor(String strokeColor) => $unsafe['strokeColor'] = strokeColor;
  set strokeOpacity(num strokeOpacity) => $unsafe['strokeOpacity'] = strokeOpacity;
  set strokeWeight(num strokeWeight) => $unsafe['strokeWeight'] = strokeWeight;
}