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

class KmlLayer extends MVCObject {
  KmlLayer([KmlLayerOptions options]) : super.newInstance(maps.KmlLayer, [options]);
  KmlLayer.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLngBounds get defaultViewport => $.getDefaultViewport().map(LatLngBounds.INSTANCIATOR).value;
  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  KmlLayerMetadata get metadata => $.getMetadata().map(KmlLayerMetadata.INSTANCIATOR).value;
  KmlLayerStatus get status => $.getStatus().map(KmlLayerStatus.find).value;
  String get url => $.getUrl().value;
  set map(GMap map) => $.setMap(map);
  set url(String url) => $.setUrl(url);

  KmlLayerEvents get on => new KmlLayerEvents._(this);
}

class KmlLayerEvents {
  static final CLICK = "click";
  static final DEFAULTVIEWPORT_CHANGED = "defaultviewport_changed";
  static final STATUS_CHANGED = "status_changed";
  
  final KmlLayer _kmlLayer;

  KmlLayerEvents._(this._kmlLayer);

  KmlMouseEventListenerAdder get click => new KmlMouseEventListenerAdder(_kmlLayer, CLICK);
  NoArgsEventListenerAdder get defaultviewportChanged => new NoArgsEventListenerAdder(_kmlLayer, DEFAULTVIEWPORT_CHANGED);
  NoArgsEventListenerAdder get statusChanged => new NoArgsEventListenerAdder(_kmlLayer, STATUS_CHANGED);
}