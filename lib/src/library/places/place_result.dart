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

class PlaceResult extends jsw.TypedProxy {
  static PlaceResult cast(js.Proxy proxy) => proxy == null ? null : new PlaceResult.fromProxy(proxy);

  PlaceResult() : super();
  PlaceResult.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  List<GeocoderAddressComponent> get addressComponents => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe['address_components'], GeocoderAddressComponent.cast);
  List<PlaceAspectRating> get aspects => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe['aspects'], PlaceAspectRating.cast);
  String get formattedAddress => $unsafe['formatted_address'];
  String get formattedPhoneNumber => $unsafe['formatted_phone_number'];
  PlaceGeometry get geometry => PlaceGeometry.cast($unsafe['geometry']);
  List<String> get htmlAttributions => jsw.JsArrayToListAdapter.cast($unsafe['html_attributions']);
  String get icon => $unsafe['icon'];
  String get id => $unsafe['id'];
  String get internationalPhoneNumber => $unsafe['international_phone_number'];
  String get name => $unsafe['name'];
  bool get permanentlyClosed => $unsafe['permanently_closed'];
  List<PlacePhoto> get photos => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe['photos'], PlacePhoto.cast);
  num get priceLevel => $unsafe['price_level'];
  num get rating => $unsafe['rating'];
  String get reference => $unsafe['reference'];
  String get reviewSummary => $unsafe['review_summary'];
  List<PlaceReview> get reviews => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe['reviews'], PlaceReview.cast);
  List<String> get types => jsw.JsArrayToListAdapter.cast($unsafe['types']);
  String get url => $unsafe['url'];
  String get vicinity => $unsafe['vicinity'];
  String get website => $unsafe['website'];
  set addressComponents(List<GeocoderAddressComponent> addressComponents) => $unsafe['address_components'] = jsifyList(addressComponents);
  set aspects(List<PlaceAspectRating> aspects) => $unsafe['aspects'] = jsifyList(aspects);
  set formattedAddress(String formattedAddress) => $unsafe['formatted_address'] = formattedAddress;
  set formattedPhoneNumber(String formattedPhoneNumber) => $unsafe['formatted_phone_number'] = formattedPhoneNumber;
  set geometry(PlaceGeometry geometry) => $unsafe['geometry'] = geometry;
  set htmlAttributions(List<String> htmlAttributions) => $unsafe['html_attributions'] = jsifyList(htmlAttributions);
  set icon(String icon) => $unsafe['icon'] = icon;
  set id(String id) => $unsafe['id'] = id;
  set internationalPhoneNumber(String internationalPhoneNumber) => $unsafe['international_phone_number'] = internationalPhoneNumber;
  set name(String name) => $unsafe['name'] = name;
  set permanentlyClosed(bool permanentlyClosed) => $unsafe['permanently_closed'] = permanentlyClosed;
  set photos(List<PlacePhoto> photos) => $unsafe['photos'] = jsifyList(photos);
  set priceLevel(num priceLevel) => $unsafe['price_level'] = priceLevel;
  set rating(num rating) => $unsafe['rating'] = rating;
  set reference(String reference) => $unsafe['reference'] = reference;
  set reviewSummary(String reviewSummary) => $unsafe['review_summary'] = reviewSummary;
  set reviews(List<PlaceReview> reviews) => $unsafe['reviews'] = jsifyList(reviews);
  set types(List<String> types) => $unsafe['types'] = jsifyList(types);
  set url(String url) => $unsafe['url'] = url;
  set vicinity(String vicinity) => $unsafe['vicinity'] = vicinity;
  set website(String website) => $unsafe['website'] = website;
}