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

@JS('google.maps.maps3d.Model3DElement')
extension type Model3DElement._(HTMLElement _)
    implements HTMLElement, Model3DElementOptions {
  external Model3DElement([
    Model3DElementOptions? options,
  ]);
  external AltitudeMode? altitudeMode;
  external JSAny? /*(Orientation3D|Orientation3DLiteral)?*/ orientation;
  external JSAny? /*(LatLngLiteral|LatLngAltitude|LatLngAltitudeLiteral)?*/
      position;
  external JSAny? /*(number|Vector3D|Vector3DLiteral)?*/ scale;
  external JSAny? /*(string|URL)?*/ src;
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
