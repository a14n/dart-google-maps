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

@JS('google.maps.places.OpeningHours')
extension type OpeningHours._(JSObject _) implements JSObject {
  @JS('periods')
  external JSArray<OpeningHoursPeriod> _periods;
  List<OpeningHoursPeriod> get periods => _periods.toDart;
  set periods(List<OpeningHoursPeriod> value) => _periods = value.toJS;
  @JS('weekdayDescriptions')
  external JSArray<JSString> _weekdayDescriptions;
  List<String> get weekdayDescriptions =>
      _weekdayDescriptions.dartify() as List<String>;
  set weekdayDescriptions(List<String> value) =>
      _weekdayDescriptions = value.jsify() as JSArray<JSString>;
}
