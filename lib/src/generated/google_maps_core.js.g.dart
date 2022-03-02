// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

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

@JS()
library google_maps.core;

import 'dart:async' show StreamController;
import 'dart:html' show Document, Element, HtmlElement;
import 'dart:typed_data' show Float32List, Float64List;
import 'dart:web_gl' show RenderingContext;
import 'package:google_maps/google_maps_places.dart' show PlacePlusCode;
import 'package:js_wrapping/js_wrapping.dart';

@JS('google.maps.Map')
class GMap extends MVCObject {
  external GMap(
    HtmlElement? mapDiv, [
    MapOptions? opts, // ignore: unused_element
  ]);

  external Data? get data;

  external set data(Data? value);

  external MapTypeRegistry? get mapTypes;

  external set mapTypes(MapTypeRegistry? value);

  external MVCArray<MapType?>? get overlayMapTypes;

  external set overlayMapTypes(MVCArray<MapType?>? value);

  external void fitBounds(
    LatLngBounds? bounds, [
    Object? /*num?|Padding?*/ padding,
  ]);

  external void moveCamera(CameraOptions? cameraOptions);

  external void panBy(num? x, num? y);

  external void panTo(LatLng? latLng);

  external void panToBounds(
    LatLngBounds? latLngBounds, [
    Object? /*num?|Padding?*/ padding,
  ]);
}

extension GMap$Ext on GMap {
  List<MVCArray<HtmlElement?>?>? get controls =>
      getProperty(this, 'controls')?.cast<MVCArray<HtmlElement?>?>();

  set controls(List<MVCArray<HtmlElement?>?>? value) {
    setProperty(this, 'controls', value);
  }

