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

part of '../places_service.dart';

extension type PlacePhoto._(JSObject _) implements JSObject {
  external PlacePhoto({
    num height,
    JSArray<JSString> html_attributions,
    num width,
  });
  external num height;
  @JS('html_attributions')
  external JSArray<JSString> _htmlAttributions;
  JSArray<JSString> get htmlAttributions => _htmlAttributions;
  set htmlAttributions(JSArray<JSString> value) => _htmlAttributions = value;
  external num width;
  @JS('getUrl')
  external String _getUrl();
  String get url => _getUrl();
}
