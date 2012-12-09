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
  static final num MAX_ZINDEX = maps.Marker.MAX_ZINDEX;
  static bool isInstance(js.Proxy jsProxy) => js.instanceof(jsProxy, maps.Marker);

  Marker([MarkerOptions opts]) : super.newInstance(maps.Marker, [opts]);
  Marker.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  // js methods

  Animation get animation => $.getAnimation().map(Animation.find).value;
  bool get clickable => $.getClickable().value;
  String get cursor => $.getCursor().value;
  bool get draggable => $.getDraggable().value;
  bool get flat => $.getFlat().value;
  Object get icon {
    final result = $.getIcon().value;
    if (result == null) {
      return result;
    } else if (result is String) {
      return result;
    } else if (result is js.Proxy) {
      final type = _isSymbolOrIcon(result);
      if (type == "Symbol") {
        return new Symbol.fromJsProxy(result);
      } else if (type == "Icon") {
        return new Icon.fromJsProxy(result);
      }
    }
    throw new Exception("Unsupported result");
  }
  Object get map {
    final result = $.getMap().value;
    if (result == null) {
      return result;
    } else if (GMap.isInstance(result)) {
      return new GMap.fromJsProxy(result);
    } else if (StreetViewPanorama.isInstance(result)) {
      return new StreetViewPanorama.fromJsProxy(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  LatLng get position => $.getPosition().map(LatLng.INSTANCIATOR).value;
  Object get shadow {
    final result = $.getShadow().value;
    if (result == null) {
      return result;
    } else if (result is String) {
      return result;
    } else if (result is js.Proxy) {
      final type = _isSymbolOrIcon(result);
      if (type == "Symbol") {
        return new Symbol.fromJsProxy(result);
      } else if (type == "Icon") {
        return new Icon.fromJsProxy(result);
      }
    }
    throw new Exception("Unsupported result");
  }
  MarkerShape get shape => $.getShape().map(MarkerShape.INSTANCIATOR).value;
  String get title => $.getTitle().value;
  bool get visible => $.getVisible().value;
  num get zIndex => $.getZIndex().value;
  set animation(Animation animation) => $.setAnimation(animation);
  set clickable(bool clickable) => $.setClickable(clickable);
  set cursor(String cursor) => $.setCursor(cursor);
  set draggable(bool draggable) => $.setDraggable(draggable);
  set flat(bool flag) => $.setFlat(flag);
  set icon(Object icon) {
    if (icon == null || icon is String || icon is Icon || icon is Symbol) {
      $.setIcon(icon);
    } else {
      throw new UnsupportedError("Parameter must be of type String, Icon or Symbol");
    }
  }
  set map(Object map) {
    if (map == null || map is GMap || map is StreetViewPanorama) {
      $.setMap(map);
    } else {
      throw new UnsupportedError("Parameter must be of type GMap or StreetViewPanorama");
    }
  }
  set options(MarkerOptions options) => $.setOptions(options);
  set position(LatLng latlng) => $.setPosition(latlng);
  set shadow(Object shadow) {
    if (shadow == null || shadow is String || shadow is Icon || shadow is Symbol) {
      $.setShadow(shadow);
    } else {
      throw new UnsupportedError("Parameter must be of type String, Icon or Symbol");
    }
  }
  set title(String title) => $.setTitle(title);
  set visible(bool visible) => $.setVisible(visible);
  set zIndex(num zIndex) => $.setZIndex(zIndex);

  String _isSymbolOrIcon(js.Proxy jsProxy) {
    try {
      final path = jsProxy.path;
      return "Symbol";
    } on NoSuchMethodError {
      return "Icon";
    }
  }

  // js events

  MarkerEvents get on => new MarkerEvents._(this);
}

class MarkerEvents {
  static final ANIMATION_CHANGED = "animation_changed";
  static final CLICK = "click";
  static final CLICKABLE_CHANGED = "clickable_changed";
  static final CURSOR_CHANGED = "cursor_changed";
  static final DBLCLICK = "dblclick";
  static final DRAG = "drag";
  static final DRAGEND = "dragend";
  static final DRAGGABLE_CHANGED = "draggable_changed";
  static final DRAGSTART = "dragstart";
  static final FLAT_CHANGED = "flat_changed";
  static final ICON_CHANGED = "icon_changed";
  static final MOUSEDOWN = "mousedown";
  static final MOUSEOUT = "mouseout";
  static final MOUSEOVER = "mouseover";
  static final MOUSEUP = "mouseup";
  static final POSITION_CHANGED = "position_changed";
  static final RIGHTCLICK = "rightclick";
  static final SHADOW_CHANGED = "shadow_changed";
  static final SHAPE_CHANGED = "shape_changed";
  static final TITLE_CHANGED = "title_changed";
  static final VISIBLE_CHANGED = "visible_changed";
  static final ZINDEX_CHANGED = "zindex_changed";

  final Marker _marker;

  MarkerEvents._(this._marker);

  NoArgsEventListenerAdder get animationChanged => new NoArgsEventListenerAdder(_marker, ANIMATION_CHANGED);
  MouseEventListenerAdder get click => new MouseEventListenerAdder(_marker, CLICK);
  NoArgsEventListenerAdder get clickableChanged => new NoArgsEventListenerAdder(_marker, CLICKABLE_CHANGED);
  NoArgsEventListenerAdder get cursorChanged => new NoArgsEventListenerAdder(_marker, CURSOR_CHANGED);
  MouseEventListenerAdder get dblclick => new MouseEventListenerAdder(_marker, DBLCLICK);
  MouseEventListenerAdder get drag => new MouseEventListenerAdder(_marker, DRAG);
  MouseEventListenerAdder get dragend => new MouseEventListenerAdder(_marker, DRAGEND);
  NoArgsEventListenerAdder get draggableChanged => new NoArgsEventListenerAdder(_marker, DRAGGABLE_CHANGED);
  MouseEventListenerAdder get dragstart => new MouseEventListenerAdder(_marker, DRAGSTART);
  NoArgsEventListenerAdder get flatChanged => new NoArgsEventListenerAdder(_marker, FLAT_CHANGED);
  NoArgsEventListenerAdder get iconChanged => new NoArgsEventListenerAdder(_marker, ICON_CHANGED);
  MouseEventListenerAdder get mousedown => new MouseEventListenerAdder(_marker, MOUSEDOWN);
  MouseEventListenerAdder get mouseout => new MouseEventListenerAdder(_marker, MOUSEOUT);
  MouseEventListenerAdder get mouseover => new MouseEventListenerAdder(_marker, MOUSEOVER);
  MouseEventListenerAdder get mouseup => new MouseEventListenerAdder(_marker, MOUSEUP);
  NoArgsEventListenerAdder get positionChanged => new NoArgsEventListenerAdder(_marker, POSITION_CHANGED);
  MouseEventListenerAdder get rightclick => new MouseEventListenerAdder(_marker, RIGHTCLICK);
  NoArgsEventListenerAdder get shadowChanged => new NoArgsEventListenerAdder(_marker, SHADOW_CHANGED);
  NoArgsEventListenerAdder get shapeChanged => new NoArgsEventListenerAdder(_marker, SHAPE_CHANGED);
  NoArgsEventListenerAdder get titleChanged => new NoArgsEventListenerAdder(_marker, TITLE_CHANGED);
  NoArgsEventListenerAdder get visibleChanged => new NoArgsEventListenerAdder(_marker, VISIBLE_CHANGED);
  NoArgsEventListenerAdder get zindexChanged => new NoArgsEventListenerAdder(_marker, ZINDEX_CHANGED);
}