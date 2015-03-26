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

@JsName('Map')
abstract class _GMap implements JsInterface {
  external factory _GMap(html.Node mapDiv, [MapOptions opts]);

  // methods

  void fitBounds(LatLngBounds bounds);
  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds();
  LatLng get center => _getCenter();
  LatLng _getCenter();
  html.Node get div => _getDiv();
  html.Node _getDiv();
  num get heading => _getHeading();
  num _getHeading();
  // TODO (aa) MapTypeId|String mapTypeId;
  dynamic get mapTypeId => mapTypeIdOrStringCodec.decode(_getMapTypeId());
  String _getMapTypeId();
  Projection get projection => _getProjection();
  Projection _getProjection();
  StreetViewPanorama get streetView => _getStreetView();
  StreetViewPanorama _getStreetView();
  num get tilt => _getTilt();
  num _getTilt();
  num get zoom => _getZoom();
  num _getZoom();
  void panBy(num x, num y);
  void panTo(LatLng latLng);
  void panToBounds(LatLngBounds latLngBounds);
  void set center(LatLng latLng) => _setCenter(latLng);
  void _setCenter(LatLng latLng);
  void set heading(num heading) => _setHeading(heading);
  void _setHeading(num heading);
  // TODO (aa) MapTypeId|String mapTypeId;
  void set mapTypeId(dynamic mapTypeId) =>
      _setMapTypeId(mapTypeIdOrStringCodec.encode(mapTypeId));
  void _setMapTypeId(String mapTypeId);
  void set options(MapOptions options) => _setOptions(options);
  void _setOptions(MapOptions options);
  void set streetView(StreetViewPanorama panorama) => _setStreetView(panorama);
  void _setStreetView(StreetViewPanorama panorama);
  void set tilt(num tilt) => _setTilt(tilt);
  void _setTilt(num tilt);
  void set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom);

  // properties

  Controls controls;
  Data data;
  MapTypeRegistry mapTypes;
  MVCArray<MapType> get overlayMapTypes => ((o) {
    if (o == null) return null;
    return new MVCArray.created(
        o, new JsInterfaceCodec((o) => new MapType.created(o)));
  })(_overlayMapTypes);
  JsObject get _overlayMapTypes;
  set overlayMapTypes(MVCArray<MapType> overlayMapTypes);

  // events

  Stream get onBoundsChanged =>
      getStream(this, #onBoundsChanged, "bounds_changed");
  Stream get onCenterChanged =>
      getStream(this, #onCenterChanged, "center_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDblClick => getStream(
      this, #onDblClick, "dblclick", (JsObject o) => new MouseEvent.created(o));
  Stream get onDrag => getStream(this, #onDrag, "drag");
  Stream get onDragend => getStream(this, #onDragend, "dragend");
  Stream get onDragstart => getStream(this, #onDragstart, "dragstart");
  Stream get onHeadingChanged =>
      getStream(this, #onHeadingChanged, "heading_changed");
  Stream get onIdle => getStream(this, #onIdle, "idle");
  Stream get onMaptypeidChanged =>
      getStream(this, #onMaptypeidChanged, "maptypeid_changed");
  Stream<MouseEvent> get onMousemove => getStream(this, #onMousemove,
      "mousemove", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout => getStream(
      this, #onMouseout, "mouseout", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new MouseEvent.created(o));
  Stream get onProjectionChanged =>
      getStream(this, #onProjectionChanged, "projection_changed");
  Stream get onResize => getStream(this, #onResize, "resize");
  Stream<MouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new MouseEvent.created(o));
  Stream get onTilesloaded => getStream(this, #onTilesloaded, "tilesloaded");
  Stream get onTiltChanged => getStream(this, #onTiltChanged, "tilt_changed");
  Stream get onZoomChanged => getStream(this, #onZoomChanged, "zoom_changed");
}

abstract class _Controls extends JsInterface
    with MapMixin<ControlPosition, MVCArray<html.Node>> {
  _Controls() : super.created(new JsArray());

  MVCArray<html.Node> operator [](ControlPosition controlPosition) {
    var value = asJsObject(this)[controlPositionCodec.encode(controlPosition)];
    if (value == null) return null;
    return new MVCArray<html.Node>.created(value);
  }
  void operator []=(
      ControlPosition controlPosition, MVCArray<html.Node> nodes) {
    asJsObject(this)[controlPositionCodec.encode(controlPosition)] =
        toJs(nodes);
  }
  Iterable<ControlPosition> get keys {
    var result = <ControlPosition>[];
    for (final control in ControlPosition.values) {
      if (this[control] != null) result.add(control);
    }
    return result;
  }
  MVCArray<html.Node> remove(Object key) {
    var result = this[key];
    this[key] = null;
    return result;
  }
  void clear() => (asJsObject(this) as JsArray).clear();
}
