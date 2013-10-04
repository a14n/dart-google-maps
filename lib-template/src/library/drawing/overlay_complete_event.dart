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

part of google_maps_drawing;

@wrapper abstract class OverlayCompleteEvent extends jsw.TypedJsObject {
  static OverlayCompleteEvent cast(js.JsObject proxy) => null;

  OverlayCompleteEvent();

  dynamic/*Marker|Polygon|Polyline|Rectangle|Circle*/ get overlay {
    final result = $unsafe['overlay'];
    if (Marker.isInstance(result)) {
      return Marker.cast(result);
    } else if (Polygon.isInstance(result)) {
      return Polygon.cast(result);
    } else if (Polyline.isInstance(result)) {
      return Polyline.cast(result);
    } else if (Rectangle.isInstance(result)) {
      return Rectangle.cast(result);
    } else if (Circle.isInstance(result)) {
      return Circle.cast(result);
    } else {
      return result;
    }
  }
  set overlay(dynamic/*Marker|Polygon|Polyline|Rectangle|Circle*/ overlay);
  @isEnum OverlayType type;
}