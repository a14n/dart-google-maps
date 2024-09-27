// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../marker.dart';

extension type Icon._(JSObject _) implements JSObject {
  external Icon({
    String url,
    Point? anchor,
    Point? labelOrigin,
    Point? origin,
    Size? scaledSize,
    Size? size,
  });
  external String url;
  external Point? anchor;
  external Point? labelOrigin;
  external Point? origin;
  external Size? scaledSize;
  external Size? size;
}
