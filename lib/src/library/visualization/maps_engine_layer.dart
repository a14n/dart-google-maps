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
  static MapsEngineLayer cast(js.Proxy proxy) => proxy == null ? null : new MapsEngineLayer.fromProxy(proxy);

  MapsEngineLayer(MapsEngineLayerOptions opts) : super(maps.visualization.MapsEngineLayer, [opts]);
  MapsEngineLayer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get layerId => $unsafe.getLayerId();
  String get layerKey => $unsafe.getLayerKey();
  GMap get map => GMap.cast($unsafe.getMap());
  String get mapId => $unsafe.getMapId();
  MapsEngineLayerProperties get properties => MapsEngineLayerProperties.cast($unsafe.getProperties());
  MapsEngineStatus get status => MapsEngineStatus.find($unsafe.getStatus());
  set layerId(String layerId) => $unsafe.setLayerId(layerId);
  set layerKey(String layerKey) => $unsafe.setLayerKey(layerKey);
  set map(GMap map) => $unsafe.setMap(map);
  set mapId(String mapId) => $unsafe.setMapId(mapId);
  set options(MapsEngineLayerOptions options) => $unsafe.setOptions(options);

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
  MapsEngineMouseEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(MapsEngineMouseEvent e)) { super.add((o) => handler(MapsEngineMouseEvent.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(MapsEngineMouseEvent e)) => super.addTemporary((o) => handler(MapsEngineMouseEvent.cast(o)));
}
