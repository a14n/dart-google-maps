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

part of google_maps.src;

@JsName('google.maps.FusionTablesLayer')
abstract class _FusionTablesLayer extends MVCObject {
  external factory _FusionTablesLayer(FusionTablesLayerOptions options);

  GMap get map => _getMap();
  GMap _getMap();
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  void set options(FusionTablesLayerOptions options) => _setOptions(options);
  void _setOptions(FusionTablesLayerOptions options);

  Stream<FusionTablesMouseEvent> get onClick => getStream(this, #onClick,
      "click", (JsObject o) => new FusionTablesMouseEvent.created(o));
}
