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

class Spherical {
  static num computeArea(Object path, [num radius]) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeArea(path, radius).value;
    } else {
      throw new UnsupportedError("Parameter must be of type MVCArray<LatLng> or List<LatLng>");
    }
  }
  static num computeDistanceBetween(LatLng from, LatLng to, [num radius]) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeDistanceBetween(from, to, radius).value;
  static num computeHeading(LatLng from, LatLng to) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeHeading(from, to).value;
  static num computeLength(Object path, [num radius]) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeLength(path, radius).value;
    } else {
      throw new UnsupportedError("Parameter must be of type MVCArray<LatLng> or List<LatLng>");
    }
  }
  static LatLng computeOffset(LatLng from, num distance, num heading, [num radius]) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeOffset(from, distance, heading, radius).map(LatLng.INSTANCIATOR).value;
  static LatLng computeOffsetOrigin(LatLng to, num distance, num heading, [num radius]) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeOffsetOrigin(to, distance, heading, radius).map(LatLng.INSTANCIATOR).value;
  static num computeSignedArea(Object loop, [num radius]) {
    if (loop is MVCArray<LatLng> || loop is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeSignedArea(loop, radius).value;
    } else {
      throw new UnsupportedError("Parameter must be of type MVCArray<LatLng> or List<LatLng>");
    }
  }
  static LatLng interpolate(LatLng from, LatLng to, num fraction) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.interpolate(from, to, fraction).map(LatLng.INSTANCIATOR).value;
}