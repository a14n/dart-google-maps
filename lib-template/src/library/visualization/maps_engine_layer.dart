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

@wrapper @forMethods @skipConstructor abstract class MapsEngineLayer extends MVCObject {
  SubscribeStreamProvider<MapsEngineMouseEvent> _onClick;
  SubscribeStreamProvider _onPropertiesChanged;
  SubscribeStreamProvider _onStatusChanged;

  MapsEngineLayer(MapsEngineLayerOptions opts) : super(maps.visualization.MapsEngineLayer, [opts]) { _initStreams(); }
  MapsEngineLayer.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", MapsEngineMouseEvent.cast);
    _onPropertiesChanged = event.getStreamProviderFor(this, "properties_changed");
    _onStatusChanged = event.getStreamProviderFor(this, "status_changed");
  }

  Stream<MapsEngineMouseEvent> get onClick => _onClick.stream;
  Stream get onPropertiesChanged => _onPropertiesChanged.stream;
  Stream get onStatusChanged => _onStatusChanged.stream;

  String get layerId;
  String get layerKey;
  GMap get map;
  String get mapId;
  MapsEngineLayerProperties get properties;
  @isEnum MapsEngineStatus get status;
  set layerId(String layerId);
  set layerKey(String layerKey);
  set map(GMap map);
  set mapId(String mapId);
  set options(MapsEngineLayerOptions options);
}
