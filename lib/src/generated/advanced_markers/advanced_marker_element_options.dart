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

part of '../advanced_markers.dart';

extension type AdvancedMarkerElementOptions._(JSObject _) implements JSObject {
  external AdvancedMarkerElementOptions({
    CollisionBehavior? collisionBehavior,
    Node? content,
    bool? gmpClickable,
    bool? gmpDraggable,
    Map? map,
    JSAny? /*(LatLng|LatLngLiteral|LatLngAltitude|LatLngAltitudeLiteral)?*/
        position,
    String? title,
    num? zIndex,
  });
  external CollisionBehavior? collisionBehavior;
  external Node? content;
  external bool? gmpClickable;
  external bool? gmpDraggable;
  external Map? map;
  external JSAny? /*(LatLng|LatLngLiteral|LatLngAltitude|LatLngAltitudeLiteral)?*/
      position;
  external String? title;
  external num? zIndex;
}
