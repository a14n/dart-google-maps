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

@wrapper abstract class GSymbol extends jsw.TypedJsObject {
  static GSymbol cast(js.JsObject jsObject) => null;
  GSymbol() : super();

  Point anchor;
  String fillColor;
  num fillOpacity;
  dynamic/*SymbolPath|string*/ get path {
    final result = $unsafe['path'];
    if (result is int) {
      return SymbolPath.find(result);
    } else {
      return result;
    }
  }
  set path(dynamic/*SymbolPath|string*/ path);
  num rotation;
  num scale;
  String strokeColor;
  num strokeOpacity;
  num strokeWeight;
}
