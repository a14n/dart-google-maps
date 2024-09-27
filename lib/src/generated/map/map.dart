// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../map.dart';

@JS('google.maps.Map')
extension type Map._(MVCObject _) implements MVCObject {
  external Map(
    HTMLElement mapDiv, [
    MapOptions? opts,
  ]);
  bool isCenterDefined() => callMethod('getCenter'.toJS) != null;
  bool isClickableIconsDefined() =>
      callMethod('getClickableIcons'.toJS) != null;
  bool isHeadingDefined() => callMethod('getHeading'.toJS) != null;
  bool isHeadingInteractionEnabledDefined() =>
      callMethod('getHeadingInteractionEnabled'.toJS) != null;
  bool isMapTypeIdDefined() => callMethod('getMapTypeId'.toJS) != null;
  bool isTiltDefined() => callMethod('getTilt'.toJS) != null;
  bool isTiltInteractionEnabledDefined() =>
      callMethod('getTiltInteractionEnabled'.toJS) != null;
  bool isZoomDefined() => callMethod('getZoom'.toJS) != null;

  MVCArray<HTMLElement> getControlsAt(ControlPosition position) =>
      controls[(position as JSNumber).toDartInt];
  external static JSAny? get DEMO_MAP_ID;
  @JS('controls')
  external JSArray<MVCArray<HTMLElement>> _controls;
  List<MVCArray<HTMLElement>> get controls => _controls.toDart;
  set controls(List<MVCArray<HTMLElement>> value) => _controls = value.toJS;
  external Data data;
  external MapTypeRegistry mapTypes;
  external MVCArray<MapType?> overlayMapTypes;
  external void fitBounds(
    LatLngBoundsOrLatLngBoundsLiteral bounds, [
    JSAny? /*(number|Padding)?*/ padding,
  ]);
  @JS('getBounds')
  external LatLngBounds? _getBounds();
  LatLngBounds? get bounds => _getBounds();
  @JS('getCenter')
  external LatLng _getCenter();
  LatLng get center => _getCenter();
  @JS('getClickableIcons')
  external bool _getClickableIcons();
  bool get clickableIcons => _getClickableIcons();
  external FeatureLayer getDatasetFeatureLayer(
    String datasetId,
  );
  @JS('getDiv')
  external HTMLElement _getDiv();
  HTMLElement get div => _getDiv();
  external FeatureLayer getFeatureLayer(
    FeatureType featureType,
  );
  @JS('getHeading')
  external num _getHeading();
  num get heading => _getHeading();
  @JS('getHeadingInteractionEnabled')
  external bool _getHeadingInteractionEnabled();
  bool get headingInteractionEnabled => _getHeadingInteractionEnabled();
  @JS('getMapCapabilities')
  external MapCapabilities _getMapCapabilities();
  MapCapabilities get mapCapabilities => _getMapCapabilities();
  @JS('getMapTypeId')
  external JSAny /*MapTypeId|string*/ _getMapTypeId();
  JSAny /*MapTypeId|string*/ get mapTypeId => _getMapTypeId();
  @JS('getProjection')
  external Projection? _getProjection();
  Projection? get projection => _getProjection();
  @JS('getRenderingType')
  external RenderingType _getRenderingType();
  RenderingType get renderingType => _getRenderingType();
  @JS('getStreetView')
  external StreetViewPanorama _getStreetView();
  StreetViewPanorama get streetView => _getStreetView();
  @JS('getTilt')
  external num _getTilt();
  num get tilt => _getTilt();
  @JS('getTiltInteractionEnabled')
  external bool _getTiltInteractionEnabled();
  bool get tiltInteractionEnabled => _getTiltInteractionEnabled();
  @JS('getZoom')
  external num _getZoom();
  num get zoom => _getZoom();
  external void moveCamera(
    CameraOptions cameraOptions,
  );
  external void panBy(
    num x,
    num y,
  );
  external void panTo(
    LatLngOrLatLngLiteral latLng,
  );
  external void panToBounds(
    LatLngBoundsOrLatLngBoundsLiteral latLngBounds, [
    JSAny? /*(number|Padding)?*/ padding,
  ]);
  @JS('setCenter')
  external void _setCenter(LatLngOrLatLngLiteral latlng);
  set center(LatLngOrLatLngLiteral latlng) => _setCenter(latlng);
  @JS('setClickableIcons')
  external void _setClickableIcons(bool value);
  set clickableIcons(bool value) => _setClickableIcons(value);
  @JS('setHeading')
  external void _setHeading(num heading);
  set heading(num heading) => _setHeading(heading);
  @JS('setHeadingInteractionEnabled')
  external void _setHeadingInteractionEnabled(bool headingInteractionEnabled);
  set headingInteractionEnabled(bool headingInteractionEnabled) =>
      _setHeadingInteractionEnabled(headingInteractionEnabled);
  @JS('setMapTypeId')
  external void _setMapTypeId(JSAny /*MapTypeId|string*/ mapTypeId);
  set mapTypeId(JSAny /*MapTypeId|string*/ mapTypeId) =>
      _setMapTypeId(mapTypeId);
  @JS('setOptions')
  external void _setOptions(MapOptions? options);
  set options(MapOptions? options) => _setOptions(options);
  @JS('setRenderingType')
  external void _setRenderingType(RenderingType renderingType);
  set renderingType(RenderingType renderingType) =>
      _setRenderingType(renderingType);
  @JS('setStreetView')
  external void _setStreetView(StreetViewPanorama? panorama);
  set streetView(StreetViewPanorama? panorama) => _setStreetView(panorama);
  @JS('setTilt')
  external void _setTilt(num tilt);
  set tilt(num tilt) => _setTilt(tilt);
  @JS('setTiltInteractionEnabled')
  external void _setTiltInteractionEnabled(bool tiltInteractionEnabled);
  set tiltInteractionEnabled(bool tiltInteractionEnabled) =>
      _setTiltInteractionEnabled(tiltInteractionEnabled);
  @JS('setZoom')
  external void _setZoom(num zoom);
  set zoom(num zoom) => _setZoom(zoom);
  Stream<void> get onBoundsChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'bounds_changed',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'center_changed',
          (() => sc.add(null)).toJS,
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

