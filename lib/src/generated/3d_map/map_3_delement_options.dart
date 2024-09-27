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

extension type Map3DElementOptions._(JSObject _) implements JSObject {
  external Map3DElementOptions({
    LatLngBoundsOrLatLngBoundsLiteral? bounds,
    JSAny? /*(LatLngAltitude|LatLngAltitudeLiteral)?*/ center,
    bool? defaultLabelsDisabled,
    bool? defaultUIDisabled,
    num? heading,
    num? maxAltitude,
    num? maxHeading,
    num? maxTilt,
    num? minAltitude,
    num? minHeading,
    num? minTilt,
    num? range,
    num? roll,
    num? tilt,
  });
  external LatLngBoundsOrLatLngBoundsLiteral? bounds;
  external JSAny? /*(LatLngAltitude|LatLngAltitudeLiteral)?*/ center;
  external bool? defaultLabelsDisabled;
  external bool? defaultUIDisabled;
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
}
