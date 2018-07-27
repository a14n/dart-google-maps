// Copyright (c) 2015, Alexandre Ardhuin
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

part of google_maps.src;

@anonymous
abstract class _DirectionsRequest implements JsInterface {
  factory _DirectionsRequest() => null;

  bool avoidFerries;
  bool avoidHighways;
  bool avoidTolls;
  dynamic _destination;
  dynamic /*LatLng|Place|String*/ get destination => (ChainedCodec()
        ..add(JsInterfaceCodec<LatLng>(
            (o) => LatLng.created(o),
            (o) =>
                o != null &&
                o.instanceof(
                    context['google']['maps']['LatLng'] as JsFunction)))
        ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
        ..add(IdentityCodec<String>()))
      .decode(_destination);
  set destination(dynamic /*LatLng|Place|String*/ destination) {
    _destination = (ChainedCodec()
          ..add(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))
          ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
          ..add(IdentityCodec<String>()))
        .encode(destination);
  }

  DrivingOptions drivingOptions;
  bool optimizeWaypoints;
  dynamic _origin;
  dynamic /*LatLng|Place|String*/ get origin => (ChainedCodec()
        ..add(JsInterfaceCodec<LatLng>(
            (o) => LatLng.created(o),
            (o) =>
                o != null &&
                o.instanceof(
                    context['google']['maps']['LatLng'] as JsFunction)))
        ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
        ..add(IdentityCodec<String>()))
      .decode(_origin);
  set origin(dynamic /*LatLng|Place|String*/ origin) {
    _origin = (ChainedCodec()
          ..add(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))
          ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
          ..add(IdentityCodec<String>()))
        .encode(origin);
  }

  bool provideRouteAlternatives;
  String region;
  TransitOptions transitOptions;
  TravelMode travelMode;
  UnitSystem unitSystem;
  List<DirectionsWaypoint> waypoints;
}
