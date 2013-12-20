// Copyright (c) 2012, Alexandre Ardhuin
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

part of google_maps;

class MapTypeControlOptions extends jsw.TypedJsObject {
  static MapTypeControlOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new MapTypeControlOptions.fromJsObject(jsObject);
  MapTypeControlOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  MapTypeControlOptions();

  // TODO replace with :
  // List<dynamic/*String|MapTypeId*/> mapTypeIds;
  List<dynamic/*String|MapTypeId*/> get mapTypeIds => jsw.TypedJsArray.$wrap($unsafe['mapTypeIds'],
  wrap: (js) {
    if (js == null) return null;
    final o1 = MapTypeId.$wrap(js);
    if (o1 != null) return o1;
    if (js is String) return js;
    throw 'unsupported type';
  },
  unwrap: (dart) {
    if (dart == null) return null;
    if (dart is MapTypeId) return dart.$unsafe;
    if (dart is String) return dart;
    throw 'unsupported type';
  });
  void set mapTypeIds(List<dynamic/*String|MapTypeId*/> mapTypeIds) {
    $unsafe['mapTypeIds'] = new js.JsArray.from(mapTypeIds.map((e) => e == null ? null : e is MapTypeId ? e.$unsafe : e is String ? e : throw 'bad type'));
  }
  set position(ControlPosition position) => $unsafe['position'] = position == null ? null : position.$unsafe;
  ControlPosition get position => ControlPosition.$wrap($unsafe['position']);
  set style(MapTypeControlStyle style) => $unsafe['style'] = style == null ? null : style.$unsafe;
  MapTypeControlStyle get style => MapTypeControlStyle.$wrap($unsafe['style']);
}