  Stream<MapMouseEventOrIconMouseEvent> get onClick {
    late StreamController<MapMouseEventOrIconMouseEvent>
        sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'click',
          ((MapMouseEventOrIconMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEventOrIconMouseEvent>(
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
    void start() => mapsEventListener = event.addListener(
          this,
          'contextmenu',
          ((MapMouseEvent e) => sc.add(e)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'dblclick',
          ((MapMouseEvent e) => sc.add(e)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'drag',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'dragend',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'dragstart',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'heading_changed',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'idle',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'isfractionalzoomenabled_changed',
          (() => sc.add(null)).toJS,
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

  Stream<void> get onMapcapabilitiesChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mapcapabilities_changed',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'maptypeid_changed',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'mousemove',
          ((MapMouseEvent e) => sc.add(e)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseout',
          ((MapMouseEvent e) => sc.add(e)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseover',
          ((MapMouseEvent e) => sc.add(e)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'projection_changed',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'renderingtype_changed',
          (() => sc.add(null)).toJS,
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

  Stream<void> get onTilesloaded {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'tilesloaded',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'tilt_changed',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'zoom_changed',
          (() => sc.add(null)).toJS,
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
    void start() => mapsEventListener = event.addListener(
          this,
          'rightclick',
          ((MapMouseEvent e) => sc.add(e)).toJS,
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
}
extension type MapMouseEventOrIconMouseEvent._(JSObject _)
    implements JSObject {}

extension MapMouseEventOrIconMouseEvent$Ext on MapMouseEventOrIconMouseEvent {
  external LatLng? latLng;
}
