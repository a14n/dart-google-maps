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

class DirectionsRendererOptions extends jsw.IsJsProxy {
  set directions(DirectionsResult directions) => $.directions = directions;
  set draggable(bool draggable) => $.draggable = draggable;
  set hideRouteList(bool hideRouteList) => $.hideRouteList = hideRouteList;
  set infoWindow(InfoWindow infoWindow) => $.infoWindow = infoWindow;
  set map(GMap map) => $.map = map;
  set markerOptions(MarkerOptions markerOptions) => $.markerOptions = markerOptions;
  set panel(html.Node panel) => $.panel = panel;
  set polylineOptions(PolylineOptions polylineOptions) => $.polylineOptions = polylineOptions;
  set preserveViewport(bool preserveViewport) => $.preserveViewport = preserveViewport;
  set routeIndex(num routeIndex) => $.routeIndex = routeIndex;
  set suppressBicyclingLayer(bool suppressBicyclingLayer) => $.suppressBicyclingLayer = suppressBicyclingLayer;
  set suppressInfoWindows(bool suppressInfoWindows) => $.suppressInfoWindows = suppressInfoWindows;
  set suppressMarkers(bool suppressMarkers) => $.suppressMarkers = suppressMarkers;
  set suppressPolylines(bool suppressPolylines) => $.suppressPolylines = suppressPolylines;
}