#library('gmaps');

#import('dart:html', prefix:'html');
#import('jsni.dart', prefix:'js');

// start GMaps wrapping

class GMap extends MVCObject {
  static const String _TYPE_NAME = "google.maps.Map";

  GMap(html.Node mapDiv, [MapOptions opts]) : super.newInstance(_TYPE_NAME, [mapDiv, opts]);
  GMap.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void fitBounds(LatLngBounds bounds) { js.callFunction(this, "fitBounds", [bounds]); }
  LatLngBounds getBounds() => new LatLngBounds.fromJsRef(js.callFunction(this, "getBounds"));
  LatLng getCenter() => new LatLng.fromJsRef(js.callFunction(this, "getCenter"));
  html.Node getDiv() => js.callFunction(this, "getDiv");
  num getHeading() => js.callFunction(this, "getHeading");
  MapTypeId getMapTypeId() => MapTypeId.find(js.callFunction(this, "getMapTypeId"));
  Projection getProjection() => new Projection.fromJsRef(js.callFunction(this, "getProjection"));
  StreetViewPanorama getStreetView() => new StreetViewPanorama.fromJsRef(js.callFunction(this, "getStreetView"));
  num getTilt() => js.callFunction(this, "getTilt");
  num getZoom() => js.callFunction(this, "getZoom");
  void panBy(num x, num y) { js.callFunction(this, "panBy", [x, y]); }
  void panTo(LatLng latLng) { js.callFunction(this, "panTo", [latLng]); }
  void panToBounds(LatLngBounds latLngBounds) { js.callFunction(this, "panToBounds", [latLngBounds]); }
  void setCenter(LatLng latLng) { js.callFunction(this, "setCenter", [latLng]); }
  void setHeading(num heading) { js.callFunction(this, "setHeading", [heading]); }
  void setMapTypeId(MapTypeId mapTypeId) { js.callFunction(this, "setMapTypeId", [mapTypeId]); }
  void setOptions(MapOptions options) { js.callFunction(this, "setOptions", [options]); }
  void setStreetView(StreetViewPanorama panorama) { js.callFunction(this, "setStreetView", [panorama]); }
  void setTilt(num tilt) { js.callFunction(this, "setTilt", [tilt]); }
  void setZoom(num zoom) { js.callFunction(this, "setZoom", [zoom]); }

  List<MVCArray<html.Node>> get controls()  {
                              List<js.JsRef> resultsRefs = js.getProperty(this, "controls");
                              return resultsRefs.map((e) => new MVCArray.fromJsRef(e));
                            }
                            set controls(List<MVCArray<html.Node>> controls) => js.setProperty(this, "controls", controls);
  MapTypeRegistry get mapTypes() => new MapTypeRegistry.fromJsRef(js.getProperty(this, "mapTypes"));
                  set mapTypes(MapTypeRegistry mapTypes) => js.setProperty(this, "mapTypes", mapTypes);
  MVCArray<MapType> get overlayMapTypes() => new MVCArray.fromJsRef(js.getProperty(this, "overlayMapTypes"), (js.JsRef jsRef) => new MapType.fromJsRef(jsRef));
                    set overlayMapTypes(MVCArray<MapType> overlayMapTypes) => js.setProperty(this, "overlayMapTypes", overlayMapTypes);
}

class MapOptions extends js.JsAnonymousObject {
  set backgroundColor(String backgroundColor) => js.setProperty(this, "backgroundColor", backgroundColor);
  set center(LatLng center) => js.setProperty(this, "center", center);
  set disableDefaultUI(bool disableDefaultUI) => js.setProperty(this, "disableDefaultUI", disableDefaultUI);
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => js.setProperty(this, "disableDoubleClickZoom", disableDoubleClickZoom);
  set draggable(bool draggable) => js.setProperty(this, "draggable", draggable);
  set draggableCursor(String draggableCursor) => js.setProperty(this, "draggableCursor", draggableCursor);
  set draggingCursor(String draggingCursor) => js.setProperty(this, "draggingCursor", draggingCursor);
  set heading(num heading) => js.setProperty(this, "heading", heading);
  set keyboardShortcuts(bool keyboardShortcuts) => js.setProperty(this, "keyboardShortcuts", keyboardShortcuts);
  set mapMaker(bool mapMaker) => js.setProperty(this, "mapMaker", mapMaker);
  set mapTypeControl(bool mapTypeControl) => js.setProperty(this, "mapTypeControl", mapTypeControl);
  set mapTypeControlOptions(MapTypeControlOptions mapTypeControlOptions) => js.setProperty(this, "mapTypeControlOptions", mapTypeControlOptions);
  set mapTypeId(MapTypeId mapTypeId) => js.setProperty(this, "mapTypeId", mapTypeId);
  set maxZoom(num maxZoom) => js.setProperty(this, "maxZoom", maxZoom);
  set minZoom(num minZoom) => js.setProperty(this, "minZoom", minZoom);
  set noClear(bool noClear) => js.setProperty(this, "noClear", noClear);
  set overviewMapControl(bool overviewMapControl) => js.setProperty(this, "overviewMapControl", overviewMapControl);
  set overviewMapControlOptions(OverviewMapControlOptions overviewMapControlOptions) => js.setProperty(this, "overviewMapControlOptions", overviewMapControlOptions);
  set panControl(bool panControl) => js.setProperty(this, "panControl", panControl);
  set panControlOptions(PanControlOptions panControlOptions) => js.setProperty(this, "panControlOptions", panControlOptions);
  set rotateControl(bool rotateControl) => js.setProperty(this, "rotateControl", rotateControl);
  set rotateControlOptions(RotateControlOptions rotateControlOptions) => js.setProperty(this, "rotateControlOptions", rotateControlOptions);
  set scaleControl(bool scaleControl) => js.setProperty(this, "scaleControl", scaleControl);
  set scaleControlOptions(ScaleControlOptions scaleControlOptions) => js.setProperty(this, "scaleControlOptions", scaleControlOptions);
  set scrollwheel(bool scrollwheel) => js.setProperty(this, "scrollwheel", scrollwheel);
  set streetView(StreetViewPanorama streetView) => js.setProperty(this, "streetView", streetView);
  set streetViewControl(bool streetViewControl) => js.setProperty(this, "streetViewControl", streetViewControl);
  set streetViewControlOptions(StreetViewControlOptions streetViewControlOptions) => js.setProperty(this, "streetViewControlOptions", streetViewControlOptions);
  set styles(List<MapTypeStyle> styles) => js.setProperty(this, "styles", styles);
  set tilt(num tilt) => js.setProperty(this, "tilt", tilt);
  set zoom(num zoom) => js.setProperty(this, "zoom", zoom);
  set zoomControl(bool zoomControl) => js.setProperty(this, "zoomControl", zoomControl);
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => js.setProperty(this, "zoomControlOptions", zoomControlOptions);
}

class MapTypeId extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.MapTypeId";

  static const MapTypeId HYBRID = const MapTypeId._("${_TYPE_NAME}.HYBRID");
  static const MapTypeId ROADMAP = const MapTypeId._("${_TYPE_NAME}.ROADMAP");
  static const MapTypeId SATELLITE = const MapTypeId._("${_TYPE_NAME}.SATELLITE");
  static const MapTypeId TERRAIN = const MapTypeId._("${_TYPE_NAME}.TERRAIN");

  static MapTypeId find(Object o) { return js.JsConst.findIn(o, [HYBRID, ROADMAP, SATELLITE, TERRAIN]); }

  const MapTypeId._(String jsName) : super.fromJsName(jsName);
}

class MapTypeControlOptions extends js.JsAnonymousObject {
  set mapTypeIds(List<MapTypeId> mapTypeIds) => js.setProperty(this, "mapTypeIds", mapTypeIds);
  set position(ControlPosition position) => js.setProperty(this, "position", position);
  set style(MapTypeControlStyle style) => js.setProperty(this, "style", style);
}

class MapTypeControlStyle extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.MapTypeControlStyle";

  static const MapTypeControlStyle DEFAULT = const MapTypeControlStyle._("${_TYPE_NAME}.DEFAULT");
  static const MapTypeControlStyle DROPDOWN_MENU = const MapTypeControlStyle._("${_TYPE_NAME}.DROPDOWN_MENU");
  static const MapTypeControlStyle HORIZONTAL_BAR = const MapTypeControlStyle._("${_TYPE_NAME}.HORIZONTAL_BAR");

  static MapTypeControlStyle find(Object o) { return js.JsConst.findIn(o, [DEFAULT, DROPDOWN_MENU, HORIZONTAL_BAR]); }

  const MapTypeControlStyle._(String jsName) : super.fromJsName(jsName);
}

class OverviewMapControlOptions extends js.JsAnonymousObject {
  set opened(bool opened) => js.setProperty(this, "opened", opened);
}

class PanControlOptions extends js.JsAnonymousObject {
  set position(ControlPosition position) => js.setProperty(this, "position", position);
}

class RotateControlOptions extends js.JsAnonymousObject {
  set position(ControlPosition position) => js.setProperty(this, "position", position);
}

class ScaleControlOptions extends js.JsAnonymousObject {
  set position(ControlPosition position) => js.setProperty(this, "position", position);
  set style(ScaleControlStyle style) => js.setProperty(this, "style", style);
}

class ScaleControlStyle extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.ScaleControlStyle";

  static const ScaleControlStyle DEFAULT = const ScaleControlStyle._("${_TYPE_NAME}.DEFAULT");

  static ScaleControlStyle find(Object o) { return js.JsConst.findIn(o, [DEFAULT]); }

  const ScaleControlStyle._(String jsName) : super.fromJsName(jsName);
}

class StreetViewControlOptions extends js.JsAnonymousObject {
  set position(ControlPosition position) => js.setProperty(this, "position", position);
}

class ZoomControlOptions extends js.JsAnonymousObject {
  set position(ControlPosition position) => js.setProperty(this, "position", position);
  set style(ZoomControlStyle style) => js.setProperty(this, "style", style);
}

class ZoomControlStyle extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.ZoomControlStyle";

  static const ZoomControlStyle DEFAULT = const ZoomControlStyle._("${_TYPE_NAME}.DEFAULT");
  static const ZoomControlStyle LARGE = const ZoomControlStyle._("${_TYPE_NAME}.LARGE");
  static const ZoomControlStyle SMALL = const ZoomControlStyle._("${_TYPE_NAME}.SMALL");

  static ZoomControlStyle find(Object o) { return js.JsConst.findIn(o, [DEFAULT, LARGE, SMALL]); }

  const ZoomControlStyle._(String jsName) : super.fromJsName(jsName);
}

class ControlPosition extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.ControlPosition";

  static const ControlPosition BOTTOM_CENTER = const ControlPosition._("${_TYPE_NAME}.BOTTOM_CENTER");
  static const ControlPosition BOTTOM_LEFT = const ControlPosition._("${_TYPE_NAME}.BOTTOM_LEFT");
  static const ControlPosition BOTTOM_RIGHT = const ControlPosition._("${_TYPE_NAME}.BOTTOM_RIGHT");
  static const ControlPosition LEFT_BOTTOM = const ControlPosition._("${_TYPE_NAME}.LEFT_BOTTOM");
  static const ControlPosition LEFT_CENTER = const ControlPosition._("${_TYPE_NAME}.LEFT_CENTER");
  static const ControlPosition LEFT_TOP = const ControlPosition._("${_TYPE_NAME}.LEFT_TOP");
  static const ControlPosition RIGHT_BOTTOM = const ControlPosition._("${_TYPE_NAME}.RIGHT_BOTTOM");
  static const ControlPosition RIGHT_CENTER = const ControlPosition._("${_TYPE_NAME}.RIGHT_CENTER");
  static const ControlPosition RIGHT_TOP = const ControlPosition._("${_TYPE_NAME}.RIGHT_TOP");
  static const ControlPosition TOP_CENTER = const ControlPosition._("${_TYPE_NAME}.TOP_CENTER");
  static const ControlPosition TOP_LEFT = const ControlPosition._("${_TYPE_NAME}.TOP_LEFT");
  static const ControlPosition TOP_RIGHT = const ControlPosition._("${_TYPE_NAME}.TOP_RIGHT");

  static ControlPosition find(Object o) { return js.JsConst.findIn(o, [BOTTOM_CENTER, BOTTOM_LEFT, BOTTOM_RIGHT, LEFT_BOTTOM, LEFT_CENTER, LEFT_TOP, RIGHT_BOTTOM, RIGHT_CENTER, RIGHT_TOP, TOP_CENTER, TOP_LEFT, TOP_RIGHT]); }

  const ControlPosition._(String jsName) : super.fromJsName(jsName);
}

