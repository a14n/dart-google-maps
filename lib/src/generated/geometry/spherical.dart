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

part of '../geometry.dart';

@JS('google.maps.geometry.spherical')
extension type spherical._(JSObject _) implements JSObject {
  external static num computeArea(
    JSAny /*Array<LatLng|LatLngLiteral>|MVCArray<LatLng|LatLngLiteral>|Circle|CircleLiteral|LatLngBounds|LatLngBoundsLiteral*/
        path, [
    num? radiusOfSphere,
  ]);
  external static num computeDistanceBetween(
    LatLngOrLatLngLiteral from,
    LatLngOrLatLngLiteral to, [
    num? radius,
  ]);
  external static num computeHeading(
    LatLngOrLatLngLiteral from,
    LatLngOrLatLngLiteral to,
  );
  external static num computeLength(
    JSAny /*Array<LatLng|LatLngLiteral>|MVCArray<LatLng|LatLngLiteral>*/ path, [
    num? radius,
  ]);
  external static LatLng computeOffset(
    LatLngOrLatLngLiteral from,
    num distance,
    num heading, [
    num? radius,
  ]);
  external static LatLng? computeOffsetOrigin(
    LatLngOrLatLngLiteral to,
    num distance,
    num heading, [
    num? radius,
  ]);
  external static num computeSignedArea(
    JSAny /*Array<LatLng|LatLngLiteral>|MVCArray<LatLng|LatLngLiteral>*/ loop, [
    num? radius,
  ]);
  external static LatLng interpolate(
    LatLngOrLatLngLiteral from,
    LatLngOrLatLngLiteral to,
    num fraction,
  );
}
