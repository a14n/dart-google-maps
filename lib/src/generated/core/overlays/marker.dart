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

class Marker extends MVCObject {
  static Marker $wrap(js.JsObject jsObject) => jsObject == null ? null : new Marker.fromJsObject(jsObject);
  static bool isInstance(js.JsObject jsObject) => jsObject != null && jsObject.instanceof(maps['Marker']);
  set MAX_ZINDEX(num MAX_ZINDEX) => $unsafe.callMethod('setMAX_ZINDEX', [MAX_ZINDEX]);
  num get MAX_ZINDEX => $unsafe.callMethod('getMAX_ZINDEX');
  jsw.SubscribeStreamProvider _onAnimationChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onClick;
  jsw.SubscribeStreamProvider _onClickableChanged;
  jsw.SubscribeStreamProvider _onCursorChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onDblClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onDrag;
  jsw.SubscribeStreamProvider<MouseEvent> _onDragend;
  jsw.SubscribeStreamProvider _onDraggableChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onDragstart;
  jsw.SubscribeStreamProvider _onFlatChanged;
  jsw.SubscribeStreamProvider _onIconChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onMousedown;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseout;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseover;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseup;
  jsw.SubscribeStreamProvider _onPositionChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onRightclick;
  jsw.SubscribeStreamProvider _onShadowChanged;
  jsw.SubscribeStreamProvider _onShapeChanged;
  jsw.SubscribeStreamProvider _onTitleChanged;
  jsw.SubscribeStreamProvider _onVisibleChanged;
  jsw.SubscribeStreamProvider _onZindexChanged;