class Marker extends MVCObject {
  static const String _TYPE_NAME = "google.maps.Marker";

  // TODO
  // static const num MAX_ZINDEX = js.callFunction(null, "${_TYPE_NAME}.MAX_ZINDEX");

  Marker([MarkerOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  
  Animation getAnimation() => Animation.find(js.callFunction(this, "getAnimation"));
  bool getClickable() => js.callFunction(this, "getClickable");
  String getCursor() => js.callFunction(this, "getCursor");
  bool getDraggable() => js.callFunction(this, "getDraggable");
  bool getFlat() => js.callFunction(this, "getFlat");
  Object getIcon() {
    final result = js.callFunction(this, "getIcon");
    if (result is String) {
      return result;
    } else if (result is js.JsRef) {
      return new MarkerImage.fromJsRef(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  Object getMap() {
    final result = js.callFunction(this, "getMap");
    if (js.isInstanceOf(result ,GMap._TYPE_NAME)) {
      return new GMap.fromJsRef(result);
    } else if (js.isInstanceOf(result ,StreetViewPanorama._TYPE_NAME)) {
      return new StreetViewPanorama.fromJsRef(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  LatLng getPosition() => new LatLng.fromJsRef(js.callFunction(this, "getPosition"));
  Object getShadow() {
    final result = js.callFunction(this, "getShadow");
    if (result is String) {
      return result;
    } else if (result is js.JsRef) {
      return new MarkerImage.fromJsRef(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  MarkerShape getShape() => new MarkerShape.fromJsRef(js.callFunction(this, "getShape"));
  String getTitle() => js.callFunction(this, "getTitle");
  bool getVisible() => js.callFunction(this, "getVisible");
  num getZIndex() => js.callFunction(this, "getZIndex");
  void setAnimation(Animation animation) { js.callFunction(this, "setAnimation", [animation]); }
  void setClickable(bool flag) { js.callFunction(this, "setClickable", [flag]); }
  void setCursor(String cursor) { js.callFunction(this, "setCursor", [cursor]); }
  void setDraggable(bool flag) { js.callFunction(this, "setDraggable", [flag]); }
  void setFlat(bool flag) { js.callFunction(this, "setFlat", [flag]); }
  void setIcon(Object icon) {
    if (icon is String || icon is MarkerImage) {
      js.callFunction(this, "setIcon", [icon]);
    } else {
      throw new IllegalArgumentException(icon);
    }
  }
  void setMap(Object map) { 
    if (map is GMap || map is StreetViewPanorama) {
      js.callFunction(this, "setMap", [map]);
    } else {
      throw new IllegalArgumentException(map);
    }
  }
  void setOptions(MarkerOptions options) { js.callFunction(this, "setOptions", [options]); }
  void setPosition(LatLng latlng) { js.callFunction(this, "setPosition", [latlng]); }
  void setShadow(Object shadow) { 
    if (shadow is String || shadow is MarkerImage) {
      js.callFunction(this, "setShadow", [shadow]);
    } else {
      throw new IllegalArgumentException(shadow);
    }
  }
  void setTitle(String title) { js.callFunction(this, "setTitle", [title]); }
  void setVisible(bool visible) { js.callFunction(this, "setVisible", [visible]); }
  void setZIndex(num zIndex) { js.callFunction(this, "setZIndex", [zIndex]); }
}

class MarkerOptions extends js.JsAnonymousObject {
  set animation(Animation animation) => js.setProperty(this, "animation", animation);
  set clickable(bool clickable) => js.setProperty(this, "clickable", clickable);
  set cursor(String cursor) => js.setProperty(this, "cursor", cursor);
  set draggable(bool draggable) => js.setProperty(this, "draggable", draggable);
  set flat(bool flat) => js.setProperty(this, "flat", flat);
  set icon(Object icon) {
    if (icon is String || icon is MarkerImage || icon is Symbol) {
      js.setProperty(this, "icon", icon);
    } else {
      throw new IllegalArgumentException(icon);
    }
  }
  set map(Object map) {
    if (map is GMap || map is StreetViewPanorama) {
      js.setProperty(this, "map", map);
    } else {
      throw new IllegalArgumentException(map);
    }
  }
  set optimized(bool optimized) => js.setProperty(this, "optimized", optimized);
  set position(LatLng position) => js.setProperty(this, "position", position);
  set raiseOnDrag(bool raiseOnDrag) => js.setProperty(this, "raiseOnDrag", raiseOnDrag);
  set shadow(Object shadow) {
    if (shadow is String || shadow is MarkerImage || shadow is Symbol) {
      js.setProperty(this, "shadow", shadow);
    } else {
      throw new IllegalArgumentException(shadow);
    }
  }
  set shape(MarkerShape shape) => js.setProperty(this, "shape", shape);
  set title(String title) => js.setProperty(this, "title", title);
  set visible(bool visible) => js.setProperty(this, "visible", visible);
  set zIndex(num zIndex) => js.setProperty(this, "zIndex", zIndex);
}

class MarkerImage extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.MarkerImage";

  MarkerImage(String url, [Size size, Point origin, Point anchor, Size scaledSize]) : super.newInstance(_TYPE_NAME, [url, size, origin, anchor, scaledSize]);
  MarkerImage.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Point get anchor() => new Point.fromJsRef(js.getProperty(this, "anchor"));
        set anchor(Point anchor) => js.setProperty(this, "anchor", anchor);
  Point get origin() => new Point.fromJsRef(js.getProperty(this, "origin"));
        set origin(Point origin) => js.setProperty(this, "origin", origin);
  Size get scaledSize() => new Size.fromJsRef(js.getProperty(this, "scaledSize"));
       set scaledSize(Size scaledSize) => js.setProperty(this, "scaledSize", scaledSize);
  Size get size() => new Size.fromJsRef(js.getProperty(this, "size"));
       set size(Size size) => js.setProperty(this, "size", size);
  String get url() => js.getProperty(this, "url");
         set url(String url) => js.setProperty(this, "url", url);
}

class MarkerShape extends js.JsAnonymousObject {
  MarkerShape() : super();
  MarkerShape.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<num> get coords() => js.getProperty(this, "coords");
            set coords(List<num> coords) => js.setProperty(this, "coords", coords);
  String get type() => js.getProperty(this, "type");
         set type(String type) => js.setProperty(this, "type", type);
}

class Symbol extends js.JsAnonymousObject {
  Point get anchor() => new Point.fromJsRef(js.getProperty(this, "anchor"));
        set anchor(Point anchor) => js.setProperty(this, "anchor", anchor);
  String get fillColor() => js.getProperty(this, "fillColor");
         set fillColor(String fillColor) => js.setProperty(this, "fillColor", fillColor);
  num get fillOpacity() => js.getProperty(this, "fillOpacity");
      set fillOpacity(num fillOpacity) => js.setProperty(this, "fillOpacity", fillOpacity);
  Object get path() {
           final result = js.getProperty(this, "path");
           if (result is String) {
             return result;
           } else if (result is js.JsRef) {
             return SymbolPath.find(result);
           } else {
             throw new Exception("Unsupported result");
           }
         }
         set path(Object path) {
           if (path is String || path is SymbolPath) {
             js.setProperty(this, "path", path);
           } else {
             throw new IllegalArgumentException(path);
           }
         }
  num get rotation() => js.getProperty(this, "rotation");
      set rotation(num rotation) => js.setProperty(this, "rotation", rotation);
  num get scale() => js.getProperty(this, "scale");
      set scale(num scale) => js.setProperty(this, "scale", scale);
  String get strokeColor() => js.getProperty(this, "strokeColor");
         set strokeColor(String strokeColor) => js.setProperty(this, "strokeColor", strokeColor);
  num get strokeOpacity() => js.getProperty(this, "strokeOpacity");
      set strokeOpacity(num strokeOpacity) => js.setProperty(this, "strokeOpacity", strokeOpacity);
  num get strokeWeight() => js.getProperty(this, "strokeWeight");
      set strokeWeight(num rotation) => js.setProperty(this, "strokeWeight", strokeWeight);
}

class SymbolPath extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.SymbolPath";

  static const SymbolPath BACKWARD_CLOSED_ARROW = const SymbolPath._("${_TYPE_NAME}.BACKWARD_CLOSED_ARROW");
  static const SymbolPath BACKWARD_OPEN_ARROW = const SymbolPath._("${_TYPE_NAME}.BACKWARD_OPEN_ARROW");
  static const SymbolPath CIRCLE = const SymbolPath._("${_TYPE_NAME}.CIRCLE");
  static const SymbolPath FORWARD_CLOSED_ARROW = const SymbolPath._("${_TYPE_NAME}.FORWARD_CLOSED_ARROW");
  static const SymbolPath FORWARD_OPEN_ARROW = const SymbolPath._("${_TYPE_NAME}.FORWARD_OPEN_ARROW");

  static SymbolPath find(Object o) { return js.JsConst.findIn(o, [BACKWARD_CLOSED_ARROW, BACKWARD_OPEN_ARROW, CIRCLE, FORWARD_CLOSED_ARROW, FORWARD_OPEN_ARROW]); }

  const SymbolPath._(String jsName) : super.fromJsName(jsName);
}

class Animation extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.Animation";

  static const Animation BOUNCE = const Animation._("${_TYPE_NAME}.BOUNCE");
  static const Animation DROP = const Animation._("${_TYPE_NAME}.DROP");

  static Animation find(Object o) { return js.JsConst.findIn(o, [BOUNCE, DROP]); }

  const Animation._(String jsName) : super.fromJsName(jsName);
}

class InfoWindow extends MVCObject {
  static const String _TYPE_NAME = "google.maps.InfoWindow";

  InfoWindow([InfoWindowOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  InfoWindow.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void close() { js.callFunction(this, "close"); }
  Object getContent() {
    final result = js.callFunction(this, "getContent");
    if (result is String || result is html.Node) {
      return result;
    } else {
      throw new Exception("Unsupported result");
    }
  }
  LatLng getPosition() => new LatLng.fromJsRef(js.callFunction(this, "getPosition"));
  num getZIndex() => js.callFunction(this, "getZIndex");
  void open([Object map, MVCObject anchor]) {
    if (map is GMap || map is StreetViewPanorama) {
      js.callFunction(this, "open", [map, anchor]);
    } else {
      throw new IllegalArgumentException(map);
    }
  }
  void setContent(Object content) {
    if (content is String || content is html.Node) {
      js.callFunction(this, "setContent", [content]);
    } else {
      throw new IllegalArgumentException(content);
    }
  }
  void setOptions(InfoWindowOptions options) { js.callFunction(this, "setOptions", [options]); }
  void setPosition(LatLng position) { js.callFunction(this, "setPosition", [position]); }
  void setZIndex(num zIndex) { js.callFunction(this, "setZIndex", [zIndex]); }
}

class InfoWindowOptions extends js.JsAnonymousObject {
  set content(Object content) {
    if (content is String || content is html.Node) {
      js.setProperty(this, "content", content);
    } else {
      throw new IllegalArgumentException(content);
    }
  }
  set disableAutoPan(bool disableAutoPan) => js.setProperty(this, "disableAutoPan", disableAutoPan);
  set maxWidth(num maxWidth) => js.setProperty(this, "maxWidth", maxWidth);
  set pixelOffset(Size pixelOffset) => js.setProperty(this, "pixelOffset", pixelOffset);
  set position(LatLng position) => js.setProperty(this, "position", position);
  set zIndex(num zIndex) => js.setProperty(this, "zIndex", zIndex);
}

class Polyline extends MVCObject {
  static const String _TYPE_NAME = "google.maps.Polyline";

  Polyline([PolylineOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  Polyline.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool getEditable() => js.callFunction(this, "getEditable");
  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  MVCArray<LatLng> getPath() => new MVCArray.fromJsRef(js.callFunction(this, "getPath"), (js.JsRef jsRef) => new LatLng.fromJsRef(jsRef));
  bool getVisible() => js.callFunction(this, "getVisible");
  void setEditable(bool editable) { js.callFunction(this, "setEditable", [editable]); }
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
  void setOptions(PolylineOptions options) { js.callFunction(this, "setOptions", [options]); }
  void setPath(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      js.callFunction(this, "setPath", [path]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  void setVisible(bool visible) { js.callFunction(this, "setVisible", [visible]); }
}

class PolylineOptions extends js.JsAnonymousObject {
  set clickable(bool clickable) => js.setProperty(this, "clickable", clickable);
  set editable(bool editable) => js.setProperty(this, "editable", editable);
  set geodesic(bool geodesic) => js.setProperty(this, "geodesic", geodesic);
  set icons(List<IconSequence> icons) => js.setProperty(this, "icons", icons);
  set map(GMap map) => js.setProperty(this, "map", map);
  set path(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      js.setProperty(this, "path", path);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  set strokeColor(String strokeColor) => js.setProperty(this, "strokeColor", strokeColor);
  set strokeOpacity(num strokeOpacity) => js.setProperty(this, "strokeOpacity", strokeOpacity);
  set strokeWeight(num strokeWeight) => js.setProperty(this, "strokeWeight", strokeWeight);
  set visible(bool visible) => js.setProperty(this, "visible", visible);
  set zIndex(num zIndex) => js.setProperty(this, "zIndex", zIndex);
}

class IconSequence extends js.JsAnonymousObject {
  set icon(Symbol icon) => js.setProperty(this, "icon", icon);
  set offset(String offset) => js.setProperty(this, "offset", offset);
  set repeat(String repeat) => js.setProperty(this, "repeat", repeat);
}

class Polygon extends MVCObject {
  static const String _TYPE_NAME = "google.maps.Polygon";

  Polygon([PolygonOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  Polygon.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool getEditable() => js.callFunction(this, "getEditable");
  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  MVCArray<LatLng> getPath() => new MVCArray.fromJsRef(js.callFunction(this, "getPath"), (js.JsRef jsRef) => new LatLng.fromJsRef(jsRef));
  MVCArray<MVCArray<LatLng>> getPaths() => new MVCArray.fromJsRef(js.callFunction(this, "getPaths"), (js.JsRef jsRef) => new MVCArray.fromJsRef(jsRef, (js.JsRef jsRef) => new LatLng.fromJsRef(jsRef)));
  bool getVisible() => js.callFunction(this, "getVisible");
  void setEditable(bool editable) { js.callFunction(this, "setEditable", [editable]); }
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
  void setOptions(PolylineOptions options) { js.callFunction(this, "setOptions", [options]); }
  void setPath(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      js.callFunction(this, "setPath", [path]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  void setPaths(Object paths) {
    if (paths is MVCArray<MVCArray<LatLng>> || paths is MVCArray<LatLng> || paths is List<List<LatLng>> || paths is List<LatLng>) {
      js.callFunction(this, "setPaths", [paths]);
    } else {
      throw new IllegalArgumentException(paths);
    }
  }
  void setVisible(bool visible) { js.callFunction(this, "setVisible", [visible]); }
}

class PolygonOptions extends js.JsAnonymousObject {
  set clickable(bool clickable) => js.setProperty(this, "clickable", clickable);
  set editable(bool editable) => js.setProperty(this, "editable", editable);
  set fillColor(String fillColor) => js.setProperty(this, "fillColor", fillColor);
  set fillOpacity(num fillOpacity) => js.setProperty(this, "fillOpacity", fillOpacity);
  set geodesic(bool geodesic) => js.setProperty(this, "geodesic", geodesic);
  set map(GMap map) => js.setProperty(this, "map", map);
  set paths(Object paths) {
    if (paths is MVCArray<MVCArray<LatLng>> || paths is MVCArray<LatLng> || paths is List<List<LatLng>> || paths is List<LatLng>) {
      js.setProperty(this, "paths", paths);
    } else {
      throw new IllegalArgumentException(paths);
    }
  }
  set strokeColor(String strokeColor) => js.setProperty(this, "strokeColor", strokeColor);
  set strokeOpacity(num strokeOpacity) => js.setProperty(this, "strokeOpacity", strokeOpacity);
  set strokeWeight(num strokeWeight) => js.setProperty(this, "strokeWeight", strokeWeight);
  set visible(bool visible) => js.setProperty(this, "visible", visible);
  set zIndex(num zIndex) => js.setProperty(this, "zIndex", zIndex);
}

class PolyMouseEvent extends MouseEvent {
  PolyMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }
  
  num get edge => js.getProperty(this, "edge");
  num get path => js.getProperty(this, "path");
  num get vertex => js.getProperty(this, "vertex");
}

class Rectangle extends MVCObject {
  static const String _TYPE_NAME = "google.maps.Rectangle";

  Rectangle([RectangleOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  Rectangle.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getBounds() => new LatLngBounds.fromJsRef(js.callFunction(this, "getBounds"));
  bool getEditable() => js.callFunction(this, "getEditable");
  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  bool getVisible() => js.callFunction(this, "getVisible");
  void setBounds(LatLngBounds bounds) { js.callFunction(this, "setBounds", [bounds]); }
  void setEditable(bool editable) { js.callFunction(this, "setEditable", [editable]); }
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
  void setOptions(RectangleOptions options) { js.callFunction(this, "setOptions", [options]); }
  void setVisible(bool visible) { js.callFunction(this, "setVisible", [visible]); }
}

class RectangleOptions extends js.JsAnonymousObject {
  set bounds(LatLngBounds bounds) => js.setProperty(this, "bounds", bounds);
  set clickable(bool clickable) => js.setProperty(this, "clickable", clickable);
  set editable(bool editable) => js.setProperty(this, "editable", editable);
  set fillColor(String fillColor) => js.setProperty(this, "fillColor", fillColor);
  set fillOpacity(num fillOpacity) => js.setProperty(this, "fillOpacity", fillOpacity);
  set map(GMap map) => js.setProperty(this, "map", map);
  set strokeColor(String strokeColor) => js.setProperty(this, "strokeColor", strokeColor);
  set strokeOpacity(num strokeOpacity) => js.setProperty(this, "strokeOpacity", strokeOpacity);
  set strokeWeight(num strokeWeight) => js.setProperty(this, "strokeWeight", strokeWeight);
  set visible(bool visible) => js.setProperty(this, "visible", visible);
  set zIndex(num zIndex) => js.setProperty(this, "zIndex", zIndex);
}

class Circle extends MVCObject {
  static const String _TYPE_NAME = "google.maps.Circle";

  Circle([CircleOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  Circle.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getBounds() => new LatLngBounds.fromJsRef(js.callFunction(this, "getBounds"));
  LatLng getCenter() => new LatLng.fromJsRef(js.callFunction(this, "getCenter"));
  bool getEditable() => js.callFunction(this, "getEditable");
  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  num getRadius() => js.callFunction(this, "getRadius");
  bool getVisible() => js.callFunction(this, "getVisible");
  void setCenter(LatLng center) { js.callFunction(this, "setCenter", [center]); }
  void setEditable(bool editable) { js.callFunction(this, "setEditable", [editable]); }
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
  void setOptions(CircleOptions options) { js.callFunction(this, "setOptions", [options]); }
  void setRadius(bool radius) { js.callFunction(this, "setRadius", [radius]); }
  void setVisible(bool visible) { js.callFunction(this, "setVisible", [visible]); }
}

class CircleOptions extends js.JsAnonymousObject {
  set center(LatLng center) => js.setProperty(this, "center", center);
  set clickable(bool clickable) => js.setProperty(this, "clickable", clickable);
  set editable(bool editable) => js.setProperty(this, "editable", editable);
  set fillColor(String fillColor) => js.setProperty(this, "fillColor", fillColor);
  set fillOpacity(num fillOpacity) => js.setProperty(this, "fillOpacity", fillOpacity);
  set map(GMap map) => js.setProperty(this, "map", map);
  set radius(num radius) => js.setProperty(this, "radius", radius);
  set strokeColor(String strokeColor) => js.setProperty(this, "strokeColor", strokeColor);
  set strokeOpacity(num strokeOpacity) => js.setProperty(this, "strokeOpacity", strokeOpacity);
  set strokeWeight(num strokeWeight) => js.setProperty(this, "strokeWeight", strokeWeight);
  set visible(bool visible) => js.setProperty(this, "visible", visible);
  set zIndex(num zIndex) => js.setProperty(this, "zIndex", zIndex);
}

class GroundOverlay extends MVCObject {
  static const String _TYPE_NAME = "google.maps.GroundOverlay";

  GroundOverlay(String url, LatLngBounds bounds, [GroundOverlayOptions opts]) : super.newInstance(_TYPE_NAME, [url, bounds, opts]);
  GroundOverlay.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getBounds() => new LatLngBounds.fromJsRef(js.callFunction(this, "getBounds"));
  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  num getOpacity() => js.callFunction(this, "getOpacity");
  String getUrl() => js.callFunction(this, "getUrl");
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
  void setOpacity(num opacity) { js.callFunction(this, "setOpacity", [opacity]); }
}

class GroundOverlayOptions extends js.JsAnonymousObject {
  set clickable(bool clickable) => js.setProperty(this, "clickable", clickable);
  set map(GMap map) => js.setProperty(this, "map", map);
  set opacity(num radius) => js.setProperty(this, "opacity", opacity);
}

class OverlayView extends MVCObject {
  static const String _TYPE_NAME = "google.maps.OverlayView";

  OverlayView() : super.newInstance(_TYPE_NAME);
  OverlayView.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void draw() { js.callFunction(this, "draw"); }
  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  MapPanes getPanes() => new MapPanes.fromJsRef(js.callFunction(this, "getPanes"));
  MapCanvasProjection getProjection() => new MapCanvasProjection.fromJsRef(js.callFunction(this, "getProjection"));
  void onAdd() { js.callFunction(this, "onAdd"); }
  void onRemove() { js.callFunction(this, "onRemove"); }
  void setMap(Object map) { 
    if (map is GMap || map is StreetViewPanorama) {
      js.callFunction(this, "setMap", [map]);
    } else {
      throw new IllegalArgumentException(map);
    }
  }
}

class MapPanes extends js.JsAnonymousObject {
  MapPanes.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  html.Node get floatPane() => js.getProperty(this, "floatPane");
            set floatPane(html.Node floatPane) => js.setProperty(this, "floatPane", floatPane);
  html.Node get floatShadow() => js.getProperty(this, "floatShadow");
            set floatShadow(html.Node floatShadow) => js.setProperty(this, "floatShadow", floatShadow);
  html.Node get mapPane() => js.getProperty(this, "mapPane");
            set mapPane(html.Node mapPane) => js.setProperty(this, "mapPane", mapPane);
  html.Node get overlayImage() => js.getProperty(this, "overlayImage");
            set overlayImage(html.Node overlayImage) => js.setProperty(this, "overlayImage", overlayImage);
  html.Node get overlayLayer() => js.getProperty(this, "overlayLayer");
            set overlayLayer(html.Node overlayLayer) => js.setProperty(this, "overlayLayer", overlayLayer);
  html.Node get overlayMouseTarget() => js.getProperty(this, "overlayMouseTarget");
            set overlayMouseTarget(html.Node overlayMouseTarget) => js.setProperty(this, "overlayMouseTarget", overlayMouseTarget);
  html.Node get overlayShadow() => js.getProperty(this, "overlayShadow");
            set overlayShadow(html.Node overlayShadow) => js.setProperty(this, "overlayShadow", overlayShadow);
}

class MapCanvasProjection extends MVCObject {
  MapCanvasProjection.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLng fromContainerPixelToLatLng(Point pixel, [bool nowrap]) => new LatLng.fromJsRef(js.callFunction(this, "fromContainerPixelToLatLng", [pixel, nowrap]));
  LatLng fromDivPixelToLatLng(Point pixel, [bool nowrap]) => new LatLng.fromJsRef(js.callFunction(this, "fromDivPixelToLatLng", [pixel, nowrap]));
  Point fromLatLngToContainerPixel(LatLng latLng) => new Point.fromJsRef(js.callFunction(this, "fromLatLngToContainerPixel", [latLng]));
  Point fromLatLngToDivPixel(LatLng latLng) => new Point.fromJsRef(js.callFunction(this, "fromLatLngToDivPixel", [latLng]));
  num getWorldWidth() => js.callFunction(this, "getWorldWidth");
}

class Geocoder extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.Geocoder";

  Geocoder() : super.newInstance(_TYPE_NAME);

  void geocode(GeocoderRequest request, void callback(List<GeocoderResult> results, GeocoderStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new GeocoderResult.fromJsRef(e)), GeocoderStatus.find(args[1]));
    };
    js.callFunction(this, "geocode", [request, callbackFunction]);
  }
}

class GeocoderRequest extends js.JsAnonymousObject {
  set address(String address) => js.setProperty(this, "address", address);
  set bounds(LatLngBounds bounds) => js.setProperty(this, "bounds", bounds);
  set location(LatLng location) => js.setProperty(this, "location", location);
  set region(String region) => js.setProperty(this, "region", region);
}

class GeocoderStatus extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.GeocoderStatus";

  static const GeocoderStatus ERROR = const GeocoderStatus._("${_TYPE_NAME}.ERROR");
  static const GeocoderStatus INVALID_REQUEST = const GeocoderStatus._("${_TYPE_NAME}.INVALID_REQUEST");
  static const GeocoderStatus OK = const GeocoderStatus._("${_TYPE_NAME}.OK");
  static const GeocoderStatus OVER_QUERY_LIMIT = const GeocoderStatus._("${_TYPE_NAME}.OVER_QUERY_LIMIT");
  static const GeocoderStatus REQUEST_DENIED = const GeocoderStatus._("${_TYPE_NAME}.REQUEST_DENIED");
  static const GeocoderStatus UNKNOWN_ERROR = const GeocoderStatus._("${_TYPE_NAME}.UNKNOWN_ERROR");
  static const GeocoderStatus ZERO_RESULTS = const GeocoderStatus._("${_TYPE_NAME}.ZERO_RESULTS");

  static GeocoderStatus find(Object o) { return js.JsConst.findIn(o, [ERROR, INVALID_REQUEST, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR, ZERO_RESULTS]); }

  const GeocoderStatus._(String jsName) : super.fromJsName(jsName);
}

class GeocoderResult extends js.JsAnonymousObject {
  GeocoderResult() : super();
  GeocoderResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<GeocoderAddressComponent> get address_components() {
    List<js.JsRef> resultsRefs = js.getProperty(this, "address_components");
    return resultsRefs.map((e) => new GeocoderAddressComponent.fromJsRef(e));
  }
  String get formatted_address() => js.getProperty(this, "formatted_address");
  GeocoderGeometry get geometry() => new GeocoderGeometry.fromJsRef(js.getProperty(this, "geometry"));
  List<String> get types() => js.getProperty(this, "types");
}

class GeocoderAddressComponent extends js.JsAnonymousObject {
  GeocoderAddressComponent() : super();
  GeocoderAddressComponent.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get long_name() => js.getProperty(this, "long_name");
  String get short_name() => js.getProperty(this, "short_name");
  List<String> get types() => js.getProperty(this, "types");
}

class GeocoderGeometry extends js.JsAnonymousObject {
  GeocoderGeometry() : super();
  GeocoderGeometry.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds get bounds() => new LatLngBounds.fromJsRef(js.getProperty(this, "bounds"));
  LatLng get location() => new LatLng.fromJsRef(js.getProperty(this, "location"));
  GeocoderLocationType get location_type() => GeocoderLocationType.find(js.getProperty(this, "location_type"));
  LatLngBounds get viewport() => new    LatLngBounds.fromJsRef(js.getProperty(this, "viewport"));
}

class GeocoderLocationType extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.GeocoderLocationType";

  static const GeocoderLocationType APPROXIMATE = const GeocoderLocationType._("${_TYPE_NAME}.APPROXIMATE");
  static const GeocoderLocationType GEOMETRIC_CENTER = const GeocoderLocationType._("${_TYPE_NAME}.GEOMETRIC_CENTER");
  static const GeocoderLocationType RANGE_INTERPOLATED = const GeocoderLocationType._("${_TYPE_NAME}.RANGE_INTERPOLATED");
  static const GeocoderLocationType ROOFTOP = const GeocoderLocationType._("${_TYPE_NAME}.ROOFTOP");

  static GeocoderLocationType find(Object o) { return js.JsConst.findIn(o, [APPROXIMATE, GEOMETRIC_CENTER, RANGE_INTERPOLATED, ROOFTOP]); }

  const GeocoderLocationType._(String jsName) : super.fromJsName(jsName);
}

class DirectionsRenderer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.DirectionsRenderer";

  DirectionsRenderer([DirectionsRendererOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  DirectionsRenderer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  DirectionsResult getDirections() => new DirectionsResult.fromJsRef(js.callFunction(this, "getDirections"));
  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  html.Node getPanel() => js.callFunction(this, "getPanel");
  num getRouteIndex() => js.callFunction(this, "getRouteIndex");
  void setDirections(DirectionsResult directions) { js.callFunction(this, "setDirections", [directions]); }
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
  void setOptions(DirectionsRendererOptions options) { js.callFunction(this, "setOptions", [options]); }
  void setPanel(html.Node panel) { js.callFunction(this, "setPanel", [panel]); }
  void setRouteIndex(num routeIndex) { js.callFunction(this, "setRouteIndex", [routeIndex]); }
}

class DirectionsRendererOptions extends js.JsAnonymousObject {
  set directions(DirectionsResult directions) => js.setProperty(this, "directions", directions);
  set draggable(bool draggable) => js.setProperty(this, "draggable", draggable);
  set hideRouteList(bool hideRouteList) => js.setProperty(this, "hideRouteList", hideRouteList);
  set infoWindow(InfoWindow infoWindow) => js.setProperty(this, "infoWindow", infoWindow);
  set map(GMap map) => js.setProperty(this, "map", map);
  set markerOptions(MarkerOptions markerOptions) => js.setProperty(this, "markerOptions", markerOptions);
  set panel(html.Node panel) => js.setProperty(this, "panel", panel);
  set polylineOptions(PolylineOptions polylineOptions) => js.setProperty(this, "polylineOptions", polylineOptions);
  set preserveViewport(bool preserveViewport) => js.setProperty(this, "preserveViewport", preserveViewport);
  set routeIndex(num routeIndex) => js.setProperty(this, "routeIndex", routeIndex);
  set suppressBicyclingLayer(bool suppressBicyclingLayer) => js.setProperty(this, "suppressBicyclingLayer", suppressBicyclingLayer);
  set suppressInfoWindows(bool suppressInfoWindows) => js.setProperty(this, "suppressInfoWindows", suppressInfoWindows);
  set suppressMarkers(bool suppressMarkers) => js.setProperty(this, "suppressMarkers", suppressMarkers);
  set suppressPolylines(bool suppressPolylines) => js.setProperty(this, "suppressPolylines", suppressPolylines);
}

class DirectionsService extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.DirectionsService";

  DirectionsService() : super.newInstance(_TYPE_NAME);

  void route(DirectionsRequest request, void callback(List<DirectionsResult> results, DirectionsStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new DirectionsResult.fromJsRef(e)), DirectionsStatus.find(args[1]));
    };
    js.callFunction(this, "route", [request, callbackFunction]);
  }
}

class DirectionsRequest extends js.JsAnonymousObject {
  set avoidHighways(bool avoidHighways) => js.setProperty(this, "avoidHighways", avoidHighways);
  set avoidTolls(bool avoidTolls) => js.setProperty(this, "avoidTolls", avoidTolls);
  set destination(Object destination) {
    if (destination is String || destination is LatLng) {
      js.setProperty(this, "destination", destination);
    } else {
      throw new IllegalArgumentException(destination);
    }
  }
  set optimizeWaypoints(bool optimizeWaypoints) => js.setProperty(this, "optimizeWaypoints", optimizeWaypoints);
  set origin(Object origin) {
    if (origin is String || origin is LatLng) {
      js.setProperty(this, "origin", origin);
    } else {
      throw new IllegalArgumentException(origin);
    }
  }
  set provideRouteAlternatives(bool provideRouteAlternatives) => js.setProperty(this, "provideRouteAlternatives", provideRouteAlternatives);
  set region(String region) => js.setProperty(this, "region", region);
  set transitOptions(TransitOptions transitOptions) => js.setProperty(this, "transitOptions", transitOptions);
  set travelMode(TravelMode travelMode) => js.setProperty(this, "travelMode", travelMode);
  set unitSystem(UnitSystem unitSystem) => js.setProperty(this, "unitSystem", unitSystem);
  set waypoints(List<DirectionsWaypoint> waypoints) => js.setProperty(this, "waypoints", waypoints);
}

class TravelMode extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.TravelMode";

  static const TravelMode BICYCLING = const TravelMode._("${_TYPE_NAME}.BICYCLING");
  static const TravelMode DRIVING = const TravelMode._("${_TYPE_NAME}.DRIVING");
  static const TravelMode TRANSIT = const TravelMode._("${_TYPE_NAME}.TRANSIT");
  static const TravelMode WALKING = const TravelMode._("${_TYPE_NAME}.WALKING");

  static TravelMode find(Object o) { return js.JsConst.findIn(o, [BICYCLING, DRIVING, TRANSIT, WALKING]); }

  const TravelMode._(String jsName) : super.fromJsName(jsName);
}

class UnitSystem extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.UnitSystem";

  static const UnitSystem IMPERIAL = const UnitSystem._("${_TYPE_NAME}.IMPERIAL");
  static const UnitSystem METRIC = const UnitSystem._("${_TYPE_NAME}.METRIC");

  static UnitSystem find(Object o) { return js.JsConst.findIn(o, [IMPERIAL, METRIC]); }

  const UnitSystem._(String jsName) : super.fromJsName(jsName);
}

class TransitOptions extends js.JsAnonymousObject {
  set arrivalTime(Date arrivalTime) => js.setProperty(this, "arrivalTime", arrivalTime);
  set departureTime(Date departureTime) => js.setProperty(this, "departureTime", departureTime);
}

class DirectionsWaypoint extends js.JsAnonymousObject {
  set location(Object location) {
    if (location is String || location is LatLng) {
      js.setProperty(this, "location", location);
    } else {
      throw new IllegalArgumentException(location);
    }
  }
  set stopover(bool stopover) => js.setProperty(this, "stopover", stopover);
}

class DirectionsStatus extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.DirectionsStatus";

  static const DirectionsStatus INVALID_REQUEST = const DirectionsStatus._("${_TYPE_NAME}.INVALID_REQUEST");
  static const DirectionsStatus MAX_WAYPOINTS_EXCEEDED = const DirectionsStatus._("${_TYPE_NAME}.MAX_WAYPOINTS_EXCEEDED");
  static const DirectionsStatus NOT_FOUND = const DirectionsStatus._("${_TYPE_NAME}.NOT_FOUND");
  static const DirectionsStatus OK = const DirectionsStatus._("${_TYPE_NAME}.OK");
  static const DirectionsStatus OVER_QUERY_LIMIT = const DirectionsStatus._("${_TYPE_NAME}.OVER_QUERY_LIMIT");
  static const DirectionsStatus REQUEST_DENIED = const DirectionsStatus._("${_TYPE_NAME}.REQUEST_DENIED");
  static const DirectionsStatus UNKNOWN_ERROR = const DirectionsStatus._("${_TYPE_NAME}.UNKNOWN_ERROR");
  static const DirectionsStatus ZERO_RESULTS = const DirectionsStatus._("${_TYPE_NAME}.ZERO_RESULTS");

  static DirectionsStatus find(Object o) { return js.JsConst.findIn(o, [INVALID_REQUEST, MAX_WAYPOINTS_EXCEEDED, NOT_FOUND, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR, ZERO_RESULTS]); }

  const DirectionsStatus._(String jsName) : super.fromJsName(jsName);
}

class DirectionsResult extends js.JsAnonymousObject {
  DirectionsResult() : super();
  DirectionsResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<DirectionsRoute> get routes() {
    List<js.JsRef> resultsRefs = js.getProperty(this, "routes");
    return resultsRefs.map((e) => new DirectionsRoute.fromJsRef(e));
  }
}

class DirectionsRoute extends js.JsAnonymousObject {
  DirectionsRoute() : super();
  DirectionsRoute.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds get bounds() => new LatLngBounds.fromJsRef(js.getProperty(this, "bounds"));
  String get copyrights() => js.getProperty(this, "copyrights");
  List<DirectionsLeg> get legs() {
    List<js.JsRef> resultsRefs = js.getProperty(this, "legs");
    return resultsRefs.map((e) => new DirectionsLeg.fromJsRef(e));
  }
  List<LatLng> get overview_path() {
    List<js.JsRef> resultsRefs = js.getProperty(this, "overview_path");
    return resultsRefs.map((e) => new LatLng.fromJsRef(e));
  }
  List<String> get warnings() => js.getProperty(this, "warnings");
  List<num> get waypoint_order() => js.getProperty(this, "waypoint_order");
}

class DirectionsLeg extends js.JsAnonymousObject {
  DirectionsLeg() : super();
  DirectionsLeg.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  // TODO test return type
  Distance get arrival_time() => new Distance.fromJsRef(js.getProperty(this, "arrival_time"));
  Duration get departure_time() => new Duration.fromJsRef(js.getProperty(this, "departure_time"));
  Distance get distance() => new Distance.fromJsRef(js.getProperty(this, "distance"));
  Duration get duration() => new Duration.fromJsRef(js.getProperty(this, "duration"));
  String get end_address() => js.getProperty(this, "end_address");
  LatLng get end_location() => new LatLng.fromJsRef(js.getProperty(this, "end_location"));
  String get start_address() => js.getProperty(this, "start_address");
  LatLng get start_location() => new LatLng.fromJsRef(js.getProperty(this, "start_location"));
  List<DirectionsStep> get steps() {
    List<js.JsRef> resultsRefs = js.getProperty(this, "steps");
    return resultsRefs.map((e) => new DirectionsStep.fromJsRef(e));
  }
  List<LatLng> get via_waypoints() {
    List<js.JsRef> resultsRefs = js.getProperty(this, "via_waypoints");
    return resultsRefs.map((e) => new LatLng.fromJsRef(e));
  }
}

class DirectionsStep extends js.JsAnonymousObject {
  DirectionsStep() : super();
  DirectionsStep.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Distance get distance() => new Distance.fromJsRef(js.getProperty(this, "distance"));
  Duration get duration() => new Duration.fromJsRef(js.getProperty(this, "duration"));
  LatLng get end_location() => new LatLng.fromJsRef(js.getProperty(this, "end_location"));
  String get instructions() => js.getProperty(this, "instructions");
  List<LatLng> get path() {
    List<js.JsRef> resultsRefs = js.getProperty(this, "path");
    return resultsRefs.map((e) => new LatLng.fromJsRef(e));
  }
  LatLng get start_location() => new LatLng.fromJsRef(js.getProperty(this, "start_location"));
  // TODO check return type
  DirectionsStep get steps() => new DirectionsStep.fromJsRef(js.getProperty(this, "steps"));
//  List<DirectionsStep> get steps() {
//    List<js.JsRef> resultsRefs = js.getProperty(this, "steps");
//    return resultsRefs.map((e) => new DirectionsStep.fromJsRef(e));
//  }
  TransitDetails get transit() => new TransitDetails.fromJsRef(js.getProperty(this, "transit"));
  TravelMode get travel_mode() => TravelMode.find(js.getProperty(this, "travel_mode"));
}

class Distance extends js.JsAnonymousObject {
  Distance() : super();
  Distance.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get text() => js.getProperty(this, "text");
  num get value() => js.getProperty(this, "value");
}

class Duration extends js.JsAnonymousObject {
  Duration() : super();
  Duration.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get text() => js.getProperty(this, "text");
  num get value() => js.getProperty(this, "value");
}

class Time extends js.JsAnonymousObject {
  Time() : super();
  Time.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get text() => js.getProperty(this, "text");
  String get time_zone() => js.getProperty(this, "time_zone");
  Date get value() => js.getProperty(this, "value");
}

class TransitDetails extends js.JsAnonymousObject {
  TransitDetails() : super();
  TransitDetails.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  TransitStop get arrival_stop() => new TransitStop.fromJsRef(js.getProperty(this, "arrival_stop"));
  Time get arrival_time() => new Time.fromJsRef(js.getProperty(this, "arrival_time"));
  TransitStop get departure_stop() => new TransitStop.fromJsRef(js.getProperty(this, "departure_stop"));
  Time get departure_time() => new Time.fromJsRef(js.getProperty(this, "departure_time"));
  String get headsign() => js.getProperty(this, "headsign");
  num get headway() => js.getProperty(this, "headway");
  TransitLine get line() => new TransitLine.fromJsRef(js.getProperty(this, "line"));
  num get num_stops() => js.getProperty(this, "num_stops");
}

class TransitStop extends js.JsAnonymousObject {
  TransitStop() : super();
  TransitStop.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLng get location() => new LatLng.fromJsRef(js.getProperty(this, "location"));
  String get name() => js.getProperty(this, "name");
}

class TransitLine extends js.JsAnonymousObject {
  TransitLine() : super();
  TransitLine.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<TransitAgency> get agencies() {
    List<js.JsRef> resultsRefs = js.getProperty(this, "agencies");
    return resultsRefs.map((e) => new TransitAgency.fromJsRef(e));
  }
  String get color() => js.getProperty(this, "color");
  String get icon() => js.getProperty(this, "icon");
  String get name() => js.getProperty(this, "name");
  String get short_name() => js.getProperty(this, "short_name");
  String get text_color() => js.getProperty(this, "text_color");
  String get url() => js.getProperty(this, "url");
  TransitVehicle get vehicle() => new TransitVehicle.fromJsRef(js.getProperty(this, "vehicle"));
}

class TransitAgency extends js.JsAnonymousObject {
  TransitAgency() : super();
  TransitAgency.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get name() => js.getProperty(this, "name");
  String get phone() => js.getProperty(this, "phone");
  String get url() => js.getProperty(this, "url");
}

class TransitVehicle extends js.JsAnonymousObject {
  TransitVehicle() : super();
  TransitVehicle.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get icon() => js.getProperty(this, "icon");
  String get local_icon() => js.getProperty(this, "local_icon");
  String get name() => js.getProperty(this, "name");
  // TODO check type
  String get type() => js.getProperty(this, "type");
}

class ElevationService extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.ElevationService";

  ElevationService() : super.newInstance(_TYPE_NAME);

  void getElevationAlongPath(PathElevationRequest request, void callback(List<ElevationResult> results, ElevationStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new ElevationResult.fromJsRef(e)), ElevationStatus.find(args[1]));
    };
    js.callFunction(this, "getElevationAlongPath", [request, callbackFunction]);
  }
  void getElevationForLocations(LocationElevationRequest request, void callback(List<ElevationResult> results, ElevationStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new ElevationResult.fromJsRef(e)), ElevationStatus.find(args[1]));
    };
    js.callFunction(this, "getElevationForLocations", [request, callbackFunction]);
  }
}

class LocationElevationRequest extends js.JsAnonymousObject {
  set locations(List<LatLng> locations) => js.setProperty(this, "locations", locations);
}

class PathElevationRequest extends js.JsAnonymousObject {
  set path(List<LatLng> path) => js.setProperty(this, "path", path);
  set samples(num samples) => js.setProperty(this, "samples", samples);
}

class ElevationResult extends js.JsAnonymousObject {
  ElevationResult() : super();
  ElevationResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  num get elevation() => js.getProperty(this, "elevation");
  LatLng get location() => new LatLng.fromJsRef(js.getProperty(this, "location"));
  num get resolution() => js.getProperty(this, "resolution");
}

class ElevationStatus extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.ElevationStatus";

  static const ElevationStatus INVALID_REQUEST = const ElevationStatus._("${_TYPE_NAME}.INVALID_REQUEST");
  static const ElevationStatus OK = const ElevationStatus._("${_TYPE_NAME}.OK");
  static const ElevationStatus OVER_QUERY_LIMIT = const ElevationStatus._("${_TYPE_NAME}.OVER_QUERY_LIMIT");
  static const ElevationStatus REQUEST_DENIED = const ElevationStatus._("${_TYPE_NAME}.REQUEST_DENIED");
  static const ElevationStatus UNKNOWN_ERROR = const ElevationStatus._("${_TYPE_NAME}.UNKNOWN_ERROR");

  static ElevationStatus find(Object o) { return js.JsConst.findIn(o, [INVALID_REQUEST, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR]); }

  const ElevationStatus._(String jsName) : super.fromJsName(jsName);
}

class MaxZoomService extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.MaxZoomService";

  MaxZoomService() : super.newInstance(_TYPE_NAME);

  void getMaxZoomAtLatLng(LatLng latlng, void callback(MaxZoomResult result)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new MaxZoomResult.fromJsRef(args[0]));
    };
    js.callFunction(this, "getMaxZoomAtLatLng", [latlng, callbackFunction]);
  }
}

class MaxZoomResult extends js.JsAnonymousObject {
  MaxZoomResult() : super();
  MaxZoomResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  MaxZoomStatus get status() => MaxZoomStatus.find(js.getProperty(this, "status"));
  num get zoom() => js.getProperty(this, "zoom");
}

class MaxZoomStatus extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.MaxZoomStatus";

  static const MaxZoomStatus ERROR = const MaxZoomStatus._("${_TYPE_NAME}.ERROR");
  static const MaxZoomStatus OK = const MaxZoomStatus._("${_TYPE_NAME}.OK");

  static MaxZoomStatus find(Object o) { return js.JsConst.findIn(o, [ERROR, OK]); }

  const MaxZoomStatus._(String jsName) : super.fromJsName(jsName);
}

class DistanceMatrixService extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.DistanceMatrixService";

  DistanceMatrixService() : super.newInstance(_TYPE_NAME);

  void getDistanceMatrix(DistanceMatrixRequest request, void callback(DistanceMatrixResponse response, DistanceMatrixStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new DistanceMatrixResponse.fromJsRef(args[0]), DistanceMatrixStatus.find(args[1]));
    };
    js.callFunction(this, "getDistanceMatrix", [request, callbackFunction]);
  }
}

