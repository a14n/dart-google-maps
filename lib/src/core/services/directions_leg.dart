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

class DirectionsLeg extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new DirectionsLeg.fromJsProxy(jsProxy);

  DirectionsLeg() : super();
  DirectionsLeg.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  Time get arrivalTime => $.arrival_time.map(Time.INSTANCIATOR).value;
  Time get departureTime => $.departure_time.map(Time.INSTANCIATOR).value;
  Distance get distance => $.distance.map(Distance.INSTANCIATOR).value;
  GDuration get duration => $.duration.map(GDuration.INSTANCIATOR).value;
  String get endAddress => $.end_address.value;
  LatLng get endLocation => $.end_location.map(LatLng.INSTANCIATOR).value;
  String get startAddress => $.start_address.value;
  LatLng get startLocation => $.start_location.map(LatLng.INSTANCIATOR).value;
  List<DirectionsStep> get steps => $.steps.map((js.Proxy jsProxy) => new jsw.JsList<DirectionsStep>.fromJsProxy(jsProxy, DirectionsStep.INSTANCIATOR)).value;
  List<LatLng> get viaWaypoints => $.via_waypoints.map((js.Proxy jsProxy) => new jsw.JsList<LatLng>.fromJsProxy(jsProxy, LatLng.INSTANCIATOR)).value;
}