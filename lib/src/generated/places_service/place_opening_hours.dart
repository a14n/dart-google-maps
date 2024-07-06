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

extension type PlaceOpeningHours._(JSObject _) implements JSObject {
  external PlaceOpeningHours({
    bool? open_now,
    JSArray<PlaceOpeningHoursPeriod>? periods,
    JSArray<JSString>? weekday_text,
  });
  @JS('open_now')
  external bool? _openNow;
  bool? get openNow => _openNow;
  set openNow(bool? value) => _openNow = value;
  @JS('periods')
  external JSArray<PlaceOpeningHoursPeriod>? _periods;
  List<PlaceOpeningHoursPeriod>? get periods => _periods?.toDart;
  set periods(List<PlaceOpeningHoursPeriod>? value) => _periods = value?.toJS;
  @JS('weekday_text')
  external JSArray<JSString>? _weekdayText;
  List<String>? get weekdayText => _weekdayText.dartify() as List<String>?;
  set weekdayText(List<String>? value) =>
      _weekdayText = value.jsify() as JSArray<JSString>?;
  external bool? isOpen([
    Date? date,
  ]);
}