class DistanceMatrixRequest extends js.JsAnonymousObject {
  set avoidHighways(bool avoidHighways) => js.setProperty(this, "avoidHighways", avoidHighways);
  set avoidTolls(bool avoidTolls) => js.setProperty(this, "avoidTolls", avoidTolls);
  set destination(Object destination) {
    if (destination is List<String> || destination is List<LatLng>) {
      js.setProperty(this, "destination", destination);
    } else {
      throw new IllegalArgumentException(destination);
    }
  }
  set origin(Object origin) {
    if (origin is List<String> || origin is List<LatLng>) {
      js.setProperty(this, "origin", origin);
    } else {
      throw new IllegalArgumentException(origin);
    }
  }
  set region(String region) => js.setProperty(this, "region", region);
  set travelMode(TravelMode travelMode) => js.setProperty(this, "travelMode", travelMode);
  set unitSystem(UnitSystem unitSystem) => js.setProperty(this, "unitSystem", unitSystem);
}

class DistanceMatrixResponse extends js.JsAnonymousObject {
  DistanceMatrixResponse() : super();
  DistanceMatrixResponse.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<String> get destinationAddresses() => js.getProperty(this, "destinationAddresses");
  List<String> get originAddresses() => js.getProperty(this, "originAddresses");
  List<DistanceMatrixResponseRow> get rows() {
    List<js.JsRef> resultsRefs = js.getProperty(this, "rows");
    return resultsRefs.map((e) => new DistanceMatrixResponseRow.fromJsRef(e));
  }
}