  LatLngBounds? get bounds => _getBounds();
  LatLng? get center => _getCenter();
  bool? get clickableIcons => _getClickableIcons();
  HtmlElement? get div => _getDiv();
  num? get heading => _getHeading();
  Object? /*MapTypeId?|String?*/ get mapTypeId => _getMapTypeId();
  Projection? get projection => _getProjection();
  RenderingType? get renderingType => _getRenderingType();
  StreetViewPanorama? get streetView => _getStreetView();
  num? get tilt => _getTilt();
  num? get zoom => _getZoom();
  set center(LatLng? center) => _setCenter(center);
  set clickableIcons(bool? clickableIcons) =>
      _setClickableIcons(clickableIcons);
  set heading(num? heading) => _setHeading(heading);
  set mapTypeId(Object? /*MapTypeId?|String?*/ mapTypeId) =>
      _setMapTypeId(mapTypeId);
  set options(MapOptions? options) => _setOptions(options);
  set streetView(StreetViewPanorama? streetView) => _setStreetView(streetView);
  set tilt(num? tilt) => _setTilt(tilt);
  set zoom(num? zoom) => _setZoom(zoom);
  Stream<void> get onBoundsChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'bounds_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onCenterChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'center_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<IconMouseEvent> get onClick {
    late StreamController<IconMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (IconMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<IconMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onContextmenu {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDblclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onDrag {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'drag',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onDragend {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragend',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onDragstart {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragstart',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onHeadingChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'heading_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onIdle {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'idle',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onIsfractionalzoomenabledChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'isfractionalzoomenabled_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onMaptypeidChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'maptypeid_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMousemove {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseout {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseover {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onProjectionChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'projection_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onRenderingtypeChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'renderingtype_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onRightclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onTilesloaded {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'tilesloaded',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onTiltChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'tilt_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onZoomChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'zoom_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  LatLngBounds? _getBounds() => callMethod(this, 'getBounds', []);

  LatLng? _getCenter() => callMethod(this, 'getCenter', []);

  bool? _getClickableIcons() => callMethod(this, 'getClickableIcons', []);

  HtmlElement? _getDiv() => callMethod(this, 'getDiv', []);

  num? _getHeading() => callMethod(this, 'getHeading', []);

  Object? /*MapTypeId?|String?*/ _getMapTypeId() =>
      callMethod(this, 'getMapTypeId', []);

  Projection? _getProjection() => callMethod(this, 'getProjection', []);

  RenderingType? _getRenderingType() =>
      callMethod(this, 'getRenderingType', []);

  StreetViewPanorama? _getStreetView() => callMethod(this, 'getStreetView', []);

  num? _getTilt() => callMethod(this, 'getTilt', []);

  num? _getZoom() => callMethod(this, 'getZoom', []);

  void _setCenter(LatLng? latlng) {
    callMethod(this, 'setCenter', [latlng]);
  }

  void _setClickableIcons(bool? value) {
    callMethod(this, 'setClickableIcons', [value]);
  }

  void _setHeading(num? heading) {
    callMethod(this, 'setHeading', [heading]);
  }

  void _setMapTypeId(Object? /*MapTypeId?|String?*/ mapTypeId) {
    callMethod(this, 'setMapTypeId', [mapTypeId]);
  }

  void _setOptions(MapOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setStreetView(StreetViewPanorama? panorama) {
    callMethod(this, 'setStreetView', [panorama]);
  }

  void _setTilt(num? tilt) {
    callMethod(this, 'setTilt', [tilt]);
  }

  void _setZoom(num? zoom) {
    callMethod(this, 'setZoom', [zoom]);
  }
}

@JS()
@anonymous
class MapOptions {
  external factory MapOptions();

  external String? get backgroundColor;

  external set backgroundColor(String? value);

  external LatLng? get center;

  external set center(LatLng? value);

  external bool? get clickableIcons;

  external set clickableIcons(bool? value);

  external num? get controlSize;

  external set controlSize(num? value);

  external bool? get disableDefaultUI;

  external set disableDefaultUI(bool? value);

  external bool? get disableDoubleClickZoom;

  external set disableDoubleClickZoom(bool? value);

  external bool? get draggable;

  external set draggable(bool? value);

  external String? get draggableCursor;

  external set draggableCursor(String? value);

  external String? get draggingCursor;

  external set draggingCursor(String? value);

  external bool? get fullscreenControl;

  external set fullscreenControl(bool? value);

  external FullscreenControlOptions? get fullscreenControlOptions;

  external set fullscreenControlOptions(FullscreenControlOptions? value);

  external String? get gestureHandling;

  external set gestureHandling(String? value);

  external num? get heading;

  external set heading(num? value);

  external bool? get isFractionalZoomEnabled;

  external set isFractionalZoomEnabled(bool? value);

  external bool? get keyboardShortcuts;

  external set keyboardShortcuts(bool? value);

  external String? get mapId;

  external set mapId(String? value);

  external bool? get mapTypeControl;

  external set mapTypeControl(bool? value);

  external MapTypeControlOptions? get mapTypeControlOptions;

  external set mapTypeControlOptions(MapTypeControlOptions? value);

  external Object? /*MapTypeId?|String?*/ get mapTypeId;

  external set mapTypeId(Object? /*MapTypeId?|String?*/ value);

  external num? get maxZoom;

  external set maxZoom(num? value);

  external num? get minZoom;

  external set minZoom(num? value);

  external bool? get noClear;

  external set noClear(bool? value);

  external bool? get panControl;

  external set panControl(bool? value);

  external PanControlOptions? get panControlOptions;

  external set panControlOptions(PanControlOptions? value);

  external MapRestriction? get restriction;

  external set restriction(MapRestriction? value);

  external bool? get rotateControl;

  external set rotateControl(bool? value);

  external RotateControlOptions? get rotateControlOptions;

  external set rotateControlOptions(RotateControlOptions? value);

  external bool? get scaleControl;

  external set scaleControl(bool? value);

  external ScaleControlOptions? get scaleControlOptions;

  external set scaleControlOptions(ScaleControlOptions? value);

  external bool? get scrollwheel;

  external set scrollwheel(bool? value);

  external StreetViewPanorama? get streetView;

  external set streetView(StreetViewPanorama? value);

  external bool? get streetViewControl;

  external set streetViewControl(bool? value);

  external StreetViewControlOptions? get streetViewControlOptions;

  external set streetViewControlOptions(StreetViewControlOptions? value);

  external num? get tilt;

  external set tilt(num? value);

  external num? get zoom;

  external set zoom(num? value);

  external bool? get zoomControl;

  external set zoomControl(bool? value);

  external ZoomControlOptions? get zoomControlOptions;

  external set zoomControlOptions(ZoomControlOptions? value);
}

extension MapOptions$Ext on MapOptions {
  List<MapTypeStyle?>? get styles =>
      getProperty(this, 'styles')?.cast<MapTypeStyle?>();

  set styles(List<MapTypeStyle?>? value) {
    setProperty(this, 'styles', value);
  }
}

@JS()
@anonymous
class MapTypeStyle {
  external factory MapTypeStyle();

  external String? get elementType;

  external set elementType(String? value);

  external String? get featureType;

  external set featureType(String? value);
}

extension MapTypeStyle$Ext on MapTypeStyle {
  List<Object?>? get stylers => getProperty(this, 'stylers')?.cast<Object?>();

  set stylers(List<Object?>? value) {
    setProperty(this, 'stylers', value);
  }
}

@JS()
@anonymous
class MapMouseEvent {
  external factory MapMouseEvent();

  external Object? /*MouseEvent?|TouchEvent?|PointerEvent?|KeyboardEvent?|Object?*/ get domEvent;

  external set domEvent(
      Object? /*MouseEvent?|TouchEvent?|PointerEvent?|KeyboardEvent?|Object?*/ value);

  external LatLng? get latLng;

  external set latLng(LatLng? value);

  external void stop();
}

@JS()
@anonymous
class IconMouseEvent extends MapMouseEvent {
  external factory IconMouseEvent();

  external String? get placeId;

  external set placeId(String? value);
}

@JS('google.maps.MapTypeId')
class MapTypeId {
  external static MapTypeId get HYBRID;
  external static MapTypeId get ROADMAP;
  external static MapTypeId get SATELLITE;
  external static MapTypeId get TERRAIN;
}

MapTypeId? MapTypeId$cast(value) {
  if (value == MapTypeId.HYBRID) return MapTypeId.HYBRID;
  if (value == MapTypeId.ROADMAP) return MapTypeId.ROADMAP;
  if (value == MapTypeId.SATELLITE) return MapTypeId.SATELLITE;
  if (value == MapTypeId.TERRAIN) return MapTypeId.TERRAIN;
  return null;
}

@JS('google.maps.MapTypeRegistry')
class MapTypeRegistry extends MVCObject {
  external MapTypeRegistry();

  external void set(String? id, Object? /*MapType?|Object?*/ mapType);
}

@JS()
@anonymous
class MapRestriction {
  external factory MapRestriction();

  external LatLngBounds? get latLngBounds;

  external set latLngBounds(LatLngBounds? value);

  external bool? get strictBounds;

  external set strictBounds(bool? value);
}

@JS('google.maps.TrafficLayer')
class TrafficLayer extends MVCObject {
  external TrafficLayer([
    TrafficLayerOptions? opts, // ignore: unused_element
  ]);
}

extension TrafficLayer$Ext on TrafficLayer {
  GMap? get map => _getMap();
  set map(GMap? map) => _setMap(map);
  set options(TrafficLayerOptions? options) => _setOptions(options);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(TrafficLayerOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }
}

@JS()
@anonymous
class TrafficLayerOptions {
  external factory TrafficLayerOptions();

  external bool? get autoRefresh;

  external set autoRefresh(bool? value);

  external GMap? get map;

  external set map(GMap? value);
}

@JS('google.maps.TransitLayer')
class TransitLayer extends MVCObject {
  external TransitLayer();
}

extension TransitLayer$Ext on TransitLayer {
  GMap? get map => _getMap();
  set map(GMap? map) => _setMap(map);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }
}

@JS('google.maps.BicyclingLayer')
class BicyclingLayer extends MVCObject {
  external BicyclingLayer();
}

extension BicyclingLayer$Ext on BicyclingLayer {
  GMap? get map => _getMap();
  set map(GMap? map) => _setMap(map);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }
}

@JS()
@anonymous
class CameraOptions {
  external factory CameraOptions();

  external LatLng? get center;

  external set center(LatLng? value);

  external num? get heading;

  external set heading(num? value);

  external num? get tilt;

  external set tilt(num? value);

  external num? get zoom;

  external set zoom(num? value);
}

@JS()
@anonymous
class VisibleRegion {
  external factory VisibleRegion();

  external LatLng? get farLeft;

  external set farLeft(LatLng? value);

  external LatLng? get farRight;

  external set farRight(LatLng? value);

  external LatLngBounds? get latLngBounds;

  external set latLngBounds(LatLngBounds? value);

  external LatLng? get nearLeft;

  external set nearLeft(LatLng? value);

  external LatLng? get nearRight;

  external set nearRight(LatLng? value);
}

@JS('google.maps.RenderingType')
class RenderingType {
  external static RenderingType get RASTER;
  external static RenderingType get UNINITIALIZED;
  external static RenderingType get VECTOR;
}

RenderingType? RenderingType$cast(value) {
  if (value == RenderingType.RASTER) return RenderingType.RASTER;
  if (value == RenderingType.UNINITIALIZED) return RenderingType.UNINITIALIZED;
  if (value == RenderingType.VECTOR) return RenderingType.VECTOR;
  return null;
}

@JS('google.maps.WebGLOverlayView')
class WebGLOverlayView extends MVCObject {
  external WebGLOverlayView();

  external void onStateUpdate(WebGLStateOptions? options);

  external void requestRedraw();

  external void requestStateUpdate();
}

extension WebGLOverlayView$Ext on WebGLOverlayView {
  void Function()? get onAdd =>
      callMethod(getProperty(this, 'onAdd'), 'bind', [this]);

  set onAdd(void Function()? value) {
    setProperty(this, 'onAdd', value == null ? null : allowInterop(value));
  }

  void Function()? get onContextLost =>
      callMethod(getProperty(this, 'onContextLost'), 'bind', [this]);

  set onContextLost(void Function()? value) {
    setProperty(
        this, 'onContextLost', value == null ? null : allowInterop(value));
  }

  void Function(WebGLStateOptions? options)? get onContextRestored =>
      callMethod(getProperty(this, 'onContextRestored'), 'bind', [this]);

  set onContextRestored(void Function(WebGLStateOptions? options)? value) {
    setProperty(
        this, 'onContextRestored', value == null ? null : allowInterop(value));
  }

  void Function(WebGLDrawOptions? options)? get onDraw =>
      callMethod(getProperty(this, 'onDraw'), 'bind', [this]);

  set onDraw(void Function(WebGLDrawOptions? options)? value) {
    setProperty(this, 'onDraw', value == null ? null : allowInterop(value));
  }

  void Function()? get onRemove =>
      callMethod(getProperty(this, 'onRemove'), 'bind', [this]);

  set onRemove(void Function()? value) {
    setProperty(this, 'onRemove', value == null ? null : allowInterop(value));
  }

  GMap? get map => _getMap();
  set map(GMap? map) => _setMap(map);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }
}

@JS()
@anonymous
class WebGLDrawOptions {
  external factory WebGLDrawOptions();

  external RenderingContext? get gl;

  external set gl(RenderingContext? value);

  external CoordinateTransformer? get transformer;

  external set transformer(CoordinateTransformer? value);
}

@JS()
@anonymous
class WebGLStateOptions {
  external factory WebGLStateOptions();

  external RenderingContext? get gl;

  external set gl(RenderingContext? value);
}

@JS()
@anonymous
class CoordinateTransformer {
  external factory CoordinateTransformer();

  external Float64List? fromLatLngAltitude(
    Object? /*LatLng?|LatLngAltitude?*/ latLngOrLatLngAltitude, [
    Object? /*num?|Float32List?*/ altitudeOrRotations,
    Float32List? rotationsOrScale,
    Float32List? scale,
  ]);
}

extension CoordinateTransformer$Ext on CoordinateTransformer {
  CameraParams? get cameraParams => _getCameraParams();

  CameraParams? _getCameraParams() => callMethod(this, 'getCameraParams', []);
}

@JS()
@anonymous
class CameraParams extends CameraOptions {
  external factory CameraParams();

  external LatLng? get center;

  external set center(LatLng? value);

  external num? get heading;

  external set heading(num? value);

  external num? get tilt;

  external set tilt(num? value);

  external num? get zoom;

  external set zoom(num? value);
}

@JS('google.maps.WebglOverlayView')
class WebglOverlayView extends MVCObject {
  external WebglOverlayView();

  external void onAdd();

  external void onContextLost();

  external void onContextRestored(RenderingContext? gl);

  external void onDraw(
      RenderingContext? gl, CoordinateTransformer? transformer);

  external void onGlStateUpdate(RenderingContext? gl);

  external void onRemove();

  external void requestGlStateUpdate();

  external void requestRedraw();
}

extension WebglOverlayView$Ext on WebglOverlayView {
  GMap? get map => _getMap();
  set map(GMap? map) => _setMap(map);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }
}

@JS()
@anonymous
class WebglCameraParams extends CameraParams {
  external factory WebglCameraParams();

  external num? get lat;

  external set lat(num? value);

  external num? get lng;

  external set lng(num? value);
}

@JS('google.maps.LatLng')
class LatLng {
  external LatLng(
    num? lat,
    num? lng, [
    bool? noWrap, // ignore: unused_element
  ]);

  external bool? equals(LatLng? other);

  external String toString();

  external String? toUrlValue([
    num? precision,
  ]);
}

extension LatLng$Ext on LatLng {
  num get lat => _lat();
  num get lng => _lng();

  num _lat() => callMethod(this, 'lat', []);

  num _lng() => callMethod(this, 'lng', []);
}

@JS('google.maps.LatLngBounds')
class LatLngBounds {
  external LatLngBounds([
    Object? /*LatLng?|LatLngBounds?*/ swOrLatLngBounds, // ignore: unused_element
    LatLng? ne, // ignore: unused_element
  ]);

  external bool? contains(LatLng? latLng);

  external bool? equals([
    LatLngBounds? other,
  ]);

  external LatLngBounds? extend(LatLng? point);

  external bool? intersects(LatLngBounds? other);

  external bool? isEmpty();

  external LatLng? toSpan();

  external String toString();

  external String? toUrlValue([
    num? precision,
  ]);

  external LatLngBounds? union(LatLngBounds? other);
}

extension LatLngBounds$Ext on LatLngBounds {
  LatLng? get center => _getCenter();
  LatLng get northEast => _getNorthEast();
  LatLng get southWest => _getSouthWest();

  LatLng? _getCenter() => callMethod(this, 'getCenter', []);

  LatLng _getNorthEast() => callMethod(this, 'getNorthEast', []);

  LatLng _getSouthWest() => callMethod(this, 'getSouthWest', []);
}

@JS('google.maps.LatLngAltitude')
class LatLngAltitude {
  external num? get altitude;

  external set altitude(num? value);

  external num? get lat;

  external set lat(num? value);

  external num? get lng;

  external set lng(num? value);

  external bool? equals([
    LatLngAltitude? other,
  ]);
}

@JS('google.maps.Point')
class Point {
  external Point(num? x, num? y);

  external num? get x;

  external set x(num? value);

  external num? get y;

  external set y(num? value);

  external bool? equals(Point? other);

  external String toString();
}

@JS('google.maps.Size')
class Size {
  external Size(
    num? width,
    num? height, [
    String? widthUnit, // ignore: unused_element
    String? heightUnit, // ignore: unused_element
  ]);

  external num? get height;

  external set height(num? value);

  external num? get width;

  external set width(num? value);

  external bool? equals(Size? other);

  external String toString();
}

@JS()
@anonymous
class Padding {
  external factory Padding();

  external num? get bottom;

  external set bottom(num? value);

  external num? get left;

  external set left(num? value);

  external num? get right;

  external set right(num? value);

  external num? get top;

  external set top(num? value);
}

@JS('google.maps.event')
external Object get _Event$namespace;

class Event {
  static MapsEventListener addDomListener(
    Object? instance,
    String? eventName,
    Function? handler, [
    bool? capture,
  ]) =>
      callMethod(_Event$namespace, 'addDomListener', [
        instance,
        eventName,
        handler == null ? null : allowInterop(handler),
        capture
      ]);
  static MapsEventListener addDomListenerOnce(
    Object? instance,
    String? eventName,
    Function? handler, [
    bool? capture,
  ]) =>
      callMethod(_Event$namespace, 'addDomListenerOnce', [
        instance,
        eventName,
        handler == null ? null : allowInterop(handler),
        capture
      ]);
  static MapsEventListener addListener(
          Object? instance, String? eventName, Function? handler) =>
      callMethod(_Event$namespace, 'addListener', [
        instance,
        eventName,
        handler == null ? null : allowInterop(handler)
      ]);
  static MapsEventListener addListenerOnce(
          Object? instance, String? eventName, Function? handler) =>
      callMethod(_Event$namespace, 'addListenerOnce', [
        instance,
        eventName,
        handler == null ? null : allowInterop(handler)
      ]);
  static void clearInstanceListeners(Object? instance) =>
      callMethod(_Event$namespace, 'clearInstanceListeners', [instance]);
  static void clearListeners(Object? instance, String? eventName) =>
      callMethod(_Event$namespace, 'clearListeners', [instance, eventName]);
  static bool? hasListeners(Object? instance, String? eventName) =>
      callMethod(_Event$namespace, 'hasListeners', [instance, eventName]);
  static void removeListener(MapsEventListener? listener) =>
      callMethod(_Event$namespace, 'removeListener', [listener]);

  static void trigger(
          Object instance, String eventName, List<Object?>? eventArgs) =>
      callMethod(
          _Event$namespace, 'trigger', [instance, eventName, ...?eventArgs]);
}

@JS()
@anonymous
class MapsEventListener {
  external factory MapsEventListener();

  external void remove();
}

@JS('google.maps.MVCObject')
class MVCObject {
  external MVCObject();

  external void bindTo(
    String? key,
    MVCObject? target, [
    String? targetKey,
    bool? noNotify,
  ]);

  external Object? get(String? key);

  external void notify(String? key);

  external void set(String? key, Object? value);

  external void unbind(String? key);

  external void unbindAll();
}

extension MVCObject$Ext on MVCObject {
  set values(Object? values) => _setValues(values);

  MapsEventListener? addListener(String? eventName, Function? handler) =>
      callMethod(this, 'addListener',
          [eventName, handler == null ? null : allowInterop(handler)]);

  void _setValues(Object? values) {
    callMethod(this, 'setValues', [values]);
  }
}

@JS('google.maps.MVCArray')
class MVCArray<T> extends MVCObject {
  external MVCArray([
    List<T>? array, // ignore: unused_element
  ]);

  external void clear();

  external T getAt(num? i);

  external void insertAt(num? i, T elem);

  external T pop();

  external num? push(T elem);

  external T removeAt(num? i);

  external void setAt(num? i, T elem);
}

extension MVCArray$Ext<T> on MVCArray<T> {
  List<T>? get array => _getArray();
  num? get length => _getLength();
  Stream<num> get onInsertAt {
    late StreamController<num> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'insert_at',
          (num index) => sc.add(index),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<num>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<List> get onRemoveAt {
    late StreamController<List> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'remove_at',
          (num index, T removed) => sc.add([index, removed]),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<List>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<List> get onSetAt {
    late StreamController<List> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'set_at',
          (num index, T previous) => sc.add([index, previous]),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<List>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  void forEach(void Function(T, num?)? callback) {
    callMethod(
        this, 'forEach', [callback == null ? null : allowInterop(callback)]);
  }

  List<T>? _getArray() => callMethod(this, 'getArray', [])?.cast<T>();

  num? _getLength() => callMethod(this, 'getLength', []);
}

@JS()
@anonymous
class ErrorEvent {
  external factory ErrorEvent();

  external Object? get error;

  external set error(Object? value);
}

@JS()
@anonymous
class FullscreenControlOptions {
  external factory FullscreenControlOptions();

  external ControlPosition? get position;

  external set position(ControlPosition? value);
}

@JS()
@anonymous
class MapTypeControlOptions {
  external factory MapTypeControlOptions();

  external ControlPosition? get position;

  external set position(ControlPosition? value);

  external MapTypeControlStyle? get style;

  external set style(MapTypeControlStyle? value);
}

extension MapTypeControlOptions$Ext on MapTypeControlOptions {
  List<Object? /*MapTypeId?|String?*/ >? get mapTypeIds =>
      getProperty(this, 'mapTypeIds')?.cast<Object? /*MapTypeId?|String?*/ >();

  set mapTypeIds(List<Object? /*MapTypeId?|String?*/ >? value) {
    setProperty(this, 'mapTypeIds', value);
  }
}

@JS('google.maps.MapTypeControlStyle')
class MapTypeControlStyle {
  external static MapTypeControlStyle get DEFAULT;
  external static MapTypeControlStyle get DROPDOWN_MENU;
  external static MapTypeControlStyle get HORIZONTAL_BAR;
}

MapTypeControlStyle? MapTypeControlStyle$cast(value) {
  if (value == MapTypeControlStyle.DEFAULT) return MapTypeControlStyle.DEFAULT;
  if (value == MapTypeControlStyle.DROPDOWN_MENU)
    return MapTypeControlStyle.DROPDOWN_MENU;
  if (value == MapTypeControlStyle.HORIZONTAL_BAR)
    return MapTypeControlStyle.HORIZONTAL_BAR;
  return null;
}

@JS()
@anonymous
class MotionTrackingControlOptions {
  external factory MotionTrackingControlOptions();

  external ControlPosition? get position;

  external set position(ControlPosition? value);
}

@JS()
@anonymous
class PanControlOptions {
  external factory PanControlOptions();

  external ControlPosition? get position;

  external set position(ControlPosition? value);
}

@JS()
@anonymous
class RotateControlOptions {
  external factory RotateControlOptions();

  external ControlPosition? get position;

  external set position(ControlPosition? value);
}

@JS()
@anonymous
class ScaleControlOptions {
  external factory ScaleControlOptions();

  external ScaleControlStyle? get style;

  external set style(ScaleControlStyle? value);
}

@JS('google.maps.ScaleControlStyle')
class ScaleControlStyle {
  external static ScaleControlStyle get DEFAULT;
}

ScaleControlStyle? ScaleControlStyle$cast(value) {
  if (value == ScaleControlStyle.DEFAULT) return ScaleControlStyle.DEFAULT;
  return null;
}

@JS()
@anonymous
class StreetViewControlOptions {
  external factory StreetViewControlOptions();

  external ControlPosition? get position;

  external set position(ControlPosition? value);
}

@JS()
@anonymous
class ZoomControlOptions {
  external factory ZoomControlOptions();

  external ControlPosition? get position;

  external set position(ControlPosition? value);
}

@JS('google.maps.ControlPosition')
class ControlPosition {
  external static ControlPosition get BOTTOM_CENTER;
  external static ControlPosition get BOTTOM_LEFT;
  external static ControlPosition get BOTTOM_RIGHT;
  external static ControlPosition get LEFT_BOTTOM;
  external static ControlPosition get LEFT_CENTER;
  external static ControlPosition get LEFT_TOP;
  external static ControlPosition get RIGHT_BOTTOM;
  external static ControlPosition get RIGHT_CENTER;
  external static ControlPosition get RIGHT_TOP;
  external static ControlPosition get TOP_CENTER;
  external static ControlPosition get TOP_LEFT;
  external static ControlPosition get TOP_RIGHT;
}

ControlPosition? ControlPosition$cast(value) {
  if (value == ControlPosition.BOTTOM_CENTER)
    return ControlPosition.BOTTOM_CENTER;
  if (value == ControlPosition.BOTTOM_LEFT) return ControlPosition.BOTTOM_LEFT;
  if (value == ControlPosition.BOTTOM_RIGHT)
    return ControlPosition.BOTTOM_RIGHT;
  if (value == ControlPosition.LEFT_BOTTOM) return ControlPosition.LEFT_BOTTOM;
  if (value == ControlPosition.LEFT_CENTER) return ControlPosition.LEFT_CENTER;
  if (value == ControlPosition.LEFT_TOP) return ControlPosition.LEFT_TOP;
  if (value == ControlPosition.RIGHT_BOTTOM)
    return ControlPosition.RIGHT_BOTTOM;
  if (value == ControlPosition.RIGHT_CENTER)
    return ControlPosition.RIGHT_CENTER;
  if (value == ControlPosition.RIGHT_TOP) return ControlPosition.RIGHT_TOP;
  if (value == ControlPosition.TOP_CENTER) return ControlPosition.TOP_CENTER;
  if (value == ControlPosition.TOP_LEFT) return ControlPosition.TOP_LEFT;
  if (value == ControlPosition.TOP_RIGHT) return ControlPosition.TOP_RIGHT;
  return null;
}

@JS('google.maps.Marker')
class Marker extends MVCObject {
  external Marker([
    MarkerOptions? opts, // ignore: unused_element
  ]);
}

extension Marker$Ext on Marker {
  Animation? get animation => _getAnimation();
  bool? get clickable => _getClickable();
  String? get cursor => _getCursor();
  bool? get draggable => _getDraggable();
  Object? /*String?|Icon?|GSymbol?*/ get icon => _getIcon();
  MarkerLabel? get label => _getLabel();
  Object? /*GMap?|StreetViewPanorama?*/ get map => _getMap();
  num? get opacity => _getOpacity();
  LatLng? get position => _getPosition();
  MarkerShape? get shape => _getShape();
  String? get title => _getTitle();
  bool? get visible => _getVisible();
  num? get zIndex => _getZIndex();
  set animation(Animation? animation) => _setAnimation(animation);
  set clickable(bool? clickable) => _setClickable(clickable);
  set cursor(String? cursor) => _setCursor(cursor);
  set draggable(bool? draggable) => _setDraggable(draggable);
  set icon(Object? /*String?|Icon?|GSymbol?*/ icon) => _setIcon(icon);
  set label(Object? /*String?|MarkerLabel?*/ label) => _setLabel(label);
  set map(Object? /*GMap?|StreetViewPanorama?*/ map) => _setMap(map);
  set opacity(num? opacity) => _setOpacity(opacity);
  set options(MarkerOptions? options) => _setOptions(options);
  set position(LatLng? position) => _setPosition(position);
  set shape(MarkerShape? shape) => _setShape(shape);
  set title(String? title) => _setTitle(title);
  set visible(bool? visible) => _setVisible(visible);
  set zIndex(num? zIndex) => _setZIndex(zIndex);
  Stream<void> get onAnimationChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'animation_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onClick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onClickableChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'clickable_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onContextmenu {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onCursorChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'cursor_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDblclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDrag {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'drag',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragend {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragend',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onDraggableChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'draggable_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragstart {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragstart',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onFlatChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'flat_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onIconChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'icon_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMousedown {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseout {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseover {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseup {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onPositionChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'position_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onRightclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onShapeChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'shape_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onTitleChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'title_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onVisibleChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'visible_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onZindexChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'zindex_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Animation? _getAnimation() => callMethod(this, 'getAnimation', []);

  bool? _getClickable() => callMethod(this, 'getClickable', []);

  String? _getCursor() => callMethod(this, 'getCursor', []);

  bool? _getDraggable() => callMethod(this, 'getDraggable', []);

  Object? /*String?|Icon?|GSymbol?*/ _getIcon() =>
      callMethod(this, 'getIcon', []);

  MarkerLabel? _getLabel() => callMethod(this, 'getLabel', []);

  Object? /*GMap?|StreetViewPanorama?*/ _getMap() =>
      callMethod(this, 'getMap', []);

  num? _getOpacity() => callMethod(this, 'getOpacity', []);

  LatLng? _getPosition() => callMethod(this, 'getPosition', []);

  MarkerShape? _getShape() => callMethod(this, 'getShape', []);

  String? _getTitle() => callMethod(this, 'getTitle', []);

  bool? _getVisible() => callMethod(this, 'getVisible', []);

  num? _getZIndex() => callMethod(this, 'getZIndex', []);

  void _setAnimation(Animation? animation) {
    callMethod(this, 'setAnimation', [animation]);
  }

  void _setClickable(bool? flag) {
    callMethod(this, 'setClickable', [flag]);
  }

  void _setCursor(String? cursor) {
    callMethod(this, 'setCursor', [cursor]);
  }

  void _setDraggable(bool? flag) {
    callMethod(this, 'setDraggable', [flag]);
  }

  void _setIcon(Object? /*String?|Icon?|GSymbol?*/ icon) {
    callMethod(this, 'setIcon', [icon]);
  }

  void _setLabel(Object? /*String?|MarkerLabel?*/ label) {
    callMethod(this, 'setLabel', [label]);
  }

  void _setMap(Object? /*GMap?|StreetViewPanorama?*/ map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOpacity(num? opacity) {
    callMethod(this, 'setOpacity', [opacity]);
  }

  void _setOptions(MarkerOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPosition(LatLng? latlng) {
    callMethod(this, 'setPosition', [latlng]);
  }

  void _setShape(MarkerShape? shape) {
    callMethod(this, 'setShape', [shape]);
  }

  void _setTitle(String? title) {
    callMethod(this, 'setTitle', [title]);
  }

  void _setVisible(bool? visible) {
    callMethod(this, 'setVisible', [visible]);
  }

  void _setZIndex(num? zIndex) {
    callMethod(this, 'setZIndex', [zIndex]);
  }
}

@JS()
@anonymous
class MarkerOptions {
  external factory MarkerOptions();

  external Point? get anchorPoint;

  external set anchorPoint(Point? value);

  external Animation? get animation;

  external set animation(Animation? value);

  external bool? get clickable;

  external set clickable(bool? value);

  external Object? /*String?|CollisionBehavior?*/ get collisionBehavior;

  external set collisionBehavior(Object? /*String?|CollisionBehavior?*/ value);

  external bool? get crossOnDrag;

  external set crossOnDrag(bool? value);

  external String? get cursor;

  external set cursor(String? value);

  external bool? get draggable;

  external set draggable(bool? value);

  external Object? /*String?|Icon?|GSymbol?*/ get icon;

  external set icon(Object? /*String?|Icon?|GSymbol?*/ value);

  external Object? /*String?|MarkerLabel?*/ get label;

  external set label(Object? /*String?|MarkerLabel?*/ value);

  external Object? /*GMap?|StreetViewPanorama?*/ get map;

  external set map(Object? /*GMap?|StreetViewPanorama?*/ value);

  external num? get opacity;

  external set opacity(num? value);

  external bool? get optimized;

  external set optimized(bool? value);

  external LatLng? get position;

  external set position(LatLng? value);

  external MarkerShape? get shape;

  external set shape(MarkerShape? value);

  external String? get title;

  external set title(String? value);

  external bool? get visible;

  external set visible(bool? value);

  external num? get zIndex;

  external set zIndex(num? value);
}

@JS('google.maps.CollisionBehavior')
class CollisionBehavior {
  external static CollisionBehavior get OPTIONAL_AND_HIDES_LOWER_PRIORITY;
  external static CollisionBehavior get REQUIRED;
  external static CollisionBehavior get REQUIRED_AND_HIDES_OPTIONAL;
}

CollisionBehavior? CollisionBehavior$cast(value) {
  if (value == CollisionBehavior.OPTIONAL_AND_HIDES_LOWER_PRIORITY)
    return CollisionBehavior.OPTIONAL_AND_HIDES_LOWER_PRIORITY;
  if (value == CollisionBehavior.REQUIRED) return CollisionBehavior.REQUIRED;
  if (value == CollisionBehavior.REQUIRED_AND_HIDES_OPTIONAL)
    return CollisionBehavior.REQUIRED_AND_HIDES_OPTIONAL;
  return null;
}

@JS()
@anonymous
class Icon {
  external factory Icon();

  external String? get url;

  external set url(String? value);

  external Point? get anchor;

  external set anchor(Point? value);

  external Point? get labelOrigin;

  external set labelOrigin(Point? value);

  external Point? get origin;

  external set origin(Point? value);

  external Size? get scaledSize;

  external set scaledSize(Size? value);

  external Size? get size;

  external set size(Size? value);
}

@JS()
@anonymous
class MarkerLabel {
  external factory MarkerLabel();

  external String? get text;

  external set text(String? value);

  external String? get className;

  external set className(String? value);

  external String? get color;

  external set color(String? value);

  external String? get fontFamily;

  external set fontFamily(String? value);

  external String? get fontSize;

  external set fontSize(String? value);

  external String? get fontWeight;

  external set fontWeight(String? value);
}

@JS()
@anonymous
class MarkerShape {
  external factory MarkerShape();

  external String? get type;

  external set type(String? value);
}

extension MarkerShape$Ext on MarkerShape {
  List<num?>? get coords => getProperty(this, 'coords')?.cast<num?>();

  set coords(List<num?>? value) {
    setProperty(this, 'coords', value);
  }
}

@JS()
@anonymous
class GSymbol {
  external factory GSymbol();

  external Object? /*SymbolPath?|String?*/ get path;

  external set path(Object? /*SymbolPath?|String?*/ value);

  external Point? get anchor;

  external set anchor(Point? value);

  external String? get fillColor;

  external set fillColor(String? value);

  external num? get fillOpacity;

  external set fillOpacity(num? value);

  external Point? get labelOrigin;

  external set labelOrigin(Point? value);

  external num? get rotation;

  external set rotation(num? value);

  external num? get scale;

  external set scale(num? value);

  external String? get strokeColor;

  external set strokeColor(String? value);

  external num? get strokeOpacity;

  external set strokeOpacity(num? value);

  external num? get strokeWeight;

  external set strokeWeight(num? value);
}

@JS('google.maps.SymbolPath')
class SymbolPath {
  external static SymbolPath get BACKWARD_CLOSED_ARROW;
  external static SymbolPath get BACKWARD_OPEN_ARROW;
  external static SymbolPath get CIRCLE;
  external static SymbolPath get FORWARD_CLOSED_ARROW;
  external static SymbolPath get FORWARD_OPEN_ARROW;
}

SymbolPath? SymbolPath$cast(value) {
  if (value == SymbolPath.BACKWARD_CLOSED_ARROW)
    return SymbolPath.BACKWARD_CLOSED_ARROW;
  if (value == SymbolPath.BACKWARD_OPEN_ARROW)
    return SymbolPath.BACKWARD_OPEN_ARROW;
  if (value == SymbolPath.CIRCLE) return SymbolPath.CIRCLE;
  if (value == SymbolPath.FORWARD_CLOSED_ARROW)
    return SymbolPath.FORWARD_CLOSED_ARROW;
  if (value == SymbolPath.FORWARD_OPEN_ARROW)
    return SymbolPath.FORWARD_OPEN_ARROW;
  return null;
}

@JS('google.maps.Animation')
class Animation {
  external static Animation get BOUNCE;
  external static Animation get DROP;
}

Animation? Animation$cast(value) {
  if (value == Animation.BOUNCE) return Animation.BOUNCE;
  if (value == Animation.DROP) return Animation.DROP;
  return null;
}

@JS('google.maps.InfoWindow')
class InfoWindow extends MVCObject {
  external InfoWindow([
    InfoWindowOptions? opts, // ignore: unused_element
  ]);

  external void close();

  external void open([
    Object? /*InfoWindowOpenOptions?|GMap?|StreetViewPanorama?*/ options,
    MVCObject? anchor,
  ]);
}

extension InfoWindow$Ext on InfoWindow {
  Object? /*String?|Element?|Text?*/ get content => _getContent();
  LatLng? get position => _getPosition();
  num? get zIndex => _getZIndex();
  set content(Object? /*String?|Element?|Text?*/ content) =>
      _setContent(content);
  set options(InfoWindowOptions? options) => _setOptions(options);
  set position(LatLng? position) => _setPosition(position);
  set zIndex(num? zIndex) => _setZIndex(zIndex);
  Stream<void> get onCloseclick {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'closeclick',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onContentChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'content_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onDomready {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'domready',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onPositionChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'position_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onZindexChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'zindex_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Object? /*String?|Element?|Text?*/ _getContent() =>
      callMethod(this, 'getContent', []);

  LatLng? _getPosition() => callMethod(this, 'getPosition', []);

  num? _getZIndex() => callMethod(this, 'getZIndex', []);

  void _setContent(Object? /*String?|Element?|Text?*/ content) {
    callMethod(this, 'setContent', [content]);
  }

  void _setOptions(InfoWindowOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPosition(LatLng? position) {
    callMethod(this, 'setPosition', [position]);
  }

  void _setZIndex(num? zIndex) {
    callMethod(this, 'setZIndex', [zIndex]);
  }
}

@JS()
@anonymous
class InfoWindowOptions {
  external factory InfoWindowOptions();

  external Object? /*String?|Element?|Text?*/ get content;

  external set content(Object? /*String?|Element?|Text?*/ value);

  external bool? get disableAutoPan;

  external set disableAutoPan(bool? value);

  external num? get maxWidth;

  external set maxWidth(num? value);

  external num? get minWidth;

  external set minWidth(num? value);

  external Size? get pixelOffset;

  external set pixelOffset(Size? value);

  external LatLng? get position;

  external set position(LatLng? value);

  external num? get zIndex;

  external set zIndex(num? value);
}

@JS()
@anonymous
class InfoWindowOpenOptions {
  external factory InfoWindowOpenOptions();

  external MVCObject? get anchor;

  external set anchor(MVCObject? value);

  external Object? /*GMap?|StreetViewPanorama?*/ get map;

  external set map(Object? /*GMap?|StreetViewPanorama?*/ value);

  external bool? get shouldFocus;

  external set shouldFocus(bool? value);
}

@JS('google.maps.Polyline')
class Polyline extends MVCObject {
  external Polyline([
    PolylineOptions? opts, // ignore: unused_element
  ]);
}

extension Polyline$Ext on Polyline {
  bool? get draggable => _getDraggable();
  bool? get editable => _getEditable();
  GMap? get map => _getMap();
  MVCArray<LatLng?>? get path => _getPath();
  bool? get visible => _getVisible();
  set draggable(bool? draggable) => _setDraggable(draggable);
  set editable(bool? editable) => _setEditable(editable);
  set map(GMap? map) => _setMap(map);
  set options(PolylineOptions? options) => _setOptions(options);
  set path(Object? /*MVCArray<LatLng?>?|List<LatLng?>?*/ path) =>
      _setPath(path);
  set visible(bool? visible) => _setVisible(visible);
  Stream<PolyMouseEvent> get onClick {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onContextmenu {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onDblclick {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDrag {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'drag',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragend {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragend',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragstart {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragstart',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMousedown {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMousemove {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseout {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseover {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseup {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onRightclick {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  bool? _getDraggable() => callMethod(this, 'getDraggable', []);

  bool? _getEditable() => callMethod(this, 'getEditable', []);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  MVCArray<LatLng?>? _getPath() => callMethod(this, 'getPath', []);

  bool? _getVisible() => callMethod(this, 'getVisible', []);

  void _setDraggable(bool? draggable) {
    callMethod(this, 'setDraggable', [draggable]);
  }

  void _setEditable(bool? editable) {
    callMethod(this, 'setEditable', [editable]);
  }

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(PolylineOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPath(Object? /*MVCArray<LatLng?>?|List<LatLng?>?*/ path) {
    callMethod(this, 'setPath', [path]);
  }

  void _setVisible(bool? visible) {
    callMethod(this, 'setVisible', [visible]);
  }
}

@JS()
@anonymous
class PolylineOptions {
  external factory PolylineOptions();

  external bool? get clickable;

  external set clickable(bool? value);

  external bool? get draggable;

  external set draggable(bool? value);

  external bool? get editable;

  external set editable(bool? value);

  external bool? get geodesic;

  external set geodesic(bool? value);

  external GMap? get map;

  external set map(GMap? value);

  external Object? /*MVCArray<LatLng?>?|List<LatLng?>?*/ get path;

  external set path(Object? /*MVCArray<LatLng?>?|List<LatLng?>?*/ value);

  external String? get strokeColor;

  external set strokeColor(String? value);

  external num? get strokeOpacity;

  external set strokeOpacity(num? value);

  external num? get strokeWeight;

  external set strokeWeight(num? value);

  external bool? get visible;

  external set visible(bool? value);

  external num? get zIndex;

  external set zIndex(num? value);
}

extension PolylineOptions$Ext on PolylineOptions {
  List<IconSequence?>? get icons =>
      getProperty(this, 'icons')?.cast<IconSequence?>();

  set icons(List<IconSequence?>? value) {
    setProperty(this, 'icons', value);
  }
}

@JS()
@anonymous
class IconSequence {
  external factory IconSequence();

  external bool? get fixedRotation;

  external set fixedRotation(bool? value);

  external GSymbol? get icon;

  external set icon(GSymbol? value);

  external String? get offset;

  external set offset(String? value);

  external String? get repeat;

  external set repeat(String? value);
}

@JS('google.maps.Polygon')
class Polygon extends MVCObject {
  external Polygon([
    PolygonOptions? opts, // ignore: unused_element
  ]);
}

extension Polygon$Ext on Polygon {
  bool? get draggable => _getDraggable();
  bool? get editable => _getEditable();
  GMap? get map => _getMap();
  MVCArray<LatLng?>? get path => _getPath();
  MVCArray<MVCArray<LatLng?>?>? get paths => _getPaths();
  bool? get visible => _getVisible();
  set draggable(bool? draggable) => _setDraggable(draggable);
  set editable(bool? editable) => _setEditable(editable);
  set map(GMap? map) => _setMap(map);
  set options(PolygonOptions? options) => _setOptions(options);
  set path(Object? /*MVCArray<LatLng?>?|List<LatLng?>?*/ path) =>
      _setPath(path);
  set paths(
          Object? /*MVCArray<MVCArray<LatLng?>?>?|MVCArray<LatLng?>?|List<List<LatLng?>?>?|List<LatLng?>?*/ paths) =>
      _setPaths(paths);
  set visible(bool? visible) => _setVisible(visible);
  Stream<PolyMouseEvent> get onClick {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onContextmenu {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onDblclick {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDrag {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'drag',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragend {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragend',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragstart {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragstart',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMousedown {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMousemove {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseout {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseover {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseup {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onRightclick {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  bool? _getDraggable() => callMethod(this, 'getDraggable', []);

  bool? _getEditable() => callMethod(this, 'getEditable', []);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  MVCArray<LatLng?>? _getPath() => callMethod(this, 'getPath', []);

  MVCArray<MVCArray<LatLng?>?>? _getPaths() => callMethod(this, 'getPaths', []);

  bool? _getVisible() => callMethod(this, 'getVisible', []);

  void _setDraggable(bool? draggable) {
    callMethod(this, 'setDraggable', [draggable]);
  }

  void _setEditable(bool? editable) {
    callMethod(this, 'setEditable', [editable]);
  }

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(PolygonOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPath(Object? /*MVCArray<LatLng?>?|List<LatLng?>?*/ path) {
    callMethod(this, 'setPath', [path]);
  }

  void _setPaths(
      Object? /*MVCArray<MVCArray<LatLng?>?>?|MVCArray<LatLng?>?|List<List<LatLng?>?>?|List<LatLng?>?*/ paths) {
    callMethod(this, 'setPaths', [paths]);
  }

  void _setVisible(bool? visible) {
    callMethod(this, 'setVisible', [visible]);
  }
}

@JS()
@anonymous
class PolygonOptions {
  external factory PolygonOptions();

  external bool? get clickable;

  external set clickable(bool? value);

  external bool? get draggable;

  external set draggable(bool? value);

  external bool? get editable;

  external set editable(bool? value);

  external String? get fillColor;

  external set fillColor(String? value);

  external num? get fillOpacity;

  external set fillOpacity(num? value);

  external bool? get geodesic;

  external set geodesic(bool? value);

  external GMap? get map;

  external set map(GMap? value);

  external Object? /*MVCArray<MVCArray<LatLng?>?>?|MVCArray<LatLng?>?|List<List<LatLng?>?>?|List<LatLng?>?*/ get paths;

  external set paths(
      Object? /*MVCArray<MVCArray<LatLng?>?>?|MVCArray<LatLng?>?|List<List<LatLng?>?>?|List<LatLng?>?*/ value);

  external String? get strokeColor;

  external set strokeColor(String? value);

  external num? get strokeOpacity;

  external set strokeOpacity(num? value);

  external StrokePosition? get strokePosition;

  external set strokePosition(StrokePosition? value);

  external num? get strokeWeight;

  external set strokeWeight(num? value);

  external bool? get visible;

  external set visible(bool? value);

  external num? get zIndex;

  external set zIndex(num? value);
}

@JS()
@anonymous
class PolyMouseEvent extends MapMouseEvent {
  external factory PolyMouseEvent();

  external num? get edge;

  external set edge(num? value);

  external num? get path;

  external set path(num? value);

  external num? get vertex;

  external set vertex(num? value);
}

@JS('google.maps.Rectangle')
class Rectangle extends MVCObject {
  external Rectangle([
    RectangleOptions? opts, // ignore: unused_element
  ]);
}

extension Rectangle$Ext on Rectangle {
  LatLngBounds? get bounds => _getBounds();
  bool? get draggable => _getDraggable();
  bool? get editable => _getEditable();
  GMap? get map => _getMap();
  bool? get visible => _getVisible();
  set bounds(LatLngBounds? bounds) => _setBounds(bounds);
  set draggable(bool? draggable) => _setDraggable(draggable);
  set editable(bool? editable) => _setEditable(editable);
  set map(GMap? map) => _setMap(map);
  set options(RectangleOptions? options) => _setOptions(options);
  set visible(bool? visible) => _setVisible(visible);
  Stream<void> get onBoundsChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'bounds_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onClick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onContextmenu {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDblclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDrag {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'drag',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragend {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragend',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragstart {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragstart',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMousedown {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMousemove {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseout {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseover {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseup {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onRightclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  LatLngBounds? _getBounds() => callMethod(this, 'getBounds', []);

  bool? _getDraggable() => callMethod(this, 'getDraggable', []);

  bool? _getEditable() => callMethod(this, 'getEditable', []);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  bool? _getVisible() => callMethod(this, 'getVisible', []);

  void _setBounds(LatLngBounds? bounds) {
    callMethod(this, 'setBounds', [bounds]);
  }

  void _setDraggable(bool? draggable) {
    callMethod(this, 'setDraggable', [draggable]);
  }

  void _setEditable(bool? editable) {
    callMethod(this, 'setEditable', [editable]);
  }

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(RectangleOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setVisible(bool? visible) {
    callMethod(this, 'setVisible', [visible]);
  }
}

@JS()
@anonymous
class RectangleOptions {
  external factory RectangleOptions();

  external LatLngBounds? get bounds;

  external set bounds(LatLngBounds? value);

  external bool? get clickable;

  external set clickable(bool? value);

  external bool? get draggable;

  external set draggable(bool? value);

  external bool? get editable;

  external set editable(bool? value);

  external String? get fillColor;

  external set fillColor(String? value);

  external num? get fillOpacity;

  external set fillOpacity(num? value);

  external GMap? get map;

  external set map(GMap? value);

  external String? get strokeColor;

  external set strokeColor(String? value);

  external num? get strokeOpacity;

  external set strokeOpacity(num? value);

  external StrokePosition? get strokePosition;

  external set strokePosition(StrokePosition? value);

  external num? get strokeWeight;

  external set strokeWeight(num? value);

  external bool? get visible;

  external set visible(bool? value);

  external num? get zIndex;

  external set zIndex(num? value);
}

@JS('google.maps.Circle')
class Circle extends MVCObject {
  external Circle([
    Object? /*Circle?|CircleOptions?*/ circleOrCircleOptions, // ignore: unused_element
  ]);
}

extension Circle$Ext on Circle {
  LatLngBounds? get bounds => _getBounds();
  LatLng? get center => _getCenter();
  bool? get draggable => _getDraggable();
  bool? get editable => _getEditable();
  GMap? get map => _getMap();
  num? get radius => _getRadius();
  bool? get visible => _getVisible();
  set center(LatLng? center) => _setCenter(center);
  set draggable(bool? draggable) => _setDraggable(draggable);
  set editable(bool? editable) => _setEditable(editable);
  set map(GMap? map) => _setMap(map);
  set options(CircleOptions? options) => _setOptions(options);
  set radius(num? radius) => _setRadius(radius);
  set visible(bool? visible) => _setVisible(visible);
  Stream<void> get onCenterChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'center_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onClick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDblclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDrag {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'drag',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragend {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragend',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragstart {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragstart',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMousedown {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMousemove {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseout {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseover {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onMouseup {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onRadiusChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'radius_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onRightclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  LatLngBounds? _getBounds() => callMethod(this, 'getBounds', []);

  LatLng? _getCenter() => callMethod(this, 'getCenter', []);

  bool? _getDraggable() => callMethod(this, 'getDraggable', []);

  bool? _getEditable() => callMethod(this, 'getEditable', []);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  num? _getRadius() => callMethod(this, 'getRadius', []);

  bool? _getVisible() => callMethod(this, 'getVisible', []);

  void _setCenter(LatLng? center) {
    callMethod(this, 'setCenter', [center]);
  }

  void _setDraggable(bool? draggable) {
    callMethod(this, 'setDraggable', [draggable]);
  }

  void _setEditable(bool? editable) {
    callMethod(this, 'setEditable', [editable]);
  }

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(CircleOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setRadius(num? radius) {
    callMethod(this, 'setRadius', [radius]);
  }

  void _setVisible(bool? visible) {
    callMethod(this, 'setVisible', [visible]);
  }
}

@JS()
@anonymous
class CircleOptions {
  external factory CircleOptions();

  external LatLng? get center;

  external set center(LatLng? value);

  external bool? get clickable;

  external set clickable(bool? value);

  external bool? get draggable;

  external set draggable(bool? value);

  external bool? get editable;

  external set editable(bool? value);

  external String? get fillColor;

  external set fillColor(String? value);

  external num? get fillOpacity;

  external set fillOpacity(num? value);

  external GMap? get map;

  external set map(GMap? value);

  external num? get radius;

  external set radius(num? value);

  external String? get strokeColor;

  external set strokeColor(String? value);

  external num? get strokeOpacity;

  external set strokeOpacity(num? value);

  external StrokePosition? get strokePosition;

  external set strokePosition(StrokePosition? value);

  external num? get strokeWeight;

  external set strokeWeight(num? value);

  external bool? get visible;

  external set visible(bool? value);

  external num? get zIndex;

  external set zIndex(num? value);
}

@JS('google.maps.StrokePosition')
class StrokePosition {
  external static StrokePosition get CENTER;
  external static StrokePosition get INSIDE;
  external static StrokePosition get OUTSIDE;
}

StrokePosition? StrokePosition$cast(value) {
  if (value == StrokePosition.CENTER) return StrokePosition.CENTER;
  if (value == StrokePosition.INSIDE) return StrokePosition.INSIDE;
  if (value == StrokePosition.OUTSIDE) return StrokePosition.OUTSIDE;
  return null;
}

@JS('google.maps.Data')
class Data extends MVCObject {
  external Data([
    DataDataOptions? options, // ignore: unused_element
  ]);

  external DataFeature? add([
    Object? /*DataFeature?|DataFeatureOptions?*/ feature,
  ]);

  external bool? contains(DataFeature? feature);

  external DataFeature? getFeatureById(Object? /*num?|String?*/ id);

  external void overrideStyle(DataFeature? feature, DataStyleOptions? style);

  external void remove(DataFeature? feature);

  external void revertStyle([
    DataFeature? feature,
  ]);
}

extension Data$Ext on Data {
  ControlPosition? get controlPosition => _getControlPosition();
  List<String?>? get controls => _getControls();
  String? get drawingMode => _getDrawingMode();
  GMap? get map => _getMap();
  Object? /*DataStylingFunction?|DataStyleOptions?*/ get style => _getStyle();
  set controlPosition(ControlPosition? controlPosition) =>
      _setControlPosition(controlPosition);
  set controls(List<String?>? controls) => _setControls(controls);
  set drawingMode(String? drawingMode) => _setDrawingMode(drawingMode);
  set map(GMap? map) => _setMap(map);
  set style(Object? /*DataStylingFunction?|DataStyleOptions?*/ style) =>
      _setStyle(style);
  Stream<DataAddFeatureEvent> get onAddfeature {
    late StreamController<DataAddFeatureEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'addfeature',
          (DataAddFeatureEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataAddFeatureEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onClick {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (DataMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onContextmenu {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          (DataMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onDblclick {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          (DataMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMousedown {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          (DataMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMouseout {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          (DataMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMouseover {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          (DataMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMouseup {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          (DataMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataRemoveFeatureEvent> get onRemovefeature {
    late StreamController<DataRemoveFeatureEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'removefeature',
          (DataRemoveFeatureEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataRemoveFeatureEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataRemovePropertyEvent> get onRemoveproperty {
    late StreamController<DataRemovePropertyEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'removeproperty',
          (DataRemovePropertyEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataRemovePropertyEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onRightclick {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          (DataMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataSetGeometryEvent> get onSetgeometry {
    late StreamController<DataSetGeometryEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'setgeometry',
          (DataSetGeometryEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataSetGeometryEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataSetPropertyEvent> get onSetproperty {
    late StreamController<DataSetPropertyEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'setproperty',
          (DataSetPropertyEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataSetPropertyEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  List<DataFeature?>? addGeoJson(
    Object? geoJson, [
    DataGeoJsonOptions? options,
  ]) =>
      callMethod(this, 'addGeoJson', [geoJson, options])?.cast<DataFeature?>();

  void forEach(void Function(DataFeature?)? callback) {
    callMethod(
        this, 'forEach', [callback == null ? null : allowInterop(callback)]);
  }

  ControlPosition? _getControlPosition() =>
      callMethod(this, 'getControlPosition', []);

  List<String?>? _getControls() =>
      callMethod(this, 'getControls', [])?.cast<String?>();

  String? _getDrawingMode() => callMethod(this, 'getDrawingMode', []);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  Object? /*DataStylingFunction?|DataStyleOptions?*/ _getStyle() =>
      callMethod(this, 'getStyle', []);

  void loadGeoJson(
    String? url, [
    DataGeoJsonOptions? options,
    void Function(List<DataFeature?>?)? callback,
  ]) {
    callMethod(this, 'loadGeoJson', [
      url,
      options,
      callback == null
          ? null
          : allowInterop((p0) => callback(p0?.cast<DataFeature?>()))
    ]);
  }

  void _setControlPosition(ControlPosition? controlPosition) {
    callMethod(this, 'setControlPosition', [controlPosition]);
  }

  void _setControls(List<String?>? controls) {
    callMethod(this, 'setControls', [controls]);
  }

  void _setDrawingMode(String? drawingMode) {
    callMethod(this, 'setDrawingMode', [drawingMode]);
  }

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setStyle(Object? /*DataStylingFunction?|DataStyleOptions?*/ style) {
    callMethod(this, 'setStyle', [style]);
  }

  void toGeoJson(void Function(Object?)? callback) {
    callMethod(
        this, 'toGeoJson', [callback == null ? null : allowInterop(callback)]);
  }
}

@JS()
@anonymous
class DataDataOptions {
  external factory DataDataOptions();

  external GMap? get map;

  external set map(GMap? value);

  external ControlPosition? get controlPosition;

  external set controlPosition(ControlPosition? value);

  external String? get drawingMode;

  external set drawingMode(String? value);

  external Object? /*DataStylingFunction?|DataStyleOptions?*/ get style;

  external set style(Object? /*DataStylingFunction?|DataStyleOptions?*/ value);
}

extension DataDataOptions$Ext on DataDataOptions {
  List<String?>? get controls => getProperty(this, 'controls')?.cast<String?>();

  set controls(List<String?>? value) {
    setProperty(this, 'controls', value);
  }

  DataFeature? Function(DataGeometry?)? get featureFactory =>
      callMethod(getProperty(this, 'featureFactory'), 'bind', [this]);

  set featureFactory(DataFeature? Function(DataGeometry?)? value) {
    setProperty(
        this, 'featureFactory', value == null ? null : allowInterop(value));
  }
}

@JS()
@anonymous
class DataGeoJsonOptions {
  external factory DataGeoJsonOptions();

  external String? get idPropertyName;

  external set idPropertyName(String? value);
}

@JS()
@anonymous
class DataStyleOptions {
  external factory DataStyleOptions();

  external Animation? get animation;

  external set animation(Animation? value);

  external bool? get clickable;

  external set clickable(bool? value);

  external String? get cursor;

  external set cursor(String? value);

  external bool? get draggable;

  external set draggable(bool? value);

  external bool? get editable;

  external set editable(bool? value);

  external String? get fillColor;

  external set fillColor(String? value);

  external num? get fillOpacity;

  external set fillOpacity(num? value);

  external Object? /*String?|Icon?|GSymbol?*/ get icon;

  external set icon(Object? /*String?|Icon?|GSymbol?*/ value);

  external Object? /*String?|MarkerLabel?*/ get label;

  external set label(Object? /*String?|MarkerLabel?*/ value);

  external num? get opacity;

  external set opacity(num? value);

  external MarkerShape? get shape;

  external set shape(MarkerShape? value);

  external String? get strokeColor;

  external set strokeColor(String? value);

  external num? get strokeOpacity;

  external set strokeOpacity(num? value);

  external num? get strokeWeight;

  external set strokeWeight(num? value);

  external String? get title;

  external set title(String? value);

  external bool? get visible;

  external set visible(bool? value);

  external num? get zIndex;

  external set zIndex(num? value);
}

extension DataStyleOptions$Ext on DataStyleOptions {
  List<IconSequence?>? get icons =>
      getProperty(this, 'icons')?.cast<IconSequence?>();

  set icons(List<IconSequence?>? value) {
    setProperty(this, 'icons', value);
  }
}

@JS('google.maps.Data.Feature')
class DataFeature {
  external DataFeature([
    DataFeatureOptions? options, // ignore: unused_element
  ]);

  external Object? getProperty(String? name);

  external void removeProperty(String? name);

  external void setProperty(String? name, Object? newValue);
}

extension DataFeature$Ext on DataFeature {
  DataGeometry? get geometry => _getGeometry();
  Object? /*num?|String?*/ get id => _getId();
  set geometry(Object? /*DataGeometry?|LatLng?*/ geometry) =>
      _setGeometry(geometry);
  Stream<DataRemovePropertyEvent> get onRemoveproperty {
    late StreamController<DataRemovePropertyEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'removeproperty',
          (DataRemovePropertyEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataRemovePropertyEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataSetGeometryEvent> get onSetgeometry {
    late StreamController<DataSetGeometryEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'setgeometry',
          (DataSetGeometryEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataSetGeometryEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataSetPropertyEvent> get onSetproperty {
    late StreamController<DataSetPropertyEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'setproperty',
          (DataSetPropertyEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataSetPropertyEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  void forEachProperty(void Function(Object?, String?)? callback) {
    callMethod(this, 'forEachProperty',
        [callback == null ? null : allowInterop(callback)]);
  }

  DataGeometry? _getGeometry() => callMethod(this, 'getGeometry', []);

  Object? /*num?|String?*/ _getId() => callMethod(this, 'getId', []);

  void _setGeometry(Object? /*DataGeometry?|LatLng?*/ newGeometry) {
    callMethod(this, 'setGeometry', [newGeometry]);
  }

  void toGeoJson(void Function(Object?)? callback) {
    callMethod(
        this, 'toGeoJson', [callback == null ? null : allowInterop(callback)]);
  }
}

@JS()
@anonymous
class DataFeatureOptions {
  external factory DataFeatureOptions();

  external Object? /*DataGeometry?|LatLng?*/ get geometry;

  external set geometry(Object? /*DataGeometry?|LatLng?*/ value);

  external Object? /*num?|String?*/ get id;

  external set id(Object? /*num?|String?*/ value);

  external Object? get properties;

  external set properties(Object? value);
}

@JS()
@anonymous
class DataGeometry {
  external factory DataGeometry();
}

extension DataGeometry$Ext on DataGeometry {
  String? get type => _getType();

  void forEachLatLng(void Function(LatLng?)? callback) {
    callMethod(this, 'forEachLatLng',
        [callback == null ? null : allowInterop(callback)]);
  }

  String? _getType() => callMethod(this, 'getType', []);
}

@JS('google.maps.Data.Point')
class DataPoint implements DataGeometry {
  external DataPoint(LatLng? latLng);

  external LatLng? get();
}

extension DataPoint$Ext on DataPoint {
  String? get type => _getType();

  void forEachLatLng(void Function(LatLng?)? callback) {
    callMethod(this, 'forEachLatLng',
        [callback == null ? null : allowInterop(callback)]);
  }

  String? _getType() => callMethod(this, 'getType', []);
}

@JS('google.maps.Data.MultiPoint')
class DataMultiPoint implements DataGeometry {
  external DataMultiPoint(List<LatLng?>? elements);

  external LatLng? getAt(num? n);
}

extension DataMultiPoint$Ext on DataMultiPoint {
  List<LatLng?>? get array => _getArray();
  num? get length => _getLength();
  String? get type => _getType();

  void forEachLatLng(void Function(LatLng?)? callback) {
    callMethod(this, 'forEachLatLng',
        [callback == null ? null : allowInterop(callback)]);
  }

  List<LatLng?>? _getArray() =>
      callMethod(this, 'getArray', [])?.cast<LatLng?>();

  num? _getLength() => callMethod(this, 'getLength', []);

  String? _getType() => callMethod(this, 'getType', []);
}

@JS('google.maps.Data.LineString')
class DataLineString implements DataGeometry {
  external DataLineString(List<LatLng?>? elements);

  external LatLng? getAt(num? n);
}

extension DataLineString$Ext on DataLineString {
  List<LatLng?>? get array => _getArray();
  num? get length => _getLength();
  String? get type => _getType();

  void forEachLatLng(void Function(LatLng?)? callback) {
    callMethod(this, 'forEachLatLng',
        [callback == null ? null : allowInterop(callback)]);
  }

  List<LatLng?>? _getArray() =>
      callMethod(this, 'getArray', [])?.cast<LatLng?>();

  num? _getLength() => callMethod(this, 'getLength', []);

  String? _getType() => callMethod(this, 'getType', []);
}

@JS('google.maps.Data.MultiLineString')
class DataMultiLineString implements DataGeometry {
  external DataMultiLineString(
      List<Object? /*DataLineString?|List<LatLng?>?*/ >? elements);

  external DataLineString? getAt(num? n);
}

extension DataMultiLineString$Ext on DataMultiLineString {
  List<DataLineString?>? get array => _getArray();
  num? get length => _getLength();
  String? get type => _getType();

  void forEachLatLng(void Function(LatLng?)? callback) {
    callMethod(this, 'forEachLatLng',
        [callback == null ? null : allowInterop(callback)]);
  }

  List<DataLineString?>? _getArray() =>
      callMethod(this, 'getArray', [])?.cast<DataLineString?>();

  num? _getLength() => callMethod(this, 'getLength', []);

  String? _getType() => callMethod(this, 'getType', []);
}

@JS('google.maps.Data.LinearRing')
class DataLinearRing implements DataGeometry {
  external DataLinearRing(List<LatLng?>? elements);

  external LatLng? getAt(num? n);
}

extension DataLinearRing$Ext on DataLinearRing {
  List<LatLng?>? get array => _getArray();
  num? get length => _getLength();
  String? get type => _getType();

  void forEachLatLng(void Function(LatLng?)? callback) {
    callMethod(this, 'forEachLatLng',
        [callback == null ? null : allowInterop(callback)]);
  }

  List<LatLng?>? _getArray() =>
      callMethod(this, 'getArray', [])?.cast<LatLng?>();

  num? _getLength() => callMethod(this, 'getLength', []);

  String? _getType() => callMethod(this, 'getType', []);
}

@JS('google.maps.Data.Polygon')
class DataPolygon implements DataGeometry {
  external DataPolygon(
      List<Object? /*DataLinearRing?|List<LatLng?>?*/ >? elements);

  external DataLinearRing? getAt(num? n);
}

extension DataPolygon$Ext on DataPolygon {
  List<DataLinearRing?>? get array => _getArray();
  num? get length => _getLength();
  String? get type => _getType();

  void forEachLatLng(void Function(LatLng?)? callback) {
    callMethod(this, 'forEachLatLng',
        [callback == null ? null : allowInterop(callback)]);
  }

  List<DataLinearRing?>? _getArray() =>
      callMethod(this, 'getArray', [])?.cast<DataLinearRing?>();

  num? _getLength() => callMethod(this, 'getLength', []);

  String? _getType() => callMethod(this, 'getType', []);
}

@JS('google.maps.Data.MultiPolygon')
class DataMultiPolygon implements DataGeometry {
  external DataMultiPolygon(
      List<Object? /*DataPolygon?|List<Object?/*DataLinearRing?|List<LatLng?>?*/>?*/ >?
          elements);

  external DataPolygon? getAt(num? n);
}

extension DataMultiPolygon$Ext on DataMultiPolygon {
  List<DataPolygon?>? get array => _getArray();
  num? get length => _getLength();
  String? get type => _getType();

  void forEachLatLng(void Function(LatLng?)? callback) {
    callMethod(this, 'forEachLatLng',
        [callback == null ? null : allowInterop(callback)]);
  }

  List<DataPolygon?>? _getArray() =>
      callMethod(this, 'getArray', [])?.cast<DataPolygon?>();

  num? _getLength() => callMethod(this, 'getLength', []);

  String? _getType() => callMethod(this, 'getType', []);
}

@JS('google.maps.Data.GeometryCollection')
class DataGeometryCollection implements DataGeometry {
  external DataGeometryCollection(
      List<Object? /*DataGeometry?|LatLng?*/ >? elements);

  external DataGeometry? getAt(num? n);
}

extension DataGeometryCollection$Ext on DataGeometryCollection {
  List<DataGeometry?>? get array => _getArray();
  num? get length => _getLength();
  String? get type => _getType();

  void forEachLatLng(void Function(LatLng?)? callback) {
    callMethod(this, 'forEachLatLng',
        [callback == null ? null : allowInterop(callback)]);
  }

  List<DataGeometry?>? _getArray() =>
      callMethod(this, 'getArray', [])?.cast<DataGeometry?>();

  num? _getLength() => callMethod(this, 'getLength', []);

  String? _getType() => callMethod(this, 'getType', []);
}

@JS()
@anonymous
class DataMouseEvent extends MapMouseEvent {
  external factory DataMouseEvent();

  external DataFeature? get feature;

  external set feature(DataFeature? value);
}

@JS()
@anonymous
class DataAddFeatureEvent {
  external factory DataAddFeatureEvent();

  external DataFeature? get feature;

  external set feature(DataFeature? value);
}

@JS()
@anonymous
class DataRemoveFeatureEvent {
  external factory DataRemoveFeatureEvent();

  external DataFeature? get feature;

  external set feature(DataFeature? value);
}

@JS()
@anonymous
class DataSetGeometryEvent {
  external factory DataSetGeometryEvent();

  external DataFeature? get feature;

  external set feature(DataFeature? value);

  external DataGeometry? get newGeometry;

  external set newGeometry(DataGeometry? value);

  external DataGeometry? get oldGeometry;

  external set oldGeometry(DataGeometry? value);
}

@JS()
@anonymous
class DataSetPropertyEvent {
  external factory DataSetPropertyEvent();

  external DataFeature? get feature;

  external set feature(DataFeature? value);

  external String? get name;

  external set name(String? value);

  external Object? get newValue;

  external set newValue(Object? value);

  external Object? get oldValue;

  external set oldValue(Object? value);
}

@JS()
@anonymous
class DataRemovePropertyEvent {
  external factory DataRemovePropertyEvent();

  external DataFeature? get feature;

  external set feature(DataFeature? value);

  external String? get name;

  external set name(String? value);

  external Object? get oldValue;

  external set oldValue(Object? value);
}

@JS('google.maps.OverlayView')
class OverlayView extends MVCObject {
  external OverlayView();
}

extension OverlayView$Ext on OverlayView {
  void Function()? get draw =>
      callMethod(getProperty(this, 'draw'), 'bind', [this]);

  set draw(void Function()? value) {
    setProperty(this, 'draw', value == null ? null : allowInterop(value));
  }

  void Function()? get onAdd =>
      callMethod(getProperty(this, 'onAdd'), 'bind', [this]);

  set onAdd(void Function()? value) {
    setProperty(this, 'onAdd', value == null ? null : allowInterop(value));
  }

  void Function()? get onRemove =>
      callMethod(getProperty(this, 'onRemove'), 'bind', [this]);

  set onRemove(void Function()? value) {
    setProperty(this, 'onRemove', value == null ? null : allowInterop(value));
  }

  Object? /*GMap?|StreetViewPanorama?*/ get map => _getMap();
  MapPanes? get panes => _getPanes();
  MapCanvasProjection? get projection => _getProjection();
  set map(Object? /*GMap?|StreetViewPanorama?*/ map) => _setMap(map);

  Object? /*GMap?|StreetViewPanorama?*/ _getMap() =>
      callMethod(this, 'getMap', []);

  MapPanes? _getPanes() => callMethod(this, 'getPanes', []);

  MapCanvasProjection? _getProjection() =>
      callMethod(this, 'getProjection', []);

  void _setMap(Object? /*GMap?|StreetViewPanorama?*/ map) {
    callMethod(this, 'setMap', [map]);
  }
}

@JS()
@anonymous
class MapPanes {
  external factory MapPanes();

  external Element? get floatPane;

  external set floatPane(Element? value);

  external Element? get mapPane;

  external set mapPane(Element? value);

  external Element? get markerLayer;

  external set markerLayer(Element? value);

  external Element? get overlayLayer;

  external set overlayLayer(Element? value);

  external Element? get overlayMouseTarget;

  external set overlayMouseTarget(Element? value);
}

@JS()
@anonymous
class MapCanvasProjection {
  external factory MapCanvasProjection();

  external LatLng? fromContainerPixelToLatLng([
    Point? pixel,
    bool? noClampNoWrap,
  ]);

  external LatLng? fromDivPixelToLatLng([
    Point? pixel,
    bool? noClampNoWrap,
  ]);

  external Point? fromLatLngToContainerPixel(LatLng? latLng);

  external Point? fromLatLngToDivPixel([
    LatLng? latLng,
  ]);
}

extension MapCanvasProjection$Ext on MapCanvasProjection {
  VisibleRegion? get visibleRegion => _getVisibleRegion();
  num? get worldWidth => _getWorldWidth();

  VisibleRegion? _getVisibleRegion() =>
      callMethod(this, 'getVisibleRegion', []);

  num? _getWorldWidth() => callMethod(this, 'getWorldWidth', []);
}

@JS('google.maps.KmlLayer')
class KmlLayer extends MVCObject {
  external KmlLayer([
    KmlLayerOptions? opts, // ignore: unused_element
  ]);
}

extension KmlLayer$Ext on KmlLayer {
  LatLngBounds? get defaultViewport => _getDefaultViewport();
  GMap? get map => _getMap();
  KmlLayerMetadata? get metadata => _getMetadata();
  KmlLayerStatus? get status => _getStatus();
  String? get url => _getUrl();
  num? get zIndex => _getZIndex();
  set map(GMap? map) => _setMap(map);
  set options(KmlLayerOptions? options) => _setOptions(options);
  set url(String? url) => _setUrl(url);
  set zIndex(num? zIndex) => _setZIndex(zIndex);
  Stream<KmlMouseEvent> get onClick {
    late StreamController<KmlMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (KmlMouseEvent kmlClickEvent) => sc.add(kmlClickEvent),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<KmlMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onDefaultviewportChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'defaultviewport_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onStatusChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'status_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  LatLngBounds? _getDefaultViewport() =>
      callMethod(this, 'getDefaultViewport', []);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  KmlLayerMetadata? _getMetadata() => callMethod(this, 'getMetadata', []);

  KmlLayerStatus? _getStatus() => callMethod(this, 'getStatus', []);

  String? _getUrl() => callMethod(this, 'getUrl', []);

  num? _getZIndex() => callMethod(this, 'getZIndex', []);

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(KmlLayerOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setUrl(String? url) {
    callMethod(this, 'setUrl', [url]);
  }

  void _setZIndex(num? zIndex) {
    callMethod(this, 'setZIndex', [zIndex]);
  }
}

@JS()
@anonymous
class KmlLayerOptions {
  external factory KmlLayerOptions();

  external bool? get clickable;

  external set clickable(bool? value);

  external GMap? get map;

  external set map(GMap? value);

  external bool? get preserveViewport;

  external set preserveViewport(bool? value);

  external bool? get screenOverlays;

  external set screenOverlays(bool? value);

  external bool? get suppressInfoWindows;

  external set suppressInfoWindows(bool? value);

  external String? get url;

  external set url(String? value);

  external num? get zIndex;

  external set zIndex(num? value);
}

@JS()
@anonymous
class KmlLayerMetadata {
  external factory KmlLayerMetadata();

  external KmlAuthor? get author;

  external set author(KmlAuthor? value);

  external String? get description;

  external set description(String? value);

  external bool? get hasScreenOverlays;

  external set hasScreenOverlays(bool? value);

  external String? get name;

  external set name(String? value);

  external String? get snippet;

  external set snippet(String? value);
}

@JS('google.maps.KmlLayerStatus')
class KmlLayerStatus {
  external static KmlLayerStatus get DOCUMENT_NOT_FOUND;
  external static KmlLayerStatus get DOCUMENT_TOO_LARGE;
  external static KmlLayerStatus get FETCH_ERROR;
  external static KmlLayerStatus get INVALID_DOCUMENT;
  external static KmlLayerStatus get INVALID_REQUEST;
  external static KmlLayerStatus get LIMITS_EXCEEDED;
  external static KmlLayerStatus get OK;
  external static KmlLayerStatus get TIMED_OUT;
  external static KmlLayerStatus get UNKNOWN;
}

KmlLayerStatus? KmlLayerStatus$cast(value) {
  if (value == KmlLayerStatus.DOCUMENT_NOT_FOUND)
    return KmlLayerStatus.DOCUMENT_NOT_FOUND;
  if (value == KmlLayerStatus.DOCUMENT_TOO_LARGE)
    return KmlLayerStatus.DOCUMENT_TOO_LARGE;
  if (value == KmlLayerStatus.FETCH_ERROR) return KmlLayerStatus.FETCH_ERROR;
  if (value == KmlLayerStatus.INVALID_DOCUMENT)
    return KmlLayerStatus.INVALID_DOCUMENT;
  if (value == KmlLayerStatus.INVALID_REQUEST)
    return KmlLayerStatus.INVALID_REQUEST;
  if (value == KmlLayerStatus.LIMITS_EXCEEDED)
    return KmlLayerStatus.LIMITS_EXCEEDED;
  if (value == KmlLayerStatus.OK) return KmlLayerStatus.OK;
  if (value == KmlLayerStatus.TIMED_OUT) return KmlLayerStatus.TIMED_OUT;
  if (value == KmlLayerStatus.UNKNOWN) return KmlLayerStatus.UNKNOWN;
  return null;
}

@JS()
@anonymous
class KmlMouseEvent {
  external factory KmlMouseEvent();

  external KmlFeatureData? get featureData;

  external set featureData(KmlFeatureData? value);

  external LatLng? get latLng;

  external set latLng(LatLng? value);

  external Size? get pixelOffset;

  external set pixelOffset(Size? value);
}

@JS()
@anonymous
class KmlFeatureData {
  external factory KmlFeatureData();

  external KmlAuthor? get author;

  external set author(KmlAuthor? value);

  external String? get description;

  external set description(String? value);

  external String? get id;

  external set id(String? value);

  external String? get infoWindowHtml;

  external set infoWindowHtml(String? value);

  external String? get name;

  external set name(String? value);

  external String? get snippet;

  external set snippet(String? value);
}

@JS()
@anonymous
class KmlAuthor {
  external factory KmlAuthor();

  external String? get email;

  external set email(String? value);

  external String? get name;

  external set name(String? value);

  external String? get uri;

  external set uri(String? value);
}

@JS()
@anonymous
class MapType {
  external factory MapType();

  external num? get maxZoom;

  external set maxZoom(num? value);

  external num? get minZoom;

  external set minZoom(num? value);

  external num? get radius;

  external set radius(num? value);

  external Size? get tileSize;

  external set tileSize(Size? value);

  external String? get alt;

  external set alt(String? value);

  external String? get name;

  external set name(String? value);

  external Projection? get projection;

  external set projection(Projection? value);
}

extension MapType$Ext on MapType {
  Element? Function(Point? tileCoord, num? zoom, Document? ownerDocument)?
      get getTile => callMethod(getProperty(this, 'getTile'), 'bind', [this]);

  set getTile(
      Element? Function(Point? tileCoord, num? zoom, Document? ownerDocument)?
          value) {
    setProperty(this, 'getTile', value == null ? null : allowInterop(value));
  }

  void Function([
    Element? tile,
  ])? get releaseTile =>
      callMethod(getProperty(this, 'releaseTile'), 'bind', [this]);

  set releaseTile(
      void Function([
    Element? tile,
  ])?
          value) {
    setProperty(
        this, 'releaseTile', value == null ? null : allowInterop(value));
  }
}

@JS()
@anonymous
class Projection {
  external factory Projection();
}

extension Projection$Ext on Projection {
  Point? Function(
    LatLng? latLng, [
    Point? point,
  ])? get fromLatLngToPoint =>
      callMethod(getProperty(this, 'fromLatLngToPoint'), 'bind', [this]);

  set fromLatLngToPoint(
      Point? Function(
    LatLng? latLng, [
    Point? point,
  ])?
          value) {
    setProperty(
        this, 'fromLatLngToPoint', value == null ? null : allowInterop(value));
  }

  LatLng? Function(
    Point? pixel, [
    bool? noClampNoWrap,
  ])? get fromPointToLatLng =>
      callMethod(getProperty(this, 'fromPointToLatLng'), 'bind', [this]);

  set fromPointToLatLng(
      LatLng? Function(
    Point? pixel, [
    bool? noClampNoWrap,
  ])?
          value) {
    setProperty(
        this, 'fromPointToLatLng', value == null ? null : allowInterop(value));
  }
}

@JS('google.maps.ImageMapType')
class ImageMapType extends MVCObject implements MapType {
  external ImageMapType(ImageMapTypeOptions? opts);

  external String? get alt;

  external set alt(String? value);

  external num? get maxZoom;

  external set maxZoom(num? value);

  external num? get minZoom;

  external set minZoom(num? value);

  external String? get name;

  external set name(String? value);

  external Projection? get projection;

  external set projection(Projection? value);

  external num? get radius;

  external set radius(num? value);

  external Size? get tileSize;

  external set tileSize(Size? value);
}

extension ImageMapType$Ext on ImageMapType {
  Element? Function(Point? tileCoord, num? zoom, Document? ownerDocument)?
      get getTile => callMethod(getProperty(this, 'getTile'), 'bind', [this]);

  set getTile(
      Element? Function(Point? tileCoord, num? zoom, Document? ownerDocument)?
          value) {
    setProperty(this, 'getTile', value == null ? null : allowInterop(value));
  }

  void Function([
    Element? tileDiv,
  ])? get releaseTile =>
      callMethod(getProperty(this, 'releaseTile'), 'bind', [this]);

  set releaseTile(
      void Function([
    Element? tileDiv,
  ])?
          value) {
    setProperty(
        this, 'releaseTile', value == null ? null : allowInterop(value));
  }

  num? get opacity => _getOpacity();
  set opacity(num? opacity) => _setOpacity(opacity);
  Stream<void> get onTilesloaded {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'tilesloaded',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  num? _getOpacity() => callMethod(this, 'getOpacity', []);

  void _setOpacity(num? opacity) {
    callMethod(this, 'setOpacity', [opacity]);
  }
}

@JS()
@anonymous
class ImageMapTypeOptions {
  external factory ImageMapTypeOptions();

  external String? get alt;

  external set alt(String? value);

  external num? get maxZoom;

  external set maxZoom(num? value);

  external num? get minZoom;

  external set minZoom(num? value);

  external String? get name;

  external set name(String? value);

  external num? get opacity;

  external set opacity(num? value);

  external Size? get tileSize;

  external set tileSize(Size? value);
}

extension ImageMapTypeOptions$Ext on ImageMapTypeOptions {
  String? Function(Point?, num?)? get getTileUrl =>
      callMethod(getProperty(this, 'getTileUrl'), 'bind', [this]);

  set getTileUrl(String? Function(Point?, num?)? value) {
    setProperty(this, 'getTileUrl', value == null ? null : allowInterop(value));
  }
}

@JS('google.maps.GroundOverlay')
class GroundOverlay extends MVCObject {
  external GroundOverlay(
    String? url,
    LatLngBounds? bounds, [
    GroundOverlayOptions? opts, // ignore: unused_element
  ]);
}

extension GroundOverlay$Ext on GroundOverlay {
  LatLngBounds? get bounds => _getBounds();
  GMap? get map => _getMap();
  num? get opacity => _getOpacity();
  String? get url => _getUrl();
  set map(GMap? map) => _setMap(map);
  set opacity(num? opacity) => _setOpacity(opacity);
  Stream<MapMouseEvent> get onClick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDblclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  LatLngBounds? _getBounds() => callMethod(this, 'getBounds', []);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  num? _getOpacity() => callMethod(this, 'getOpacity', []);

  String? _getUrl() => callMethod(this, 'getUrl', []);

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOpacity(num? opacity) {
    callMethod(this, 'setOpacity', [opacity]);
  }
}

@JS()
@anonymous
class GroundOverlayOptions {
  external factory GroundOverlayOptions();

  external bool? get clickable;

  external set clickable(bool? value);

  external GMap? get map;

  external set map(GMap? value);

  external num? get opacity;

  external set opacity(num? value);
}

@JS('google.maps.StyledMapType')
class StyledMapType extends MVCObject implements MapType {
  external StyledMapType(
    List<MapTypeStyle?>? styles, [
    StyledMapTypeOptions? options, // ignore: unused_element
  ]);

  external String? get alt;

  external set alt(String? value);

  external num? get maxZoom;

  external set maxZoom(num? value);

  external num? get minZoom;

  external set minZoom(num? value);

  external String? get name;

  external set name(String? value);

  external Projection? get projection;

  external set projection(Projection? value);

  external num? get radius;

  external set radius(num? value);

  external Size? get tileSize;

  external set tileSize(Size? value);
}

extension StyledMapType$Ext on StyledMapType {
  Element? Function(Point? tileCoord, num? zoom, Document? ownerDocument)?
      get getTile => callMethod(getProperty(this, 'getTile'), 'bind', [this]);

  set getTile(
      Element? Function(Point? tileCoord, num? zoom, Document? ownerDocument)?
          value) {
    setProperty(this, 'getTile', value == null ? null : allowInterop(value));
  }

  void Function([
    Element? tile,
  ])? get releaseTile =>
      callMethod(getProperty(this, 'releaseTile'), 'bind', [this]);

  set releaseTile(
      void Function([
    Element? tile,
  ])?
          value) {
    setProperty(
        this, 'releaseTile', value == null ? null : allowInterop(value));
  }
}

@JS()
@anonymous
class StyledMapTypeOptions {
  external factory StyledMapTypeOptions();

  external String? get alt;

  external set alt(String? value);

  external num? get maxZoom;

  external set maxZoom(num? value);

  external num? get minZoom;

  external set minZoom(num? value);

  external String? get name;

  external set name(String? value);
}

@JS('google.maps.MaxZoomService')
class MaxZoomService {
  external MaxZoomService();
}

extension MaxZoomService$Ext on MaxZoomService {
  Future<MaxZoomResult> getMaxZoomAtLatLng(
    LatLng? latlng, [
    void Function(MaxZoomResult?)? callback,
  ]) =>
      promiseToFuture(callMethod(this, 'getMaxZoomAtLatLng',
          [latlng, callback == null ? null : allowInterop(callback)]));
}

@JS()
@anonymous
class MaxZoomResult {
  external factory MaxZoomResult();

  external num? get zoom;

  external set zoom(num? value);

  external MaxZoomStatus? get status;

  external set status(MaxZoomStatus? value);
}

@JS('google.maps.MaxZoomStatus')
class MaxZoomStatus {
  external static MaxZoomStatus get ERROR;
  external static MaxZoomStatus get OK;
}

MaxZoomStatus? MaxZoomStatus$cast(value) {
  if (value == MaxZoomStatus.ERROR) return MaxZoomStatus.ERROR;
  if (value == MaxZoomStatus.OK) return MaxZoomStatus.OK;
  return null;
}

@JS('google.maps.StreetViewPanorama')
class StreetViewPanorama extends MVCObject {
  external StreetViewPanorama(
    HtmlElement? container, [
    StreetViewPanoramaOptions? opts, // ignore: unused_element
  ]);
}

extension StreetViewPanorama$Ext on StreetViewPanorama {
  List<MVCArray<HtmlElement?>?>? get controls =>
      getProperty(this, 'controls')?.cast<MVCArray<HtmlElement?>?>();

  set controls(List<MVCArray<HtmlElement?>?>? value) {
    setProperty(this, 'controls', value);
  }

  List<StreetViewLink?>? get links => _getLinks();
  StreetViewLocation? get location => _getLocation();
  bool? get motionTracking => _getMotionTracking();
  String? get pano => _getPano();
  StreetViewPov? get photographerPov => _getPhotographerPov();
  LatLng? get position => _getPosition();
  StreetViewPov? get pov => _getPov();
  StreetViewStatus? get status => _getStatus();
  bool? get visible => _getVisible();
  num? get zoom => _getZoom();
  set links(List<StreetViewLink?>? links) => _setLinks(links);
  set motionTracking(bool? motionTracking) =>
      _setMotionTracking(motionTracking);
  set options(StreetViewPanoramaOptions? options) => _setOptions(options);
  set pano(String? pano) => _setPano(pano);
  set position(LatLng? position) => _setPosition(position);
  set pov(StreetViewPov? pov) => _setPov(pov);
  set visible(bool? visible) => _setVisible(visible);
  set zoom(num? zoom) => _setZoom(zoom);
  Stream<Object> get onCloseclick {
    late StreamController<Object> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'closeclick',
          (Object event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Object>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onPanoChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'pano_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onPositionChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'position_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onPovChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'pov_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onResize {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'resize',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onStatusChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'status_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onVisibleChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'visible_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onZoomChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'zoom_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  List<StreetViewLink?>? _getLinks() =>
      callMethod(this, 'getLinks', [])?.cast<StreetViewLink?>();

  StreetViewLocation? _getLocation() => callMethod(this, 'getLocation', []);

  bool? _getMotionTracking() => callMethod(this, 'getMotionTracking', []);

  String? _getPano() => callMethod(this, 'getPano', []);

  StreetViewPov? _getPhotographerPov() =>
      callMethod(this, 'getPhotographerPov', []);

  LatLng? _getPosition() => callMethod(this, 'getPosition', []);

  StreetViewPov? _getPov() => callMethod(this, 'getPov', []);

  StreetViewStatus? _getStatus() => callMethod(this, 'getStatus', []);

  bool? _getVisible() => callMethod(this, 'getVisible', []);

  num? _getZoom() => callMethod(this, 'getZoom', []);

  void registerPanoProvider([
    StreetViewPanoramaData? Function(String?)? provider,
    PanoProviderOptions? opt_options,
  ]) {
    callMethod(this, 'registerPanoProvider',
        [provider == null ? null : allowInterop(provider), opt_options]);
  }

  void _setLinks(List<StreetViewLink?>? links) {
    callMethod(this, 'setLinks', [links]);
  }

  void _setMotionTracking(bool? motionTracking) {
    callMethod(this, 'setMotionTracking', [motionTracking]);
  }

  void _setOptions(StreetViewPanoramaOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPano(String? pano) {
    callMethod(this, 'setPano', [pano]);
  }

  void _setPosition(LatLng? latLng) {
    callMethod(this, 'setPosition', [latLng]);
  }

  void _setPov(StreetViewPov? pov) {
    callMethod(this, 'setPov', [pov]);
  }

  void _setVisible(bool? flag) {
    callMethod(this, 'setVisible', [flag]);
  }

  void _setZoom(num? zoom) {
    callMethod(this, 'setZoom', [zoom]);
  }
}

@JS()
@anonymous
class StreetViewPanoramaOptions {
  external factory StreetViewPanoramaOptions();

  external bool? get addressControl;

  external set addressControl(bool? value);

  external StreetViewAddressControlOptions? get addressControlOptions;

  external set addressControlOptions(StreetViewAddressControlOptions? value);

  external bool? get clickToGo;

  external set clickToGo(bool? value);

  external num? get controlSize;

  external set controlSize(num? value);

  external bool? get disableDefaultUI;

  external set disableDefaultUI(bool? value);

  external bool? get disableDoubleClickZoom;

  external set disableDoubleClickZoom(bool? value);

  external bool? get enableCloseButton;

  external set enableCloseButton(bool? value);

  external bool? get fullscreenControl;

  external set fullscreenControl(bool? value);

  external FullscreenControlOptions? get fullscreenControlOptions;

  external set fullscreenControlOptions(FullscreenControlOptions? value);

  external bool? get imageDateControl;

  external set imageDateControl(bool? value);

  external bool? get linksControl;

  external set linksControl(bool? value);

  external bool? get motionTracking;

  external set motionTracking(bool? value);

  external bool? get motionTrackingControl;

  external set motionTrackingControl(bool? value);

  external MotionTrackingControlOptions? get motionTrackingControlOptions;

  external set motionTrackingControlOptions(
      MotionTrackingControlOptions? value);

  external bool? get panControl;

  external set panControl(bool? value);

  external PanControlOptions? get panControlOptions;

  external set panControlOptions(PanControlOptions? value);

  external String? get pano;

  external set pano(String? value);

  external LatLng? get position;

  external set position(LatLng? value);

  external StreetViewPov? get pov;

  external set pov(StreetViewPov? value);

  external bool? get scrollwheel;

  external set scrollwheel(bool? value);

  external bool? get showRoadLabels;

  external set showRoadLabels(bool? value);

  external bool? get visible;

  external set visible(bool? value);

  external num? get zoom;

  external set zoom(num? value);

  external bool? get zoomControl;

  external set zoomControl(bool? value);

  external ZoomControlOptions? get zoomControlOptions;

  external set zoomControlOptions(ZoomControlOptions? value);
}

@JS()
@anonymous
class StreetViewAddressControlOptions {
  external factory StreetViewAddressControlOptions();

  external ControlPosition? get position;

  external set position(ControlPosition? value);
}

@JS()
@anonymous
class PanoProviderOptions {
  external factory PanoProviderOptions();

  external bool? get cors;

  external set cors(bool? value);
}

@JS()
@anonymous
class StreetViewTileData {
  external factory StreetViewTileData();

  external num? get centerHeading;

  external set centerHeading(num? value);

  external Size? get tileSize;

  external set tileSize(Size? value);

  external Size? get worldSize;

  external set worldSize(Size? value);
}

extension StreetViewTileData$Ext on StreetViewTileData {
  String? Function(String? pano, num? tileZoom, num? tileX, num? tileY)?
      get getTileUrl =>
          callMethod(getProperty(this, 'getTileUrl'), 'bind', [this]);

  set getTileUrl(
      String? Function(String? pano, num? tileZoom, num? tileX, num? tileY)?
          value) {
    setProperty(this, 'getTileUrl', value == null ? null : allowInterop(value));
  }
}

@JS()
@anonymous
class StreetViewPov {
  external factory StreetViewPov();

  external num? get heading;

  external set heading(num? value);

  external num? get pitch;

  external set pitch(num? value);
}

@JS('google.maps.StreetViewCoverageLayer')
class StreetViewCoverageLayer extends MVCObject {
  external StreetViewCoverageLayer();
}

extension StreetViewCoverageLayer$Ext on StreetViewCoverageLayer {
  GMap? get map => _getMap();
  set map(GMap? map) => _setMap(map);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }
}

@JS('google.maps.StreetViewService')
class StreetViewService {
  external StreetViewService();
}

extension StreetViewService$Ext on StreetViewService {
  Future<StreetViewResponse> getPanorama(
    Object? /*StreetViewLocationRequest?|StreetViewPanoRequest?*/ request, [
    void Function(StreetViewPanoramaData?, StreetViewStatus?)? callback,
  ]) =>
      promiseToFuture(callMethod(this, 'getPanorama', [
        request,
        callback == null
            ? null
            : allowInterop((p0, p1) => callback(p0, StreetViewStatus$cast(p1)))
      ]));
}

@JS('google.maps.StreetViewStatus')
class StreetViewStatus {
  external static StreetViewStatus get OK;
  external static StreetViewStatus get UNKNOWN_ERROR;
  external static StreetViewStatus get ZERO_RESULTS;
}

StreetViewStatus? StreetViewStatus$cast(value) {
  if (value == StreetViewStatus.OK) return StreetViewStatus.OK;
  if (value == StreetViewStatus.UNKNOWN_ERROR)
    return StreetViewStatus.UNKNOWN_ERROR;
  if (value == StreetViewStatus.ZERO_RESULTS)
    return StreetViewStatus.ZERO_RESULTS;
  return null;
}

@JS()
@anonymous
class StreetViewLocationRequest {
  external factory StreetViewLocationRequest();

  external LatLng? get location;

  external set location(LatLng? value);

  external StreetViewPreference? get preference;

  external set preference(StreetViewPreference? value);

  external num? get radius;

  external set radius(num? value);

  external StreetViewSource? get source;

  external set source(StreetViewSource? value);
}

@JS()
@anonymous
class StreetViewPanoRequest {
  external factory StreetViewPanoRequest();

  external String? get pano;

  external set pano(String? value);
}

@JS()
@anonymous
class StreetViewResponse {
  external factory StreetViewResponse();

  external StreetViewPanoramaData? get data;

  external set data(StreetViewPanoramaData? value);
}

@JS()
@anonymous
class StreetViewLocation {
  external factory StreetViewLocation();

  external String? get pano;

  external set pano(String? value);

  external String? get description;

  external set description(String? value);

  external LatLng? get latLng;

  external set latLng(LatLng? value);

  external String? get shortDescription;

  external set shortDescription(String? value);
}

@JS('google.maps.StreetViewPreference')
class StreetViewPreference {
  external static StreetViewPreference get BEST;
  external static StreetViewPreference get NEAREST;
}

StreetViewPreference? StreetViewPreference$cast(value) {
  if (value == StreetViewPreference.BEST) return StreetViewPreference.BEST;
  if (value == StreetViewPreference.NEAREST)
    return StreetViewPreference.NEAREST;
  return null;
}

@JS('google.maps.StreetViewSource')
class StreetViewSource {
  external static StreetViewSource get DEFAULT;
  external static StreetViewSource get OUTDOOR;
}

StreetViewSource? StreetViewSource$cast(value) {
  if (value == StreetViewSource.DEFAULT) return StreetViewSource.DEFAULT;
  if (value == StreetViewSource.OUTDOOR) return StreetViewSource.OUTDOOR;
  return null;
}

@JS()
@anonymous
class StreetViewPanoramaData {
  external factory StreetViewPanoramaData();

  external StreetViewTileData? get tiles;

  external set tiles(StreetViewTileData? value);

  external String? get copyright;

  external set copyright(String? value);

  external String? get imageDate;

  external set imageDate(String? value);

  external StreetViewLocation? get location;

  external set location(StreetViewLocation? value);
}

extension StreetViewPanoramaData$Ext on StreetViewPanoramaData {
  List<StreetViewLink?>? get links =>
      getProperty(this, 'links')?.cast<StreetViewLink?>();

  set links(List<StreetViewLink?>? value) {
    setProperty(this, 'links', value);
  }
}

@JS()
@anonymous
class StreetViewLink {
  external factory StreetViewLink();

  external String? get description;

  external set description(String? value);

  external num? get heading;

  external set heading(num? value);

  external String? get pano;

  external set pano(String? value);
}

@JS('google.maps.Geocoder')
class Geocoder {
  external Geocoder();
}

extension Geocoder$Ext on Geocoder {
  Future<GeocoderResponse> geocode(
    GeocoderRequest? request, [
    void Function(List<GeocoderResult?>?, GeocoderStatus?)? callback,
  ]) =>
      promiseToFuture(callMethod(this, 'geocode', [
        request,
        callback == null
            ? null
            : allowInterop((p0, p1) =>
                callback(p0?.cast<GeocoderResult?>(), GeocoderStatus$cast(p1)))
      ]));
}

@JS()
@anonymous
class GeocoderRequest {
  external factory GeocoderRequest();

  external String? get address;

  external set address(String? value);

  external LatLngBounds? get bounds;

  external set bounds(LatLngBounds? value);

  external GeocoderComponentRestrictions? get componentRestrictions;

  external set componentRestrictions(GeocoderComponentRestrictions? value);

  external LatLng? get location;

  external set location(LatLng? value);

  external String? get placeId;

  external set placeId(String? value);

  external String? get region;

  external set region(String? value);
}

@JS()
@anonymous
class GeocoderComponentRestrictions {
  external factory GeocoderComponentRestrictions();

  external String? get administrativeArea;

  external set administrativeArea(String? value);

  external String? get country;

  external set country(String? value);

  external String? get locality;

  external set locality(String? value);

  external String? get postalCode;

  external set postalCode(String? value);

  external String? get route;

  external set route(String? value);
}

@JS('google.maps.GeocoderStatus')
class GeocoderStatus {
  external static GeocoderStatus get ERROR;
  external static GeocoderStatus get INVALID_REQUEST;
  external static GeocoderStatus get OK;
  external static GeocoderStatus get OVER_QUERY_LIMIT;
  external static GeocoderStatus get REQUEST_DENIED;
  external static GeocoderStatus get UNKNOWN_ERROR;
  external static GeocoderStatus get ZERO_RESULTS;
}

GeocoderStatus? GeocoderStatus$cast(value) {
  if (value == GeocoderStatus.ERROR) return GeocoderStatus.ERROR;
  if (value == GeocoderStatus.INVALID_REQUEST)
    return GeocoderStatus.INVALID_REQUEST;
  if (value == GeocoderStatus.OK) return GeocoderStatus.OK;
  if (value == GeocoderStatus.OVER_QUERY_LIMIT)
    return GeocoderStatus.OVER_QUERY_LIMIT;
  if (value == GeocoderStatus.REQUEST_DENIED)
    return GeocoderStatus.REQUEST_DENIED;
  if (value == GeocoderStatus.UNKNOWN_ERROR)
    return GeocoderStatus.UNKNOWN_ERROR;
  if (value == GeocoderStatus.ZERO_RESULTS) return GeocoderStatus.ZERO_RESULTS;
  return null;
}

@JS()
@anonymous
class GeocoderResponse {
  external factory GeocoderResponse();
}

extension GeocoderResponse$Ext on GeocoderResponse {
  List<GeocoderResult?>? get results =>
      getProperty(this, 'results')?.cast<GeocoderResult?>();

  set results(List<GeocoderResult?>? value) {
    setProperty(this, 'results', value);
  }
}

@JS()
@anonymous
class GeocoderResult {
  external factory GeocoderResult();

  external GeocoderGeometry? get geometry;

  external set geometry(GeocoderGeometry? value);
}

extension GeocoderResult$Ext on GeocoderResult {
  List<GeocoderAddressComponent?>? get addressComponents =>
      getProperty(this, 'address_components')
          ?.cast<GeocoderAddressComponent?>();

  set addressComponents(List<GeocoderAddressComponent?>? value) {
    setProperty(this, 'address_components', value);
  }

  String? get formattedAddress => getProperty(this, 'formatted_address');

  set formattedAddress(String? value) {
    setProperty(this, 'formatted_address', value);
  }

  String? get placeId => getProperty(this, 'place_id');

  set placeId(String? value) {
    setProperty(this, 'place_id', value);
  }

  List<String?>? get types => getProperty(this, 'types')?.cast<String?>();

  set types(List<String?>? value) {
    setProperty(this, 'types', value);
  }

  bool? get partialMatch => getProperty(this, 'partial_match');

  set partialMatch(bool? value) {
    setProperty(this, 'partial_match', value);
  }

  PlacePlusCode? get plusCode => getProperty(this, 'plus_code');

  set plusCode(PlacePlusCode? value) {
    setProperty(this, 'plus_code', value);
  }

  List<String?>? get postcodeLocalities =>
      getProperty(this, 'postcode_localities')?.cast<String?>();

  set postcodeLocalities(List<String?>? value) {
    setProperty(this, 'postcode_localities', value);
  }
}

@JS()
@anonymous
class GeocoderAddressComponent {
  external factory GeocoderAddressComponent();
}

extension GeocoderAddressComponent$Ext on GeocoderAddressComponent {
  String? get longName => getProperty(this, 'long_name');

  set longName(String? value) {
    setProperty(this, 'long_name', value);
  }

  String? get shortName => getProperty(this, 'short_name');

  set shortName(String? value) {
    setProperty(this, 'short_name', value);
  }

  List<String?>? get types => getProperty(this, 'types')?.cast<String?>();

  set types(List<String?>? value) {
    setProperty(this, 'types', value);
  }
}

@JS()
@anonymous
class GeocoderGeometry {
  external factory GeocoderGeometry();

  external LatLng? get location;

  external set location(LatLng? value);

  external LatLngBounds? get viewport;

  external set viewport(LatLngBounds? value);

  external LatLngBounds? get bounds;

  external set bounds(LatLngBounds? value);
}

extension GeocoderGeometry$Ext on GeocoderGeometry {
  GeocoderLocationType? get locationType => getProperty(this, 'location_type');

  set locationType(GeocoderLocationType? value) {
    setProperty(this, 'location_type', value);
  }
}

@JS('google.maps.GeocoderLocationType')
class GeocoderLocationType {
  external static GeocoderLocationType get APPROXIMATE;
  external static GeocoderLocationType get GEOMETRIC_CENTER;
  external static GeocoderLocationType get RANGE_INTERPOLATED;
  external static GeocoderLocationType get ROOFTOP;
}

GeocoderLocationType? GeocoderLocationType$cast(value) {
  if (value == GeocoderLocationType.APPROXIMATE)
    return GeocoderLocationType.APPROXIMATE;
  if (value == GeocoderLocationType.GEOMETRIC_CENTER)
    return GeocoderLocationType.GEOMETRIC_CENTER;
  if (value == GeocoderLocationType.RANGE_INTERPOLATED)
    return GeocoderLocationType.RANGE_INTERPOLATED;
  if (value == GeocoderLocationType.ROOFTOP)
    return GeocoderLocationType.ROOFTOP;
  return null;
}

@JS('google.maps.DirectionsService')
class DirectionsService {
  external DirectionsService();
}

extension DirectionsService$Ext on DirectionsService {
  Future<DirectionsResult> route(
    DirectionsRequest? request, [
    void Function(DirectionsResult?, DirectionsStatus?)? callback,
  ]) =>
      promiseToFuture(callMethod(this, 'route', [
        request,
        callback == null
            ? null
            : allowInterop((p0, p1) => callback(p0, DirectionsStatus$cast(p1)))
      ]));
}

@JS()
@anonymous
class DirectionsRequest {
  external factory DirectionsRequest();

  external Object? /*String?|LatLng?|Place?*/ get destination;

  external set destination(Object? /*String?|LatLng?|Place?*/ value);

  external Object? /*String?|LatLng?|Place?*/ get origin;

  external set origin(Object? /*String?|LatLng?|Place?*/ value);

  external TravelMode? get travelMode;

  external set travelMode(TravelMode? value);

  external bool? get avoidFerries;

  external set avoidFerries(bool? value);

  external bool? get avoidHighways;

  external set avoidHighways(bool? value);

  external bool? get avoidTolls;

  external set avoidTolls(bool? value);

  external DrivingOptions? get drivingOptions;

  external set drivingOptions(DrivingOptions? value);

  external bool? get optimizeWaypoints;

  external set optimizeWaypoints(bool? value);

  external bool? get provideRouteAlternatives;

  external set provideRouteAlternatives(bool? value);

  external String? get region;

  external set region(String? value);

  external TransitOptions? get transitOptions;

  external set transitOptions(TransitOptions? value);

  external UnitSystem? get unitSystem;

  external set unitSystem(UnitSystem? value);
}

extension DirectionsRequest$Ext on DirectionsRequest {
  List<DirectionsWaypoint?>? get waypoints =>
      getProperty(this, 'waypoints')?.cast<DirectionsWaypoint?>();

  set waypoints(List<DirectionsWaypoint?>? value) {
    setProperty(this, 'waypoints', value);
  }
}

@JS('google.maps.DirectionsStatus')
class DirectionsStatus {
  external static DirectionsStatus get INVALID_REQUEST;
  external static DirectionsStatus get MAX_WAYPOINTS_EXCEEDED;
  external static DirectionsStatus get NOT_FOUND;
  external static DirectionsStatus get OK;
  external static DirectionsStatus get OVER_QUERY_LIMIT;
  external static DirectionsStatus get REQUEST_DENIED;
  external static DirectionsStatus get UNKNOWN_ERROR;
  external static DirectionsStatus get ZERO_RESULTS;
}

DirectionsStatus? DirectionsStatus$cast(value) {
  if (value == DirectionsStatus.INVALID_REQUEST)
    return DirectionsStatus.INVALID_REQUEST;
  if (value == DirectionsStatus.MAX_WAYPOINTS_EXCEEDED)
    return DirectionsStatus.MAX_WAYPOINTS_EXCEEDED;
  if (value == DirectionsStatus.NOT_FOUND) return DirectionsStatus.NOT_FOUND;
  if (value == DirectionsStatus.OK) return DirectionsStatus.OK;
  if (value == DirectionsStatus.OVER_QUERY_LIMIT)
    return DirectionsStatus.OVER_QUERY_LIMIT;
  if (value == DirectionsStatus.REQUEST_DENIED)
    return DirectionsStatus.REQUEST_DENIED;
  if (value == DirectionsStatus.UNKNOWN_ERROR)
    return DirectionsStatus.UNKNOWN_ERROR;
  if (value == DirectionsStatus.ZERO_RESULTS)
    return DirectionsStatus.ZERO_RESULTS;
  return null;
}

@JS()
@anonymous
class DirectionsResult {
  external factory DirectionsResult();
}

extension DirectionsResult$Ext on DirectionsResult {
  List<DirectionsRoute?>? get routes =>
      getProperty(this, 'routes')?.cast<DirectionsRoute?>();

  set routes(List<DirectionsRoute?>? value) {
    setProperty(this, 'routes', value);
  }

  List<TravelMode?>? get availableTravelModes =>
      getProperty(this, 'available_travel_modes')?.cast<TravelMode?>();

  set availableTravelModes(List<TravelMode?>? value) {
    setProperty(this, 'available_travel_modes', value);
  }

  List<DirectionsGeocodedWaypoint?>? get geocodedWaypoints =>
      getProperty(this, 'geocoded_waypoints')
          ?.cast<DirectionsGeocodedWaypoint?>();

  set geocodedWaypoints(List<DirectionsGeocodedWaypoint?>? value) {
    setProperty(this, 'geocoded_waypoints', value);
  }
}

@JS('google.maps.DirectionsRenderer')
class DirectionsRenderer extends MVCObject {
  external DirectionsRenderer([
    DirectionsRendererOptions? opts, // ignore: unused_element
  ]);
}

extension DirectionsRenderer$Ext on DirectionsRenderer {
  DirectionsResult? get directions => _getDirections();
  GMap? get map => _getMap();
  HtmlElement? get panel => _getPanel();
  num? get routeIndex => _getRouteIndex();
  set directions(DirectionsResult? directions) => _setDirections(directions);
  set map(GMap? map) => _setMap(map);
  set options(DirectionsRendererOptions? options) => _setOptions(options);
  set panel(HtmlElement? panel) => _setPanel(panel);
  set routeIndex(num? routeIndex) => _setRouteIndex(routeIndex);
  Stream<void> get onDirectionsChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'directions_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  DirectionsResult? _getDirections() => callMethod(this, 'getDirections', []);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  HtmlElement? _getPanel() => callMethod(this, 'getPanel', []);

  num? _getRouteIndex() => callMethod(this, 'getRouteIndex', []);

  void _setDirections(DirectionsResult? directions) {
    callMethod(this, 'setDirections', [directions]);
  }

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(DirectionsRendererOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPanel(HtmlElement? panel) {
    callMethod(this, 'setPanel', [panel]);
  }

  void _setRouteIndex(num? routeIndex) {
    callMethod(this, 'setRouteIndex', [routeIndex]);
  }
}

@JS()
@anonymous
class DirectionsRendererOptions {
  external factory DirectionsRendererOptions();

  external DirectionsResult? get directions;

  external set directions(DirectionsResult? value);

  external bool? get draggable;

  external set draggable(bool? value);

  external bool? get hideRouteList;

  external set hideRouteList(bool? value);

  external InfoWindow? get infoWindow;

  external set infoWindow(InfoWindow? value);

  external GMap? get map;

  external set map(GMap? value);

  external MarkerOptions? get markerOptions;

  external set markerOptions(MarkerOptions? value);

  external HtmlElement? get panel;

  external set panel(HtmlElement? value);

  external PolylineOptions? get polylineOptions;

  external set polylineOptions(PolylineOptions? value);

  external bool? get preserveViewport;

  external set preserveViewport(bool? value);

  external num? get routeIndex;

  external set routeIndex(num? value);

  external bool? get suppressBicyclingLayer;

  external set suppressBicyclingLayer(bool? value);

  external bool? get suppressInfoWindows;

  external set suppressInfoWindows(bool? value);

  external bool? get suppressMarkers;

  external set suppressMarkers(bool? value);

  external bool? get suppressPolylines;

  external set suppressPolylines(bool? value);
}

@JS()
@anonymous
class DirectionsWaypoint {
  external factory DirectionsWaypoint();

  external Object? /*String?|LatLng?|Place?*/ get location;

  external set location(Object? /*String?|LatLng?|Place?*/ value);

  external bool? get stopover;

  external set stopover(bool? value);
}

@JS()
@anonymous
class DirectionsGeocodedWaypoint {
  external factory DirectionsGeocodedWaypoint();
}

extension DirectionsGeocodedWaypoint$Ext on DirectionsGeocodedWaypoint {
  bool? get partialMatch => getProperty(this, 'partial_match');

  set partialMatch(bool? value) {
    setProperty(this, 'partial_match', value);
  }

  String? get placeId => getProperty(this, 'place_id');

  set placeId(String? value) {
    setProperty(this, 'place_id', value);
  }

  List<String?>? get types => getProperty(this, 'types')?.cast<String?>();

  set types(List<String?>? value) {
    setProperty(this, 'types', value);
  }
}

@JS()
@anonymous
class DirectionsRoute {
  external factory DirectionsRoute();

  external LatLngBounds? get bounds;

  external set bounds(LatLngBounds? value);

  external String? get copyrights;

  external set copyrights(String? value);

  external String? get summary;

  external set summary(String? value);

  external TransitFare? get fare;

  external set fare(TransitFare? value);
}

extension DirectionsRoute$Ext on DirectionsRoute {
  List<DirectionsLeg?>? get legs =>
      getProperty(this, 'legs')?.cast<DirectionsLeg?>();

  set legs(List<DirectionsLeg?>? value) {
    setProperty(this, 'legs', value);
  }

  List<LatLng?>? get overviewPath =>
      getProperty(this, 'overview_path')?.cast<LatLng?>();

  set overviewPath(List<LatLng?>? value) {
    setProperty(this, 'overview_path', value);
  }

  String? get overviewPolyline => getProperty(this, 'overview_polyline');

  set overviewPolyline(String? value) {
    setProperty(this, 'overview_polyline', value);
  }

  List<String?>? get warnings => getProperty(this, 'warnings')?.cast<String?>();

  set warnings(List<String?>? value) {
    setProperty(this, 'warnings', value);
  }

  List<num?>? get waypointOrder =>
      getProperty(this, 'waypoint_order')?.cast<num?>();

  set waypointOrder(List<num?>? value) {
    setProperty(this, 'waypoint_order', value);
  }
}

@JS()
@anonymous
class DirectionsLeg {
  external factory DirectionsLeg();

  external Distance? get distance;

  external set distance(Distance? value);

  external GDuration? get duration;

  external set duration(GDuration? value);
}

extension DirectionsLeg$Ext on DirectionsLeg {
  String? get endAddress => getProperty(this, 'end_address');

  set endAddress(String? value) {
    setProperty(this, 'end_address', value);
  }

  LatLng? get endLocation => getProperty(this, 'end_location');

  set endLocation(LatLng? value) {
    setProperty(this, 'end_location', value);
  }

  String? get startAddress => getProperty(this, 'start_address');

  set startAddress(String? value) {
    setProperty(this, 'start_address', value);
  }

  LatLng? get startLocation => getProperty(this, 'start_location');

  set startLocation(LatLng? value) {
    setProperty(this, 'start_location', value);
  }

  List<DirectionsStep?>? get steps =>
      getProperty(this, 'steps')?.cast<DirectionsStep?>();

  set steps(List<DirectionsStep?>? value) {
    setProperty(this, 'steps', value);
  }

  List<Object?>? get trafficSpeedEntry =>
      getProperty(this, 'traffic_speed_entry')?.cast<Object?>();

  set trafficSpeedEntry(List<Object?>? value) {
    setProperty(this, 'traffic_speed_entry', value);
  }

  List<LatLng?>? get viaWaypoints =>
      getProperty(this, 'via_waypoints')?.cast<LatLng?>();

  set viaWaypoints(List<LatLng?>? value) {
    setProperty(this, 'via_waypoints', value);
  }

  Time? get arrivalTime => getProperty(this, 'arrival_time');

  set arrivalTime(Time? value) {
    setProperty(this, 'arrival_time', value);
  }

  Time? get departureTime => getProperty(this, 'departure_time');

  set departureTime(Time? value) {
    setProperty(this, 'departure_time', value);
  }

  GDuration? get durationInTraffic => getProperty(this, 'duration_in_traffic');

  set durationInTraffic(GDuration? value) {
    setProperty(this, 'duration_in_traffic', value);
  }
}

@JS()
@anonymous
class DirectionsStep {
  external factory DirectionsStep();

  external String? get instructions;

  external set instructions(String? value);

  external String? get maneuver;

  external set maneuver(String? value);

  external Distance? get distance;

  external set distance(Distance? value);

  external GDuration? get duration;

  external set duration(GDuration? value);

  external TransitDetails? get transit;

  external set transit(TransitDetails? value);
}

extension DirectionsStep$Ext on DirectionsStep {
  String? get encodedLatLngs => getProperty(this, 'encoded_lat_lngs');

  set encodedLatLngs(String? value) {
    setProperty(this, 'encoded_lat_lngs', value);
  }

  LatLng? get endLocation => getProperty(this, 'end_location');

  set endLocation(LatLng? value) {
    setProperty(this, 'end_location', value);
  }

  LatLng? get endPoint => getProperty(this, 'end_point');

  set endPoint(LatLng? value) {
    setProperty(this, 'end_point', value);
  }

  List<LatLng?>? get latLngs => getProperty(this, 'lat_lngs')?.cast<LatLng?>();

  set latLngs(List<LatLng?>? value) {
    setProperty(this, 'lat_lngs', value);
  }

  List<LatLng?>? get path => getProperty(this, 'path')?.cast<LatLng?>();

  set path(List<LatLng?>? value) {
    setProperty(this, 'path', value);
  }

  LatLng? get startLocation => getProperty(this, 'start_location');

  set startLocation(LatLng? value) {
    setProperty(this, 'start_location', value);
  }

  LatLng? get startPoint => getProperty(this, 'start_point');

  set startPoint(LatLng? value) {
    setProperty(this, 'start_point', value);
  }

  TravelMode? get travelMode => getProperty(this, 'travel_mode');

  set travelMode(TravelMode? value) {
    setProperty(this, 'travel_mode', value);
  }

  List<DirectionsStep?>? get polyline =>
      getProperty(this, 'polyline')?.cast<DirectionsStep?>();

  set polyline(List<DirectionsStep?>? value) {
    setProperty(this, 'polyline', value);
  }

  List<DirectionsStep?>? get steps =>
      getProperty(this, 'steps')?.cast<DirectionsStep?>();

  set steps(List<DirectionsStep?>? value) {
    setProperty(this, 'steps', value);
  }

  TransitDetails? get transitDetails => getProperty(this, 'transit_details');

  set transitDetails(TransitDetails? value) {
    setProperty(this, 'transit_details', value);
  }
}

@JS()
@anonymous
class DirectionsPolyline {
  external factory DirectionsPolyline();

  external String? get points;

  external set points(String? value);
}

@JS()
@anonymous
class Place {
  external factory Place();

  external LatLng? get location;

  external set location(LatLng? value);

  external String? get placeId;

  external set placeId(String? value);

  external String? get query;

  external set query(String? value);
}

@JS('google.maps.TravelMode')
class TravelMode {
  external static TravelMode get BICYCLING;
  external static TravelMode get DRIVING;
  external static TravelMode get TRANSIT;
  external static TravelMode get WALKING;
}

TravelMode? TravelMode$cast(value) {
  if (value == TravelMode.BICYCLING) return TravelMode.BICYCLING;
  if (value == TravelMode.DRIVING) return TravelMode.DRIVING;
  if (value == TravelMode.TRANSIT) return TravelMode.TRANSIT;
  if (value == TravelMode.WALKING) return TravelMode.WALKING;
  return null;
}

@JS()
@anonymous
class DrivingOptions {
  external factory DrivingOptions();

  external DateTime? get departureTime;

  external set departureTime(DateTime? value);

  external TrafficModel? get trafficModel;

  external set trafficModel(TrafficModel? value);
}

@JS('google.maps.TrafficModel')
class TrafficModel {
  external static TrafficModel get BEST_GUESS;
  external static TrafficModel get OPTIMISTIC;
  external static TrafficModel get PESSIMISTIC;
}

TrafficModel? TrafficModel$cast(value) {
  if (value == TrafficModel.BEST_GUESS) return TrafficModel.BEST_GUESS;
  if (value == TrafficModel.OPTIMISTIC) return TrafficModel.OPTIMISTIC;
  if (value == TrafficModel.PESSIMISTIC) return TrafficModel.PESSIMISTIC;
  return null;
}

@JS()
@anonymous
class TransitOptions {
  external factory TransitOptions();

  external DateTime? get arrivalTime;

  external set arrivalTime(DateTime? value);

  external DateTime? get departureTime;

  external set departureTime(DateTime? value);

  external TransitRoutePreference? get routingPreference;

  external set routingPreference(TransitRoutePreference? value);
}

extension TransitOptions$Ext on TransitOptions {
  List<TransitMode?>? get modes =>
      getProperty(this, 'modes')?.cast<TransitMode?>();

  set modes(List<TransitMode?>? value) {
    setProperty(this, 'modes', value);
  }
}

@JS('google.maps.TransitMode')
class TransitMode {
  external static TransitMode get BUS;
  external static TransitMode get RAIL;
  external static TransitMode get SUBWAY;
  external static TransitMode get TRAIN;
  external static TransitMode get TRAM;
}

TransitMode? TransitMode$cast(value) {
  if (value == TransitMode.BUS) return TransitMode.BUS;
  if (value == TransitMode.RAIL) return TransitMode.RAIL;
  if (value == TransitMode.SUBWAY) return TransitMode.SUBWAY;
  if (value == TransitMode.TRAIN) return TransitMode.TRAIN;
  if (value == TransitMode.TRAM) return TransitMode.TRAM;
  return null;
}

@JS('google.maps.TransitRoutePreference')
class TransitRoutePreference {
  external static TransitRoutePreference get FEWER_TRANSFERS;
  external static TransitRoutePreference get LESS_WALKING;
}

TransitRoutePreference? TransitRoutePreference$cast(value) {
  if (value == TransitRoutePreference.FEWER_TRANSFERS)
    return TransitRoutePreference.FEWER_TRANSFERS;
  if (value == TransitRoutePreference.LESS_WALKING)
    return TransitRoutePreference.LESS_WALKING;
  return null;
}

@JS()
@anonymous
class TransitFare {
  external factory TransitFare();

  external String? get currency;

  external set currency(String? value);

  external num? get value;

  external set value(num? value);
}

@JS()
@anonymous
class TransitDetails {
  external factory TransitDetails();

  external String? get headsign;

  external set headsign(String? value);

  external num? get headway;

  external set headway(num? value);

  external TransitLine? get line;

  external set line(TransitLine? value);
}

extension TransitDetails$Ext on TransitDetails {
  TransitStop? get arrivalStop => getProperty(this, 'arrival_stop');

  set arrivalStop(TransitStop? value) {
    setProperty(this, 'arrival_stop', value);
  }

  Time? get arrivalTime => getProperty(this, 'arrival_time');

  set arrivalTime(Time? value) {
    setProperty(this, 'arrival_time', value);
  }

  TransitStop? get departureStop => getProperty(this, 'departure_stop');

  set departureStop(TransitStop? value) {
    setProperty(this, 'departure_stop', value);
  }

  Time? get departureTime => getProperty(this, 'departure_time');

  set departureTime(Time? value) {
    setProperty(this, 'departure_time', value);
  }

  num? get numStops => getProperty(this, 'num_stops');

  set numStops(num? value) {
    setProperty(this, 'num_stops', value);
  }

  String? get tripShortName => getProperty(this, 'trip_short_name');

  set tripShortName(String? value) {
    setProperty(this, 'trip_short_name', value);
  }
}

@JS()
@anonymous
class TransitStop {
  external factory TransitStop();

  external LatLng? get location;

  external set location(LatLng? value);

  external String? get name;

  external set name(String? value);
}

@JS()
@anonymous
class TransitLine {
  external factory TransitLine();

  external String? get color;

  external set color(String? value);

  external String? get icon;

  external set icon(String? value);

  external String? get name;

  external set name(String? value);

  external String? get url;

  external set url(String? value);

  external TransitVehicle? get vehicle;

  external set vehicle(TransitVehicle? value);
}

extension TransitLine$Ext on TransitLine {
  List<TransitAgency?>? get agencies =>
      getProperty(this, 'agencies')?.cast<TransitAgency?>();

  set agencies(List<TransitAgency?>? value) {
    setProperty(this, 'agencies', value);
  }

  String? get shortName => getProperty(this, 'short_name');

  set shortName(String? value) {
    setProperty(this, 'short_name', value);
  }

  String? get textColor => getProperty(this, 'text_color');

  set textColor(String? value) {
    setProperty(this, 'text_color', value);
  }
}

@JS()
@anonymous
class TransitAgency {
  external factory TransitAgency();

  external String? get name;

  external set name(String? value);

  external String? get phone;

  external set phone(String? value);

  external String? get url;

  external set url(String? value);
}

@JS()
@anonymous
class TransitVehicle {
  external factory TransitVehicle();

  external String? get icon;

  external set icon(String? value);

  external String? get name;

  external set name(String? value);

  external VehicleType? get type;

  external set type(VehicleType? value);
}

extension TransitVehicle$Ext on TransitVehicle {
  String? get localIcon => getProperty(this, 'local_icon');

  set localIcon(String? value) {
    setProperty(this, 'local_icon', value);
  }
}

@JS('google.maps.VehicleType')
class VehicleType {
  external static VehicleType get BUS;
  external static VehicleType get CABLE_CAR;
  external static VehicleType get COMMUTER_TRAIN;
  external static VehicleType get FERRY;
  external static VehicleType get FUNICULAR;
  external static VehicleType get GONDOLA_LIFT;
  external static VehicleType get HEAVY_RAIL;
  external static VehicleType get HIGH_SPEED_TRAIN;
  external static VehicleType get INTERCITY_BUS;
  external static VehicleType get METRO_RAIL;
  external static VehicleType get MONORAIL;
  external static VehicleType get OTHER;
  external static VehicleType get RAIL;
  external static VehicleType get SHARE_TAXI;
  external static VehicleType get SUBWAY;
  external static VehicleType get TRAM;
  external static VehicleType get TROLLEYBUS;
}

VehicleType? VehicleType$cast(value) {
  if (value == VehicleType.BUS) return VehicleType.BUS;
  if (value == VehicleType.CABLE_CAR) return VehicleType.CABLE_CAR;
  if (value == VehicleType.COMMUTER_TRAIN) return VehicleType.COMMUTER_TRAIN;
  if (value == VehicleType.FERRY) return VehicleType.FERRY;
  if (value == VehicleType.FUNICULAR) return VehicleType.FUNICULAR;
  if (value == VehicleType.GONDOLA_LIFT) return VehicleType.GONDOLA_LIFT;
  if (value == VehicleType.HEAVY_RAIL) return VehicleType.HEAVY_RAIL;
  if (value == VehicleType.HIGH_SPEED_TRAIN)
    return VehicleType.HIGH_SPEED_TRAIN;
  if (value == VehicleType.INTERCITY_BUS) return VehicleType.INTERCITY_BUS;
  if (value == VehicleType.METRO_RAIL) return VehicleType.METRO_RAIL;
  if (value == VehicleType.MONORAIL) return VehicleType.MONORAIL;
  if (value == VehicleType.OTHER) return VehicleType.OTHER;
  if (value == VehicleType.RAIL) return VehicleType.RAIL;
  if (value == VehicleType.SHARE_TAXI) return VehicleType.SHARE_TAXI;
  if (value == VehicleType.SUBWAY) return VehicleType.SUBWAY;
  if (value == VehicleType.TRAM) return VehicleType.TRAM;
  if (value == VehicleType.TROLLEYBUS) return VehicleType.TROLLEYBUS;
  return null;
}

@JS('google.maps.UnitSystem')
class UnitSystem {
  external static UnitSystem get IMPERIAL;
  external static UnitSystem get METRIC;
}

UnitSystem? UnitSystem$cast(value) {
  if (value == UnitSystem.IMPERIAL) return UnitSystem.IMPERIAL;
  if (value == UnitSystem.METRIC) return UnitSystem.METRIC;
  return null;
}

@JS()
@anonymous
class Distance {
  external factory Distance();

  external String? get text;

  external set text(String? value);

  external num? get value;

  external set value(num? value);
}

@JS()
@anonymous
class GDuration {
  external factory GDuration();

  external String? get text;

  external set text(String? value);

  external num? get value;

  external set value(num? value);
}

@JS()
@anonymous
class Time {
  external factory Time();

  external String? get text;

  external set text(String? value);

  external DateTime? get value;

  external set value(DateTime? value);
}

extension Time$Ext on Time {
  String? get timeZone => getProperty(this, 'time_zone');

  set timeZone(String? value) {
    setProperty(this, 'time_zone', value);
  }
}

@JS('google.maps.DistanceMatrixService')
class DistanceMatrixService {
  external DistanceMatrixService();
}

extension DistanceMatrixService$Ext on DistanceMatrixService {
  Future<DistanceMatrixResponse> getDistanceMatrix(
    DistanceMatrixRequest? request, [
    void Function(DistanceMatrixResponse?, DistanceMatrixStatus?)? callback,
  ]) =>
      promiseToFuture(callMethod(this, 'getDistanceMatrix', [
        request,
        callback == null
            ? null
            : allowInterop(
                (p0, p1) => callback(p0, DistanceMatrixStatus$cast(p1)))
      ]));
}

@JS()
@anonymous
class DistanceMatrixRequest {
  external factory DistanceMatrixRequest();

  external TravelMode? get travelMode;

  external set travelMode(TravelMode? value);

  external bool? get avoidFerries;

  external set avoidFerries(bool? value);

  external bool? get avoidHighways;

  external set avoidHighways(bool? value);

  external bool? get avoidTolls;

  external set avoidTolls(bool? value);

  external DrivingOptions? get drivingOptions;

  external set drivingOptions(DrivingOptions? value);

  external String? get region;

  external set region(String? value);

  external TransitOptions? get transitOptions;

  external set transitOptions(TransitOptions? value);

  external UnitSystem? get unitSystem;

  external set unitSystem(UnitSystem? value);
}

extension DistanceMatrixRequest$Ext on DistanceMatrixRequest {
  List<Object? /*String?|LatLng?|Place?*/ >? get destinations =>
      getProperty(this, 'destinations')
          ?.cast<Object? /*String?|LatLng?|Place?*/ >();

  set destinations(List<Object? /*String?|LatLng?|Place?*/ >? value) {
    setProperty(this, 'destinations', value);
  }

  List<Object? /*String?|LatLng?|Place?*/ >? get origins =>
      getProperty(this, 'origins')?.cast<Object? /*String?|LatLng?|Place?*/ >();

  set origins(List<Object? /*String?|LatLng?|Place?*/ >? value) {
    setProperty(this, 'origins', value);
  }
}

@JS()
@anonymous
class DistanceMatrixResponse {
  external factory DistanceMatrixResponse();
}

extension DistanceMatrixResponse$Ext on DistanceMatrixResponse {
  List<String?>? get destinationAddresses =>
      getProperty(this, 'destinationAddresses')?.cast<String?>();

  set destinationAddresses(List<String?>? value) {
    setProperty(this, 'destinationAddresses', value);
  }

  List<String?>? get originAddresses =>
      getProperty(this, 'originAddresses')?.cast<String?>();

  set originAddresses(List<String?>? value) {
    setProperty(this, 'originAddresses', value);
  }

  List<DistanceMatrixResponseRow?>? get rows =>
      getProperty(this, 'rows')?.cast<DistanceMatrixResponseRow?>();

  set rows(List<DistanceMatrixResponseRow?>? value) {
    setProperty(this, 'rows', value);
  }
}

@JS()
@anonymous
class DistanceMatrixResponseRow {
  external factory DistanceMatrixResponseRow();
}

extension DistanceMatrixResponseRow$Ext on DistanceMatrixResponseRow {
  List<DistanceMatrixResponseElement?>? get elements =>
      getProperty(this, 'elements')?.cast<DistanceMatrixResponseElement?>();

  set elements(List<DistanceMatrixResponseElement?>? value) {
    setProperty(this, 'elements', value);
  }
}

@JS()
@anonymous
class DistanceMatrixResponseElement {
  external factory DistanceMatrixResponseElement();

  external Distance? get distance;

  external set distance(Distance? value);

  external GDuration? get duration;

  external set duration(GDuration? value);

  external TransitFare? get fare;

  external set fare(TransitFare? value);

  external DistanceMatrixElementStatus? get status;

  external set status(DistanceMatrixElementStatus? value);
}

extension DistanceMatrixResponseElement$Ext on DistanceMatrixResponseElement {
  GDuration? get durationInTraffic => getProperty(this, 'duration_in_traffic');

  set durationInTraffic(GDuration? value) {
    setProperty(this, 'duration_in_traffic', value);
  }
}

@JS('google.maps.DistanceMatrixStatus')
class DistanceMatrixStatus {
  external static DistanceMatrixStatus get INVALID_REQUEST;
  external static DistanceMatrixStatus get MAX_DIMENSIONS_EXCEEDED;
  external static DistanceMatrixStatus get MAX_ELEMENTS_EXCEEDED;
  external static DistanceMatrixStatus get OK;
  external static DistanceMatrixStatus get OVER_QUERY_LIMIT;
  external static DistanceMatrixStatus get REQUEST_DENIED;
  external static DistanceMatrixStatus get UNKNOWN_ERROR;
}

DistanceMatrixStatus? DistanceMatrixStatus$cast(value) {
  if (value == DistanceMatrixStatus.INVALID_REQUEST)
    return DistanceMatrixStatus.INVALID_REQUEST;
  if (value == DistanceMatrixStatus.MAX_DIMENSIONS_EXCEEDED)
    return DistanceMatrixStatus.MAX_DIMENSIONS_EXCEEDED;
  if (value == DistanceMatrixStatus.MAX_ELEMENTS_EXCEEDED)
    return DistanceMatrixStatus.MAX_ELEMENTS_EXCEEDED;
  if (value == DistanceMatrixStatus.OK) return DistanceMatrixStatus.OK;
  if (value == DistanceMatrixStatus.OVER_QUERY_LIMIT)
    return DistanceMatrixStatus.OVER_QUERY_LIMIT;
  if (value == DistanceMatrixStatus.REQUEST_DENIED)
    return DistanceMatrixStatus.REQUEST_DENIED;
  if (value == DistanceMatrixStatus.UNKNOWN_ERROR)
    return DistanceMatrixStatus.UNKNOWN_ERROR;
  return null;
}

@JS('google.maps.DistanceMatrixElementStatus')
class DistanceMatrixElementStatus {
  external static DistanceMatrixElementStatus get NOT_FOUND;
  external static DistanceMatrixElementStatus get OK;
  external static DistanceMatrixElementStatus get ZERO_RESULTS;
}

DistanceMatrixElementStatus? DistanceMatrixElementStatus$cast(value) {
  if (value == DistanceMatrixElementStatus.NOT_FOUND)
    return DistanceMatrixElementStatus.NOT_FOUND;
  if (value == DistanceMatrixElementStatus.OK)
    return DistanceMatrixElementStatus.OK;
  if (value == DistanceMatrixElementStatus.ZERO_RESULTS)
    return DistanceMatrixElementStatus.ZERO_RESULTS;
  return null;
}

@JS('google.maps.ElevationService')
class ElevationService {
  external ElevationService();
}

extension ElevationService$Ext on ElevationService {
  Future<PathElevationResponse> getElevationAlongPath(
    PathElevationRequest? request, [
    void Function(List<ElevationResult?>?, ElevationStatus?)? callback,
  ]) =>
      promiseToFuture(callMethod(this, 'getElevationAlongPath', [
        request,
        callback == null
            ? null
            : allowInterop((p0, p1) => callback(
                p0?.cast<ElevationResult?>(), ElevationStatus$cast(p1)))
      ]));

  Future<LocationElevationResponse> getElevationForLocations(
    LocationElevationRequest? request, [
    void Function(List<ElevationResult?>?, ElevationStatus?)? callback,
  ]) =>
      promiseToFuture(callMethod(this, 'getElevationForLocations', [
        request,
        callback == null
            ? null
            : allowInterop((p0, p1) => callback(
                p0?.cast<ElevationResult?>(), ElevationStatus$cast(p1)))
      ]));
}

@JS()
@anonymous
class LocationElevationRequest {
  external factory LocationElevationRequest();
}

extension LocationElevationRequest$Ext on LocationElevationRequest {
  List<LatLng?>? get locations =>
      getProperty(this, 'locations')?.cast<LatLng?>();

  set locations(List<LatLng?>? value) {
    setProperty(this, 'locations', value);
  }
}

@JS()
@anonymous
class LocationElevationResponse {
  external factory LocationElevationResponse();
}

extension LocationElevationResponse$Ext on LocationElevationResponse {
  List<ElevationResult?>? get results =>
      getProperty(this, 'results')?.cast<ElevationResult?>();

  set results(List<ElevationResult?>? value) {
    setProperty(this, 'results', value);
  }
}

@JS()
@anonymous
class PathElevationRequest {
  external factory PathElevationRequest();

  external num? get samples;

  external set samples(num? value);
}

extension PathElevationRequest$Ext on PathElevationRequest {
  List<LatLng?>? get path => getProperty(this, 'path')?.cast<LatLng?>();

  set path(List<LatLng?>? value) {
    setProperty(this, 'path', value);
  }
}

@JS()
@anonymous
class PathElevationResponse {
  external factory PathElevationResponse();
}

extension PathElevationResponse$Ext on PathElevationResponse {
  List<ElevationResult?>? get results =>
      getProperty(this, 'results')?.cast<ElevationResult?>();

  set results(List<ElevationResult?>? value) {
    setProperty(this, 'results', value);
  }
}

@JS()
@anonymous
class ElevationResult {
  external factory ElevationResult();

  external num? get elevation;

  external set elevation(num? value);

  external LatLng? get location;

  external set location(LatLng? value);

  external num? get resolution;

  external set resolution(num? value);
}

@JS('google.maps.ElevationStatus')
class ElevationStatus {
  external static ElevationStatus get INVALID_REQUEST;
  external static ElevationStatus get OK;
  external static ElevationStatus get OVER_QUERY_LIMIT;
  external static ElevationStatus get REQUEST_DENIED;
  external static ElevationStatus get UNKNOWN_ERROR;
}

ElevationStatus? ElevationStatus$cast(value) {
  if (value == ElevationStatus.INVALID_REQUEST)
    return ElevationStatus.INVALID_REQUEST;
  if (value == ElevationStatus.OK) return ElevationStatus.OK;
  if (value == ElevationStatus.OVER_QUERY_LIMIT)
    return ElevationStatus.OVER_QUERY_LIMIT;
  if (value == ElevationStatus.REQUEST_DENIED)
    return ElevationStatus.REQUEST_DENIED;
  if (value == ElevationStatus.UNKNOWN_ERROR)
    return ElevationStatus.UNKNOWN_ERROR;
  return null;
}

@JS('google.maps.Settings')
class Settings {
  external Iterable<String?>? get experienceIds;

  external set experienceIds(Iterable<String?>? value);
}
