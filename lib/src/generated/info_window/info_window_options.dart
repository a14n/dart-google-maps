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

part of '../info_window.dart';

extension type InfoWindowOptions._(JSObject _) implements JSObject {
  external InfoWindowOptions({
    String? ariaLabel,
    JSAny? /*(string|Element|Text)?*/ content,
    bool? disableAutoPan,
    JSAny? /*(string|Element|Text)?*/ headerContent,
    bool? headerDisabled,
    num? maxWidth,
    num? minWidth,
    Size? pixelOffset,
    LatLngOrLatLngLiteral? position,
    num? zIndex,
  });
  external String? ariaLabel;
  external JSAny? /*(string|Element|Text)?*/ content;
  external bool? disableAutoPan;
  external JSAny? /*(string|Element|Text)?*/ headerContent;
  external bool? headerDisabled;
  external num? maxWidth;
  external num? minWidth;
  external Size? pixelOffset;
  external LatLngOrLatLngLiteral? position;
  external num? zIndex;
}