class DistanceMatrixResponseRow extends js.JsAnonymousObject {
  DistanceMatrixResponseRow() : super();
  DistanceMatrixResponseRow.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<DistanceMatrixResponseElement> get elements() {
    List<js.JsRef> resultsRefs = js.getProperty(this, "elements");
    return resultsRefs.map((e) => new DistanceMatrixResponseElement.fromJsRef(e));
  }
}

class DistanceMatrixResponseElement extends js.JsAnonymousObject {
  DistanceMatrixResponseElement() : super();
  DistanceMatrixResponseElement.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Distance get distance() => new Distance.fromJsRef(js.getProperty(this, "distance"));
  Duration get duration() => new Duration.fromJsRef(js.getProperty(this, "duration"));
  DistanceMatrixElementStatus get status() => DistanceMatrixElementStatus.find(js.getProperty(this, "status"));
}

class DistanceMatrixStatus extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.DistanceMatrixStatus";

  static const DistanceMatrixStatus INVALID_REQUEST = const DistanceMatrixStatus._("${_TYPE_NAME}.INVALID_REQUEST");
  static const DistanceMatrixStatus MAX_DIMENSIONS_EXCEEDED = const DistanceMatrixStatus._("${_TYPE_NAME}.MAX_DIMENSIONS_EXCEEDED");
  static const DistanceMatrixStatus MAX_ELEMENTS_EXCEEDED = const DistanceMatrixStatus._("${_TYPE_NAME}.MAX_ELEMENTS_EXCEEDED");
  static const DistanceMatrixStatus OK = const DistanceMatrixStatus._("${_TYPE_NAME}.OK");
  static const DistanceMatrixStatus OVER_QUERY_LIMIT = const DistanceMatrixStatus._("${_TYPE_NAME}.OVER_QUERY_LIMIT");
  static const DistanceMatrixStatus REQUEST_DENIED = const DistanceMatrixStatus._("${_TYPE_NAME}.REQUEST_DENIED");
  static const DistanceMatrixStatus UNKNOWN_ERROR = const DistanceMatrixStatus._("${_TYPE_NAME}.UNKNOWN_ERROR");

  static DistanceMatrixStatus find(Object o) { return js.JsConst.findIn(o, [INVALID_REQUEST, MAX_DIMENSIONS_EXCEEDED, MAX_ELEMENTS_EXCEEDED, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR]); }

  const DistanceMatrixStatus._(String jsName) : super.fromJsName(jsName);
}

