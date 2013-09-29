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
  static Marker cast(js.JsObject jsObject) => jsObject == null ? null : new Marker.fromJsObject(jsObject);
  static bool isInstance(js.JsObject proxy) => proxy.instanceof(maps['Marker']);
  set MAX_ZINDEX(num MAX_ZINDEX) => $unsafe.callMethod('setMAX_ZINDEX', [MAX_ZINDEX]);
  num get MAX_ZINDEX => $unsafe.callMethod('getMAX_ZINDEX');
  static String _isSymbolOrIcon(js.JsObject proxy) {
    try {
      final path = proxy['path'];
      return "Symbol";
    }  on NoSuchMethodError {
      return "Icon";
    }
  }

  SubscribeStreamProvider _onAnimationChanged;
  SubscribeStreamProvider<MouseEvent> _onClick;
  SubscribeStreamProvider _onClickableChanged;
  SubscribeStreamProvider _onCursorChanged;
  SubscribeStreamProvider<MouseEvent> _onDblClick;
  SubscribeStreamProvider<MouseEvent> _onDrag;
  SubscribeStreamProvider<MouseEvent> _onDragend;
  SubscribeStreamProvider _onDraggableChanged;
  SubscribeStreamProvider<MouseEvent> _onDragstart;
  SubscribeStreamProvider _onFlatChanged;
  SubscribeStreamProvider _onIconChanged;
  SubscribeStreamProvider<MouseEvent> _onMousedown;
  SubscribeStreamProvider<MouseEvent> _onMouseout;
  SubscribeStreamProvider<MouseEvent> _onMouseover;
  SubscribeStreamProvider<MouseEvent> _onMouseup;
  SubscribeStreamProvider _onPositionChanged;
  SubscribeStreamProvider<MouseEvent> _onRightclick;
  SubscribeStreamProvider _onShadowChanged;
  SubscribeStreamProvider _onShapeChanged;
  SubscribeStreamProvider _onTitleChanged;
  SubscribeStreamProvider _onVisibleChanged;
  SubscribeStreamProvider _onZindexChanged;

  Marker([MarkerOptions opts]) : super(maps['Marker'], [opts]) {
    _initStreams();
  }
  Marker.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onAnimationChanged = event.getStreamProviderFor(this, "animation_changed");
    _onClick = event.getStreamProviderFor(this, "click", MouseEvent.cast);
    _onClickableChanged = event.getStreamProviderFor(this, "clickable_changed");
    _onCursorChanged = event.getStreamProviderFor(this, "cursor_changed");
    _onDblClick = event.getStreamProviderFor(this, "dblclick", MouseEvent.cast);
    _onDrag = event.getStreamProviderFor(this, "drag", MouseEvent.cast);
    _onDragend = event.getStreamProviderFor(this, "dragend", MouseEvent.cast);
    _onDraggableChanged = event.getStreamProviderFor(this, "draggable_changed");
    _onDragstart = event.getStreamProviderFor(this, "dragstart", MouseEvent.cast);
    _onFlatChanged = event.getStreamProviderFor(this, "flat_changed");
    _onIconChanged = event.getStreamProviderFor(this, "icon_changed");
    _onMousedown = event.getStreamProviderFor(this, "mousedown", MouseEvent.cast);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", MouseEvent.cast);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", MouseEvent.cast);
    _onMouseup = event.getStreamProviderFor(this, "mouseup", MouseEvent.cast);
    _onPositionChanged = event.getStreamProviderFor(this, "position_changed");
    _onRightclick = event.getStreamProviderFor(this, "rightclick", MouseEvent.cast);
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

  Animation get animation => Animation.find($unsafe.callMethod('getAnimation'));
  bool get clickable => $unsafe.callMethod('getClickable');
  String get cursor => $unsafe.callMethod('getCursor');
  bool get draggable => $unsafe.callMethod('getDraggable');
  bool get flat => $unsafe.callMethod('getFlat');
  dynamic /*string|Icon|Symbol*/ get icon {
    final result = $unsafe.callMethod('getIcon');
    if (result is String) {
      return result;
    } else if (result is js.JsObject) {
      final type = _isSymbolOrIcon(result);
      if (type == "Symbol") {
        return GSymbol.cast(result);
      } else if (type == "Icon") {
        return Icon.cast(result);
      }
    }
    return result;
  }
  dynamic /*Map|StreetViewPanorama*/ get map {
    final result = $unsafe.callMethod('getMap');
    if (GMap.isInstance(result)) {
      return GMap.cast(result);
    } else if (StreetViewPanorama.isInstance(result)) {
      return StreetViewPanorama.cast(result);
    }
    return result;
  }
  LatLng get position => LatLng.cast($unsafe.callMethod('getPosition'));
  dynamic /*string|Icon|Symbol*/ get shadow {
    final result = $unsafe.callMethod('getShadow');
    if (result is String) {
      return result;
    } else if (result is js.JsObject) {
      final type = _isSymbolOrIcon(result);
      if (type == "Symbol") {
        return GSymbol.cast(result);
      } else if (type == "Icon") {
        return Icon.cast(result);
      }
    }
    return result;
  }
  MarkerShape get shape => MarkerShape.cast($unsafe.callMethod('getShape'));
  String get title => $unsafe.callMethod('getTitle');
  bool get visible => $unsafe.callMethod('getVisible');
  num get zIndex => $unsafe.callMethod('getZIndex');
  set animation(Animation animation) => $unsafe.callMethod('setAnimation', [animation]);
  set clickable(bool clickable) => $unsafe.callMethod('setClickable', [clickable]);
  set cursor(String cursor) => $unsafe.callMethod('setCursor', [cursor]);
  set draggable(bool draggable) => $unsafe.callMethod('setDraggable', [draggable]);
  set flat(bool flag) => $unsafe.callMethod('setFlat', [flag]);
  set icon(dynamic icon) => $unsafe.callMethod('setIcon', [icon]);
  set map(dynamic map) => $unsafe.callMethod('setMap', [map]);
  set options(MarkerOptions options) => $unsafe.callMethod('setOptions', [options]);
  set position(LatLng latlng) => $unsafe.callMethod('setPosition', [latlng]);
  set shadow(dynamic shadow) => $unsafe.callMethod('setShadow', [shadow]);
  set title(String title) => $unsafe.callMethod('setTitle', [title]);
  set visible(bool visible) => $unsafe.callMethod('setVisible', [visible]);
  set zIndex(num zIndex) => $unsafe.callMethod('setZIndex', [zIndex]);
}
