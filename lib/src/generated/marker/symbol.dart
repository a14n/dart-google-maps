// Copyright (c) 2015, Alexandre Ardhuin
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

part of '../marker.dart';

extension type Symbol._(JSObject _) implements JSObject {
  external Symbol({
    JSAny /*SymbolPath|string*/ path,
    Point? anchor,
    String? fillColor,
    num? fillOpacity,
    Point? labelOrigin,
    num? rotation,
    num? scale,
    String? strokeColor,
    num? strokeOpacity,
    num? strokeWeight,
  });
  external JSAny /*SymbolPath|string*/ path;
  external Point? anchor;
  external String? fillColor;
  external num? fillOpacity;
  external Point? labelOrigin;
  external num? rotation;
  external num? scale;
  external String? strokeColor;
  external num? strokeOpacity;
  external num? strokeWeight;
}