class DistanceMatrixElementStatus extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.DistanceMatrixElementStatus";

  static const DistanceMatrixElementStatus NOT_FOUND = const DistanceMatrixElementStatus._("${_TYPE_NAME}.NOT_FOUND");
  static const DistanceMatrixElementStatus OK = const DistanceMatrixElementStatus._("${_TYPE_NAME}.OK");
  static const DistanceMatrixElementStatus ZERO_RESULTS = const DistanceMatrixElementStatus._("${_TYPE_NAME}.ZERO_RESULTS");

  static DistanceMatrixElementStatus find(Object o) { return js.JsConst.findIn(o, [NOT_FOUND, OK, ZERO_RESULTS]); }

  const DistanceMatrixElementStatus._(String jsName) : super.fromJsName(jsName);
}

class MapType extends js.JsAnonymousObject {
  MapType() : super();
  MapType.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  html.Node getTile(Point tileCoord, num zoom, html.Document ownerDocument) => js.callFunction(this, "getTile", [tileCoord, zoom, ownerDocument]);
  html.Node releaseTile(html.Node tile) => js.callFunction(this, "releaseTile", [tile]);

  String get alt() => js.getProperty(this, "alt");
         set alt(String alt) => js.setProperty(this, "alt", alt);
  num get maxZoom() => js.getProperty(this, "maxZoom");
      set maxZoom(num maxZoom) => js.setProperty(this, "maxZoom", maxZoom);
  num get minZoom() => js.getProperty(this, "minZoom");
      set minZoom(num minZoom) => js.setProperty(this, "minZoom", minZoom);
  String get name() => js.getProperty(this, "name");
         set name(String name) => js.setProperty(this, "name", name);
  Projection get projection() => new Projection.fromJsRef(js.getProperty(this, "projection"));
             set projection(Projection projection) => js.setProperty(this, "projection", projection);
  num get radius() => js.getProperty(this, "radius");
      set radius(num radius) => js.setProperty(this, "radius", radius);
  Size get tileSize() => new Size.fromJsRef(js.getProperty(this, "tileSize"));
       set tileSize(Size tileSize) => js.setProperty(this, "tileSize", tileSize);
}

