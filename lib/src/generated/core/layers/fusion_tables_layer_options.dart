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

class FusionTablesLayerOptions extends jsw.TypedJsObject {
  static FusionTablesLayerOptions cast(js.JsObject jsObject) => jsObject == null ? null : new FusionTablesLayerOptions.fromJsObject(jsObject);
  FusionTablesLayerOptions.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  FusionTablesLayerOptions() : super();

  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
bool get clickable => $unsafe['clickable'];
set heatmap(FusionTablesHeatmap heatmap) => $unsafe['heatmap'] = heatmap;
FusionTablesHeatmap get heatmap => FusionTablesHeatmap.cast($unsafe['heatmap']);
set map(GMap map) => $unsafe['map'] = map;
GMap get map => GMap.cast($unsafe['map']);
set query(FusionTablesQuery query) => $unsafe['query'] = query;
FusionTablesQuery get query => FusionTablesQuery.cast($unsafe['query']);
set styles(List<FusionTablesStyle> styles) => $unsafe['styles'] = styles == null ? null : styles is js.Serializable<js.JsObject> ? styles : js.jsify(styles);
List<FusionTablesStyle> get styles => jsw.TypedJsArray.castListOfSerializables($unsafe['styles'], FusionTablesStyle.cast);
set suppressInfoWindows(bool suppressInfoWindows) => $unsafe['suppressInfoWindows'] = suppressInfoWindows;
bool get suppressInfoWindows => $unsafe['suppressInfoWindows'];
}
