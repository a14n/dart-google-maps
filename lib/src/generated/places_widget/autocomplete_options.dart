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

extension type AutocompleteOptions._(JSObject _) implements JSObject {
  external AutocompleteOptions({
    LatLngBoundsOrLatLngBoundsLiteral? bounds,
    ComponentRestrictions? componentRestrictions,
    JSArray<JSString>? fields,
    bool? placeIdOnly,
    bool? strictBounds,
    JSArray<JSString>? types,
  });
  external LatLngBoundsOrLatLngBoundsLiteral? bounds;
  external ComponentRestrictions? componentRestrictions;
  @JS('fields')
  external JSArray<JSString>? _fields;
  List<String>? get fields =>
      _fields?.toDart.map((type) => type.toDart).toList();
  set fields(List<String>? value) =>
      _fields = value.jsify() as JSArray<JSString>?;
  external bool? placeIdOnly;
  external bool? strictBounds;
  @JS('types')
  external JSArray<JSString>? _types;
  List<String>? get types => _types?.toDart.map((type) => type.toDart).toList();
  set types(List<String>? value) =>
      _types = value.jsify() as JSArray<JSString>?;
}
