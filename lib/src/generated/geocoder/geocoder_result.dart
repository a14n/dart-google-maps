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

extension type GeocoderResult._(JSObject _) implements JSObject {
  external GeocoderResult({
    JSArray<GeocoderAddressComponent> address_components,
    String formatted_address,
    GeocoderGeometry geometry,
    String place_id,
    JSArray<JSString> types,
    AddressDescriptor? address_descriptor,
    bool? partial_match,
    PlacePlusCode? plus_code,
    JSArray<JSString>? postcode_localities,
  });
  @JS('address_components')
  external JSArray<GeocoderAddressComponent> _addressComponents;
  JSArray<GeocoderAddressComponent> get addressComponents => _addressComponents;
  set addressComponents(JSArray<GeocoderAddressComponent> value) =>
      _addressComponents = value;
  @JS('formatted_address')
  external String _formattedAddress;
  String get formattedAddress => _formattedAddress;
  set formattedAddress(String value) => _formattedAddress = value;
  external GeocoderGeometry geometry;
  @JS('place_id')
  external String _placeId;
  String get placeId => _placeId;
  set placeId(String value) => _placeId = value;
  @JS('types')
  external JSArray<JSString> _types;
  List<String> get types => _types.dartify() as List<String>;
  set types(List<String> value) => _types = value.jsify() as JSArray<JSString>;
  @JS('address_descriptor')
  external AddressDescriptor? _addressDescriptor;
  AddressDescriptor? get addressDescriptor => _addressDescriptor;
  set addressDescriptor(AddressDescriptor? value) => _addressDescriptor = value;
  @JS('partial_match')
  external bool? _partialMatch;
  bool? get partialMatch => _partialMatch;
  set partialMatch(bool? value) => _partialMatch = value;
  @JS('plus_code')
  external PlacePlusCode? _plusCode;
  PlacePlusCode? get plusCode => _plusCode;
  set plusCode(PlacePlusCode? value) => _plusCode = value;
  @JS('postcode_localities')
  external JSArray<JSString>? _postcodeLocalities;
  JSArray<JSString>? get postcodeLocalities => _postcodeLocalities;
  set postcodeLocalities(JSArray<JSString>? value) =>
      _postcodeLocalities = value;
}
