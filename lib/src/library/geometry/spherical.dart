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

class Spherical extends jsw.TypedProxy {
  static Spherical cast(js.Proxy proxy) => proxy == null ? null : new Spherical.fromProxy(proxy);

  Spherical() : super.fromProxy(maps.geometry.spherical);
  Spherical.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  num computeArea(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path, [num radius]) => $unsafe.computeArea(path is List<LatLng> ? jsifyList(path) : path, radius);
  num computeDistanceBetween(LatLng from, LatLng to, [num radius]) => $unsafe.computeDistanceBetween(from, to, radius);
  num computeHeading(LatLng from, LatLng to) => $unsafe.computeHeading(from, to);
  num computeLength(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path, [num radius]) => $unsafe.computeLength(path is List<LatLng> ? jsifyList(path) : path, radius);
  LatLng computeOffset(LatLng from, num distance, num heading, [num radius]) => LatLng.cast($unsafe.computeOffset(from, distance, heading, radius));
  LatLng computeOffsetOrigin(LatLng to, num distance, num heading, [num radius]) => LatLng.cast($unsafe.computeOffsetOrigin(to, distance, heading, radius));
  num computeSignedArea(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ loop, [num radius]) => $unsafe.computeSignedArea(loop is List<LatLng> ? jsifyList(loop) : loop, radius);
  LatLng interpolate(LatLng from, LatLng to, num fraction) => LatLng.cast($unsafe.interpolate(from, to, fraction));
}