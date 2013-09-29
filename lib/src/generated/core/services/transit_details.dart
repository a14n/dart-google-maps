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

class TransitDetails extends jsw.TypedJsObject {
  static TransitDetails cast(js.JsObject jsObject) => jsObject == null ? null : new TransitDetails.fromJsObject(jsObject);
  TransitDetails.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  TransitDetails() : super();

  set arrivalStop(TransitStop arrivalStop) => $unsafe['arrivalStop'] = arrivalStop;
  TransitStop get arrivalStop => TransitStop.cast($unsafe['arrivalStop']);
  set arrivalTime(Time arrivalTime) => $unsafe['arrivalTime'] = arrivalTime;
  Time get arrivalTime => Time.cast($unsafe['arrivalTime']);
  set departureStop(TransitStop departureStop) => $unsafe['departureStop'] = departureStop;
  TransitStop get departureStop => TransitStop.cast($unsafe['departureStop']);
  set departureTime(Time departureTime) => $unsafe['departureTime'] = departureTime;
  Time get departureTime => Time.cast($unsafe['departureTime']);
  set headsign(String headsign) => $unsafe['headsign'] = headsign;
  String get headsign => $unsafe['headsign'];
  set headway(num headway) => $unsafe['headway'] = headway;
  num get headway => $unsafe['headway'];
  set line(TransitLine line) => $unsafe['line'] = line;
  TransitLine get line => TransitLine.cast($unsafe['line']);
  set numStops(num numStops) => $unsafe['numStops'] = numStops;
  num get numStops => $unsafe['numStops'];
}
