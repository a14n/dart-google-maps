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

class TransitDetails extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new TransitDetails.fromJsProxy(jsProxy);

  TransitDetails() : super();
  TransitDetails.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  TransitStop get arrivalStop => $.arrival_stop.map(TransitStop.INSTANCIATOR).value;
  Time get arrivalTime => $.arrival_time.map(Time.INSTANCIATOR).value;
  TransitStop get departureStop => $.departure_stop.map(TransitStop.INSTANCIATOR).value;
  Time get departureTime => $.departure_time.map(Time.INSTANCIATOR).value;
  String get headsign => $.headsign.value;
  num get headway => $.headway.value;
  TransitLine get line => $.line.map(TransitLine.INSTANCIATOR).value;
  num get numStops => $.num_stops.value;
}