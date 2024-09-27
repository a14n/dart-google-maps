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

part of '../places_widget.dart';

@JS('google.maps.places.PlaceAutocompleteElement')
extension type PlaceAutocompleteElement._(HTMLElement _)
    implements HTMLElement, PlaceAutocompleteElementOptions {
  external PlaceAutocompleteElement(
    PlaceAutocompleteElementOptions options,
  );
  external ComponentRestrictions? componentRestrictions;
  external LocationBias? locationBias;
  external LocationRestriction? locationRestriction;
  external String? name;
  external String? requestedLanguage;
  external String? requestedRegion;
  @JS('types')
  external JSArray<JSString>? _types;
  List<String>? get types => _types?.toDart.map((type) => type.toDart).toList();
  set types(List<String>? value) =>
      _types = value.jsify() as JSArray<JSString>?;
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
