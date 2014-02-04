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

part of google_maps_places;

class PlaceResult extends jsw.TypedJsObject {
  static PlaceResult $wrap(js.JsObject jsObject) => jsObject == null ? null : new PlaceResult.fromJsObject(jsObject);
  PlaceResult.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  PlaceResult()
      : super();

  set addressComponents(List<GeocoderAddressComponent> addressComponents) => $unsafe['address_components'] = jsw.jsify(addressComponents);
  List<GeocoderAddressComponent> get addressComponents => jsw.TypedJsArray.$wrapSerializables($unsafe['address_components'], GeocoderAddressComponent.$wrap);
  set aspects(List<PlaceAspectRating> aspects) => $unsafe['aspects'] = jsw.jsify(aspects);
  List<PlaceAspectRating> get aspects => jsw.TypedJsArray.$wrapSerializables($unsafe['aspects'], PlaceAspectRating.$wrap);
  set formattedAddress(String formattedAddress) => $unsafe['formatted_address'] = formattedAddress;
  String get formattedAddress => $unsafe['formatted_address'];
  set formattedPhoneNumber(String formattedPhoneNumber) => $unsafe['formatted_phone_number'] = formattedPhoneNumber;
  String get formattedPhoneNumber => $unsafe['formatted_phone_number'];
  set geometry(PlaceGeometry geometry) => $unsafe['geometry'] = geometry == null ? null : geometry.$unsafe;
  PlaceGeometry get geometry => PlaceGeometry.$wrap($unsafe['geometry']);
  set htmlAttributions(List<String> htmlAttributions) => $unsafe['html_attributions'] = jsw.jsify(htmlAttributions);
  List<String> get htmlAttributions => jsw.TypedJsArray.$wrap($unsafe['html_attributions']);
  set icon(String icon) => $unsafe['icon'] = icon;
  String get icon => $unsafe['icon'];
  set id(String id) => $unsafe['id'] = id;
  String get id => $unsafe['id'];
  set internationalPhoneNumber(String internationalPhoneNumber) => $unsafe['international_phone_number'] = internationalPhoneNumber;
  String get internationalPhoneNumber => $unsafe['international_phone_number'];
  set name(String name) => $unsafe['name'] = name;
  String get name => $unsafe['name'];
  set permanentlyClosed(bool permanentlyClosed) => $unsafe['permanently_closed'] = permanentlyClosed;
  bool get permanentlyClosed => $unsafe['permanently_closed'];
  set photos(List<PlacePhoto> photos) => $unsafe['photos'] = jsw.jsify(photos);
  List<PlacePhoto> get photos => jsw.TypedJsArray.$wrapSerializables($unsafe['photos'], PlacePhoto.$wrap);
  set priceLevel(num priceLevel) => $unsafe['price_level'] = priceLevel;
  num get priceLevel => $unsafe['price_level'];
  set rating(num rating) => $unsafe['rating'] = rating;
  num get rating => $unsafe['rating'];
  set reference(String reference) => $unsafe['reference'] = reference;
  String get reference => $unsafe['reference'];
  set reviewSummary(String reviewSummary) => $unsafe['review_summary'] = reviewSummary;
  String get reviewSummary => $unsafe['review_summary'];
  set reviews(List<PlaceReview> reviews) => $unsafe['reviews'] = jsw.jsify(reviews);
  List<PlaceReview> get reviews => jsw.TypedJsArray.$wrapSerializables($unsafe['reviews'], PlaceReview.$wrap);
  set types(List<String> types) => $unsafe['types'] = jsw.jsify(types);
  List<String> get types => jsw.TypedJsArray.$wrap($unsafe['types']);
  set url(String url) => $unsafe['url'] = url;
  String get url => $unsafe['url'];
  set vicinity(String vicinity) => $unsafe['vicinity'] = vicinity;
  String get vicinity => $unsafe['vicinity'];
  set website(String website) => $unsafe['website'] = website;
  String get website => $unsafe['website'];
}
