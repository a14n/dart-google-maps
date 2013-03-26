// Copyright (c) 2013, Alexandre Ardhuin
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

part of google_maps_visualization;

class DemographicsLayer extends jsw.TypedProxy {
  static DemographicsLayer cast(js.Proxy proxy) => proxy == null ? null : new DemographicsLayer.fromProxy(proxy);

  DemographicsLayer([DemographicsLayerOptions opts]) : super(maps.visualization.DemographicsLayer, [opts]);
  DemographicsLayer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  GMap get map => GMap.cast($unsafe.getMap());
  DemographicsQuery get query => DemographicsQuery.cast($unsafe.getQuery());
  List<DemographicsStyle> get styles => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.getStyle(), DemographicsStyle.cast);
  set map(GMap map) => $unsafe.setMap(map);
  set options(DemographicsLayerOptions options) => $unsafe.setOptions(options);
  set query(DemographicsQuery query) => $unsafe.setQuery(query);
  set style(List<DemographicsStyle> style) => $unsafe.setStyle(jsifyList(style));
}