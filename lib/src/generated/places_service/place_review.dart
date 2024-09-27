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

extension type PlaceReview._(JSObject _) implements JSObject {
  external PlaceReview({
    String author_name,
    String language,
    String profile_photo_url,
    String relative_time_description,
    String text,
    num time,
    JSArray<PlaceAspectRating>? aspects,
    String? author_url,
    num? rating,
  });
  @JS('author_name')
  external String _authorName;
  String get authorName => _authorName;
  set authorName(String value) => _authorName = value;
  external String language;
  @JS('profile_photo_url')
  external String _profilePhotoUrl;
  String get profilePhotoUrl => _profilePhotoUrl;
  set profilePhotoUrl(String value) => _profilePhotoUrl = value;
  @JS('relative_time_description')
  external String _relativeTimeDescription;
  String get relativeTimeDescription => _relativeTimeDescription;
  set relativeTimeDescription(String value) => _relativeTimeDescription = value;
  external String text;
  external num time;
  @JS('aspects')
  external JSArray<PlaceAspectRating>? _aspects;
  List<PlaceAspectRating>? get aspects => _aspects?.toDart;
  set aspects(List<PlaceAspectRating>? value) => _aspects = value?.toJS;
  @JS('author_url')
  external String? _authorUrl;
  String? get authorUrl => _authorUrl;
  set authorUrl(String? value) => _authorUrl = value;
  external num? rating;
}
