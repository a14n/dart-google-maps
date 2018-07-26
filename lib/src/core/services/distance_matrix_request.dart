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
abstract class _DistanceMatrixRequest implements JsInterface {
  factory _DistanceMatrixRequest() => null;

  bool avoidFerries;
  bool avoidHighways;
  bool avoidTolls;
  dynamic _destinations;
  List<dynamic /*LatLng|String*/ > get destinations =>
      (JsListCodec<dynamic /*LatLng|String*/ >(ChainedCodec()
            ..add(JsInterfaceCodec<LatLng>(
                (o) => LatLng.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['LatLng'] as JsFunction)))
            ..add(IdentityCodec<String>())))
          .decode(_destinations as JsArray);
  void set destinations(List<dynamic /*LatLng|String*/ > destinations) {
    _destinations = (JsListCodec<dynamic /*LatLng|String*/ >(ChainedCodec()
          ..add(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))
          ..add(IdentityCodec<String>())))
        .encode(destinations);
  }

  DrivingOptions drivingOptions;
  dynamic _origins;
  List<dynamic /*LatLng|String*/ > get origins =>
      (JsListCodec<dynamic /*LatLng|String*/ >(ChainedCodec()
            ..add(JsInterfaceCodec<LatLng>(
                (o) => LatLng.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['LatLng'] as JsFunction)))
            ..add(IdentityCodec<String>())))
          .decode(_origins as JsArray);
  void set origins(List<dynamic /*LatLng|String*/ > origins) {
    _origins = (JsListCodec<dynamic /*LatLng|String*/ >(ChainedCodec()
          ..add(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))
          ..add(IdentityCodec<String>())))
        .encode(origins);
  }

  String region;
  TransitOptions transitOptions;
  TravelMode travelMode;
  UnitSystem unitSystem;
}
