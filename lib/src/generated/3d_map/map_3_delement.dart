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

part of '../3d_map.dart';

@JS('google.maps.maps3d.Map3DElement')
extension type Map3DElement._(HTMLElement _)
    implements HTMLElement, Map3DElementOptions {
  external Map3DElement([
    Map3DElementOptions? options,
  ]);
  external LatLngBoundsOrLatLngBoundsLiteral? bounds;
  external JSAny? /*(LatLngAltitude|LatLngAltitudeLiteral)?*/ center;
  external bool? defaultLabelsDisabled;
  external num? heading;
  external num? maxAltitude;
  external num? maxHeading;
  external num? maxTilt;
  external num? minAltitude;
  external num? minHeading;
  external num? minTilt;
  external num? range;
  external num? roll;
  external num? tilt;
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
