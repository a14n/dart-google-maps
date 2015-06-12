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

part of google_maps.src;

@JsName('google.maps.DirectionsRenderer')
abstract class _DirectionsRenderer extends MVCObject {
  external factory _DirectionsRenderer([DirectionsRendererOptions opts]);

  DirectionsResult get directions => _getDirections();
  DirectionsResult _getDirections();
  GMap get map => _getMap();
  GMap _getMap();
  Node get panel => _getPanel();
  Node _getPanel();
  num get routeIndex => _getRouteIndex();
  num _getRouteIndex();
  void set directions(DirectionsResult directions) =>
      _setDirections(directions);
  void _setDirections(DirectionsResult directions);
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  void set options(DirectionsRendererOptions options) => _setOptions(options);
  void _setOptions(DirectionsRendererOptions options);
  void set panel(Node panel) => _setPanel(panel);
  void _setPanel(Node panel);
  void set routeIndex(num routeIndex) => _setRouteIndex(routeIndex);
  void _setRouteIndex(num routeIndex);

  Stream get onDirectionsChanged =>
      getStream(this, #onDirectionsChanged, "directions_changed");
}
