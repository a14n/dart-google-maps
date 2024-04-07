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

extension type MarkerOptions._(JSObject _) implements JSObject {
  external MarkerOptions({
    Point? anchorPoint,
    Animation? animation,
    bool? clickable,
    JSAny? /*(string|CollisionBehavior)?*/ collisionBehavior,
    bool? crossOnDrag,
    String? cursor,
    bool? draggable,
    JSAny? /*(string|Icon|Symbol)?*/ icon,
    JSAny? /*(string|MarkerLabel)?*/ label,
    JSAny? /*(Map|StreetViewPanorama)?*/ map,
    num? opacity,
    bool? optimized,
    LatLngOrLatLngLiteral? position,
    MarkerShape? shape,
    String? title,
    bool? visible,
    num? zIndex,
  });
  external Point? anchorPoint;
  external Animation? animation;
  external bool? clickable;
  external JSAny? /*(string|CollisionBehavior)?*/ collisionBehavior;
  external bool? crossOnDrag;
  external String? cursor;
  external bool? draggable;
  external JSAny? /*(string|Icon|Symbol)?*/ icon;
  external JSAny? /*(string|MarkerLabel)?*/ label;
  external JSAny? /*(Map|StreetViewPanorama)?*/ map;
  external num? opacity;
  external bool? optimized;
  external LatLngOrLatLngLiteral? position;
  external MarkerShape? shape;
  external String? title;
  external bool? visible;
  external num? zIndex;
}
