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
  external factory _DistanceMatrixRequest();

  bool avoidFerries;
  bool avoidHighways;
  bool avoidTolls;
  dynamic _destinations;
  List<dynamic /*LatLng|String*/ > get destinations =>
      (new JsListCodec<dynamic /*LatLng|String*/ >(new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new IdentityCodec<String>()))).decode(_destinations);
  void set destinations(List<dynamic /*LatLng|String*/ > destinations) {
    _destinations = (new JsListCodec<dynamic /*LatLng|String*/ >(
        new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new IdentityCodec<String>()))).encode(destinations);
  }

  DrivingOptions drivingOptions;
  dynamic _origins;
  List<dynamic /*LatLng|String*/ > get origins =>
      (new JsListCodec<dynamic /*LatLng|String*/ >(new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new IdentityCodec<String>()))).decode(_origins);
  void set origins(List<dynamic /*LatLng|String*/ > origins) {
    _origins = (new JsListCodec<dynamic /*LatLng|String*/ >(new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new IdentityCodec<String>()))).encode(origins);
  }

  String region;
  TransitOptions transitOptions;
  TravelMode travelMode;
  UnitSystem unitSystem;
}
