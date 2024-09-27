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

part of '../3d_map.dart';

@JS('google.maps.maps3d.Polygon3DElement')
extension type Polygon3DElement._(HTMLElement _)
    implements HTMLElement, Polygon3DElementOptions {
  external Polygon3DElement([
    Polygon3DElementOptions? options,
  ]);
  external AltitudeMode? altitudeMode;
  external bool? drawsOccludedSegments;
  external bool? extruded;
  external String? fillColor;
  external bool? geodesic;
  external JSIterable<
          JSIterable<
              JSAny /*LatLngAltitude|LatLngAltitudeLiteral|LatLngLiteral*/ >>?
      innerCoordinates;
  external JSIterable<
          JSAny /*LatLngAltitude|LatLngAltitudeLiteral|LatLngLiteral*/ >?
      outerCoordinates;
  external String? strokeColor;
  external num? strokeWidth;
  external num? zIndex;
  external void addEventListener(
    String type,
    JSAny /*EventListener|EventListenerObject*/ listener, [
    JSAny? /*(boolean|AddEventListenerOptions)?*/ options,
  ]);
  external void removeEventListener(
    String type,
    JSAny /*EventListener|EventListenerObject*/ listener, [
    JSAny? /*(boolean|EventListenerOptions)?*/ options,
  ]);
}
