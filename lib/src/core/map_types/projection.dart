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

part of google_maps;

class Projection extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new Projection.fromJsProxy(jsProxy);

  Projection() : super();
  Projection.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  void set_fromLatLngToPoint(Point fromLatLngToPoint(LatLng latLng, [Point point])) {
    $.fromLatLngToPoint = new jsw.Callback.many((Option<js.Proxy> latLng, [Option<js.Proxy> point]) {
      if (?point) {
        return fromLatLngToPoint(latLng.map((e) => new LatLng.fromJsProxy(e)).value, point.map((e) => new Point.fromJsProxy(e)).value);
      } else {
        return fromLatLngToPoint(latLng.map((e) => new LatLng.fromJsProxy(e)).value);
      }
    });
  }
  void set_fromPointToLatLng(LatLng fromPointToLatLng(Point pixel, [bool nowrap])) {
    $.fromPointToLatLng = new jsw.Callback.many((Option<js.Proxy> pixel, [Option<bool> nowrap]) {
      if (?nowrap) {
        return fromPointToLatLng(pixel.map((e) => new Point.fromJsProxy(e)).value, nowrap.value);
      } else {
        return fromPointToLatLng(pixel.map((e) => new Point.fromJsProxy(e)).value);
      }
    });
  }

  Point fromLatLngToPoint(LatLng latLng, [Point point]) => $.fromLatLngToPoint(latLng, point).map(Point.INSTANCIATOR).value;
  LatLng fromPointToLatLng(Point pixel, [bool nowrap]) => $.fromPointToLatLng(pixel, nowrap).map(LatLng.INSTANCIATOR).value;
}