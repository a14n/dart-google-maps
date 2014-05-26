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

@wrapper @forMethods @skipConstructor abstract class Marker extends MVCObject {
  static Marker $wrap(js.JsObject jsObject) => null;
  static bool isInstance(js.JsObject jsObject) => jsObject != null && jsObject.instanceof(maps['Marker']);
  static final num MAX_ZINDEX = maps['Marker']['MAX_ZINDEX'];

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

  @generate Marker([MarkerOptions opts]) { _initStreams(); }
  Marker.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

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

  Animation get animation;
  bool get clickable;
  String get cursor;
  bool get draggable;
  bool get flat;
  @Types(const [String, Icon, GSymbol]) dynamic get icon;
  @Types(const [GMap, StreetViewPanorama]) dynamic get map;
  LatLng get position;
  @Types(const [String, Icon, GSymbol]) dynamic get shadow;
  MarkerShape get shape;
  String get title;
  bool get visible;
  num get zIndex;
  set animation(Animation animation);
  set clickable(bool clickable);
  set cursor(String cursor);
  set draggable(bool draggable);
  set flat(bool flag);
  set icon(@Types(const [GSymbol,Icon,String]) dynamic icon);
  set map(@Types(const [GMap,StreetViewPanorama]) dynamic map);
  set options(MarkerOptions options);
  set position(LatLng latlng);
  set shadow(@Types(const [GSymbol,Icon,String]) dynamic shadow);
  set title(String title);
  set visible(bool visible);
  set zIndex(num zIndex);
}
