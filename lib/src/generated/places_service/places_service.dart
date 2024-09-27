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

part of '../places_service.dart';

@JS('google.maps.places.PlacesService')
extension type PlacesService._(JSObject _) implements JSObject {
  external PlacesService(
    JSAny /*HTMLDivElement|Map*/ attrContainer,
  );
  external void findPlaceFromPhoneNumber(
    FindPlaceFromPhoneNumberRequest request,
    JSFunction /*void Function(JSArray<PlaceResult>?,PlacesServiceStatus)*/
        callback,
  );
  external void findPlaceFromQuery(
    FindPlaceFromQueryRequest request,
    JSFunction /*void Function(JSArray<PlaceResult>?,PlacesServiceStatus)*/
        callback,
  );
  external void getDetails(
    PlaceDetailsRequest request,
    JSFunction /*void Function(PlaceResult?,PlacesServiceStatus)*/ callback,
  );
  external void nearbySearch(
    PlaceSearchRequest request,
    JSFunction /*void Function(JSArray<PlaceResult>?,PlacesServiceStatus,PlaceSearchPagination?)*/
        callback,
  );
  external void textSearch(
    TextSearchRequest request,
    JSFunction /*void Function(JSArray<PlaceResult>?,PlacesServiceStatus,PlaceSearchPagination?)*/
        callback,
  );
}
