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

part of '../directions.dart';

extension type DirectionsGeocodedWaypoint._(JSObject _) implements JSObject {
  external DirectionsGeocodedWaypoint({
    bool? partial_match,
    String? place_id,
    JSArray<JSString>? types,
  });
  @JS('partial_match')
  external bool? _partialMatch;
  bool? get partialMatch => _partialMatch;
  set partialMatch(bool? value) => _partialMatch = value;
  @JS('place_id')
  external String? _placeId;
  String? get placeId => _placeId;
  set placeId(String? value) => _placeId = value;
  @JS('types')
  external JSArray<JSString>? _types;
  List<String>? get types => _types?.toDart.map((type) => type.toDart).toList();
  set types(List<String>? value) =>
      _types = value.jsify() as JSArray<JSString>?;
}
