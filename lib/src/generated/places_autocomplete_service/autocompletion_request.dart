// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../places_autocomplete_service.dart';

extension type AutocompletionRequest._(JSObject _) implements JSObject {
  external AutocompletionRequest({
    String input,
    LatLngBoundsOrLatLngBoundsLiteral? bounds,
    ComponentRestrictions? componentRestrictions,
    String? language,
    LatLng? location,
    LocationBias? locationBias,
    LocationRestriction? locationRestriction,
    num? offset,
    LatLngOrLatLngLiteral? origin,
    num? radius,
    String? region,
    AutocompleteSessionToken? sessionToken,
    JSArray<JSString>? types,
  });
  external String input;
  external LatLngBoundsOrLatLngBoundsLiteral? bounds;
  external ComponentRestrictions? componentRestrictions;
  external String? language;
  external LatLng? location;
  external LocationBias? locationBias;
  external LocationRestriction? locationRestriction;
  external num? offset;
  external LatLngOrLatLngLiteral? origin;
  external num? radius;
  external String? region;
  external AutocompleteSessionToken? sessionToken;
  @JS('types')
  external JSArray<JSString>? _types;
  List<String>? get types => _types?.toDart.map((type) => type.toDart).toList();
  set types(List<String>? value) =>
      _types = value.jsify() as JSArray<JSString>?;
}
