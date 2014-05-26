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

class GMap extends MVCObject {
  static GMap $wrap(js.JsObject jsObject) => jsObject == null ? null : new GMap.fromJsObject(jsObject);
  static bool isInstance(js.JsObject jsObject) => jsObject != null && jsObject.instanceof(maps['Map']);

  jsw.SubscribeStreamProvider _onBoundsChanged;
  jsw.SubscribeStreamProvider _onCenterChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onDblClick;
  jsw.SubscribeStreamProvider _onDrag;
  jsw.SubscribeStreamProvider _onDragend;
  jsw.SubscribeStreamProvider _onDragstart;
  jsw.SubscribeStreamProvider _onHeadingChanged;
  jsw.SubscribeStreamProvider _onIdle;
  jsw.SubscribeStreamProvider _onMaptypeidChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onMousemove;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseout;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseover;
  jsw.SubscribeStreamProvider _onProjectionChanged;
  jsw.SubscribeStreamProvider _onResize;
  jsw.SubscribeStreamProvider<MouseEvent> _onRightclick;
  jsw.SubscribeStreamProvider _onTilesloaded;
  jsw.SubscribeStreamProvider _onTiltChanged;
  jsw.SubscribeStreamProvider _onZoomChanged;

  GMap(html.Node mapDiv, [MapOptions opts])
      : super(maps['Map'], [mapDiv, jsw.Serializable.$unwrap(opts)]) {
    _initStreams();
  }
  GMap.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onBoundsChanged = event.getStreamProviderFor(this, "bounds_changed");
    _onCenterChanged = event.getStreamProviderFor(this, "center_changed");
    _onClick = event.getStreamProviderFor(this, "click", MouseEvent.$wrap);
    _onDblClick = event.getStreamProviderFor(this, "dblclick", MouseEvent.$wrap);
    _onDrag = event.getStreamProviderFor(this, "drag");
    _onDragend = event.getStreamProviderFor(this, "dragend");
    _onDragstart = event.getStreamProviderFor(this, "dragstart");
    _onHeadingChanged = event.getStreamProviderFor(this, "heading_changed");
    _onIdle = event.getStreamProviderFor(this, "idle");
    _onMaptypeidChanged = event.getStreamProviderFor(this, "maptypeid_changed");
    _onMousemove = event.getStreamProviderFor(this, "mousemove", MouseEvent.$wrap);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", MouseEvent.$wrap);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", MouseEvent.$wrap);
    _onProjectionChanged = event.getStreamProviderFor(this, "projection_changed");
    _onResize = event.getStreamProviderFor(this, "resize");
    _onRightclick = event.getStreamProviderFor(this, "rightclick", MouseEvent.$wrap);
    _onTilesloaded = event.getStreamProviderFor(this, "tilesloaded");
    _onTiltChanged = event.getStreamProviderFor(this, "tilt_changed");
    _onZoomChanged = event.getStreamProviderFor(this, "zoom_changed");
  }

  Stream get onBoundsChanged => _onBoundsChanged.stream;
  Stream get onCenterChanged => _onCenterChanged.stream;
  Stream<MouseEvent> get onClick => _onClick.stream;
  Stream<MouseEvent> get onDblClick => _onDblClick.stream;
  Stream get onDrag => _onDrag.stream;
  Stream get onDragend => _onDragend.stream;
  Stream get onDragstart => _onDragstart.stream;
  Stream get onHeadingChanged => _onHeadingChanged.stream;
  Stream get onIdle => _onIdle.stream;
  Stream get onMaptypeidChanged => _onMaptypeidChanged.stream;
  Stream<MouseEvent> get onMousemove => _onMousemove.stream;
  Stream<MouseEvent> get onMouseout => _onMouseout.stream;
  Stream<MouseEvent> get onMouseover => _onMouseover.stream;
  Stream get onProjectionChanged => _onProjectionChanged.stream;
  Stream get onResize => _onResize.stream;
  Stream<MouseEvent> get onRightclick => _onRightclick.stream;
  Stream get onTilesloaded => _onTilesloaded.stream;
  Stream get onTiltChanged => _onTiltChanged.stream;
  Stream get onZoomChanged => _onZoomChanged.stream;

  void fitBounds(LatLngBounds bounds) {
    $unsafe.callMethod('fitBounds', [bounds == null ? null : bounds.$unsafe]);
  }
  LatLngBounds get bounds => LatLngBounds.$wrap($unsafe.callMethod('getBounds'));
  LatLng get center => LatLng.$wrap($unsafe.callMethod('getCenter'));
  html.Node get div => $unsafe.callMethod('getDiv');
  num get heading => $unsafe.callMethod('getHeading');
  dynamic get mapTypeId => ((v3) => ((v2) => v2 != null ? v2 : ((v1) => v1 is String ? v1 : ((v0) => v0)(v1))(v3))(MapTypeId.$wrap(v3)))($unsafe['mapTypeId']);
  Projection get projection => Projection.$wrap($unsafe.callMethod('getProjection'));
  StreetViewPanorama get streetView => StreetViewPanorama.$wrap($unsafe.callMethod('getStreetView'));
  num get tilt => $unsafe.callMethod('getTilt');
  num get zoom => $unsafe.callMethod('getZoom');
  void panBy(num x, num y) {
    $unsafe.callMethod('panBy', [x, y]);
  }
  void panTo(LatLng latLng) {
    $unsafe.callMethod('panTo', [latLng == null ? null : latLng.$unsafe]);
  }
  void panToBounds(LatLngBounds latLngBounds) {
    $unsafe.callMethod('panToBounds', [latLngBounds == null ? null : latLngBounds.$unsafe]);
  }
  set center(LatLng latLng) => $unsafe.callMethod('setCenter', [latLng == null ? null : latLng.$unsafe]);
  set heading(num heading) => $unsafe.callMethod('setHeading', [heading]);
  set mapTypeId(dynamic mapTypeId) => $unsafe.callMethod('setMapTypeId', [mapTypeId is MapTypeId ? mapTypeId.$unsafe : mapTypeId is String ? mapTypeId : mapTypeId == null ? null : throw "bad type"]);
  set options(MapOptions options) => $unsafe.callMethod('setOptions', [options == null ? null : options.$unsafe]);
  set streetView(StreetViewPanorama panorama) => $unsafe.callMethod('setStreetView', [panorama == null ? null : panorama.$unsafe]);
  set tilt(num tilt) => $unsafe.callMethod('setTilt', [tilt]);
  set zoom(num zoom) => $unsafe.callMethod('setZoom', [zoom]);

  Controls get controls => Controls.$wrap($unsafe['controls']);
  MapTypeRegistry get mapTypes => MapTypeRegistry.$wrap($unsafe['mapTypes']);
  MVCArray<MapType> get overlayMapTypes => MVCArray.$wrapSerializables($unsafe['overlayMapTypes'], MapType.$wrap);
  set controls(Controls controls) => $unsafe['controls'] = controls == null ? null : controls.$unsafe;
  set mapTypes(MapTypeRegistry mapTypes) => $unsafe['mapTypes'] = mapTypes == null ? null : mapTypes.$unsafe;
  set overlayMapTypes(MVCArray overlayMapTypes) => $unsafe['overlayMapTypes'] = overlayMapTypes == null ? null : overlayMapTypes.$unsafe;
}

// TODO make this a Map
class Controls extends jsw.TypedJsObject {
  static Controls $wrap(js.JsObject jsObject) => jsObject == null ? null : new Controls.fromJsObject(jsObject);
  Controls.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  Controls()
      : super.fromJsObject(new js.JsArray());

  MVCArray<html.Node> operator [](ControlPosition controlPosition) => MVCArray.$wrap($unsafe[jsw.Serializable.$unwrap(controlPosition)]);
  void operator []=(ControlPosition controlPosition, MVCArray<html.Node> nodes) {
    $unsafe[jsw.Serializable.$unwrap(controlPosition)] = jsw.Serializable.$unwrap(nodes);
  }
}
