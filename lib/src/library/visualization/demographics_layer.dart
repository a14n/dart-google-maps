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

class DemographicsLayer extends jsw.IsJsProxy {
  DemographicsLayer([DemographicsLayerOptions opts]) : super.newInstance(maps.visualization.DemographicsLayer, [opts]);
  DemographicsLayer.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  DemographicsQuery get query => $.getQuery().map(DemographicsQuery.INSTANCIATOR).value;
  List<DemographicsStyle> get styles => $.getStyle().map((js.Proxy jsProxy) => new jsw.JsList<DemographicsStyle>.fromJsProxy(jsProxy, DemographicsStyle.INSTANCIATOR)).value;
  set map(GMap map) => $.setMap(map);
  set options(DemographicsLayerOptions options) => $.setOptions(options);
  set query(DemographicsQuery query) => $.setQuery(query);
  set style(List<DemographicsStyle> style) => $.setStyle(style);
}