class MapTypeRegistry extends MVCObject {
  static const String _TYPE_NAME = "google.maps.MapTypeRegistry";

  MapTypeRegistry() : super.newInstance(_TYPE_NAME);
  MapTypeRegistry.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void set_(String id, MapType mapType) { js.callFunction(this, "set", [id, mapType]); }
}

class Projection extends js.JsAnonymousObject {
  Projection() : super();
  Projection.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Point fromLatLngToPoint(LatLng latLng, [Point point]) => new Point.fromJsRef(js.callFunction(this, "fromLatLngToPoint", [latLng, point]));
  LatLng fromPointToLatLng(Point pixel, [bool nowrap]) => new LatLng.fromJsRef(js.callFunction(this, "fromPointToLatLng", [pixel, nowrap]));
}

class ImageMapType extends MVCObject {
  static const String _TYPE_NAME = "google.maps.ImageMapType";

  ImageMapType(ImageMapTypeOptions opts) : super.newInstance(_TYPE_NAME, [opts]);
  ImageMapType.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  num getOpacity() { js.callFunction(this, "getOpacity"); }
  void setOpacity(num opacity) { js.callFunction(this, "setOpacity", [opacity]); }
}

class ImageMapTypeOptions extends js.JsAnonymousObject {
  set alt(String alt) => js.setProperty(this, "alt", alt);
  set getTileUrl(String callback(Point point, num zoomLevel)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      return callback(new Point.fromJsRef(args[0]), args[1]);
    };
    js.setProperty(this, "getTileUrl", callbackFunction);
  }
  set maxZoom(num maxZoom) => js.setProperty(this, "maxZoom", maxZoom);
  set minZoom(num minZoom) => js.setProperty(this, "minZoom", minZoom);
  set name(String name) => js.setProperty(this, "name", name);
  set opacity(num opacity) => js.setProperty(this, "opacity", opacity);
  set tileSize(Size tileSize) => js.setProperty(this, "tileSize", tileSize);
}

class StyledMapType extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.StyledMapType";

  StyledMapType(List<MapTypeStyle> styles, [StyledMapTypeOptions options]) : super.newInstance(_TYPE_NAME, [styles, options]);
}

class StyledMapTypeOptions extends js.JsAnonymousObject {
  set alt(String alt) => js.setProperty(this, "alt", alt);
  set maxZoom(num maxZoom) => js.setProperty(this, "maxZoom", maxZoom);
  set minZoom(num minZoom) => js.setProperty(this, "minZoom", minZoom);
  set name(String name) => js.setProperty(this, "name", name);
}

class MapTypeStyle extends js.JsAnonymousObject {
  set elementType(MapTypeStyleElementType elementType) => js.setProperty(this, "elementType", elementType);
  set featureType(MapTypeStyleFeatureType featureType) => js.setProperty(this, "featureType", featureType);
  set stylers(List<MapTypeStyler> stylers) => js.setProperty(this, "stylers", stylers);
}

class MapTypeStyleFeatureType extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.MapTypeStyleFeatureType";

  static const MapTypeStyleFeatureType ADMINISTRATIVE = const MapTypeStyleFeatureType._("${_TYPE_NAME}.administrative");
  static const MapTypeStyleFeatureType ADMINISTRATIVE_COUNTRY = const MapTypeStyleFeatureType._("${_TYPE_NAME}.administrative.country");
  static const MapTypeStyleFeatureType ADMINISTRATIVE_LAND_PARCEL = const MapTypeStyleFeatureType._("${_TYPE_NAME}.administrative.land_parcel");
  static const MapTypeStyleFeatureType ADMINISTRATIVE_LOCALITY = const MapTypeStyleFeatureType._("${_TYPE_NAME}.administrative.locality");
  static const MapTypeStyleFeatureType ADMINISTRATIVE_NEIGHBORHOOD = const MapTypeStyleFeatureType._("${_TYPE_NAME}.administrative.neighborhood");
  static const MapTypeStyleFeatureType ADMINISTRATIVE_PROVINCE = const MapTypeStyleFeatureType._("${_TYPE_NAME}.administrative.province");
  static const MapTypeStyleFeatureType ALL = const MapTypeStyleFeatureType._("${_TYPE_NAME}.all");
  static const MapTypeStyleFeatureType LANDSCAPE = const MapTypeStyleFeatureType._("${_TYPE_NAME}.landscape");
  static const MapTypeStyleFeatureType LANDSCAPE_MAN_MADE = const MapTypeStyleFeatureType._("${_TYPE_NAME}.landscape.man_made");
  static const MapTypeStyleFeatureType LANDSCAPE_NATURAL = const MapTypeStyleFeatureType._("${_TYPE_NAME}.landscape.natural");
  static const MapTypeStyleFeatureType POI = const MapTypeStyleFeatureType._("${_TYPE_NAME}.poi");
  static const MapTypeStyleFeatureType POI_ATTRACTION = const MapTypeStyleFeatureType._("${_TYPE_NAME}.poi.attraction");
  static const MapTypeStyleFeatureType POI_BUSINESS = const MapTypeStyleFeatureType._("${_TYPE_NAME}.poi.business");
  static const MapTypeStyleFeatureType POI_GOVERNMENT = const MapTypeStyleFeatureType._("${_TYPE_NAME}.poi.government");
  static const MapTypeStyleFeatureType POI_MEDICAL = const MapTypeStyleFeatureType._("${_TYPE_NAME}.poi.medical");
  static const MapTypeStyleFeatureType POI_PARK = const MapTypeStyleFeatureType._("${_TYPE_NAME}.poi.park");
  static const MapTypeStyleFeatureType POI_PLACE_OF_WORSHIP = const MapTypeStyleFeatureType._("${_TYPE_NAME}.poi.place_of_worship");
  static const MapTypeStyleFeatureType POI_SCHOOL = const MapTypeStyleFeatureType._("${_TYPE_NAME}.poi.school");
  static const MapTypeStyleFeatureType POI_SPORTS_COMPLEX = const MapTypeStyleFeatureType._("${_TYPE_NAME}.poi.sports_complex");
  static const MapTypeStyleFeatureType ROAD = const MapTypeStyleFeatureType._("${_TYPE_NAME}.road");
  static const MapTypeStyleFeatureType ROAD_ARTERIAL = const MapTypeStyleFeatureType._("${_TYPE_NAME}.road.arterial");
  static const MapTypeStyleFeatureType ROAD_HIGHWAY = const MapTypeStyleFeatureType._("${_TYPE_NAME}.road.highway");
  static const MapTypeStyleFeatureType ROAD_HIGHWAY_CONTROLLED_ACCESS = const MapTypeStyleFeatureType._("${_TYPE_NAME}.road.highway.controlled_access");
  static const MapTypeStyleFeatureType ROAD_LOCAL = const MapTypeStyleFeatureType._("${_TYPE_NAME}.road.local");
  static const MapTypeStyleFeatureType TRANSIT = const MapTypeStyleFeatureType._("${_TYPE_NAME}.transit");
  static const MapTypeStyleFeatureType TRANSIT_LINE = const MapTypeStyleFeatureType._("${_TYPE_NAME}.transit.line");
  static const MapTypeStyleFeatureType TRANSIT_STATION = const MapTypeStyleFeatureType._("${_TYPE_NAME}.transit.station");
  static const MapTypeStyleFeatureType TRANSIT_STATION_AIRPORT = const MapTypeStyleFeatureType._("${_TYPE_NAME}.transit.station.airport");
  static const MapTypeStyleFeatureType TRANSIT_STATION_BUS = const MapTypeStyleFeatureType._("${_TYPE_NAME}.transit.station.bus");
  static const MapTypeStyleFeatureType TRANSIT_STATION_RAIL = const MapTypeStyleFeatureType._("${_TYPE_NAME}.transit.station.rail");
  static const MapTypeStyleFeatureType WATER = const MapTypeStyleFeatureType._("${_TYPE_NAME}.water");

  static MapTypeStyleFeatureType find(Object o) { return js.JsConst.findIn(o, [ADMINISTRATIVE, ADMINISTRATIVE_COUNTRY, ADMINISTRATIVE_LAND_PARCEL, ADMINISTRATIVE_LOCALITY, ADMINISTRATIVE_NEIGHBORHOOD, ADMINISTRATIVE_PROVINCE, ALL, LANDSCAPE, LANDSCAPE_MAN_MADE, LANDSCAPE_NATURAL, POI, POI_ATTRACTION, POI_BUSINESS, POI_GOVERNMENT, POI_MEDICAL, POI_PARK, POI_PLACE_OF_WORSHIP, POI_SCHOOL, POI_SPORTS_COMPLEX, ROAD, ROAD_ARTERIAL, ROAD_HIGHWAY, ROAD_HIGHWAY_CONTROLLED_ACCESS, ROAD_LOCAL, TRANSIT, TRANSIT_LINE, TRANSIT_STATION, TRANSIT_STATION_AIRPORT, TRANSIT_STATION_BUS, TRANSIT_STATION_RAIL, WATER]); }

  const MapTypeStyleFeatureType._(String jsName) : super.fromJsName(jsName);
}

