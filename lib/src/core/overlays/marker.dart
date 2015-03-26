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

abstract class _Marker extends MVCObject {
  static final num MAX_ZINDEX = getPath('google.maps.Marker')['MAX_ZINDEX'];

  external factory _Marker([MarkerOptions opts]);

  Stream get onAnimationChanged =>
      getStream(this, #onAnimationChanged, "animation_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream get onClickableChanged =>
      getStream(this, #onClickableChanged, "clickable_changed");
  Stream get onCursorChanged =>
      getStream(this, #onCursorChanged, "cursor_changed");
  Stream<MouseEvent> get onDblClick => getStream(
      this, #onDblClick, "dblclick", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDrag => getStream(
      this, #onDrag, "drag", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragend => getStream(
      this, #onDragend, "dragend", (JsObject o) => new MouseEvent.created(o));
  Stream get onDraggableChanged =>
      getStream(this, #onDraggableChanged, "draggable_changed");
  Stream<MouseEvent> get onDragstart => getStream(this, #onDragstart,
      "dragstart", (JsObject o) => new MouseEvent.created(o));
  Stream get onFlatChanged => getStream(this, #onFlatChanged, "flat_changed");
  Stream get onIconChanged => getStream(this, #onIconChanged, "icon_changed");
  Stream<MouseEvent> get onMousedown => getStream(this, #onMousedown,
      "mousedown", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout => getStream(
      this, #onMouseout, "mouseout", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup => getStream(
      this, #onMouseup, "mouseup", (JsObject o) => new MouseEvent.created(o));
  Stream get onPositionChanged =>
      getStream(this, #onPositionChanged, "position_changed");
  Stream<MouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new MouseEvent.created(o));
  Stream get onShadowChanged =>
      getStream(this, #onShadowChanged, "shadow_changed");
  Stream get onShapeChanged =>
      getStream(this, #onShapeChanged, "shape_changed");
  Stream get onTitleChanged =>
      getStream(this, #onTitleChanged, "title_changed");
  Stream get onVisibleChanged =>
      getStream(this, #onVisibleChanged, "visible_changed");
  Stream get onZindexChanged =>
      getStream(this, #onZindexChanged, "zindex_changed");

  Animation get animation => animationCodec.decode(_getAnimation());
  int _getAnimation();
  bool get clickable => _getClickable();
  bool _getClickable();
  String get cursor => _getCursor();
  String _getCursor();
  bool get draggable => _getDraggable();
  bool _getDraggable();
  /*String|Icon|GSymbol*/ get icon {
    final value = _getIcon();
    if (value == null) return null;
    if (value is String) return value;
    if (value is JsObject && value.instanceof(getPath('google.maps.Icon'))) {
      return new Icon.created(value);
    }
    if (value is JsObject && value.instanceof(getPath('google.maps.Symbol'))) {
      return new GSymbol.created(value);
    }
    throw 'bad type';
  }
  _getIcon();
  /*GMap|StreetViewPanorama*/ get map {
    final value = _getMap();
    if (value == null) return null;
    if (value is JsObject && value.instanceof(getPath('google.maps.Map'))) {
      return new GMap.created(value);
    }
    if (value is JsObject &&
        value.instanceof(getPath('google.maps.StreetViewPanorama'))) {
      return new StreetViewPanorama.created(value);
    }
    throw 'bad type';
  }
  _getMap();
  LatLng get position => _getPosition();
  LatLng _getPosition();
  /*String|Icon|GSymbol*/ get shadow {
    final value = _getShadow();
    if (value == null) return null;
    if (value is String) return value;
    if (value is JsObject && value.instanceof(getPath('google.maps.Icon'))) {
      return new Icon.created(value);
    }
    if (value is JsObject && value.instanceof(getPath('google.maps.Symbol'))) {
      return new GSymbol.created(value);
    }
    throw 'bad type';
  }
  _getShadow();
  MarkerShape get shape => _getShape();
  MarkerShape _getShape();
  String get title => _getTitle();
  String _getTitle();
  bool get visible => _getVisible();
  bool _getVisible();
  num get zIndex => _getZIndex();
  num _getZIndex();
  void set animation(Animation animation) => _setAnimation(animationCodec.encode(animation));
  void _setAnimation(int animation);
  void set clickable(bool clickable) => _setClickable(clickable);
  void _setClickable(bool clickable);
  void set cursor(String cursor) => _setCursor(cursor);
  void _setCursor(String cursor);
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable);
  void set icon(/*String|Icon|GSymbol*/ icon) => _setIcon(toJs(icon));
  void _setIcon(icon);
  void set map(/*GMap|StreetViewPanorama*/ map) => _setMap(toJs(map));
  void _setMap(map);
  void set options(MarkerOptions options) => _setOptions(options);
  void _setOptions(MarkerOptions options);
  void set position(LatLng latlng) => _setPosition(latlng);
  void _setPosition(LatLng latlng);
  void set shadow(/*String|Icon|GSymbol*/ shadow) => _setShadow(toJs(shadow));
  void _setShadow(shadow);
  void set title(String title) => _setTitle(title);
  void _setTitle(String title);
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible);
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex);
}
