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

part of '../place.dart';

@JS('google.maps.places.Photo')
extension type Photo._(JSObject _) implements JSObject {
  @JS('authorAttributions')
  external JSArray<AuthorAttribution> _authorAttributions;
  List<AuthorAttribution> get authorAttributions => _authorAttributions.toDart;
  set authorAttributions(List<AuthorAttribution> value) =>
      _authorAttributions = value.toJS;
  external num heightPx;
  external num widthPx;
  @JS('getURI')
  external String _getURI();
  String get uRI => _getURI();
}