class MapTypeStyleElementType extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.MapTypeStyleElementType";

  static const MapTypeStyleElementType ALL = const MapTypeStyleElementType._("${_TYPE_NAME}.all");
  static const MapTypeStyleElementType GEOMETRY = const MapTypeStyleElementType._("${_TYPE_NAME}.geometry");
  static const MapTypeStyleElementType LABELS = const MapTypeStyleElementType._("${_TYPE_NAME}.labels");

  static MapTypeStyleElementType find(Object o) { return js.JsConst.findIn(o, [ALL, GEOMETRY, LABELS]); }

  const MapTypeStyleElementType._(String jsName) : super.fromJsName(jsName);
}

class MapTypeStyler extends js.JsAnonymousObject {
  set gamma(num gamma) => js.setProperty(this, "gamma", gamma);
  set hue(String hue) => js.setProperty(this, "hue", hue);
  set invert_lightness(bool invert_lightness) => js.setProperty(this, "invert_lightness", invert_lightness);
  set lightness(num lightness) => js.setProperty(this, "lightness", lightness);
  set saturation(num saturation) => js.setProperty(this, "saturation", saturation);
  set visibility(String visibility) => js.setProperty(this, "visibility", visibility);
}

class BicyclingLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.BicyclingLayer";

  BicyclingLayer() : super.newInstance(_TYPE_NAME);
  BicyclingLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
}

class FusionTablesLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.FusionTablesLayer";

  FusionTablesLayer(FusionTablesLayerOptions options) : super.newInstance(_TYPE_NAME, [options]);
  FusionTablesLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
  void setOptions(FusionTablesLayerOptions options) { js.callFunction(this, "setOptions", [options]); }
}

class FusionTablesLayerOptions extends js.JsAnonymousObject {
  set clickable(bool clickable) => js.setProperty(this, "clickable", clickable);
  set heatmap(FusionTablesHeatmap hueheatmap) => js.setProperty(this, "heatmap", heatmap);
  set map(GMap map) => js.setProperty(this, "map", map);
  set query(FusionTablesQuery query) => js.setProperty(this, "query", query);
  set styles(List<FusionTablesStyle> styles) => js.setProperty(this, "styles", styles);
  set suppressInfoWindows(bool suppressInfoWindows) => js.setProperty(this, "suppressInfoWindows", suppressInfoWindows);
}

class FusionTablesQuery extends js.JsAnonymousObject {
  set from(String from) => js.setProperty(this, "from", from);
  set limit(num limit) => js.setProperty(this, "limit", limit);
  set offset(num offset) => js.setProperty(this, "offset", offset);
  set orderBy(String orderBy) => js.setProperty(this, "orderBy", orderBy);
  set select(String select) => js.setProperty(this, "select", select);
  set where(String where) => js.setProperty(this, "where", where);
}

class FusionTablesStyle extends js.JsAnonymousObject {
  set markerOptions(FusionTablesMarkerOptions markerOptions) => js.setProperty(this, "markerOptions", markerOptions);
  set polygonOptions(FusionTablesPolygonOptions polygonOptions) => js.setProperty(this, "polygonOptions", polygonOptions);
  set polylineOptions(FusionTablesPolylineOptions polylineOptions) => js.setProperty(this, "polylineOptions", polylineOptions);
  set where(String where) => js.setProperty(this, "where", where);
}

class FusionTablesHeatmap extends js.JsAnonymousObject {
  set enabled(bool enabled) => js.setProperty(this, "enabled", enabled);
}

class FusionTablesMarkerOptions extends js.JsAnonymousObject {
  set iconName(String iconName) => js.setProperty(this, "iconName", iconName);
}

class FusionTablesPolygonOptions extends js.JsAnonymousObject {
  set fillColor(String fillColor) => js.setProperty(this, "fillColor", fillColor);
  set fillOpacity(num fillOpacity) => js.setProperty(this, "fillOpacity", fillOpacity);
  set strokeColor(String strokeColor) => js.setProperty(this, "strokeColor", strokeColor);
  set strokeOpacity(num strokeOpacity) => js.setProperty(this, "strokeOpacity", strokeOpacity);
  set strokeWeight(num strokeWeight) => js.setProperty(this, "strokeWeight", strokeWeight);
}

class FusionTablesPolylineOptions extends js.JsAnonymousObject {
  set strokeColor(String strokeColor) => js.setProperty(this, "strokeColor", strokeColor);
  set strokeOpacity(num strokeOpacity) => js.setProperty(this, "strokeOpacity", strokeOpacity);
  set strokeWeight(num strokeWeight) => js.setProperty(this, "strokeWeight", strokeWeight);
}

class FusionTablesMouseEvent extends NativeEvent {
  FusionTablesMouseEvent();
  FusionTablesMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }
  
  String get infoWindowHtml => js.getProperty(this, "infoWindowHtml");
  LatLng get latLng => new LatLng.fromJsRef(js.getProperty(this, "latLng"));
  Size get pixelOffset => new Size.fromJsRef(js.getProperty(this, "pixelOffset"));
  // TODO improve return type ( should be Map<String, FusionTablesCell> )
  js.JsRef get row => js.getProperty(this, "row");
}

class FusionTablesCell extends js.JsAnonymousObject {
  String get columnName() => js.getProperty(this, "columnName");
         set columnName(String columnName) => js.setProperty(this, "columnName", columnName);
  String get value() => js.getProperty(this, "value");
         set value(String value) => js.setProperty(this, "value", value);
}

class KmlLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.KmlLayer";

  KmlLayer(String url, [KmlLayerOptions options]) : super.newInstance(_TYPE_NAME, [url, options]);
  KmlLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getDefaultViewport() => new LatLngBounds.fromJsRef(js.callFunction(this, "getDefaultViewport"));
  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  KmlLayerMetadata getMetadata() => new KmlLayerMetadata.fromJsRef(js.callFunction(this, "getMetadata"));
  KmlLayerStatus getStatus() => KmlLayerStatus.find(js.callFunction(this, "getStatus"));
  String getUrl() => js.callFunction(this, "getUrl");
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
}

class KmlLayerOptions extends js.JsAnonymousObject {
  set clickable(bool clickable) => js.setProperty(this, "clickable", clickable);
  set map(GMap map) => js.setProperty(this, "map", map);
  set preserveViewport(bool preserveViewport) => js.setProperty(this, "preserveViewport", preserveViewport);
  set suppressInfoWindows(bool suppressInfoWindows) => js.setProperty(this, "suppressInfoWindows", suppressInfoWindows);
}

class KmlLayerMetadata extends js.JsAnonymousObject {
  KmlLayerMetadata.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  KmlAuthor get author() => new KmlAuthor.fromJsRef(js.getProperty(this, "author"));
  String get description() => js.getProperty(this, "description");
  String get name() => js.getProperty(this, "name");
  String get snippet() => js.getProperty(this, "snippet");
}

class KmlLayerStatus extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.KmlLayerStatus";

  static const KmlLayerStatus DOCUMENT_NOT_FOUND = const KmlLayerStatus._("${_TYPE_NAME}.DOCUMENT_NOT_FOUND");
  static const KmlLayerStatus DOCUMENT_TOO_LARGE = const KmlLayerStatus._("${_TYPE_NAME}.DOCUMENT_TOO_LARGE");
  static const KmlLayerStatus FETCH_ERROR = const KmlLayerStatus._("${_TYPE_NAME}.FETCH_ERROR");
  static const KmlLayerStatus INVALID_DOCUMENT = const KmlLayerStatus._("${_TYPE_NAME}.INVALID_DOCUMENT");
  static const KmlLayerStatus INVALID_REQUEST = const KmlLayerStatus._("${_TYPE_NAME}.INVALID_REQUEST");
  static const KmlLayerStatus LIMITS_EXCEEDED = const KmlLayerStatus._("${_TYPE_NAME}.LIMITS_EXCEEDED");
  static const KmlLayerStatus OK = const KmlLayerStatus._("${_TYPE_NAME}.OK");
  static const KmlLayerStatus TIMED_OUT = const KmlLayerStatus._("${_TYPE_NAME}.TIMED_OUT");
  static const KmlLayerStatus UNKNOWN = const KmlLayerStatus._("${_TYPE_NAME}.UNKNOWN");

  static KmlLayerStatus find(Object o) { return js.JsConst.findIn(o, [DOCUMENT_NOT_FOUND, DOCUMENT_TOO_LARGE, FETCH_ERROR, INVALID_DOCUMENT, INVALID_REQUEST, LIMITS_EXCEEDED, OK, TIMED_OUT, UNKNOWN]); }

  const KmlLayerStatus._(String jsName) : super.fromJsName(jsName);
}

class KmlMouseEvent extends NativeEvent {
  KmlMouseEvent();
  KmlMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }
  
  KmlFeatureData get featureData => new KmlFeatureData.fromJsRef(js.getProperty(this, "featureData"));
  LatLng get latLng => new LatLng.fromJsRef(js.getProperty(this, "latLng"));
  Size get pixelOffset => new Size.fromJsRef(js.getProperty(this, "pixelOffset"));
}

class KmlFeatureData extends js.JsAnonymousObject {
  KmlFeatureData.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  KmlAuthor get author => new KmlAuthor.fromJsRef(js.getProperty(this, "author"));
  String get description => js.getProperty(this, "description");
  String get id => js.getProperty(this, "id");
  String get infoWindowHtml => js.getProperty(this, "infoWindowHtml");
  String get name => js.getProperty(this, "name");
  String get snippet => js.getProperty(this, "snippet");
}

class KmlAuthor extends js.JsAnonymousObject {
  KmlAuthor.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get email => js.getProperty(this, "email");
  String get name => js.getProperty(this, "name");
  String get uri => js.getProperty(this, "uri");
}

class TrafficLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.TrafficLayer";

  TrafficLayer() : super.newInstance(_TYPE_NAME);
  TrafficLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
}

class TransitLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.TransitLayer";

  TransitLayer() : super.newInstance(_TYPE_NAME);
  TransitLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => new GMap.fromJsRef(js.callFunction(this, "getMap"));
  void setMap(GMap map) { js.callFunction(this, "setMap", [map]); }
}

class StreetViewPanorama extends MVCObject {
  static const String _TYPE_NAME = "google.maps.StreetViewPanorama";

  StreetViewPanorama(html.Node container, [StreetViewPanoramaOptions opts]) : super.newInstance(_TYPE_NAME, [container, opts]);
  StreetViewPanorama.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<StreetViewLink> getLinks() {
    List<js.JsRef> resultsRefs = js.callFunction(this, "getLinks");
    return resultsRefs.map((e) => new StreetViewLink.fromJsRef(e));
  }
  String getPano() => js.callFunction(this, "getPano");
  LatLng getPosition() => new LatLng.fromJsRef(js.callFunction(this, "getPosition"));
  StreetViewPov getPov() => new StreetViewPov.fromJsRef(js.callFunction(this, "getPov"));
  bool getVisible() => js.callFunction(this, "getVisible");
  void registerPanoProvider(StreetViewPanoramaData provider(String pano)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      return provider(args[0]);
    };
    js.callFunction(this, "registerPanoProvider", [callbackFunction]);
  }
  void setPano(String pano) { js.callFunction(this, "setPano", [pano]); }
  void setPosition(LatLng latLng) { js.callFunction(this, "setPosition", [latLng]); }
  void setPov(StreetViewPov pov) { js.callFunction(this, "setPov", [pov]); }
  void setVisible(bool flag) { js.callFunction(this, "setVisible", [flag]); }

  List<MVCArray<html.Node>> get controls()  {
                              List<js.JsRef> resultsRefs = js.getProperty(this, "controls");
                              return resultsRefs.map((e) => new MVCArray.fromJsRef(e));
                            }
                            set controls(List<MVCArray<html.Node>> controls) => js.setProperty(this, "controls", controls);
}

