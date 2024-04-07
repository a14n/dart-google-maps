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

part of '../directions.dart';

extension type TransitLine._(JSObject _) implements JSObject {
  external TransitLine({
    JSArray<TransitAgency> agencies,
    String color,
    String icon,
    String name,
    String short_name,
    String text_color,
    String url,
    TransitVehicle vehicle,
  });
  external JSArray<TransitAgency> agencies;
  external String color;
  external String icon;
  external String name;
  @JS('short_name')
  external String _shortName;
  String get shortName => _shortName;
  set shortName(String value) => _shortName = value;
  @JS('text_color')
  external String _textColor;
  String get textColor => _textColor;
  set textColor(String value) => _textColor = value;
  external String url;
  external TransitVehicle vehicle;
}
