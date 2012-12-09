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

class DirectionsRoute extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new DirectionsRoute.fromJsProxy(jsProxy);

  DirectionsRoute() : super();
  DirectionsRoute.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLngBounds get bounds => new LatLngBounds.fromJsProxy($.bounds.value);
  String get copyrights => $.copyrights.value;
  List<DirectionsLeg> get legs => $.legs.map((js.Proxy jsProxy) => new jsw.JsList<DirectionsLeg>.fromJsProxy(jsProxy, DirectionsLeg.INSTANCIATOR)).value;
  List<LatLng> get overviewPath => $.overview_path.map((js.Proxy jsProxy) => new jsw.JsList<LatLng>.fromJsProxy(jsProxy, LatLng.INSTANCIATOR)).value;
  List<String> get warnings => $.warnings.map((js.Proxy jsProxy) => new jsw.JsList<String>.fromJsProxy(jsProxy, null)).value;
  List<num> get waypointOrder => $.waypoint_order.map((js.Proxy jsProxy) => new jsw.JsList<num>.fromJsProxy(jsProxy, null)).value;
}