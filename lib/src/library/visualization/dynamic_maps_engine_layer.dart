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

@JsName('google.maps.visualization.DynamicMapsEngineLayer')
abstract class _DynamicMapsEngineLayer extends MVCObject {
  factory _DynamicMapsEngineLayer(DynamicMapsEngineLayerOptions options) =>
      null;

  FeatureStyle getFeatureStyle(String featureId);
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
  MapsEngineStatus get status => _getStatus();
  MapsEngineStatus _getStatus();
  set layerId(String layerId) => _setLayerId(layerId);
  void _setLayerId(String layerId);
  set layerKey(String layerKey) => _setLayerKey(layerKey);
  void _setLayerKey(String layerKey);
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  set mapId(String mapId) => _setMapId(mapId);
  void _setMapId(String mapId);
  set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity);
  set options(DynamicMapsEngineLayerOptions options) => _setOptions(options);
  void _setOptions(DynamicMapsEngineLayerOptions options);

  Stream<DynamicMapsEngineMouseEvent> get onClick =>
      getStream(this, 'click', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onDblclick => getStream(
      this, 'dblclick', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMousedown => getStream(
      this, 'mousedown', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMousemove => getStream(
      this, 'mousemove', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMouseout => getStream(
      this, 'mouseout', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMouseover => getStream(
      this, 'mouseover', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMouseup =>
      getStream(this, 'mouseup', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream get onPropertiesChanged => getStream(this, 'properties_changed');
  Stream<DynamicMapsEngineMouseEvent> get onRightclick => getStream(
      this, 'rightclick', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream get onStatusChanged => getStream(this, 'status_changed');
}
