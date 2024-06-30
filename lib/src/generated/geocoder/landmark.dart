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

part of '../geocoder.dart';

extension type Landmark._(JSObject _) implements JSObject {
  external Landmark({
    String display_name,
    String display_name_language_code,
    String place_id,
    SpatialRelationship spatial_relationship,
    num straight_line_distance_meters,
    JSArray<JSString> types,
    num? travel_distance_meters,
  });
  @JS('display_name')
  external String _displayName;
  String get displayName => _displayName;
  set displayName(String value) => _displayName = value;
  @JS('display_name_language_code')
  external String _displayNameLanguageCode;
  String get displayNameLanguageCode => _displayNameLanguageCode;
  set displayNameLanguageCode(String value) => _displayNameLanguageCode = value;
  @JS('place_id')
  external String _placeId;
  String get placeId => _placeId;
  set placeId(String value) => _placeId = value;
  @JS('spatial_relationship')
  external SpatialRelationship _spatialRelationship;
  SpatialRelationship get spatialRelationship => _spatialRelationship;
  set spatialRelationship(SpatialRelationship value) =>
      _spatialRelationship = value;
  @JS('straight_line_distance_meters')
  external num _straightLineDistanceMeters;
  num get straightLineDistanceMeters => _straightLineDistanceMeters;
  set straightLineDistanceMeters(num value) =>
      _straightLineDistanceMeters = value;
  @JS('types')
  external JSArray<JSString> _types;
  List<String> get types => _types.dartify() as List<String>;
  set types(List<String> value) => _types = value.jsify() as JSArray<JSString>;
  @JS('travel_distance_meters')
  external num? _travelDistanceMeters;
  num? get travelDistanceMeters => _travelDistanceMeters;
  set travelDistanceMeters(num? value) => _travelDistanceMeters = value;
}
