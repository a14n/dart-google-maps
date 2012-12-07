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
  static final INSTANCIATOR = (js.Proxy jsProxy) => new GMap.fromJsProxy(jsProxy);
  static bool isInstance(js.Proxy jsProxy) => js.instanceof(jsProxy, maps.Map);

  /// Creates a new map inside of the given HTML container, which is typically a DIV element.
  GMap(html.Node mapDiv, [MapOptions opts]) : super.newInstance(maps.Map, [mapDiv, opts]);
  GMap.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  // js methods

  /// Sets the viewport to contain the given bounds.
  void fitBounds(LatLngBounds bounds) { $.fitBounds(bounds); }
  /// Returns the lat/lng bounds of the current viewport. If more than one copy of the world is visible, the bounds range in longitude from -180 to 180 degrees inclusive. If the map is not yet initialized (i.e. the mapType is still null), or center and zoom have not been set then the result is `null`.
  LatLngBounds get bounds => $.getBounds().map(LatLngBounds.INSTANCIATOR).value;
  /// Returns the position displayed at the center of the map. Note that this [LatLng] object is *not* wrapped. See [LatLng] for more information.
  LatLng get center => $.getCenter().map(LatLng.INSTANCIATOR).value;
  ///
  html.Node get div => $.getDiv().value;
  /// Returns the compass heading of aerial imagery. The heading value is measured in degrees (clockwise) from cardinal direction North.
  num get heading => $.getHeading().value;
  ///
  Object get mapTypeId {
    final result = $.getMapTypeId().value;
    final mapTypeId = MapTypeId.find(result);
    if ( mapTypeId != null ) {
      return mapTypeId;
    } else {
      return result;
    }
  }
  /// Returns the current [Projection]. If the map is not yet initialized (i.e. the mapType is still null) then the result is null. Listen to `projection_changed` and check its value to ensure it is not null.
  Projection get projection => $.getProjection().map(Projection.INSTANCIATOR).value;
  /// Returns the default [StreetViewPanorama] bound to the map, which may be a default panorama embedded within the map, or the panorama set using `setStreetView()`. Changes to the map's `streetViewControl` will be reflected in the display of such a bound panorama.
  StreetViewPanorama get streetView => $.getStreetView().map(StreetViewPanorama.INSTANCIATOR).value;
  /// Returns the angle of incidence for aerial imagery (available for `SATELLITE` and `HYBRID` map types) measured in degrees from the viewport plane to the map plane. A value of `0` indicates no angle of incidence (no tilt) while 45° imagery will return a value of `45`.
  num get tilt => $.getTilt().value;
  ///
  num get zoom => $.getZoom().value;
  /// Changes the center of the map by the given distance in pixels. If the distance is less than both the width and height of the map, the transition will be smoothly animated. Note that the map coordinate system increases from west to east (for x values) and north to south (for y values).
  void panBy(num x, num y) { $.panBy(x, y); }
  /// Changes the center of the map to the given [LatLng]. If the change is less than both the width and height of the map, the transition will be smoothly animated.
  void panTo(LatLng latLng) { $.panTo(latLng); }
  /// Pans the map by the minimum amount necessary to contain the given [LatLngBounds]. It makes no guarantee where on the map the bounds will be, except that as much of the bounds as possible will be visible. The bounds will be positioned inside the area bounded by the map type and navigation (pan, zoom, and Street View) controls, if they are present on the map. If the bounds is larger than the map, the map will be shifted to include the northwest corner of the bounds. If the change in the map's position is less than both the width and height of the map, the transition will be smoothly animated.
  void panToBounds(LatLngBounds latLngBounds) { $.panToBounds(latLngBounds); }
  /// 
  set center(LatLng latLng) => $.setCenter(latLng);
  /// Sets the compass heading for aerial imagery measured in degrees from cardinal direction North.
  set heading(num heading) => $.setHeading(heading);
  ///
  set mapTypeId(Object mapTypeId) {
    if (mapTypeId is String || mapTypeId is MapTypeId) {
      $.setMapTypeId(mapTypeId);
    } else {
      throw new UnsupportedError("Parameter must be of type String or MapTypeId");
    }
  }
  ///
  set options(MapOptions options) => $.setOptions(options);
  /// Binds a [StreetViewPanorama] to the map. This panorama overrides the default [StreetViewPanorama], allowing the map to bind to an external panorama outside of the map. Setting the panorama to null binds the default embedded panorama back to the map.
  set streetView(StreetViewPanorama panorama) => $.setStreetView(panorama);
  /// Sets the angle of incidence for aerial imagery (available for `SATELLITE` and `HYBRID` map types) measured in degrees from the viewport plane to the map plane. The only supported values are `0`, indicating no angle of incidence (no tilt), and `45` indicating a tilt of 45°.
  set tilt(num tilt) => $.setTilt(tilt);
  ///
  set zoom(num zoom) => $.setZoom(zoom);

  // js properties

  /// Additional controls to attach to the map. To add a control to the map, add the control's `<div>` to the [MVCArray] corresponding to the [ControlPosition] where it should be rendered.
  Controls get controls => $.controls.map(Controls.INSTANCIATOR).value;
  /// Additional controls to attach to the map. To add a control to the map, add the control's `<div>` to the [MVCArray] corresponding to the [ControlPosition] where it should be rendered.
  set controls(Controls controls) => $.controls = controls;
  /// A registry of [MapType] instances by string ID.
  MapTypeRegistry get mapTypes => $.mapTypes.map(MapTypeRegistry.INSTANCIATOR).value;
  /// A registry of [MapType] instances by string ID.
  set mapTypes(MapTypeRegistry mapTypes) => $.mapTypes = mapTypes;
  /// Additional map types to overlay.
  MVCArray<MapType> get overlayMapTypes => $.overlayMapTypes.map((js.Proxy jsProxy) => new MVCArray.fromJsProxy(jsProxy, (js.Proxy jsProxy) => new MapType.fromJsProxy(jsProxy))).value;
  /// Additional map types to overlay.
  set overlayMapTypes(MVCArray<MapType> overlayMapTypes) => $.overlayMapTypes = overlayMapTypes;

  // js events

  GMapEvents get on => new GMapEvents._(this);
}

