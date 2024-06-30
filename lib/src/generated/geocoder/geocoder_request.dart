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

part of '../geocoder.dart';

extension type GeocoderRequest._(JSObject _) implements JSObject {
  external GeocoderRequest({
    String? address,
    LatLngBoundsOrLatLngBoundsLiteral? bounds,
    GeocoderComponentRestrictions? componentRestrictions,
    JSArray<ExtraGeocodeComputation>? extraComputations,
    bool? fulfillOnZeroResults,
    String? language,
    LatLngOrLatLngLiteral? location,
    String? placeId,
    String? region,
  });
  external String? address;
  external LatLngBoundsOrLatLngBoundsLiteral? bounds;
  external GeocoderComponentRestrictions? componentRestrictions;
  @JS('extraComputations')
  external JSArray<ExtraGeocodeComputation>? _extraComputations;
  List<ExtraGeocodeComputation>? get extraComputations =>
      _extraComputations?.toDart;
  set extraComputations(List<ExtraGeocodeComputation>? value) =>
      _extraComputations = value?.toJS;
  external bool? fulfillOnZeroResults;
  external String? language;
  external LatLngOrLatLngLiteral? location;
  external String? placeId;
  external String? region;
}
