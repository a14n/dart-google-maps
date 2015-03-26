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

class DemographicsLayerOptions extends jsw.TypedJsObject {
  static DemographicsLayerOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new DemographicsLayerOptions.fromJsObject(jsObject);
  DemographicsLayerOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DemographicsLayerOptions()
      : super();

  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  bool get clickable => $unsafe['clickable'];
  set map(GMap map) => $unsafe['map'] = map == null ? null : map.$unsafe;
  GMap get map => GMap.$wrap($unsafe['map']);
  set query(DemographicsQuery query) => $unsafe['query'] = query == null ? null : query.$unsafe;
  DemographicsQuery get query => DemographicsQuery.$wrap($unsafe['query']);
  set style(List<DemographicsStyle> style) => $unsafe['style'] = jsw.jsify(style);
  List<DemographicsStyle> get style => jsw.TypedJsArray.$wrapSerializables($unsafe['style'], DemographicsStyle.$wrap);
  set suppressInfoWindows(bool suppressInfoWindows) => $unsafe['suppressInfoWindows'] = suppressInfoWindows;
  bool get suppressInfoWindows => $unsafe['suppressInfoWindows'];
}
