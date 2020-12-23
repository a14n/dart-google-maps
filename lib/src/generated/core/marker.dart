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

@JsName('google.maps.Marker')
abstract class _Marker extends MVCObject {
  factory _Marker([
    MarkerOptions opts, // ignore: unused_element
  ]) =>
      $js;

  // synthetic getter for getAnimation
  Animation get animation => _getAnimation();
  @JsName('getAnimation')
  Animation _getAnimation();

  // synthetic getter for getClickable
  bool get clickable => _getClickable();
  @JsName('getClickable')
  bool _getClickable();

  // synthetic getter for getCursor
  String get cursor => _getCursor();
  @JsName('getCursor')
  String _getCursor();

  // synthetic getter for getDraggable
  bool get draggable => _getDraggable();
  @JsName('getDraggable')
  bool _getDraggable();

  // synthetic getter for getIcon
  Object /*String|Icon|GSymbol*/ get icon => _getIcon();
  @JsName('getIcon')
  Object /*String|Icon|GSymbol*/ _getIcon();

  // synthetic getter for getLabel
  MarkerLabel get label => _getLabel();
  @JsName('getLabel')
  MarkerLabel _getLabel();

  // synthetic getter for getMap
  Object /*GMap|StreetViewPanorama*/ get map => _getMap();
  @JsName('getMap')
  Object /*GMap|StreetViewPanorama*/ _getMap();

  // synthetic getter for getOpacity
  num get opacity => _getOpacity();
  @JsName('getOpacity')
  num _getOpacity();

  // synthetic getter for getPosition
  LatLng get position => _getPosition();
  @JsName('getPosition')
  LatLng _getPosition();

  // synthetic getter for getShape
  MarkerShape get shape => _getShape();
  @JsName('getShape')
  MarkerShape _getShape();

  // synthetic getter for getTitle
  String get title => _getTitle();
  @JsName('getTitle')
  String _getTitle();

  // synthetic getter for getVisible
  bool get visible => _getVisible();
  @JsName('getVisible')
  bool _getVisible();

  // synthetic getter for getZIndex
  num get zIndex => _getZIndex();
  @JsName('getZIndex')
  num _getZIndex();

  // synthetic setter for setAnimation
  set animation(Animation animation) => _setAnimation(animation);
  @JsName('setAnimation')
  void _setAnimation(Animation animation);

  // synthetic setter for setClickable
  set clickable(bool clickable) => _setClickable(clickable);
  @JsName('setClickable')
  void _setClickable(bool flag);

  // synthetic setter for setCursor
  set cursor(String cursor) => _setCursor(cursor);
  @JsName('setCursor')
  void _setCursor(String cursor);

  // synthetic setter for setDraggable
  set draggable(bool draggable) => _setDraggable(draggable);
  @JsName('setDraggable')
  void _setDraggable(bool flag);

  // synthetic setter for setIcon
  set icon(Object /*String|Icon|GSymbol*/ icon) => _setIcon(icon);
  @JsName('setIcon')
  void _setIcon(Object /*String|Icon|GSymbol*/ icon);

  // synthetic setter for setLabel
  set label(Object /*String|MarkerLabel*/ label) => _setLabel(label);
  @JsName('setLabel')
  void _setLabel(Object /*String|MarkerLabel*/ label);

  // synthetic setter for setMap
  set map(Object /*GMap|StreetViewPanorama*/ map) => _setMap(map);
  @JsName('setMap')
  void _setMap(Object /*GMap|StreetViewPanorama*/ map);

  // synthetic setter for setOpacity
  set opacity(num opacity) => _setOpacity(opacity);
  @JsName('setOpacity')
  void _setOpacity(num opacity);

  // synthetic setter for setOptions
  set options(MarkerOptions options) => _setOptions(options);
  @JsName('setOptions')
  void _setOptions(MarkerOptions options);

  // synthetic setter for setPosition
  set position(LatLng position) => _setPosition(position);
  @JsName('setPosition')
  void _setPosition(LatLng latlng);

  // synthetic setter for setShape
  set shape(MarkerShape shape) => _setShape(shape);
  @JsName('setShape')
  void _setShape(MarkerShape shape);

  // synthetic setter for setTitle
  set title(String title) => _setTitle(title);
  @JsName('setTitle')
  void _setTitle(String title);

  // synthetic setter for setVisible
  set visible(bool visible) => _setVisible(visible);
  @JsName('setVisible')
  void _setVisible(bool visible);

  // synthetic setter for setZIndex
  set zIndex(num zIndex) => _setZIndex(zIndex);
  @JsName('setZIndex')
  void _setZIndex(num zIndex);

  Stream<void> get onAnimationChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'animation_changed',
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

  Stream<MapMouseEvent> get onClick {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'clickable_changed',
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

  Stream<MapMouseEvent> get onContextmenu {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'cursor_changed',
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

  Stream<MapMouseEvent> get onDblclick {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'drag',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragend',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'draggable_changed',
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

  Stream<MapMouseEvent> get onDragstart {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragstart',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'flat_changed',
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

  Stream<void> get onIconChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'icon_changed',
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

  Stream<MapMouseEvent> get onMousedown {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'position_changed',
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

  Stream<MapMouseEvent> get onRightclick {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          allowInterop((MapMouseEvent event) => sc.add(event)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'shape_changed',
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

  Stream<void> get onTitleChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'title_changed',
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

  Stream<void> get onVisibleChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'visible_changed',
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

  Stream<void> get onZindexChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'zindex_changed',
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
