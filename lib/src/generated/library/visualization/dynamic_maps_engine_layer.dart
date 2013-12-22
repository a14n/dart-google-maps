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

class DynamicMapsEngineLayer extends MVCObject {
  static DynamicMapsEngineLayer $wrap(js.JsObject jsObject) => jsObject == null ? null : new DynamicMapsEngineLayer.fromJsObject(jsObject);
  jsw.SubscribeStreamProvider<DynamicMapsEngineMouseEvent> _onClick;
  jsw.SubscribeStreamProvider<DynamicMapsEngineMouseEvent> _onDblclick;
  jsw.SubscribeStreamProvider<DynamicMapsEngineMouseEvent> _onMousedown;
  jsw.SubscribeStreamProvider<DynamicMapsEngineMouseEvent> _onMousemove;
  jsw.SubscribeStreamProvider<DynamicMapsEngineMouseEvent> _onMouseout;
  jsw.SubscribeStreamProvider<DynamicMapsEngineMouseEvent> _onMouseover;
  jsw.SubscribeStreamProvider<DynamicMapsEngineMouseEvent> _onMouseup;
  jsw.SubscribeStreamProvider _onPropertiesChanged;
  jsw.SubscribeStreamProvider<DynamicMapsEngineMouseEvent> _onRightclick;
  jsw.SubscribeStreamProvider _onStatusChanged;

  DynamicMapsEngineLayer(DynamicMapsEngineLayerOptions opts)
      : super(maps['visualization']['DynamicMapsEngineLayer'], [opts]) {
    _initStreams();
  }
  DynamicMapsEngineLayer.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", DynamicMapsEngineMouseEvent.$wrap);
    _onDblclick = event.getStreamProviderFor(this, "dblclick", DynamicMapsEngineMouseEvent.$wrap);
    _onMousedown = event.getStreamProviderFor(this, "mousedown", DynamicMapsEngineMouseEvent.$wrap);
    _onMousemove = event.getStreamProviderFor(this, "mousemove", DynamicMapsEngineMouseEvent.$wrap);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", DynamicMapsEngineMouseEvent.$wrap);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", DynamicMapsEngineMouseEvent.$wrap);
    _onMouseup = event.getStreamProviderFor(this, "mouseup", DynamicMapsEngineMouseEvent.$wrap);
    _onPropertiesChanged = event.getStreamProviderFor(this, "properties_changed");
    _onRightclick = event.getStreamProviderFor(this, "rightclick", DynamicMapsEngineMouseEvent.$wrap);
    _onStatusChanged = event.getStreamProviderFor(this, "status_changed");
  }

  Stream<DynamicMapsEngineMouseEvent> get onClick => _onClick.stream;
  Stream<DynamicMapsEngineMouseEvent> get onDblclick => _onDblclick.stream;
  Stream<DynamicMapsEngineMouseEvent> get onMousedown => _onMousedown.stream;
  Stream<DynamicMapsEngineMouseEvent> get onMousemove => _onMousemove.stream;
  Stream<DynamicMapsEngineMouseEvent> get onMouseout => _onMouseout.stream;
  Stream<DynamicMapsEngineMouseEvent> get onMouseover => _onMouseover.stream;
  Stream<DynamicMapsEngineMouseEvent> get onMouseup => _onMouseup.stream;
  Stream get onPropertiesChanged => _onPropertiesChanged.stream;
  Stream<DynamicMapsEngineMouseEvent> get onRightclick => _onRightclick.stream;
  Stream get onStatusChanged => _onStatusChanged.stream;

  FeatureStyle getFeatureStyle(String featureId) => FeatureStyle.$wrap($unsafe.callMethod('getFeatureStyle', [featureId]));
  String get layerId => $unsafe.callMethod('getLayerId');
  String get layerKey => $unsafe.callMethod('getLayerKey');
  GMap get map => GMap.$wrap($unsafe.callMethod('getMap'));
  String get mapId => $unsafe.callMethod('getMapId');
  MapsEngineStatus get status => MapsEngineStatus.$wrap($unsafe.callMethod('getStatus'));
  set layerId(String layerId) => $unsafe.callMethod('setLayerId', [layerId]);
  set layerKey(String layerKey) => $unsafe.callMethod('setLayerKey', [layerKey]);
  set map(GMap map) => $unsafe.callMethod('setMap', [map == null ? null : map.$unsafe]);
  set mapId(String mapId) => $unsafe.callMethod('setMapId', [mapId]);
  set options(DynamicMapsEngineLayerOptions options) => $unsafe.callMethod('setOptions', [options == null ? null : options.$unsafe]);
}
