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

part of google_maps_geometry;

final Spherical spherical = new Spherical();

@wrapper class Spherical extends jsw.TypedJsObject {
  Spherical() : super.fromJsObject(maps['geometry']['spherical']);

  num computeArea(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path, [num radius]) => $unsafe.callMethod('computeArea', [path == null ? null : path is js.JsArray ? path : jsw.jsify(path), radius]);
  @generate num computeDistanceBetween(LatLng from, LatLng to, [num radius]) => null;
  @generate num computeHeading(LatLng from, LatLng to) => null;
  num computeLength(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path, [num radius]) => $unsafe.callMethod('computeLength', [path == null ? null : path is js.JsArray ? path : jsw.jsify(path), radius]);
  @generate LatLng computeOffset(LatLng from, num distance, num heading, [num radius]) => null;
  @generate LatLng computeOffsetOrigin(LatLng to, num distance, num heading, [num radius]) => null;
  num computeSignedArea(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ loop, [num radius]) => $unsafe.callMethod('computeSignedArea', [loop == null ? null : loop is js.JsArray ? loop : jsw.jsify(loop), radius]);
  @generate LatLng interpolate(LatLng from, LatLng to, num fraction) => null;
}