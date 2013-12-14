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

class DirectionsRenderer extends MVCObject {
  static DirectionsRenderer $wrap(js.JsObject jsObject) => jsObject == null ? null : new DirectionsRenderer.fromJsObject(jsObject);
  jsw.SubscribeStreamProvider _onDirectionsChanged;

  DirectionsRenderer([DirectionsRendererOptions opts])
      : super(maps['DirectionsRenderer'], [opts == null ? null : opts.$unsafe]) {
    _initStreams();
  }
  DirectionsRenderer.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onDirectionsChanged = event.getStreamProviderFor(this, "directions_changed");
  }

  Stream get onDirectionsChanged => _onDirectionsChanged.stream;

  DirectionsResult get directions => DirectionsResult.$wrap($unsafe.callMethod('getDirections'));
  GMap get map => GMap.$wrap($unsafe.callMethod('getMap'));
  html.Node get panel => $unsafe.callMethod('getPanel');
  num get routeIndex => $unsafe.callMethod('getRouteIndex');
  set directions(DirectionsResult directions) => $unsafe.callMethod('setDirections', [directions == null ? null : directions.$unsafe]);
  set map(GMap map) => $unsafe.callMethod('setMap', [map == null ? null : map.$unsafe]);
  set options(DirectionsRendererOptions options) => $unsafe.callMethod('setOptions', [options == null ? null : options.$unsafe]);
  set panel(html.Node panel) => $unsafe.callMethod('setPanel', [panel]);
  set routeIndex(num routeIndex) => $unsafe.callMethod('setRouteIndex', [routeIndex]);
}
