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

library google_maps_geometry;

import 'package:js/js.dart' as js;
import 'js_wrap.dart' as jsw;
import 'google_maps.dart';

class Encoding {
  static List<LatLng> decodePath(String encodedPath) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.encoding).$.decodePath(encodedPath).map((js.Proxy jsProxy) => new jsw.JsList<LatLng>.fromJsProxy(jsProxy, LatLng.INSTANCIATOR)).value;
  static String encodePath(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.encoding).$.encodePath(path).value;
    } else {
      throw new IllegalArgumentException(path);
    }
  }
}

class Spherical {
  static num computeArea(Object path, [num radius]) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeArea(path, radius).value;
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  static num computeDistanceBetween(LatLng from, LatLng to, [num radius]) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeDistanceBetween(from, to, radius).value;
  static num computeHeading(LatLng from, LatLng to) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeHeading(from, to).value;
  static num computeLength(Object path, [num radius]) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeLength(path, radius).value;
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  static LatLng computeOffset(LatLng from, num distance, num heading, [num radius]) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeOffset(from, distance, heading, radius).map(LatLng.INSTANCIATOR).value;
  static num computeSignedArea(Object loop, [num radius]) {
    if (loop is MVCArray<LatLng> || loop is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.computeSignedArea(loop, radius).value;
    } else {
      throw new IllegalArgumentException(loop);
    }
  }
  static LatLng interpolate(LatLng from, LatLng to, num fraction) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.interpolate(from, to, fraction).map(LatLng.INSTANCIATOR).value;
}

class Poly {
  static bool containsLocation(LatLng point, Polygon polygon) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.poly).$.containsLocation(point, polygon).value;
  static bool isLocationOnEdge(LatLng point, Object poly, [num tolerance]) {
    if (poly is Polygon || poly is Polyline) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.poly).$.isLocationOnEdge(point, poly, tolerance).value;
    } else {
      throw new IllegalArgumentException(poly);
    }
  }
}