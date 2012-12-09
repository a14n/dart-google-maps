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

class Symbol extends jsw.IsJsProxy {
  Symbol() : super();
  Symbol.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  Point get anchor => $.anchor.map(Point.INSTANCIATOR).value;
  set anchor(Point anchor) => $.anchor = anchor;
  String get fillColor => $.fillColor.value;
  set fillColor(String fillColor) => $.fillColor = fillColor;
  num get fillOpacity => $.fillOpacity.value;
  set fillOpacity(num fillOpacity) => $.fillOpacity = fillOpacity;
  Object get path {
    final result = $.path.value;
    if (result is String) {
      return result;
    } else if (result is js.Proxy) {
      return SymbolPath.find(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  set path(Object path) {
    if (path is String || path is SymbolPath) {
      $.path = path;
    } else {
      throw new UnsupportedError("Parameter must be of type String or SymbolPath");
    }
  }
  num get rotation => $.rotation.value;
  set rotation(num rotation) => $.rotation = rotation;
  num get scale => $.scale.value;
  set scale(num scale) => $.scale = scale;
  String get strokeColor => $.strokeColor.value;
  set strokeColor(String strokeColor) => $.strokeColor = strokeColor;
  num get strokeOpacity => $.strokeOpacity.value;
  set strokeOpacity(num strokeOpacity) => $.strokeOpacity = strokeOpacity;
  num get strokeWeight => $.strokeWeight.value;
  set strokeWeight(num strokeWeight) => $.strokeWeight = strokeWeight;
}