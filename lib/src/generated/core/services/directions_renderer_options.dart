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

class DirectionsRendererOptions extends jsw.TypedJsObject {
  static DirectionsRendererOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new DirectionsRendererOptions.fromJsObject(jsObject);
  DirectionsRendererOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DirectionsRendererOptions();

  set directions(DirectionsResult directions) => $unsafe['directions'] = directions == null ? null : directions.$unsafe;
  DirectionsResult get directions => DirectionsResult.$wrap($unsafe['directions']);
  set draggable(bool draggable) => $unsafe['draggable'] = draggable;
  bool get draggable => $unsafe['draggable'];
  set hideRouteList(bool hideRouteList) => $unsafe['hideRouteList'] = hideRouteList;
  bool get hideRouteList => $unsafe['hideRouteList'];
  set infoWindow(InfoWindow infoWindow) => $unsafe['infoWindow'] = infoWindow == null ? null : infoWindow.$unsafe;
  InfoWindow get infoWindow => InfoWindow.$wrap($unsafe['infoWindow']);
  set map(GMap map) => $unsafe['map'] = map == null ? null : map.$unsafe;
  GMap get map => GMap.$wrap($unsafe['map']);
  set markerOptions(MarkerOptions markerOptions) => $unsafe['markerOptions'] = markerOptions == null ? null : markerOptions.$unsafe;
  MarkerOptions get markerOptions => MarkerOptions.$wrap($unsafe['markerOptions']);
  html.Node get panel => $unsafe['panel'];
  set panel(html.Node panel) => $unsafe['panel'] = panel;
  set polylineOptions(PolylineOptions polylineOptions) => $unsafe['polylineOptions'] = polylineOptions == null ? null : polylineOptions.$unsafe;
  PolylineOptions get polylineOptions => PolylineOptions.$wrap($unsafe['polylineOptions']);
  set preserveViewport(bool preserveViewport) => $unsafe['preserveViewport'] = preserveViewport;
  bool get preserveViewport => $unsafe['preserveViewport'];
  set routeIndex(num routeIndex) => $unsafe['routeIndex'] = routeIndex;
  num get routeIndex => $unsafe['routeIndex'];
  set suppressBicyclingLayer(bool suppressBicyclingLayer) => $unsafe['suppressBicyclingLayer'] = suppressBicyclingLayer;
  bool get suppressBicyclingLayer => $unsafe['suppressBicyclingLayer'];
  set suppressInfoWindows(bool suppressInfoWindows) => $unsafe['suppressInfoWindows'] = suppressInfoWindows;
  bool get suppressInfoWindows => $unsafe['suppressInfoWindows'];
  set suppressMarkers(bool suppressMarkers) => $unsafe['suppressMarkers'] = suppressMarkers;
  bool get suppressMarkers => $unsafe['suppressMarkers'];
  set suppressPolylines(bool suppressPolylines) => $unsafe['suppressPolylines'] = suppressPolylines;
  bool get suppressPolylines => $unsafe['suppressPolylines'];
}
