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

part of google_maps;

@anonymous
abstract class _DistanceMatrixRequest implements JsInterface {
  external factory _DistanceMatrixRequest();

  bool avoidFerries;
  bool avoidHighways;
  bool avoidTolls;
  dynamic _destinations;
  dynamic /*List<LatLng>|List<String>*/ get destinations => (new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
    ..add(new JsListCodec<String>(new IdentityCodec<String>())))
      .decode(_destinations);
  void set destinations(dynamic /*List<LatLng>|List<String>*/ destinations) {
    _destinations = (new ChainedCodec()
      ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
          (o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
      ..add(new JsListCodec<String>(new IdentityCodec<String>())))
        .encode(destinations);
  }
  bool durationInTraffic;
  dynamic _origins;
  dynamic /*List<LatLng>|List<String>*/ get origins => (new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
    ..add(new JsListCodec<String>(new IdentityCodec<String>())))
      .decode(_origins);
  void set origins(dynamic /*List<LatLng>|List<String>*/ origins) {
    _origins = (new ChainedCodec()
      ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
          (o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
      ..add(new JsListCodec<String>(new IdentityCodec<String>())))
        .encode(origins);
  }
  String region;
  TransitOptions transitOptions;
  TravelMode travelMode;
  UnitSystem unitSystem;
}
