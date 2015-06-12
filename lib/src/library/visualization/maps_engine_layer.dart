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

part of google_maps.src.visualization;

@JsName('google.maps.visualization.MapsEngineLayer')
abstract class _MapsEngineLayer extends MVCObject {
  external factory _MapsEngineLayer(MapsEngineLayerOptions options);

  String get layerId => _getLayerId();
  String _getLayerId();
  String get layerKey => _getLayerKey();
  String _getLayerKey();
  GMap get map => _getMap();
  GMap _getMap();
  String get mapId => _getMapId();
  String _getMapId();
  num get opacity => _getOpacity();
  num _getOpacity();
  MapsEngineLayerProperties get properties => _getProperties();
  MapsEngineLayerProperties _getProperties();
  MapsEngineStatus get status => _getStatus();
  MapsEngineStatus _getStatus();
  num get zIndex => _getZIndex();
  num _getZIndex();
  void set layerId(String layerId) => _setLayerId(layerId);
  void _setLayerId(String layerId);
  void set layerKey(String layerKey) => _setLayerKey(layerKey);
  void _setLayerKey(String layerKey);
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  void set mapId(String mapId) => _setMapId(mapId);
  void _setMapId(String mapId);
  void set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity);
  void set options(MapsEngineLayerOptions options) => _setOptions(options);
  void _setOptions(MapsEngineLayerOptions options);
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex);

  Stream<MapsEngineMouseEvent> get onClick => getStream(this, #onClick, "click",
      (JsObject o) => new MapsEngineMouseEvent.created(o));
  Stream get onPropertiesChanged =>
      getStream(this, #onPropertiesChanged, "properties_changed");
  Stream get onStatusChanged =>
      getStream(this, #onStatusChanged, "status_changed");
}
