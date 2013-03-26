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

class DirectionsRendererOptions extends jsw.TypedProxy {
  static DirectionsRendererOptions cast(js.Proxy proxy) => proxy == null ? null : new DirectionsRendererOptions.fromProxy(proxy);

  DirectionsRendererOptions() : super();
  DirectionsRendererOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  DirectionsResult get directions => DirectionsResult.cast($unsafe.directions);
  bool get draggable => $unsafe.draggable;
  bool get hideRouteList => $unsafe.hideRouteList;
  InfoWindow get infoWindow => InfoWindow.cast($unsafe.infoWindow);
  GMap get map => GMap.cast($unsafe.map);
  MarkerOptions get markerOptions => MarkerOptions.cast($unsafe.markerOptions);
  html.Node get panel => $unsafe.panel;
  PolylineOptions get polylineOptions => PolylineOptions.cast($unsafe.polylineOptions);
  bool get preserveViewport => $unsafe.preserveViewport;
  num get routeIndex => $unsafe.routeIndex;
  bool get suppressBicyclingLayer => $unsafe.suppressBicyclingLayer;
  bool get suppressInfoWindows => $unsafe.suppressInfoWindows;
  bool get suppressMarkers => $unsafe.suppressMarkers;
  bool get suppressPolylines => $unsafe.suppressPolylines;
  set directions(DirectionsResult directions) => $unsafe.directions = directions;
  set draggable(bool draggable) => $unsafe.draggable = draggable;
  set hideRouteList(bool hideRouteList) => $unsafe.hideRouteList = hideRouteList;
  set infoWindow(InfoWindow infoWindow) => $unsafe.infoWindow = infoWindow;
  set map(GMap map) => $unsafe.map = map;
  set markerOptions(MarkerOptions markerOptions) => $unsafe.markerOptions = markerOptions;
  set panel(html.Node panel) => $unsafe.panel = panel;
  set polylineOptions(PolylineOptions polylineOptions) => $unsafe.polylineOptions = polylineOptions;
  set preserveViewport(bool preserveViewport) => $unsafe.preserveViewport = preserveViewport;
  set routeIndex(num routeIndex) => $unsafe.routeIndex = routeIndex;
  set suppressBicyclingLayer(bool suppressBicyclingLayer) => $unsafe.suppressBicyclingLayer = suppressBicyclingLayer;
  set suppressInfoWindows(bool suppressInfoWindows) => $unsafe.suppressInfoWindows = suppressInfoWindows;
  set suppressMarkers(bool suppressMarkers) => $unsafe.suppressMarkers = suppressMarkers;
  set suppressPolylines(bool suppressPolylines) => $unsafe.suppressPolylines = suppressPolylines;
}