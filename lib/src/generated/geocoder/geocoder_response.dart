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

part of '../geocoder.dart';

extension type GeocoderResponse._(JSObject _) implements JSObject {
  external GeocoderResponse({
    JSArray<GeocoderResult> results,
    AddressDescriptor? address_descriptor,
    PlacePlusCode? plus_code,
  });
  @JS('results')
  external JSArray<GeocoderResult> _results;
  List<GeocoderResult> get results => _results.toDart;
  set results(List<GeocoderResult> value) => _results = value.toJS;
  @JS('address_descriptor')
  external AddressDescriptor? _addressDescriptor;
  AddressDescriptor? get addressDescriptor => _addressDescriptor;
  set addressDescriptor(AddressDescriptor? value) => _addressDescriptor = value;
  @JS('plus_code')
  external PlacePlusCode? _plusCode;
  PlacePlusCode? get plusCode => _plusCode;
  set plusCode(PlacePlusCode? value) => _plusCode = value;
}
