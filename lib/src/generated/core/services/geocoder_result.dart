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

class GeocoderResult extends jsw.TypedJsObject {
  static GeocoderResult cast(js.JsObject jsObject) => jsObject == null ? null : new GeocoderResult.fromJsObject(jsObject);
  GeocoderResult.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  GeocoderResult() : super();

  set addressComponents(List<GeocoderAddressComponent> addressComponents) => $unsafe['address_components'] = addressComponents == null ? null : addressComponents is js.Serializable ? addressComponents : js.jsify(addressComponents);
  List<GeocoderAddressComponent> get addressComponents => jsw.TypedJsArray.castListOfSerializables($unsafe['address_components'], GeocoderAddressComponent.cast);
  set formattedAddress(String formattedAddress) => $unsafe['formatted_address'] = formattedAddress;
  String get formattedAddress => $unsafe['formatted_address'];
  set geometry(GeocoderGeometry geometry) => $unsafe['geometry'] = geometry;
  GeocoderGeometry get geometry => GeocoderGeometry.cast($unsafe['geometry']);
  set types(List<String> types) => $unsafe['types'] = types == null ? null : types is js.Serializable ? types : js.jsify(types);
  List<String> get types => jsw.TypedJsArray.cast($unsafe['types']);
}
