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
abstract class _GeocoderResult implements JsInterface {
  external factory _GeocoderResult();

  List<GeocoderAddressComponent> _address_components;
  List<GeocoderAddressComponent> get addressComponents => _address_components;
  void set addressComponents(List<GeocoderAddressComponent> addressComponents) {
    _address_components = addressComponents;
  }
  String _formatted_address;
  String get formattedAddress => _formatted_address;
  void set formattedAddress(String formattedAddress) {
    _formatted_address = formattedAddress;
  }
  GeocoderGeometry geometry;
  bool _partial_match;
  bool get partialMatch => _partial_match;
  void set partialMatch(bool partialMatch) {
    _partial_match = partialMatch;
  }
  String _place_id;
  String get placeId => _place_id;
  void set placeId(String placeId) {
    _place_id = placeId;
  }
  List<String> _postcode_localities;
  List<String> get postcodeLocalities => _postcode_localities;
  void set postcodeLocalities(List<String> postcodeLocalities) {
    _postcode_localities = postcodeLocalities;
  }
  List<String> types;
}
