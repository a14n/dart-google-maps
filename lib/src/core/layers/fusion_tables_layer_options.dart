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

@anonymous
abstract class _FusionTablesLayerOptions implements JsInterface {
  external factory _FusionTablesLayerOptions();

  bool clickable;
  FusionTablesHeatmap heatmap;
  GMap map;
  FusionTablesQuery query;
  //List<FusionTablesStyle> styles;
  JsArray _styles;
  List<FusionTablesStyle> get styles {
    final value = _styles;
    if (value == null) return null;
    return new JsList.created(
        value, new JsInterfaceCodec((o) => new FusionTablesStyle(o)));
  }
  void set styles(List<FusionTablesStyle> styles){
    if (styles == null) _styles =null;
    _styles = new JsArray.from(styles.map(toJs));
  }
  bool suppressInfoWindows;
}
