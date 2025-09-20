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

part of '../places_widget.dart';

@JS('google.maps.places.PlaceAutocompleteElement')
extension type PlaceAutocompleteElement._(HTMLElement _)
    implements HTMLElement, PlaceAutocompleteElementOptions {
  external PlaceAutocompleteElement(
    PlaceAutocompleteElementOptions options,
  );
  @JS('includedPrimaryTypes')
  external JSArray<JSString>? _includedPrimaryTypes;
  List<String>? get includedPrimaryTypes =>
      _includedPrimaryTypes?.toDart.map((type) => type.toDart).toList();
  set includedPrimaryTypes(List<String>? value) =>
      _includedPrimaryTypes = value.jsify() as JSArray<JSString>?;
  @JS('includedRegionCodes')
  external JSArray<JSString>? _includedRegionCodes;
  List<String>? get includedRegionCodes =>
      _includedRegionCodes?.toDart.map((type) => type.toDart).toList();
  set includedRegionCodes(List<String>? value) =>
      _includedRegionCodes = value.jsify() as JSArray<JSString>?;
  external LocationBias? locationBias;
  external LocationRestriction? locationRestriction;
  external String? name;
  external JSAny? /*(LatLng|LatLngLiteral|LatLngAltitude|LatLngAltitudeLiteral)?*/
      origin;
  external String? requestedLanguage;
  external String? requestedRegion;
  external UnitSystem? unitSystem;
  external void addEventListener(
    String type,
    JSAny /*EventListener|EventListenerObject*/ listener, [
    JSAny? /*(boolean|AddEventListenerOptions)?*/ options,
  ]);
  external void removeEventListener(
    String type,
    JSAny /*EventListener|EventListenerObject*/ listener, [
    JSAny? /*(boolean|EventListenerOptions)?*/ options,
  ]);
}
