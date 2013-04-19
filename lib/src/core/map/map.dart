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
  static GMap cast(js.Proxy proxy) => proxy == null ? null : new GMap.fromProxy(proxy);
  static bool isInstance(js.Proxy proxy) => js.instanceof(proxy, maps.Map);

  Stream _onBoundsChanged;
  Stream _onCenterChanged;
  Stream<MouseEvent> _onClick;
  Stream<MouseEvent> _onDblClick;
  Stream _onDrag;
  Stream _onDragend;
  Stream _onDragstart;
  Stream _onHeadingChanged;
  Stream _onIdle;
  Stream _onMaptypeidChanged;
  Stream<MouseEvent> _onMousemove;
  Stream<MouseEvent> _onMouseout;
  Stream<MouseEvent> _onMouseover;
  Stream _onProjectionChanged;
  Stream _onResize;
  Stream<MouseEvent> _onRightclick;
  Stream _onTilesloaded;
  Stream _onTiltChanged;
  Stream _onZoomChanged;

  GMap(html.Node mapDiv, [MapOptions opts]) : super(maps.Map, [mapDiv, opts]) { _initStreams(); }
  GMap.fromProxy(js.Proxy proxy) : super.fromProxy(proxy) { _initStreams(); }

  void _initStreams() {
    _onBoundsChanged = event.getStreamFor(this, "bounds_changed");
    _onCenterChanged = event.getStreamFor(this, "center_changed");
    _onClick = event.getStreamFor(this, "click", MouseEvent.cast);
    _onDblClick = event.getStreamFor(this, "dblclick", MouseEvent.cast);
    _onDrag = event.getStreamFor(this, "drag");
    _onDragend = event.getStreamFor(this, "dragend");
    _onDragstart = event.getStreamFor(this, "dragstart");
    _onHeadingChanged = event.getStreamFor(this, "heading_changed");
    _onIdle = event.getStreamFor(this, "idle");
    _onMaptypeidChanged = event.getStreamFor(this, "maptypeid_changed");
    _onMousemove = event.getStreamFor(this, "mousemove", MouseEvent.cast);
    _onMouseout = event.getStreamFor(this, "mouseout", MouseEvent.cast);
    _onMouseover = event.getStreamFor(this, "mouseover", MouseEvent.cast);
    _onProjectionChanged = event.getStreamFor(this, "projection_changed");
    _onResize = event.getStreamFor(this, "resize");
    _onRightclick = event.getStreamFor(this, "rightclick", MouseEvent.cast);
    _onTilesloaded = event.getStreamFor(this, "tilesloaded");
    _onTiltChanged = event.getStreamFor(this, "tilt_changed");
    _onZoomChanged = event.getStreamFor(this, "zoom_changed");
  }

  Stream get onBoundsChanged => _onBoundsChanged;
  Stream get onCenterChanged => _onCenterChanged;
  Stream<MouseEvent> get onClick => _onClick;
  Stream<MouseEvent> get onDblClick => _onDblClick;
  Stream get onDrag => _onDrag;
  Stream get onDragend => _onDragend;
  Stream get onDragstart => _onDragstart;
  Stream get onHeadingChanged => _onHeadingChanged;
  Stream get onIdle => _onIdle;
  Stream get onMaptypeidChanged => _onMaptypeidChanged;
  Stream<MouseEvent> get onMousemove => _onMousemove;
  Stream<MouseEvent> get onMouseout => _onMouseout;
  Stream<MouseEvent> get onMouseover => _onMouseover;
  Stream get onProjectionChanged => _onProjectionChanged;
  Stream get onResize => _onResize;
  Stream<MouseEvent> get onRightclick => _onRightclick;
  Stream get onTilesloaded => _onTilesloaded;
  Stream get onTiltChanged => _onTiltChanged;
  Stream get onZoomChanged => _onZoomChanged;

  void fitBounds(LatLngBounds bounds) { $unsafe.fitBounds(bounds); }
  LatLngBounds get bounds => LatLngBounds.cast($unsafe.getBounds());
  LatLng get center => LatLng.cast($unsafe.getCenter());
  html.Node get div => $unsafe.getDiv();
  num get heading => $unsafe.getHeading();
  Object get mapTypeId {
    final result = $unsafe.getMapTypeId();
    return firstNotNull([MapTypeId.find(result), result]);
  }
  Projection get projection => Projection.cast($unsafe.getProjection());
  StreetViewPanorama get streetView => StreetViewPanorama.cast($unsafe.getStreetView());
  num get tilt => $unsafe.getTilt();
  num get zoom => $unsafe.getZoom();
  void panBy(num x, num y) { $unsafe.panBy(x, y); }
  void panTo(LatLng latLng) { $unsafe.panTo(latLng); }
  void panToBounds(LatLngBounds latLngBounds) { $unsafe.panToBounds(latLngBounds); }
  set center(LatLng latLng) => $unsafe.setCenter(latLng);
  set heading(num heading) => $unsafe.setHeading(heading);
  set mapTypeId(Object mapTypeId) => $unsafe.setMapTypeId(mapTypeId);
  set options(MapOptions options) => $unsafe.setOptions(options);
  set streetView(StreetViewPanorama panorama) => $unsafe.setStreetView(panorama);
  set tilt(num tilt) => $unsafe.setTilt(tilt);
  set zoom(num zoom) => $unsafe.setZoom(zoom);

  Controls get controls => Controls.cast($unsafe.controls);
  MapTypeRegistry get mapTypes => MapTypeRegistry.cast($unsafe.mapTypes);
  MVCArray<MapType> get overlayMapTypes => MVCArray.castListOfSerializables($unsafe.overlayMapTypes, MapType.cast);
  set controls(Controls controls) => $unsafe.controls = controls;
  set mapTypes(MapTypeRegistry mapTypes) => $unsafe.mapTypes = mapTypes;
  set overlayMapTypes(MVCArray<MapType> overlayMapTypes) => $unsafe.overlayMapTypes = overlayMapTypes;

  /// deprecated : use onXxx stream.
  @deprecated GMapEvents get on => new GMapEvents._(this);
}

