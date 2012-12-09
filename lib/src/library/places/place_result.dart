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

class PlaceResult extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new PlaceResult.fromJsProxy(jsProxy);

  PlaceResult() : super();
  PlaceResult.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  List<GeocoderAddressComponent> get addressComponents => $.address_components.map((js.Proxy jsProxy) => new jsw.JsList<GeocoderAddressComponent>.fromJsProxy(jsProxy, GeocoderAddressComponent.INSTANCIATOR)).value;
  List<PlaceAspectRating> get aspects => $.aspects.map((js.Proxy jsProxy) => new jsw.JsList<PlaceAspectRating>.fromJsProxy(jsProxy, PlaceAspectRating.INSTANCIATOR)).value;
  String get formattedAddress => $.formatted_address.value;
  String get formattedPhoneNumber => $.formatted_phone_number.value;
  PlaceGeometry get geometry => $.geometry.map(PlaceGeometry.INSTANCIATOR).value;
  List<String> get htmlAttributions => $.html_attributions.map((js.Proxy jsProxy) => new jsw.JsList<String>.fromJsProxy(jsProxy, null)).value;
  String get icon => $.icon.value;
  String get id => $.id.value;
  String get internationalPhoneNumber => $.international_phone_number.value;
  String get name => $.name.value;
  num get rating => $.rating.value;
  String get reference => $.reference.value;
  List<PlaceReview> get reviews => $.reviews.map((js.Proxy jsProxy) => new jsw.JsList<PlaceReview>.fromJsProxy(jsProxy, PlaceReview.INSTANCIATOR)).value;
  List<String> get types => $.types.map((js.Proxy jsProxy) => new jsw.JsList<String>.fromJsProxy(jsProxy, null)).value;
  String get url => $.url.value;
  String get vicinity => $.vicinity.value;
  String get website => $.website.value;
}