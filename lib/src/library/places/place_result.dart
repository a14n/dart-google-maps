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

@wrapper @namesWithUnderscores abstract class PlaceResult extends jsw.TypedJsObject {
  static PlaceResult $wrap(js.JsObject jsObject) => null;

  PlaceResult() : super();

  List<GeocoderAddressComponent> addressComponents;
  List<PlaceAspectRating> aspects;
  String formattedAddress;
  String formattedPhoneNumber;
  PlaceGeometry geometry;
  List<String> htmlAttributions;
  String icon;
  String id;
  String internationalPhoneNumber;
  String name;
  bool permanentlyClosed;
  List<PlacePhoto> photos;
  num priceLevel;
  num rating;
  String reference;
  String reviewSummary;
  List<PlaceReview> reviews;
  List<String> types;
  String url;
  String vicinity;
  String website;
}