  Marker([MarkerOptions opts])
      : super(maps['Marker'], [opts == null ? null : opts.$unsafe]) {
    _initStreams();
  }
  Marker.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onAnimationChanged = event.getStreamProviderFor(this, "animation_changed");
    _onClick = event.getStreamProviderFor(this, "click", MouseEvent.$wrap);
    _onClickableChanged = event.getStreamProviderFor(this, "clickable_changed");
    _onCursorChanged = event.getStreamProviderFor(this, "cursor_changed");
    _onDblClick = event.getStreamProviderFor(this, "dblclick", MouseEvent.$wrap);
    _onDrag = event.getStreamProviderFor(this, "drag", MouseEvent.$wrap);
    _onDragend = event.getStreamProviderFor(this, "dragend", MouseEvent.$wrap);
    _onDraggableChanged = event.getStreamProviderFor(this, "draggable_changed");
    _onDragstart = event.getStreamProviderFor(this, "dragstart", MouseEvent.$wrap);
    _onFlatChanged = event.getStreamProviderFor(this, "flat_changed");
    _onIconChanged = event.getStreamProviderFor(this, "icon_changed");
    _onMousedown = event.getStreamProviderFor(this, "mousedown", MouseEvent.$wrap);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", MouseEvent.$wrap);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", MouseEvent.$wrap);
    _onMouseup = event.getStreamProviderFor(this, "mouseup", MouseEvent.$wrap);
    _onPositionChanged = event.getStreamProviderFor(this, "position_changed");
    _onRightclick = event.getStreamProviderFor(this, "rightclick", MouseEvent.$wrap);
    _onShadowChanged = event.getStreamProviderFor(this, "shadow_changed");
    _onShapeChanged = event.getStreamProviderFor(this, "shape_changed");
    _onTitleChanged = event.getStreamProviderFor(this, "title_changed");
    _onVisibleChanged = event.getStreamProviderFor(this, "visible_changed");
    _onZindexChanged = event.getStreamProviderFor(this, "zindex_changed");
  }

  Stream get onAnimationChanged => _onAnimationChanged.stream;
  Stream<MouseEvent> get onClick => _onClick.stream;
  Stream get onClickableChanged => _onClickableChanged.stream;
  Stream get onCursorChanged => _onCursorChanged.stream;
  Stream<MouseEvent> get onDblClick => _onDblClick.stream;
  Stream<MouseEvent> get onDrag => _onDrag.stream;
  Stream<MouseEvent> get onDragend => _onDragend.stream;
  Stream get onDraggableChanged => _onDraggableChanged.stream;
  Stream<MouseEvent> get onDragstart => _onDragstart.stream;
  Stream get onFlatChanged => _onFlatChanged.stream;
  Stream get onIconChanged => _onIconChanged.stream;
  Stream<MouseEvent> get onMousedown => _onMousedown.stream;
  Stream<MouseEvent> get onMouseout => _onMouseout.stream;
  Stream<MouseEvent> get onMouseover => _onMouseover.stream;
  Stream<MouseEvent> get onMouseup => _onMouseup.stream;
  Stream get onPositionChanged => _onPositionChanged.stream;
  Stream<MouseEvent> get onRightclick => _onRightclick.stream;
  Stream get onShadowChanged => _onShadowChanged.stream;
  Stream get onShapeChanged => _onShapeChanged.stream;
  Stream get onTitleChanged => _onTitleChanged.stream;
  Stream get onVisibleChanged => _onVisibleChanged.stream;
  Stream get onZindexChanged => _onZindexChanged.stream;

  Animation get animation => Animation.$wrap($unsafe.callMethod('getAnimation'));
  bool get clickable => $unsafe.callMethod('getClickable');
  String get cursor => $unsafe.callMethod('getCursor');
  bool get draggable => $unsafe.callMethod('getDraggable');
  bool get flat => $unsafe.callMethod('getFlat');
  dynamic get icon => ((v3) => v3 is String ? v3 : ((v2) => Icon.isInstance(v2) ? Icon.$wrap(v2) : ((v1) => GSymbol.isInstance(v1) ? GSymbol.$wrap(v1) : ((v0) => v0)(v1))(v2))(v3))($unsafe.callMethod('getIcon'));
  dynamic get map => ((v2) => GMap.isInstance(v2) ? GMap.$wrap(v2) : ((v1) => StreetViewPanorama.isInstance(v1) ? StreetViewPanorama.$wrap(v1) : ((v0) => v0)(v1))(v2))($unsafe.callMethod('getMap'));
  LatLng get position => LatLng.$wrap($unsafe.callMethod('getPosition'));
  dynamic get shadow => ((v3) => v3 is String ? v3 : ((v2) => Icon.isInstance(v2) ? Icon.$wrap(v2) : ((v1) => GSymbol.isInstance(v1) ? GSymbol.$wrap(v1) : ((v0) => v0)(v1))(v2))(v3))($unsafe.callMethod('getShadow'));
  MarkerShape get shape => MarkerShape.$wrap($unsafe.callMethod('getShape'));
  String get title => $unsafe.callMethod('getTitle');
  bool get visible => $unsafe.callMethod('getVisible');
  num get zIndex => $unsafe.callMethod('getZIndex');
  set animation(Animation animation) => $unsafe.callMethod('setAnimation', [animation == null ? null : animation.$unsafe]);
  set clickable(bool clickable) => $unsafe.callMethod('setClickable', [clickable]);
  set cursor(String cursor) => $unsafe.callMethod('setCursor', [cursor]);
  set draggable(bool draggable) => $unsafe.callMethod('setDraggable', [draggable]);
  set flat(bool flag) => $unsafe.callMethod('setFlat', [flag]);
  set icon(dynamic icon) => $unsafe.callMethod('setIcon', [icon is GSymbol ? icon.$unsafe : icon is Icon ? icon.$unsafe : icon is String ? icon : icon == null ? null : throw "bad type"]);
  set map(dynamic map) => $unsafe.callMethod('setMap', [map is GMap ? map.$unsafe : map is StreetViewPanorama ? map.$unsafe : map == null ? null : throw "bad type"]);
  set options(MarkerOptions options) => $unsafe.callMethod('setOptions', [options == null ? null : options.$unsafe]);
  set position(LatLng latlng) => $unsafe.callMethod('setPosition', [latlng == null ? null : latlng.$unsafe]);
  set shadow(dynamic shadow) => $unsafe.callMethod('setShadow', [shadow is GSymbol ? shadow.$unsafe : shadow is Icon ? shadow.$unsafe : shadow is String ? shadow : shadow == null ? null : throw "bad type"]);
  set title(String title) => $unsafe.callMethod('setTitle', [title]);
  set visible(bool visible) => $unsafe.callMethod('setVisible', [visible]);
  set zIndex(num zIndex) => $unsafe.callMethod('setZIndex', [zIndex]);
}
