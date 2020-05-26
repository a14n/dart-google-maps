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

part of '../google_maps_core.dart';

@JsName('google.maps.Map')
abstract class _GMap extends MVCObject {
  factory _GMap(Element mapDiv, [MapOptions opts]) => $js;
  List<MVCArray<Node>> controls;
  Data data;
  MapTypeRegistry mapTypes;
  MVCArray<MapType> overlayMapTypes;
  void fitBounds(LatLngBounds bounds, [Object /*num|Padding*/ padding]);

  // synthetic getter for getBounds
  LatLngBounds get bounds => _getBounds();
  @JsName('getBounds')
  LatLngBounds _getBounds();

  // synthetic getter for getCenter
  LatLng get center => _getCenter();
  @JsName('getCenter')
  LatLng _getCenter();

  // synthetic getter for getClickableIcons
  bool get clickableIcons => _getClickableIcons();
  @JsName('getClickableIcons')
  bool _getClickableIcons();

  // synthetic getter for getDiv
  Element get div => _getDiv();
  @JsName('getDiv')
  Element _getDiv();

  // synthetic getter for getHeading
  num get heading => _getHeading();
  @JsName('getHeading')
  num _getHeading();

  // synthetic getter for getMapTypeId
  Object /*MapTypeId|String*/ get mapTypeId => _getMapTypeId();
  @JsName('getMapTypeId')
  Object /*MapTypeId|String*/ _getMapTypeId();

  // synthetic getter for getProjection
  Projection get projection => _getProjection();
  @JsName('getProjection')
  Projection _getProjection();

  // synthetic getter for getStreetView
  StreetViewPanorama get streetView => _getStreetView();
  @JsName('getStreetView')
  StreetViewPanorama _getStreetView();

  // synthetic getter for getTilt
  num get tilt => _getTilt();
  @JsName('getTilt')
  num _getTilt();

  // synthetic getter for getZoom
  num get zoom => _getZoom();
  @JsName('getZoom')
  num _getZoom();

  void panBy(num x, num y);
  void panTo(LatLng latLng);
  void panToBounds(LatLngBounds latLngBounds, [Object /*num|Padding*/ padding]);

  // synthetic setter for setCenter
  set center(LatLng center) => _setCenter(center);
  @JsName('setCenter')
  void _setCenter(LatLng latlng);

  // synthetic setter for setClickableIcons
  set clickableIcons(bool clickableIcons) => _setClickableIcons(clickableIcons);
  @JsName('setClickableIcons')
  void _setClickableIcons(bool value);

  // synthetic setter for setHeading
  set heading(num heading) => _setHeading(heading);
  @JsName('setHeading')
  void _setHeading(num heading);

  // synthetic setter for setMapTypeId
  set mapTypeId(Object /*MapTypeId|String*/ mapTypeId) =>
      _setMapTypeId(mapTypeId);
  @JsName('setMapTypeId')
  void _setMapTypeId(Object /*MapTypeId|String*/ mapTypeId);

  // synthetic setter for setOptions
  set options(MapOptions options) => _setOptions(options);
  @JsName('setOptions')
  void _setOptions(MapOptions options);

  // synthetic setter for setStreetView
  set streetView(StreetViewPanorama streetView) => _setStreetView(streetView);
  @JsName('setStreetView')
  void _setStreetView(StreetViewPanorama panorama);

  // synthetic setter for setTilt
  set tilt(num tilt) => _setTilt(tilt);
  @JsName('setTilt')
  void _setTilt(num tilt);

  // synthetic setter for setZoom
  set zoom(num zoom) => _setZoom(zoom);
  @JsName('setZoom')
  void _setZoom(num zoom);

  Stream<void> get onBoundsChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'bounds_changed',
          allowInterop(() => sc.add(null)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'center_changed',
          allowInterop(() => sc.add(null)),
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
    StreamController<IconMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          allowInterop((IconMouseEvent event) => sc.add(event)),
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

  Stream<MouseEvent> get onDblclick {
    StreamController<MouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          allowInterop((MouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onDrag {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'drag',
          allowInterop(() => sc.add(null)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragend',
          allowInterop(() => sc.add(null)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragstart',
          allowInterop(() => sc.add(null)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'heading_changed',
          allowInterop(() => sc.add(null)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'idle',
          allowInterop(() => sc.add(null)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'maptypeid_changed',
          allowInterop(() => sc.add(null)),
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

  Stream<MouseEvent> get onMousemove {
    StreamController<MouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
          allowInterop((MouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MouseEvent> get onMouseout {
    StreamController<MouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          allowInterop((MouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MouseEvent> get onMouseover {
    StreamController<MouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          allowInterop((MouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onProjectionChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'projection_changed',
          allowInterop(() => sc.add(null)),
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

  Stream<MouseEvent> get onRightclick {
    StreamController<MouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          allowInterop((MouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onTilesloaded {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'tilesloaded',
          allowInterop(() => sc.add(null)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'tilt_changed',
          allowInterop(() => sc.add(null)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'zoom_changed',
          allowInterop(() => sc.add(null)),
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
}
