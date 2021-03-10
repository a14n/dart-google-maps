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
abstract class Marker extends MVCObject {
  factory Marker([
    MarkerOptions? opts, // ignore: unused_element
  ]) =>
      $js();

  // synthetic getter for getAnimation
  Animation? get animation => _getAnimation();
  @JsName('getAnimation')
  Animation? _getAnimation();

  // synthetic getter for getClickable
  bool? get clickable => _getClickable();
  @JsName('getClickable')
  bool? _getClickable();

  // synthetic getter for getCursor
  String? get cursor => _getCursor();
  @JsName('getCursor')
  String? _getCursor();

  // synthetic getter for getDraggable
  bool? get draggable => _getDraggable();
  @JsName('getDraggable')
  bool? _getDraggable();

  // synthetic getter for getIcon
  Object? /*String?|Icon?|GSymbol?*/ get icon => _getIcon();
  @JsName('getIcon')
  Object? /*String?|Icon?|GSymbol?*/ _getIcon();

  // synthetic getter for getLabel
  MarkerLabel? get label => _getLabel();
  @JsName('getLabel')
  MarkerLabel? _getLabel();

  // synthetic getter for getMap
  Object? /*GMap?|StreetViewPanorama?*/ get map => _getMap();
  @JsName('getMap')
  Object? /*GMap?|StreetViewPanorama?*/ _getMap();

  // synthetic getter for getOpacity
  num? get opacity => _getOpacity();
  @JsName('getOpacity')
  num? _getOpacity();

  // synthetic getter for getPosition
  LatLng? get position => _getPosition();
  @JsName('getPosition')
  LatLng? _getPosition();

  // synthetic getter for getShape
  MarkerShape? get shape => _getShape();
  @JsName('getShape')
  MarkerShape? _getShape();

  // synthetic getter for getTitle
  String? get title => _getTitle();
  @JsName('getTitle')
  String? _getTitle();

  // synthetic getter for getVisible
  bool? get visible => _getVisible();
  @JsName('getVisible')
  bool? _getVisible();

  // synthetic getter for getZIndex
  num? get zIndex => _getZIndex();
  @JsName('getZIndex')
  num? _getZIndex();

  // synthetic setter for setAnimation
  set animation(Animation? animation) => _setAnimation(animation);
  @JsName('setAnimation')
  void _setAnimation(Animation? animation);

  // synthetic setter for setClickable
  set clickable(bool? clickable) => _setClickable(clickable);
  @JsName('setClickable')
  void _setClickable(bool? flag);

  // synthetic setter for setCursor
  set cursor(String? cursor) => _setCursor(cursor);
  @JsName('setCursor')
  void _setCursor(String? cursor);

  // synthetic setter for setDraggable
  set draggable(bool? draggable) => _setDraggable(draggable);
  @JsName('setDraggable')
  void _setDraggable(bool? flag);

  // synthetic setter for setIcon
  set icon(Object? /*String?|Icon?|GSymbol?*/ icon) => _setIcon(icon);
  @JsName('setIcon')
  void _setIcon(Object? /*String?|Icon?|GSymbol?*/ icon);

  // synthetic setter for setLabel
  set label(Object? /*String?|MarkerLabel?*/ label) => _setLabel(label);
  @JsName('setLabel')
  void _setLabel(Object? /*String?|MarkerLabel?*/ label);

  // synthetic setter for setMap
  set map(Object? /*GMap?|StreetViewPanorama?*/ map) => _setMap(map);
  @JsName('setMap')
  void _setMap(Object? /*GMap?|StreetViewPanorama?*/ map);

  // synthetic setter for setOpacity
  set opacity(num? opacity) => _setOpacity(opacity);
  @JsName('setOpacity')
  void _setOpacity(num? opacity);

  // synthetic setter for setOptions
  set options(MarkerOptions? options) => _setOptions(options);
  @JsName('setOptions')
  void _setOptions(MarkerOptions? options);

  // synthetic setter for setPosition
  set position(LatLng? position) => _setPosition(position);
  @JsName('setPosition')
  void _setPosition(LatLng? latlng);

  // synthetic setter for setShape
  set shape(MarkerShape? shape) => _setShape(shape);
  @JsName('setShape')
  void _setShape(MarkerShape? shape);

  // synthetic setter for setTitle
  set title(String? title) => _setTitle(title);
  @JsName('setTitle')
  void _setTitle(String? title);

  // synthetic setter for setVisible
  set visible(bool? visible) => _setVisible(visible);
  @JsName('setVisible')
  void _setVisible(bool? visible);

  // synthetic setter for setZIndex
  set zIndex(num? zIndex) => _setZIndex(zIndex);
  @JsName('setZIndex')
  void _setZIndex(num? zIndex);

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
}
