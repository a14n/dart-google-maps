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
  static MapTypeControlOptions cast(js.JsObject jsObject) => jsObject == null ? null : new MapTypeControlOptions.fromJsObject(jsObject);
  MapTypeControlOptions.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  MapTypeControlOptions() : super();

  List get mapTypeIds => jsw.TypedJsArray.castListOfSerializables($unsafe['mapTypeIds'], (e) => [MapTypeId.find(e), e].firstWhere((e) => e != null, orElse: () => null));
  ControlPosition get position => ControlPosition.find($unsafe['position']);
  MapTypeControlStyle get style => MapTypeControlStyle.find($unsafe['style']);
  set mapTypeIds(List mapTypeIds) => $unsafe['mapTypeIds'] = mapTypeIds == null ? null : mapTypeIds is js.Serializable<js.JsObject> ? mapTypeIds : js.jsify(mapTypeIds);
  set position(ControlPosition position) => $unsafe['position'] = position;
  set style(MapTypeControlStyle style) => $unsafe['style'] = style;
}
