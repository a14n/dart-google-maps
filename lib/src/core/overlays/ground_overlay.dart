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

class GroundOverlay extends MVCObject {
  GroundOverlay(String url, LatLngBounds bounds, [GroundOverlayOptions opts]) : super.newInstance(maps.GroundOverlay, [url, bounds, opts]);
  GroundOverlay.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLngBounds get bounds => $.getBounds().map(LatLngBounds.INSTANCIATOR).value;
  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  num get opacity => $.getOpacity().value;
  String get url => $.getUrl().value;
  set map(GMap map) => $.setMap(map);
  set opacity(num opacity) => $.setOpacity(opacity);

  GroundOverlayEvents get on => new GroundOverlayEvents._(this);
}

class GroundOverlayEvents {
  static final CLICK = "click";
  static final DBLCLICK = "dblclick";
  
  final GroundOverlay _groundOverlay;

  GroundOverlayEvents._(this._groundOverlay);

  MouseEventListenerAdder get click => new MouseEventListenerAdder(_groundOverlay, CLICK);
  MouseEventListenerAdder get dblclick => new MouseEventListenerAdder(_groundOverlay, DBLCLICK);
}