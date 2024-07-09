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

part of '../image_overlay.dart';

extension type Projection._(JSObject _) implements JSObject {
  factory Projection() => JSObject() as Projection;
  Point? Function(
    LatLngOrLatLngLiteral latLng, [
    Point? point,
  ]) get fromLatLngToPoint {
    final function = (getProperty('fromLatLngToPoint'.toJS) as JSObject)
        .callMethod('bind'.toJS, [this].toJS) as JSFunction;
    return (latLng, [point]) =>
        function.callAsFunction(null, latLng, point) as Point?;
  }

  void set fromLatLngToPoint(
          Point? Function(
            LatLngOrLatLngLiteral latLng, [
            Point? point,
          ]) fromLatLngToPoint) =>
      setProperty('fromLatLngToPoint'.toJS, fromLatLngToPoint.toJS);
  LatLng? Function(
    Point? pixel, [
    bool? noClampNoWrap,
  ]) get fromPointToLatLng {
    final function = (getProperty('fromPointToLatLng'.toJS) as JSObject)
        .callMethod('bind'.toJS, [this].toJS) as JSFunction;
    return (pixel, [noClampNoWrap]) =>
        function.callAsFunction(null, pixel, noClampNoWrap?.toJS) as LatLng?;
  }

  void set fromPointToLatLng(
          LatLng? Function(
            Point pixel, [
            bool? noClampNoWrap,
          ]) fromPointToLatLng) =>
      setProperty('fromPointToLatLng'.toJS, fromPointToLatLng.toJS);
}
