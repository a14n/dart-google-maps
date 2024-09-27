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

extension type GeocoderAddressComponent._(JSObject _) implements JSObject {
  external GeocoderAddressComponent({
    String long_name,
    String short_name,
    JSArray<JSString> types,
  });
  @JS('long_name')
  external String _longName;
  String get longName => _longName;
  set longName(String value) => _longName = value;
  @JS('short_name')
  external String _shortName;
  String get shortName => _shortName;
  set shortName(String value) => _shortName = value;
  @JS('types')
  external JSArray<JSString> _types;
  List<String> get types => _types.toDart.map((type) => type.toDart).toList();
  set types(List<String> value) => _types = value.jsify() as JSArray<JSString>;
}
