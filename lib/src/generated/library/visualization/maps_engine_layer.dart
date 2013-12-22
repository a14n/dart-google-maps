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

class MapsEngineLayer extends MVCObject {
  static MapsEngineLayer $wrap(js.JsObject jsObject) => jsObject == null ? null : new MapsEngineLayer.fromJsObject(jsObject);
  jsw.SubscribeStreamProvider<MapsEngineMouseEvent> _onClick;
  jsw.SubscribeStreamProvider _onPropertiesChanged;
  jsw.SubscribeStreamProvider _onStatusChanged;

  MapsEngineLayer(MapsEngineLayerOptions opts)
      : super(maps['visualization']['MapsEngineLayer'], [opts]) {
    _initStreams();
  }
  MapsEngineLayer.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", MapsEngineMouseEvent.$wrap);
    _onPropertiesChanged = event.getStreamProviderFor(this, "properties_changed");
    _onStatusChanged = event.getStreamProviderFor(this, "status_changed");
  }

  Stream<MapsEngineMouseEvent> get onClick => _onClick.stream;
  Stream get onPropertiesChanged => _onPropertiesChanged.stream;
  Stream get onStatusChanged => _onStatusChanged.stream;

  String get layerId => $unsafe.callMethod('getLayerId');
  String get layerKey => $unsafe.callMethod('getLayerKey');
  GMap get map => GMap.$wrap($unsafe.callMethod('getMap'));
  String get mapId => $unsafe.callMethod('getMapId');
  MapsEngineLayerProperties get properties => MapsEngineLayerProperties.$wrap($unsafe.callMethod('getProperties'));
  MapsEngineStatus get status => MapsEngineStatus.$wrap($unsafe.callMethod('getStatus'));
  set layerId(String layerId) => $unsafe.callMethod('setLayerId', [layerId]);
  set layerKey(String layerKey) => $unsafe.callMethod('setLayerKey', [layerKey]);
  set map(GMap map) => $unsafe.callMethod('setMap', [map == null ? null : map.$unsafe]);
  set mapId(String mapId) => $unsafe.callMethod('setMapId', [mapId]);
  set options(MapsEngineLayerOptions options) => $unsafe.callMethod('setOptions', [options == null ? null : options.$unsafe]);
}