class GMapEvents {
  /// This event is fired when the viewport bounds have changed.
  static final BOUNDS_CHANGED = "bounds_changed";
  /// This event is fired when the map center property changes.
  static final CENTER_CHANGED = "center_changed";
  /// This event is fired when the user clicks on the map (but not when they click on a marker or infowindow).
  static final CLICK = "click";
  /// This event is fired when the user double-clicks on the map. Note that the click event will also fire, right before this one.
  static final DBLCLICK = "dblclick";
  /// This event is repeatedly fired while the user drags the map.
  static final DRAG = "drag";
  /// This event is fired when the user stops dragging the map.
  static final DRAGEND = "dragend";
  /// This event is fired when the user starts dragging the map.
  static final DRAGSTART = "dragstart";
  /// This event is fired when the map heading property changes.
  static final HEADING_CHANGED = "heading_changed";
  /// This event is fired when the map becomes idle after panning or zooming.
  static final IDLE = "idle";
  /// This event is fired when the mapTypeId property changes.
  static final MAPTYPEID_CHANGED = "maptypeid_changed";
  /// This event is fired whenever the user's mouse moves over the map container.
  static final MOUSEMOVE = "mousemove";
  /// This event is fired when the user's mouse exits the map container.
  static final MOUSEOUT = "mouseout";
  /// This event is fired when the user's mouse enters the map container.
  static final MOUSEOVER = "mouseover";
  /// This event is fired when the projection has changed.
  static final PROJECTION_CHANGED = "projection_changed";
  /// Developers should trigger this event on the map when the div changes size: `google.maps.event.trigger(map, 'resize')`.
  static final RESIZE = "resize";
  /// This event is fired when the DOM contextmenu event is fired on the map container.
  static final RIGHTCLICK = "rightclick";
  /// This event is fired when the visible tiles have finished loading.
  static final TILESLOADED = "tilesloaded";
  /// This event is fired when the map tilt property changes.
  static final TILT_CHANGED = "tilt_changed";
  /// This event is fired when the map zoom property changes.
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

class Controls extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new Controls.fromJsProxy(jsProxy);

  Controls() : super.fromJsProxy(js.array([]));
  Controls.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  MVCArray<html.Node> getNodes(ControlPosition controlPosition) => $[controlPosition.value].map((js.Proxy jsProxy) => new MVCArray.fromJsProxy(jsProxy)).value;
  void setNodes(ControlPosition controlPosition, MVCArray<html.Node> nodes) { $[controlPosition.value.toString()] = nodes; }
}