class StreetViewPanoramaOptions extends js.JsAnonymousObject {
  set addressControl(bool addressControl) => js.setProperty(this, "addressControl", addressControl);
  set addressControlOptions(StreetViewAddressControlOptions addressControlOptions) => js.setProperty(this, "addressControlOptions", addressControlOptions);
  set clickToGo(bool clickToGo) => js.setProperty(this, "clickToGo", clickToGo);
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => js.setProperty(this, "disableDoubleClickZoom", disableDoubleClickZoom);
  set enableCloseButton(bool enableCloseButton) => js.setProperty(this, "enableCloseButton", enableCloseButton);
  set imageDateControl(bool imageDateControl) => js.setProperty(this, "imageDateControl", imageDateControl);
  set linksControl(bool linksControl) => js.setProperty(this, "linksControl", linksControl);
  set panControl(bool panControl) => js.setProperty(this, "panControl", panControl);
  set panControlOptions(PanControlOptions panControlOptions) => js.setProperty(this, "panControlOptions", panControlOptions);
  set pano(String pano) => js.setProperty(this, "pano", pano);
  set panoProvider(StreetViewPanoramaData provider(String pano)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      return provider(args[0]);
    };
    js.setProperty(this, "panoProvider", callbackFunction);
  }
  set position(LatLng position) => js.setProperty(this, "position", position);
  set pov(StreetViewPov pov) => js.setProperty(this, "pov", pov);
  set scrollwheel(bool scrollwheel) => js.setProperty(this, "scrollwheel", scrollwheel);
  set visible(bool visible) => js.setProperty(this, "visible", visible);
  set zoomControl(bool zoomControl) => js.setProperty(this, "zoomControl", zoomControl);
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => js.setProperty(this, "zoomControlOptions", zoomControlOptions);
}

class StreetViewAddressControlOptions extends js.JsAnonymousObject {
  set position(ControlPosition position) => js.setProperty(this, "position", position);
}

class StreetViewLink extends js.JsAnonymousObject {
  StreetViewLink.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get description => js.getProperty(this, "description");
         set description(String description) => js.setProperty(this, "description", description);
  num get heading => js.getProperty(this, "heading");
      set heading(num heading) => js.setProperty(this, "heading", heading);
  String get pano => js.getProperty(this, "pano");
         set pano(String pano) => js.setProperty(this, "pano", pano);
}

class StreetViewPov extends js.JsAnonymousObject {
  StreetViewPov.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  num get heading => js.getProperty(this, "heading");
  num get pitch => js.getProperty(this, "pitch");
  num get zoom => js.getProperty(this, "zoom");
}

class StreetViewPanoramaData extends js.JsAnonymousObject {
  StreetViewPanoramaData() : super();
  StreetViewPanoramaData.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);
  
  set copyright(String copyright) => js.setProperty(this, "copyright", copyright);
  set imageDate(String imageDate) => js.setProperty(this, "imageDate", imageDate);
  set links(List<StreetViewLink> links) => js.setProperty(this, "links", links);
  set location(StreetViewLocation location) => js.setProperty(this, "location", location);
  set tiles(StreetViewTileData tiles) => js.setProperty(this, "tiles", tiles);
}

class StreetViewLocation extends js.JsAnonymousObject {
  set description(String description) => js.setProperty(this, "description", description);
  set latLng(LatLng latLng) => js.setProperty(this, "latLng", latLng);
  set pano(String pano) => js.setProperty(this, "pano", pano);
}

class StreetViewTileData extends js.JsAnonymousObject {
  String getTileUrl(String pano, num tileZoom, num tileX, num tileY) => js.callFunction(this, "getTileUrl", [pano, tileZoom, tileX, tileY]);

  set centerHeading(num centerHeading) => js.setProperty(this, "centerHeading", centerHeading);
  set tileSize(Size tileSize) => js.setProperty(this, "tileSize", tileSize);
  set worldSize(Size worldSize) => js.setProperty(this, "worldSize", worldSize);
}

class StreetViewService extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.StreetViewService";

  StreetViewService() : super.newInstance(_TYPE_NAME);

  void getPanoramaById(String pano, void callback(StreetViewPanoramaData streetViewPanoramaData, StreetViewStatus streetViewStatus)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new StreetViewPanoramaData.fromJsRef(args[0]), StreetViewStatus.find(args[1]));
    };
    js.callFunction(this, "getPanoramaById", [pano, callbackFunction]);
  }
  void getPanoramaByLocation(LatLng latlng, num radius, void callback(StreetViewPanoramaData streetViewPanoramaData, StreetViewStatus streetViewStatus)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new StreetViewPanoramaData.fromJsRef(args[0]), StreetViewStatus.find(args[1]));
    };
    js.callFunction(this, "getPanoramaByLocation", [latlng, radius, callbackFunction]);
  }
}

class StreetViewStatus extends js.JsConst {
  static const String _TYPE_NAME = "google.maps.StreetViewStatus";

  static const StreetViewStatus OK = const StreetViewStatus._("${_TYPE_NAME}.OK");
  static const StreetViewStatus UNKNOWN_ERROR = const StreetViewStatus._("${_TYPE_NAME}.UNKNOWN_ERROR");
  static const StreetViewStatus ZERO_RESULTS = const StreetViewStatus._("${_TYPE_NAME}.ZERO_RESULTS");

  static StreetViewStatus find(Object o) { return js.JsConst.findIn(o, [OK, UNKNOWN_ERROR, ZERO_RESULTS]); }

  const StreetViewStatus._(String jsName) : super.fromJsName(jsName);
}

class MapsEventListener extends js.JsObject {
  MapsEventListener.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);
}

class NativeEvent extends js.JsObject {
  NativeEvent() : super();
  NativeEvent.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);
}

class Events {
  static const String _TYPE_NAME = "google.maps.event";

  static MapsEventListener addDomListener(Object instance, String eventName, void handler(NativeEvent e), [bool capture]) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.callFunction(null, "${_TYPE_NAME}.addDomListener", [instance, eventName, callback, capture]));
  }
  static MapsEventListener addDomListenerOnce(Object instance, String eventName, void handler(NativeEvent e), [bool capture]) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.callFunction(null, "${_TYPE_NAME}.addDomListenerOnce", [instance, eventName, callback, capture]));
  }
  static MapsEventListener addListener(js.IsJsObject instance, String eventName, void handler(NativeEvent e)) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.callFunction(null, "${_TYPE_NAME}.addListener", [instance, eventName, callback]));
  }
  static MapsEventListener addListenerOnce(js.IsJsObject instance, String eventName, void handler(NativeEvent e)) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.callFunction(null, "${_TYPE_NAME}.addListenerOnce", [instance, eventName, callback]));
  }
  static void clearInstanceListeners(js.IsJsObject instance) { js.callFunction(null, "${_TYPE_NAME}.clearInstanceListeners", [instance]); }
  static void clearListeners(js.IsJsObject instance, String eventName) { js.callFunction(null, "${_TYPE_NAME}.clearListeners", [instance, eventName]); }
  static void removeListener(MapsEventListener listener) { js.callFunction(null, "${_TYPE_NAME}.removeListener", [listener]); }
  static void trigger(js.IsJsObject instance, String eventName, List<Object> args) {
    final parameters = new List<Object>();
    parameters.add(instance);
    parameters.add(eventName);
    parameters.addAll(args);
    js.callFunction(null, "${_TYPE_NAME}.trigger", parameters);
  }
}

class MouseEvent extends NativeEvent {
  MouseEvent();
  MouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }
  
  LatLng get latLng => new LatLng.fromJsRef(js.getProperty(this, "latLng"));
}

class LatLng extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.LatLng";

  LatLng(num lat, num lng, [bool noWrap]) : super.newInstance(_TYPE_NAME, [lat, lng, noWrap]);
  LatLng.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool equals(LatLng other) => js.callFunction(this, "equals", [other]);
  num lat() => js.callFunction(this, "lat");
  num lng() => js.callFunction(this, "lng");
  String toString() => js.callFunction(this, "toString");
  String toUrlValue([num precision]) => js.callFunction(this, "toUrlValue", [precision]);
}

class LatLngBounds extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.LatLngBounds";

  LatLngBounds([LatLng sw, LatLng ne]) : super.newInstance(_TYPE_NAME, [sw, ne]);
  LatLngBounds.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool contains(LatLng latLng) => js.callFunction(this, "contains", [latLng]);
  bool equals(LatLngBounds other) => js.callFunction(this, "equals", [other]);
  LatLngBounds extend(LatLng point) => new LatLngBounds.fromJsRef(js.callFunction(this, "extend", [point]));
  LatLng getCenter() => new LatLng.fromJsRef(js.callFunction(this, "getCenter"));
  LatLng getNorthEast() => new LatLng.fromJsRef(js.callFunction(this, "getNorthEast"));
  LatLng getSouthWest() => new LatLng.fromJsRef(js.callFunction(this, "getSouthWest"));
  bool intersects(LatLngBounds other) => js.callFunction(this, "intersects", [other]);
  bool isEmpty() => js.callFunction(this, "isEmpty");
  LatLng toSpan() => new LatLng.fromJsRef(js.callFunction(this, "toSpan"));
  String toString() => js.callFunction(this, "toString");
  String toUrlValue([num precision]) => js.callFunction(this, "toUrlValue", [precision]);
  bool union(LatLngBounds other) => js.callFunction(this, "union", [other]);
}

class Point extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.Point";

  Point(num x, num y) : super.newInstance(_TYPE_NAME, [x, y]);
  Point.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool equals(Point other) => js.callFunction(this, "equals", [other]);
  String toString() => js.callFunction(this, "toString");

  num get x => js.getProperty(this, "x");
      set x(num x) => js.setProperty(this, "x", x);
  num get y => js.getProperty(this, "y");
      set y(num y) => js.setProperty(this, "y", y);
}

class Size extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.Size";

  Size(num width, num height, [String widthUnit, String heightUnit]) : super.newInstance(_TYPE_NAME, [width, height, widthUnit, heightUnit]);
  Size.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool equals(Size other) => js.callFunction(this, "equals", [other]);
  String toString() => js.callFunction(this, "toString");

  num get height => js.getProperty(this, "height");
      set height(num height) => js.setProperty(this, "height", height);
  num get width => js.getProperty(this, "width");
      set width(num width) => js.setProperty(this, "width", width);
}

class MVCObject extends js.JsObject {
  static const String _TYPE_NAME = "google.maps.MVCObject";

  MVCObject() : super.newInstance(_TYPE_NAME);
  MVCObject.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);
  MVCObject.newInstance(String objectName, [List args]) : super.newInstance(objectName, args);

  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]) { js.callFunction(this, "bindTo", [key, target, targetKey, noNotify]); }
  void changed(String key) { js.callFunction(this, "changed", [key]); }
  Object get_(String key) => js.callFunction(this, "get", [key]);
  void notify(String key) { js.callFunction(this, "notify", [key]); }
  void set_(String key, Object value) { js.callFunction(this, "set", [key, value]); }
  void setValues(Map<String, Object> values) {
    final valuesJs = new js.JsAnonymousObject();
    values.forEach((String key, Object value) {
      js.setProperty(this, key, value);
    });
    js.callFunction(this, "setValues", [valuesJs]);
  }
  void unbind(String key) { js.callFunction(this, "unbind", [key]); }
  void unbindAll() { js.callFunction(this, "unbindAll"); }
}

typedef Object JsRefWrapper(js.JsRef jsRef);

class MVCArray<E> extends MVCObject {
  JsRefWrapper _jsRefWrapper;

  MVCArray([List<E> array, JsRefWrapper jsRefWrapper]) : super.newInstance("google.maps.MVCArray", [array]) {
    _jsRefWrapper = jsRefWrapper; 
  }
  MVCArray.fromJsRef(js.JsRef jsRef, [JsRefWrapper jsRefWrapper]) : super.fromJsRef(jsRef) {
    _jsRefWrapper = jsRefWrapper; 
  }

  void clear() { js.callFunction(this, "clear"); }
  void forEach(void callback(E o, num index)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(_mayWrap(args[0]), args[1]);
    };
    js.callFunction(this, "forEach", [callbackFunction]);
  }
  List<E> getArray() {
    final List result = js.callFunction(this, "getArray");
    return result.map(_mayWrap);
  }
  E getAt(num i) => _mayWrap(js.callFunction(this, "getAt", [i]));
  num getLength() => js.callFunction(this, "getLength");
  void insertAt(num i, E elem) { js.callFunction(this, "insertAt", [i, elem]); }
  E pop() => _mayWrap(js.callFunction(this, "pop"));
  num push(E elem) => js.callFunction(this, "push", [elem]);
  E removeAt(num i) => _mayWrap(js.callFunction(this, "removeAt", [i]));
  void setAt(num i, E elem) { js.callFunction(this, "setAt", [i, elem]); }

  E _mayWrap(Object o) {
    if (_jsRefWrapper !== null && o is js.JsRef) {
      return _jsRefWrapper(o);
    }
    return o;
  }
}


