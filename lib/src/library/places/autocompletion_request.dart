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

part of google_maps_places;

class AutocompletionRequest extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new AutocompletionRequest.fromJsProxy(jsProxy);

  AutocompletionRequest() : super();
  AutocompletionRequest.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLngBounds get bounds => $.bounds.map(LatLngBounds.INSTANCIATOR).value;
  ComponentRestrictions get componentRestrictions => $.componentRestrictions.map(ComponentRestrictions.INSTANCIATOR).value;
  String get input => $.input.value;
  LatLng get location => $.location.map(LatLng.INSTANCIATOR).value;
  num get offset => $.offset.value;
  num get radius => $.radius.value;
  List<String> get types => $.types.map((js.Proxy jsProxy) => new jsw.JsList<String>.fromJsProxy(jsProxy, null)).value;

  set bounds(LatLngBounds bounds) => $.bounds = bounds;
  set componentRestrictions(ComponentRestrictions componentRestrictions) => $.componentRestrictions = componentRestrictions;
  set input(String input) => $.input = input;
  set location(LatLng location) => $.location = location;
  set offset(num offset) => $.offset = offset;
  set radius(num radius) => $.radius = radius;
  set types(List<String> types) => $.types = types;
}