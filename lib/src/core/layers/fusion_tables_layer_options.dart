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

class FusionTablesLayerOptions extends jsw.TypedProxy {
  static FusionTablesLayerOptions cast(js.Proxy proxy) => proxy == null ? null : new FusionTablesLayerOptions.fromProxy(proxy);

  FusionTablesLayerOptions() : super();
  FusionTablesLayerOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  bool get clickable => $unsafe.clickable;
  FusionTablesHeatmap get heatmap => FusionTablesHeatmap.cast($unsafe.heatmap);
  GMap get map => GMap.cast($unsafe.map);
  FusionTablesQuery get query => FusionTablesQuery.cast($unsafe.query);
  List<FusionTablesStyle> get styles => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.styles, FusionTablesStyle.cast);
  bool get suppressInfoWindows => $unsafe.suppressInfoWindows;
  set clickable(bool clickable) => $unsafe.clickable = clickable;
  set heatmap(FusionTablesHeatmap heatmap) => $unsafe.heatmap = heatmap;
  set map(GMap map) => $unsafe.map = map;
  set query(FusionTablesQuery query) => $unsafe.query = query;
  set styles(List<FusionTablesStyle> styles) => $unsafe.styles = jsifyList(styles);
  set suppressInfoWindows(bool suppressInfoWindows) => $unsafe.suppressInfoWindows = suppressInfoWindows;
}