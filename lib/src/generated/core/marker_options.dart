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

part of '../google_maps_core.dart';

@JsName()
@anonymous
abstract class MarkerOptions {
  factory MarkerOptions() => $js();
  Point? anchorPoint;
  Animation? animation;
  bool? clickable;
  Object? /*String?|CollisionBehavior?*/ collisionBehavior;
  bool? crossOnDrag;
  String? cursor;
  bool? draggable;
  Object? /*String?|Icon?|GSymbol?*/ icon;
  Object? /*String?|MarkerLabel?*/ label;
  Object? /*GMap?|StreetViewPanorama?*/ map;
  num? opacity;
  bool? optimized;
  LatLng? position;
  MarkerShape? shape;
  String? title;
  bool? visible;
  num? zIndex;
}
