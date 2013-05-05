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
  static DirectionsRenderer cast(js.Proxy proxy) => proxy == null ? null : new DirectionsRenderer.fromProxy(proxy);

  SubscribeStreamProvider _onDirectionsChanged;

  DirectionsRenderer([DirectionsRendererOptions opts]) : super(maps.DirectionsRenderer, [opts]) { _initStreams(); }
  DirectionsRenderer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy) { _initStreams(); }

  void _initStreams() {
    _onDirectionsChanged = event.getStreamProviderFor(this, "directions_changed");
  }

  Stream get onDirectionsChanged => _onDirectionsChanged.stream;

  DirectionsResult get directions => DirectionsResult.cast($unsafe.getDirections());
  GMap get map => GMap.cast($unsafe.getMap());
  html.Node get panel => $unsafe.getPanel();
  num get routeIndex => $unsafe.getRouteIndex();
  set directions(DirectionsResult directions) => $unsafe.setDirections(directions);
  set map(GMap map) => $unsafe.setMap(map);
  set options(DirectionsRendererOptions options) => $unsafe.setOptions(options);
  set panel(html.Node panel) => $unsafe.setPanel(panel);
  set routeIndex(num routeIndex) => $unsafe.setRouteIndex(routeIndex);

  /// deprecated : use onXxx stream.
  @deprecated DirectionsRendererEvents get on => new DirectionsRendererEvents._(this);
}

@deprecated
class DirectionsRendererEvents {
  static final DIRECTIONS_CHANGED = "directions_changed";

  final DirectionsRenderer _directionsRenderer;

  DirectionsRendererEvents._(this._directionsRenderer);

  NoArgsEventListenerAdder get directionsChanged => new NoArgsEventListenerAdder(_directionsRenderer, DIRECTIONS_CHANGED);
}