@deprecated
class GMapEvents {
  static final BOUNDS_CHANGED = "bounds_changed";
  static final CENTER_CHANGED = "center_changed";
  static final CLICK = "click";
  static final DBLCLICK = "dblclick";
  static final DRAG = "drag";
  static final DRAGEND = "dragend";
  static final DRAGSTART = "dragstart";
  static final HEADING_CHANGED = "heading_changed";
  static final IDLE = "idle";
  static final MAPTYPEID_CHANGED = "maptypeid_changed";
  static final MOUSEMOVE = "mousemove";
  static final MOUSEOUT = "mouseout";
  static final MOUSEOVER = "mouseover";
  static final PROJECTION_CHANGED = "projection_changed";
  static final RESIZE = "resize";
  static final RIGHTCLICK = "rightclick";
  static final TILESLOADED = "tilesloaded";
  static final TILT_CHANGED = "tilt_changed";
  static final ZOOM_CHANGED = "zoom_changed";

  final GMap _gmap;

  GMapEvents._(this._gmap);

  NoArgsEventListenerAdder get boundsChanged => new NoArgsEventListenerAdder(_gmap, BOUNDS_CHANGED);
  NoArgsEventListenerAdder get centerChanged => new NoArgsEventListenerAdder(_gmap, CENTER_CHANGED);
  MouseEventListenerAdder get click => new MouseEventListenerAdder(_gmap, CLICK);
  MouseEventListenerAdder get dblclick => new MouseEventListenerAdder(_gmap, DBLCLICK);
  NoArgsEventListenerAdder get drag => new NoArgsEventListenerAdder(_gmap, DRAG);
  NoArgsEventListenerAdder get dragend => new NoArgsEventListenerAdder(_gmap, DRAGEND);
  NoArgsEventListenerAdder get dragstart => new NoArgsEventListenerAdder(_gmap, DRAGSTART);
  NoArgsEventListenerAdder get headingChanged => new NoArgsEventListenerAdder(_gmap, HEADING_CHANGED);
  NoArgsEventListenerAdder get idle => new NoArgsEventListenerAdder(_gmap, IDLE);
  NoArgsEventListenerAdder get maptypeidChanged => new NoArgsEventListenerAdder(_gmap, MAPTYPEID_CHANGED);
  MouseEventListenerAdder get mousemove => new MouseEventListenerAdder(_gmap, MOUSEMOVE);
  MouseEventListenerAdder get mouseout => new MouseEventListenerAdder(_gmap, MOUSEOUT);
  MouseEventListenerAdder get mouseover => new MouseEventListenerAdder(_gmap, MOUSEOVER);
  NoArgsEventListenerAdder get projectionChanged => new NoArgsEventListenerAdder(_gmap, PROJECTION_CHANGED);
  NoArgsEventListenerAdder get resize => new NoArgsEventListenerAdder(_gmap, RESIZE);
  MouseEventListenerAdder get rightclick => new MouseEventListenerAdder(_gmap, RIGHTCLICK);
  NoArgsEventListenerAdder get tilesloaded => new NoArgsEventListenerAdder(_gmap, TILESLOADED);
  NoArgsEventListenerAdder get tiltChanged => new NoArgsEventListenerAdder(_gmap, TILT_CHANGED);
  NoArgsEventListenerAdder get zoomChanged => new NoArgsEventListenerAdder(_gmap, ZOOM_CHANGED);
}

class Controls extends jsw.TypedProxy {
  static Controls cast(js.Proxy proxy) => proxy == null ? null : new Controls.fromProxy(proxy);

  Controls() : super.fromProxy(js.array([]));
  Controls.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  MVCArray<html.Node> getNodes(ControlPosition controlPosition) => MVCArray.cast($unsafe[controlPosition]);
  void setNodes(ControlPosition controlPosition, MVCArray<html.Node> nodes) { $unsafe[controlPosition.toString()] = nodes; }
}