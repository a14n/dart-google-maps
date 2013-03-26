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

class GeocoderResult extends jsw.TypedProxy {
  static GeocoderResult cast(js.Proxy proxy) => proxy == null ? null : new GeocoderResult.fromProxy(proxy);

  GeocoderResult() : super();
  GeocoderResult.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  List<GeocoderAddressComponent> get addressComponents => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.address_components, GeocoderAddressComponent.cast);
  String get formattedAddress => $unsafe.formatted_address;
  GeocoderGeometry get geometry => GeocoderGeometry.cast($unsafe.geometry);
  List<String> get types => jsw.JsArrayToListAdapter.cast($unsafe.types);
  set addressComponents(List<GeocoderAddressComponent> addressComponents) => $unsafe.address_components = jsifyList(addressComponents);
  set formattedAddress(String formattedAddress) => $unsafe.formatted_address = formattedAddress;
  set geometry(GeocoderGeometry geometry) => $unsafe.geometry = geometry;
  set types(List<String> types) => $unsafe.types = jsifyList(types);
}