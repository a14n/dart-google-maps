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

class TransitDetails extends jsw.TypedProxy {
  static TransitDetails cast(js.Proxy proxy) => proxy == null ? null : new TransitDetails.fromProxy(proxy);

  TransitDetails() : super();
  TransitDetails.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  TransitStop get arrivalStop => TransitStop.cast($unsafe.arrival_stop);
  Time get arrivalTime => Time.cast($unsafe.arrival_time);
  TransitStop get departureStop => TransitStop.cast($unsafe.departure_stop);
  Time get departureTime => Time.cast($unsafe.departure_time);
  String get headsign => $unsafe.headsign;
  num get headway => $unsafe.headway;
  TransitLine get line => TransitLine.cast($unsafe.line);
  num get numStops => $unsafe.num_stops;
  set arrivalStop(TransitStop arrivalStop) => $unsafe.arrival_stop = arrivalStop;
  set arrivalTime(Time arrivalTime) => $unsafe.arrival_time = arrivalTime;
  set departureStop(TransitStop departureStop) => $unsafe.departure_stop = departureStop;
  set departureTime(Time departureTime) => $unsafe.departure_time = departureTime;
  set headsign(String headsign) => $unsafe.headsign = headsign;
  set headway(num headway) => $unsafe.headway = headway;
  set line(TransitLine line) => $unsafe.line = line;
  set numStops(num numStops) => $unsafe.num_stops = numStops;
}