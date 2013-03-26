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

part of google_maps;

class GeocoderAddressComponent extends jsw.TypedProxy {
  static GeocoderAddressComponent cast(js.Proxy proxy) => proxy == null ? null : new GeocoderAddressComponent.fromProxy(proxy);

  GeocoderAddressComponent() : super();
  GeocoderAddressComponent.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get longName => $unsafe.long_name;
  String get shortName => $unsafe.short_name;
  List<String> get types => jsw.JsArrayToListAdapter.cast($unsafe.types);
  set longName(String longName) => $unsafe.long_name = longName;
  set shortName(String shortName) => $unsafe.short_name = shortName;
  set types(List<String> types) => $unsafe.types = jsifyList(types);
}