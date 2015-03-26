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

@anonymous
abstract class _GSymbol implements JsInterface {
  external factory _GSymbol();

  Point anchor;
  String fillColor;
  num fillOpacity;
  // SymbolPath|String path
  dynamic _path;
  /*SymbolPath|String*/ get path {
    final value = _path;
    if (value == null) return null;
    if (value is int) return symbolPathCodec.decode(value);
    if (value is String) return value;
    throw 'bad type';
  }
  void set path(/*SymbolPath|String*/ path) {
    if (path == null) _path = null;
    else if (path is SymbolPath) _path = symbolPathCodec.encode(path);
    else if (path is String) _path = path;
    else throw 'bad type';
  }
  num rotation;
  num scale;
  String strokeColor;
  num strokeOpacity;
  num strokeWeight;
}
