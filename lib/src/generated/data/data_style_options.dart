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

part of '../data.dart';

extension type DataStyleOptions._(JSObject _) implements JSObject {
  external DataStyleOptions({
    Animation? animation,
    bool? clickable,
    String? cursor,
    bool? draggable,
    bool? editable,
    String? fillColor,
    num? fillOpacity,
    JSAny? /*(string|Icon|Symbol)?*/ icon,
    JSArray<IconSequence>? icons,
    JSAny? /*(string|MarkerLabel)?*/ label,
    num? opacity,
    MarkerShape? shape,
    String? strokeColor,
    num? strokeOpacity,
    num? strokeWeight,
    String? title,
    bool? visible,
    num? zIndex,
  });
  external Animation? animation;
  external bool? clickable;
  external String? cursor;
  external bool? draggable;
  external bool? editable;
  external String? fillColor;
  external num? fillOpacity;
  external JSAny? /*(string|Icon|Symbol)?*/ icon;
  @JS('icons')
  external JSArray<IconSequence>? _icons;
  List<IconSequence>? get icons => _icons?.toDart;
  set icons(List<IconSequence>? value) => _icons = value?.toJS;
  external JSAny? /*(string|MarkerLabel)?*/ label;
  external num? opacity;
  external MarkerShape? shape;
  external String? strokeColor;
  external num? strokeOpacity;
  external num? strokeWeight;
  external String? title;
  external bool? visible;
  external num? zIndex;
}
