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

part of google_maps.src.places;

@anonymous
abstract class _PlaceResult implements JsInterface {
  external factory _PlaceResult();

  List<GeocoderAddressComponent> _address_components;
  List<GeocoderAddressComponent> get addressComponents => _address_components;
  void set addressComponents(List<GeocoderAddressComponent> addressComponents) {
    _address_components = addressComponents;
  }
  List<PlaceAspectRating> aspects;
  String _formatted_address;
  String get formattedAddress => _formatted_address;
  void set formattedAddress(String formattedAddress) {
    _formatted_address = formattedAddress;
  }
  String _formatted_phone_number;
  String get formattedPhoneNumber => _formatted_phone_number;
  void set formattedPhoneNumber(String formattedPhoneNumber) {
    _formatted_phone_number = formattedPhoneNumber;
  }
  PlaceGeometry geometry;
  List<String> _html_attributions;
  List<String> get htmlAttributions => _html_attributions;
  void set htmlAttributions(List<String> htmlAttributions) {
    _html_attributions = htmlAttributions;
  }
  String icon;
  String _international_phone_number;
  String get internationalPhoneNumber => _international_phone_number;
  void set internationalPhoneNumber(String internationalPhoneNumber) {
    _international_phone_number = internationalPhoneNumber;
  }
  String name;
  bool _permanently_closed;
  bool get permanentlyClosed => _permanently_closed;
  void set permanentlyClosed(bool permanentlyClosed) {
    _permanently_closed = permanentlyClosed;
  }
  List<PlacePhoto> photos;
  String _place_id;
  String get placeId => _place_id;
  void set placeId(String placeId) {
    _place_id = placeId;
  }
  num _price_level;
  num get priceLevel => _price_level;
  void set priceLevel(num priceLevel) {
    _price_level = priceLevel;
  }
  num rating;
  List<PlaceReview> reviews;
  List<String> types;
  String url;
  num _utc_offset;
  num get utcOffset => _utc_offset;
  void set utcOffset(num utcOffset) {
    _utc_offset = utcOffset;
  }
  String vicinity;
  String website;
}
