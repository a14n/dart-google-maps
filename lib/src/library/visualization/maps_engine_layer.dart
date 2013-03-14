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
  MapsEngineLayer(MapsEngineLayerOptions opts) : super.newInstance(maps.visualization.MapsEngineLayer, [opts]);
  MapsEngineLayer.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  String get layerId => $.getLayerId().value;
  String get layerKey => $.getLayerKey().value;
  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  String get mapId => $.getMapId().value;
  MapsEngineLayerProperties get properties => $.getProperties().map(MapsEngineLayerProperties.INSTANCIATOR).value;
  MapsEngineStatus get status => $.getStatus().map(MapsEngineStatus.find).value;
  set layerId(String layerId) => $.setLayerId(layerId);
  set layerKey(String layerKey) => $.setLayerKey(layerKey);
  set map(GMap map) => $.setMap(map);
  set mapId(String mapId) => $.setMapId(mapId);
  set options(MapsEngineLayerOptions options) => $.setOptions(options);

  MapsEngineLayerEvents get on => new MapsEngineLayerEvents._(this);
}

class MapsEngineLayerEvents {
  static final CLICK = "click";
  static final PROPERTIES_CHANGED = "properties_changed";
  static final STATUS_CHANGED = "status_changed";

  final MapsEngineLayer _mapsEngineLayer;

  MapsEngineLayerEvents._(this._mapsEngineLayer);

  MapsEngineMouseEventListenerAdder get placeChanged => new MapsEngineMouseEventListenerAdder(_mapsEngineLayer, CLICK);
  NoArgsEventListenerAdder get propertiesChanged => new NoArgsEventListenerAdder(_mapsEngineLayer, PROPERTIES_CHANGED);
  NoArgsEventListenerAdder get statusChanged => new NoArgsEventListenerAdder(_mapsEngineLayer, STATUS_CHANGED);
}

class MapsEngineMouseEventListenerAdder extends EventListenerAdder {
  MapsEngineMouseEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(MapsEngineMouseEvent e)) { super.add((e) => handler(e.map((e) => new MapsEngineMouseEvent.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(MapsEngineMouseEvent e)) => super.addTemporary((e) => handler(e.map((e) => new MapsEngineMouseEvent.fromJsProxy(e)).value));
}
