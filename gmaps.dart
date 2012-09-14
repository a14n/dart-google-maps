#library('gmaps');

#import('dart:html', prefix:'html');
#import('jsni.dart', prefix:'js');
#source('utils.dart');

// start GMaps wrapping

class GMap extends MVCObject {
  static const String TYPE_NAME = "google.maps.Map";

  GMap(html.Node mapDiv, [MapOptions opts]) : super.newInstance(TYPE_NAME, [mapDiv, opts]);
  GMap.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void fitBounds(LatLngBounds bounds) { callJs("fitBounds", [bounds]); }
  LatLngBounds getBounds() => new LatLngBounds.fromJsRef(callJs("getBounds"));
  LatLng getCenter() => new LatLng.fromJsRef(callJs("getCenter"));
  html.Node getDiv() => callJs("getDiv");
  num getHeading() => callJs("getHeading");
  Object getMapTypeId() {
    final result = callJs("getMapTypeId");
    final mapTypeId = MapTypeId.find(result);
    if ( mapTypeId !== null ) {
      return mapTypeId;
    } else {
      return result;
    }
  }
  Projection getProjection() => new Projection.fromJsRef(callJs("getProjection"));
  StreetViewPanorama getStreetView() => new StreetViewPanorama.fromJsRef(callJs("getStreetView"));
  num getTilt() => callJs("getTilt");
  num getZoom() => callJs("getZoom");
  void panBy(num x, num y) { callJs("panBy", [x, y]); }
  void panTo(LatLng latLng) { callJs("panTo", [latLng]); }
  void panToBounds(LatLngBounds latLngBounds) { callJs("panToBounds", [latLngBounds]); }
  void setCenter(LatLng latLng) { callJs("setCenter", [latLng]); }
  void setHeading(num heading) { callJs("setHeading", [heading]); }
  void setMapTypeId(Object mapTypeId) {
    if (mapTypeId is String || mapTypeId is MapTypeId) {
      callJs("setMapTypeId", [mapTypeId]);
    } else {
      throw new IllegalArgumentException(mapTypeId);
    }
  }
  void setOptions(MapOptions options) { callJs("setOptions", [options]); }
  void setStreetView(StreetViewPanorama panorama) { callJs("setStreetView", [panorama]); }
  void setTilt(num tilt) { callJs("setTilt", [tilt]); }
  void setZoom(num zoom) { callJs("setZoom", [zoom]); }

  Controls get controls => new Controls.fromJsRef(js.getPropertyRef(this, "controls"));
           set controls(Controls controls) => this["controls"] = controls;
  MapTypeRegistry get mapTypes => new MapTypeRegistry.fromJsRef(this["mapTypes"]);
                  set mapTypes(MapTypeRegistry mapTypes) => this["mapTypes"] = mapTypes;
  MVCArray<MapType> get overlayMapTypes => new MVCArray.fromJsRef(this["overlayMapTypes"], (js.JsRef jsRef) => new MapType.fromJsRef(jsRef));
                    set overlayMapTypes(MVCArray<MapType> overlayMapTypes) => this["overlayMapTypes"] = overlayMapTypes;
}

class Controls extends js.JsObject {
  Controls() : super.newInstance("Array");
  Controls.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  MVCArray<html.Node> getNodes(ControlPosition controlPosition) => new MVCArray.fromJsRef(this[controlPosition.value.toString()]);
  void setNodes(ControlPosition controlPosition, MVCArray<html.Node> nodes) { this[controlPosition.value.toString()] = nodes; }
}

class MapOptions extends js.JsObject {
  set backgroundColor(String backgroundColor) => this["backgroundColor"] = backgroundColor;
  set center(LatLng center) => this["center"] = center;
  set disableDefaultUI(bool disableDefaultUI) => this["disableDefaultUI"] = disableDefaultUI;
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => this["disableDoubleClickZoom"] = disableDoubleClickZoom;
  set draggable(bool draggable) => this["draggable"] = draggable;
  set draggableCursor(String draggableCursor) => this["draggableCursor"] = draggableCursor;
  set draggingCursor(String draggingCursor) => this["draggingCursor"] = draggingCursor;
  set heading(num heading) => this["heading"] = heading;
  set keyboardShortcuts(bool keyboardShortcuts) => this["keyboardShortcuts"] = keyboardShortcuts;
  set mapMaker(bool mapMaker) => this["mapMaker"] = mapMaker;
  set mapTypeControl(bool mapTypeControl) => this["mapTypeControl"] = mapTypeControl;
  set mapTypeControlOptions(MapTypeControlOptions mapTypeControlOptions) => this["mapTypeControlOptions"] = mapTypeControlOptions;
  set mapTypeId(Object mapTypeId) {
    if (mapTypeId is String || mapTypeId is MapTypeId) {
      this["mapTypeId"] = mapTypeId;
    } else {
      throw new IllegalArgumentException(mapTypeId);
    }
  }
  set maxZoom(num maxZoom) => this["maxZoom"] = maxZoom;
  set minZoom(num minZoom) => this["minZoom"] = minZoom;
  set noClear(bool noClear) => this["noClear"] = noClear;
  set overviewMapControl(bool overviewMapControl) => this["overviewMapControl"] = overviewMapControl;
  set overviewMapControlOptions(OverviewMapControlOptions overviewMapControlOptions) => this["overviewMapControlOptions"] = overviewMapControlOptions;
  set panControl(bool panControl) => this["panControl"] = panControl;
  set panControlOptions(PanControlOptions panControlOptions) => this["panControlOptions"] = panControlOptions;
  set rotateControl(bool rotateControl) => this["rotateControl"] = rotateControl;
  set rotateControlOptions(RotateControlOptions rotateControlOptions) => this["rotateControlOptions"] = rotateControlOptions;
  set scaleControl(bool scaleControl) => this["scaleControl"] = scaleControl;
  set scaleControlOptions(ScaleControlOptions scaleControlOptions) => this["scaleControlOptions"] = scaleControlOptions;
  set scrollwheel(bool scrollwheel) => this["scrollwheel"] = scrollwheel;
  set streetView(StreetViewPanorama streetView) => this["streetView"] = streetView;
  set streetViewControl(bool streetViewControl) => this["streetViewControl"] = streetViewControl;
  set streetViewControlOptions(StreetViewControlOptions streetViewControlOptions) => this["streetViewControlOptions"] = streetViewControlOptions;
  set styles(List<MapTypeStyle> styles) => this["styles"] = styles;
  set tilt(num tilt) => this["tilt"] = tilt;
  set zoom(num zoom) => this["zoom"] = zoom;
  set zoomControl(bool zoomControl) => this["zoomControl"] = zoomControl;
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => this["zoomControlOptions"] = zoomControlOptions;
}

class MapTypeId extends js.JsConst {
  static const String TYPE_NAME = "google.maps.MapTypeId";

  static const MapTypeId HYBRID = const MapTypeId._("${TYPE_NAME}.HYBRID");
  static const MapTypeId ROADMAP = const MapTypeId._("${TYPE_NAME}.ROADMAP");
  static const MapTypeId SATELLITE = const MapTypeId._("${TYPE_NAME}.SATELLITE");
  static const MapTypeId TERRAIN = const MapTypeId._("${TYPE_NAME}.TERRAIN");

  static MapTypeId find(Object o) { return js.JsConst.findIn(o, [HYBRID, ROADMAP, SATELLITE, TERRAIN]); }

  const MapTypeId._(String jsName) : super.fromJsName(jsName);
}

class MapTypeControlOptions extends js.JsObject {
  set mapTypeIds(List<Object> mapTypeIds) {
    if (!mapTypeIds.filter((e)=> !(e is String || e is MapTypeId)).isEmpty()) {
      throw new IllegalArgumentException("some elements are not String or MapTypeId");
    }
    this["mapTypeIds"] = mapTypeIds;
  }
  set position(ControlPosition position) => this["position"] = position;
  set style(MapTypeControlStyle style) => this["style"] = style;
}

class MapTypeControlStyle extends js.JsConst {
  static const String TYPE_NAME = "google.maps.MapTypeControlStyle";

  static const MapTypeControlStyle DEFAULT = const MapTypeControlStyle._("${TYPE_NAME}.DEFAULT");
  static const MapTypeControlStyle DROPDOWN_MENU = const MapTypeControlStyle._("${TYPE_NAME}.DROPDOWN_MENU");
  static const MapTypeControlStyle HORIZONTAL_BAR = const MapTypeControlStyle._("${TYPE_NAME}.HORIZONTAL_BAR");

  static MapTypeControlStyle find(Object o) { return js.JsConst.findIn(o, [DEFAULT, DROPDOWN_MENU, HORIZONTAL_BAR]); }

  const MapTypeControlStyle._(String jsName) : super.fromJsName(jsName);
}

class OverviewMapControlOptions extends js.JsObject {
  set opened(bool opened) => this["opened"] = opened;
}

class PanControlOptions extends js.JsObject {
  set position(ControlPosition position) => this["position"] = position;
}

class RotateControlOptions extends js.JsObject {
  set position(ControlPosition position) => this["position"] = position;
}

class ScaleControlOptions extends js.JsObject {
  set position(ControlPosition position) => this["position"] = position;
  set style(ScaleControlStyle style) => this["style"] = style;
}

class ScaleControlStyle extends js.JsConst {
  static const String TYPE_NAME = "google.maps.ScaleControlStyle";

  static const ScaleControlStyle DEFAULT = const ScaleControlStyle._("${TYPE_NAME}.DEFAULT");

  static ScaleControlStyle find(Object o) { return js.JsConst.findIn(o, [DEFAULT]); }

  const ScaleControlStyle._(String jsName) : super.fromJsName(jsName);
}

class StreetViewControlOptions extends js.JsObject {
  set position(ControlPosition position) => this["position"] = position;
}

class ZoomControlOptions extends js.JsObject {
  set position(ControlPosition position) => this["position"] = position;
  set style(ZoomControlStyle style) => this["style"] = style;
}

class ZoomControlStyle extends js.JsConst {
  static const String TYPE_NAME = "google.maps.ZoomControlStyle";

  static const ZoomControlStyle DEFAULT = const ZoomControlStyle._("${TYPE_NAME}.DEFAULT");
  static const ZoomControlStyle LARGE = const ZoomControlStyle._("${TYPE_NAME}.LARGE");
  static const ZoomControlStyle SMALL = const ZoomControlStyle._("${TYPE_NAME}.SMALL");

  static ZoomControlStyle find(Object o) { return js.JsConst.findIn(o, [DEFAULT, LARGE, SMALL]); }

  const ZoomControlStyle._(String jsName) : super.fromJsName(jsName);
}

class ControlPosition extends js.JsConst {
  static const String TYPE_NAME = "google.maps.ControlPosition";

  static const ControlPosition BOTTOM_CENTER = const ControlPosition._("${TYPE_NAME}.BOTTOM_CENTER");
  static const ControlPosition BOTTOM_LEFT = const ControlPosition._("${TYPE_NAME}.BOTTOM_LEFT");
  static const ControlPosition BOTTOM_RIGHT = const ControlPosition._("${TYPE_NAME}.BOTTOM_RIGHT");
  static const ControlPosition LEFT_BOTTOM = const ControlPosition._("${TYPE_NAME}.LEFT_BOTTOM");
  static const ControlPosition LEFT_CENTER = const ControlPosition._("${TYPE_NAME}.LEFT_CENTER");
  static const ControlPosition LEFT_TOP = const ControlPosition._("${TYPE_NAME}.LEFT_TOP");
  static const ControlPosition RIGHT_BOTTOM = const ControlPosition._("${TYPE_NAME}.RIGHT_BOTTOM");
  static const ControlPosition RIGHT_CENTER = const ControlPosition._("${TYPE_NAME}.RIGHT_CENTER");
  static const ControlPosition RIGHT_TOP = const ControlPosition._("${TYPE_NAME}.RIGHT_TOP");
  static const ControlPosition TOP_CENTER = const ControlPosition._("${TYPE_NAME}.TOP_CENTER");
  static const ControlPosition TOP_LEFT = const ControlPosition._("${TYPE_NAME}.TOP_LEFT");
  static const ControlPosition TOP_RIGHT = const ControlPosition._("${TYPE_NAME}.TOP_RIGHT");

  static ControlPosition find(Object o) { return js.JsConst.findIn(o, [BOTTOM_CENTER, BOTTOM_LEFT, BOTTOM_RIGHT, LEFT_BOTTOM, LEFT_CENTER, LEFT_TOP, RIGHT_BOTTOM, RIGHT_CENTER, RIGHT_TOP, TOP_CENTER, TOP_LEFT, TOP_RIGHT]); }

  const ControlPosition._(String jsName) : super.fromJsName(jsName);
}

class Marker extends MVCObject {
  static const String TYPE_NAME = "google.maps.Marker";

  // TODO
  // static const num MAX_ZINDEX = js.callFunction(null, "${TYPE_NAME}.MAX_ZINDEX");

  Marker([MarkerOptions opts]) : super.newInstance(TYPE_NAME, [opts]);

  Animation getAnimation() => Animation.find(callJs("getAnimation"));
  bool getClickable() => callJs("getClickable");
  String getCursor() => callJs("getCursor");
  bool getDraggable() => callJs("getDraggable");
  bool getFlat() => callJs("getFlat");
  Object getIcon() {
    final result = callJs("getIcon");
    if (result is String) {
      return result;
    } else if (result is js.JsRef) {
      return new MarkerImage.fromJsRef(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  Object getMap() {
    final result = callJs("getMap");
    if (js.isInstanceOf(result ,GMap.TYPE_NAME)) {
      return new GMap.fromJsRef(result);
    } else if (js.isInstanceOf(result ,StreetViewPanorama.TYPE_NAME)) {
      return new StreetViewPanorama.fromJsRef(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  LatLng getPosition() => new LatLng.fromJsRef(callJs("getPosition"));
  Object getShadow() {
    final result = callJs("getShadow");
    if (result is String) {
      return result;
    } else if (result is js.JsRef) {
      return new MarkerImage.fromJsRef(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  MarkerShape getShape() => new MarkerShape.fromJsRef(callJs("getShape"));
  String getTitle() => callJs("getTitle");
  bool getVisible() => callJs("getVisible");
  num getZIndex() => callJs("getZIndex");
  void setAnimation(Animation animation) { callJs("setAnimation", [animation]); }
  void setClickable(bool flag) { callJs("setClickable", [flag]); }
  void setCursor(String cursor) { callJs("setCursor", [cursor]); }
  void setDraggable(bool flag) { callJs("setDraggable", [flag]); }
  void setFlat(bool flag) { callJs("setFlat", [flag]); }
  void setIcon(Object icon) {
    if (icon is String || icon is MarkerImage) {
      callJs("setIcon", [icon]);
    } else {
      throw new IllegalArgumentException(icon);
    }
  }
  void setMap(Object map) {
    if (map === null || map is GMap || map is StreetViewPanorama) {
      callJs("setMap", [map]);
    } else {
      throw new IllegalArgumentException(map);
    }
  }
  void setOptions(MarkerOptions options) { callJs("setOptions", [options]); }
  void setPosition(LatLng latlng) { callJs("setPosition", [latlng]); }
  void setShadow(Object shadow) {
    if (shadow is String || shadow is MarkerImage) {
      callJs("setShadow", [shadow]);
    } else {
      throw new IllegalArgumentException(shadow);
    }
  }
  void setTitle(String title) { callJs("setTitle", [title]); }
  void setVisible(bool visible) { callJs("setVisible", [visible]); }
  void setZIndex(num zIndex) { callJs("setZIndex", [zIndex]); }
}

class MarkerOptions extends js.JsObject {
  set animation(Animation animation) => this["animation"] = animation;
  set clickable(bool clickable) => this["clickable"] = clickable;
  set cursor(String cursor) => this["cursor"] = cursor;
  set draggable(bool draggable) => this["draggable"] = draggable;
  set flat(bool flat) => this["flat"] = flat;
  set icon(Object icon) {
    if (icon is String || icon is MarkerImage || icon is Symbol) {
      this["icon"] = icon;
    } else {
      throw new IllegalArgumentException(icon);
    }
  }
  set map(Object map) {
    if (map is GMap || map is StreetViewPanorama) {
      this["map"] = map;
    } else {
      throw new IllegalArgumentException(map);
    }
  }
  set optimized(bool optimized) => this["optimized"] = optimized;
  set position(LatLng position) => this["position"] = position;
  set raiseOnDrag(bool raiseOnDrag) => this["raiseOnDrag"] = raiseOnDrag;
  set shadow(Object shadow) {
    if (shadow is String || shadow is MarkerImage || shadow is Symbol) {
      this["shadow"] = shadow;
    } else {
      throw new IllegalArgumentException(shadow);
    }
  }
  set shape(MarkerShape shape) => this["shape"] = shape;
  set title(String title) => this["title"] = title;
  set visible(bool visible) => this["visible"] = visible;
  set zIndex(num zIndex) => this["zIndex"] = zIndex;
}

class MarkerImage extends js.JsObject {
  static const String TYPE_NAME = "google.maps.MarkerImage";

  MarkerImage(String url, [Size size, Point origin, Point anchor, Size scaledSize]) : super.newInstance(TYPE_NAME, [url, size, origin, anchor, scaledSize]);
  MarkerImage.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Point get anchor => new Point.fromJsRef(this["anchor"]);
        set anchor(Point anchor) => this["anchor"] = anchor;
  Point get origin => new Point.fromJsRef(this["origin"]);
        set origin(Point origin) => this["origin"] = origin;
  Size get scaledSize => new Size.fromJsRef(this["scaledSize"]);
       set scaledSize(Size scaledSize) => this["scaledSize"] = scaledSize;
  Size get size => new Size.fromJsRef(this["size"]);
       set size(Size size) => this["size"] = size;
  String get url => this["url"];
         set url(String url) => this["url"] = url;
}

class MarkerShape extends js.JsObject {
  MarkerShape() : super();
  MarkerShape.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<num> get coords => new js.JsList<num>.fromJsRef(getJsRef("coords"), (e) => js.getObject(new js.JsObject.fromJsRef(e)));
            set coords(List<num> coords) => this["coords"] = coords;
  MarkerShapeType get type => MarkerShapeType.find(this["type"]);
                  set type(MarkerShapeType type) => this["type"] = type.value;
}

class MarkerShapeType extends _Constant<String> {
  static const MarkerShapeType CIRCLE = const MarkerShapeType._("circle");
  static const MarkerShapeType POLY = const MarkerShapeType._("poly");
  static const MarkerShapeType RECT = const MarkerShapeType._("rect");

  static MarkerShapeType find(String value) => findIn(value, [CIRCLE, POLY, RECT]);

  const MarkerShapeType._(String value) : super.fromValue(value);
}

class Symbol extends js.JsObject {
  Point get anchor => new Point.fromJsRef(this["anchor"]);
        set anchor(Point anchor) => this["anchor"] = anchor;
  String get fillColor => this["fillColor"];
         set fillColor(String fillColor) => this["fillColor"] = fillColor;
  num get fillOpacity => this["fillOpacity"];
      set fillOpacity(num fillOpacity) => this["fillOpacity"] = fillOpacity;
  Object get path {
           final result = this["path"];
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
             this["path"] = path;
           } else {
             throw new IllegalArgumentException(path);
           }
         }
  num get rotation => this["rotation"];
      set rotation(num rotation) => this["rotation"] = rotation;
  num get scale => this["scale"];
      set scale(num scale) => this["scale"] = scale;
  String get strokeColor => this["strokeColor"];
         set strokeColor(String strokeColor) => this["strokeColor"] = strokeColor;
  num get strokeOpacity => this["strokeOpacity"];
      set strokeOpacity(num strokeOpacity) => this["strokeOpacity"] = strokeOpacity;
  num get strokeWeight => this["strokeWeight"];
      set strokeWeight(num rotation) => this["strokeWeight"] = strokeWeight;
}

class SymbolPath extends js.JsConst {
  static const String TYPE_NAME = "google.maps.SymbolPath";

  static const SymbolPath BACKWARD_CLOSED_ARROW = const SymbolPath._("${TYPE_NAME}.BACKWARD_CLOSED_ARROW");
  static const SymbolPath BACKWARD_OPEN_ARROW = const SymbolPath._("${TYPE_NAME}.BACKWARD_OPEN_ARROW");
  static const SymbolPath CIRCLE = const SymbolPath._("${TYPE_NAME}.CIRCLE");
  static const SymbolPath FORWARD_CLOSED_ARROW = const SymbolPath._("${TYPE_NAME}.FORWARD_CLOSED_ARROW");
  static const SymbolPath FORWARD_OPEN_ARROW = const SymbolPath._("${TYPE_NAME}.FORWARD_OPEN_ARROW");

  static SymbolPath find(Object o) { return js.JsConst.findIn(o, [BACKWARD_CLOSED_ARROW, BACKWARD_OPEN_ARROW, CIRCLE, FORWARD_CLOSED_ARROW, FORWARD_OPEN_ARROW]); }

  const SymbolPath._(String jsName) : super.fromJsName(jsName);
}

class Animation extends js.JsConst {
  static const String TYPE_NAME = "google.maps.Animation";

  static const Animation BOUNCE = const Animation._("${TYPE_NAME}.BOUNCE");
  static const Animation DROP = const Animation._("${TYPE_NAME}.DROP");

  static Animation find(Object o) { return js.JsConst.findIn(o, [BOUNCE, DROP]); }

  const Animation._(String jsName) : super.fromJsName(jsName);
}

class InfoWindow extends MVCObject {
  static const String TYPE_NAME = "google.maps.InfoWindow";

  InfoWindow([InfoWindowOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  InfoWindow.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void close() { callJs("close"); }
  Object getContent() {
    final result = callJs("getContent");
    if (result is String || result is html.Node) {
      return result;
    } else {
      throw new Exception("Unsupported result");
    }
  }
  LatLng getPosition() => new LatLng.fromJsRef(callJs("getPosition"));
  num getZIndex() => callJs("getZIndex");
  void open([Object map, MVCObject anchor]) {
    if (map is GMap || map is StreetViewPanorama) {
      callJs("open", [map, anchor]);
    } else {
      throw new IllegalArgumentException(map);
    }
  }
  void setContent(Object content) {
    if (content is String || content is html.Node) {
      callJs("setContent", [content]);
    } else {
      throw new IllegalArgumentException(content);
    }
  }
  void setOptions(InfoWindowOptions options) { callJs("setOptions", [options]); }
  void setPosition(LatLng position) { callJs("setPosition", [position]); }
  void setZIndex(num zIndex) { callJs("setZIndex", [zIndex]); }
}

class InfoWindowOptions extends js.JsObject {
  set content(Object content) {
    if (content is String || content is html.Node) {
      this["content"] = content;
    } else {
      throw new IllegalArgumentException(content);
    }
  }
  bool get disableAutoPan => this["disableAutoPan"];
       set disableAutoPan(bool disableAutoPan) => this["disableAutoPan"] = disableAutoPan;
  num get maxWidth => this["maxWidth"];
      set maxWidth(num maxWidth) => this["maxWidth"] = maxWidth;
  Size get pixelOffset => new Size.fromJsRef(this["pixelOffset"]);
       set pixelOffset(Size pixelOffset) => this["pixelOffset"] = pixelOffset;
  LatLng get position => new LatLng.fromJsRef(this["position"]);
         set position(LatLng position) => this["position"] = position;
  num get zIndex => this["zIndex"];
      set zIndex(num zIndex) => this["zIndex"] = zIndex;
}

class Polyline extends MVCObject {
  static const String TYPE_NAME = "google.maps.Polyline";

  Polyline([PolylineOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  Polyline.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool getEditable() => callJs("getEditable");
  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  MVCArray<LatLng> getPath() => new MVCArray.fromJsRef(callJs("getPath"), (js.JsRef jsRef) => new LatLng.fromJsRef(jsRef));
  bool getVisible() => callJs("getVisible");
  void setEditable(bool editable) { callJs("setEditable", [editable]); }
  void setMap(GMap map) { callJs("setMap", [map]); }
  void setOptions(PolylineOptions options) { callJs("setOptions", [options]); }
  void setPath(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      callJs("setPath", [path]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  void setVisible(bool visible) { callJs("setVisible", [visible]); }
}

class PolylineOptions extends js.JsObject {
  set clickable(bool clickable) => this["clickable"] = clickable;
  set editable(bool editable) => this["editable"] = editable;
  set geodesic(bool geodesic) => this["geodesic"] = geodesic;
  set icons(List<IconSequence> icons) => this["icons"] = icons;
  set map(GMap map) => this["map"] = map;
  set path(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      this["path"] = path;
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  set strokeColor(String strokeColor) => this["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => this["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => this["strokeWeight"] = strokeWeight;
  set visible(bool visible) => this["visible"] = visible;
  set zIndex(num zIndex) => this["zIndex"] = zIndex;
}

class IconSequence extends js.JsObject {
  IconSequence() : super();
  IconSequence.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  set icon(Symbol icon) => this["icon"] = icon;
  set offset(String offset) => this["offset"] = offset;
  set repeat(String repeat) => this["repeat"] = repeat;
}

class Polygon extends MVCObject {
  static const String TYPE_NAME = "google.maps.Polygon";

  Polygon([PolygonOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  Polygon.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool getEditable() => callJs("getEditable");
  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  MVCArray<LatLng> getPath() => new MVCArray.fromJsRef(callJs("getPath"), (js.JsRef jsRef) => new LatLng.fromJsRef(jsRef));
  MVCArray<MVCArray<LatLng>> getPaths() => new MVCArray.fromJsRef(callJs("getPaths"), (js.JsRef jsRef) => new MVCArray.fromJsRef(jsRef, (js.JsRef jsRef) => new LatLng.fromJsRef(jsRef)));
  bool getVisible() => callJs("getVisible");
  void setEditable(bool editable) { callJs("setEditable", [editable]); }
  void setMap(GMap map) { callJs("setMap", [map]); }
  void setOptions(PolylineOptions options) { callJs("setOptions", [options]); }
  void setPath(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      callJs("setPath", [path]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  void setPaths(Object paths) {
    if (paths is MVCArray<MVCArray<LatLng>> || paths is MVCArray<LatLng> || paths is List<List<LatLng>> || paths is List<LatLng>) {
      callJs("setPaths", [paths]);
    } else {
      throw new IllegalArgumentException(paths);
    }
  }
  void setVisible(bool visible) { callJs("setVisible", [visible]); }
}

class PolygonOptions extends js.JsObject {
  set clickable(bool clickable) => this["clickable"] = clickable;
  set editable(bool editable) => this["editable"] = editable;
  set fillColor(String fillColor) => this["fillColor"] = fillColor;
  set fillOpacity(num fillOpacity) => this["fillOpacity"] = fillOpacity;
  set geodesic(bool geodesic) => this["geodesic"] = geodesic;
  set map(GMap map) => this["map"] = map;
  set paths(Object paths) {
    if (paths is MVCArray<MVCArray<LatLng>> || paths is MVCArray<LatLng> || paths is List<List<LatLng>> || paths is List<LatLng>) {
      this["paths"] = paths;
    } else {
      throw new IllegalArgumentException(paths);
    }
  }
  set strokeColor(String strokeColor) => this["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => this["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => this["strokeWeight"] = strokeWeight;
  set visible(bool visible) => this["visible"] = visible;
  set zIndex(num zIndex) => this["zIndex"] = zIndex;
}

class PolyMouseEvent extends MouseEvent {
  PolyMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  num get edge => this["edge"];
  num get path => this["path"];
  num get vertex => this["vertex"];
}

class Rectangle extends MVCObject {
  static const String TYPE_NAME = "google.maps.Rectangle";

  Rectangle([RectangleOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  Rectangle.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getBounds() => new LatLngBounds.fromJsRef(callJs("getBounds"));
  bool getEditable() => callJs("getEditable");
  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  bool getVisible() => callJs("getVisible");
  void setBounds(LatLngBounds bounds) { callJs("setBounds", [bounds]); }
  void setEditable(bool editable) { callJs("setEditable", [editable]); }
  void setMap(GMap map) { callJs("setMap", [map]); }
  void setOptions(RectangleOptions options) { callJs("setOptions", [options]); }
  void setVisible(bool visible) { callJs("setVisible", [visible]); }
}

class RectangleOptions extends js.JsObject {
  set bounds(LatLngBounds bounds) => this["bounds"] = bounds;
  set clickable(bool clickable) => this["clickable"] = clickable;
  set editable(bool editable) => this["editable"] = editable;
  set fillColor(String fillColor) => this["fillColor"] = fillColor;
  set fillOpacity(num fillOpacity) => this["fillOpacity"] = fillOpacity;
  set map(GMap map) => this["map"] = map;
  set strokeColor(String strokeColor) => this["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => this["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => this["strokeWeight"] = strokeWeight;
  set visible(bool visible) => this["visible"] = visible;
  set zIndex(num zIndex) => this["zIndex"] = zIndex;
}

class Circle extends MVCObject {
  static const String TYPE_NAME = "google.maps.Circle";

  Circle([CircleOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  Circle.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getBounds() => new LatLngBounds.fromJsRef(callJs("getBounds"));
  LatLng getCenter() => new LatLng.fromJsRef(callJs("getCenter"));
  bool getEditable() => callJs("getEditable");
  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  num getRadius() => callJs("getRadius");
  bool getVisible() => callJs("getVisible");
  void setCenter(LatLng center) { callJs("setCenter", [center]); }
  void setEditable(bool editable) { callJs("setEditable", [editable]); }
  void setMap(GMap map) { callJs("setMap", [map]); }
  void setOptions(CircleOptions options) { callJs("setOptions", [options]); }
  void setRadius(bool radius) { callJs("setRadius", [radius]); }
  void setVisible(bool visible) { callJs("setVisible", [visible]); }
}

class CircleOptions extends js.JsObject {
  set center(LatLng center) => this["center"] = center;
  set clickable(bool clickable) => this["clickable"] = clickable;
  set editable(bool editable) => this["editable"] = editable;
  set fillColor(String fillColor) => this["fillColor"] = fillColor;
  set fillOpacity(num fillOpacity) => this["fillOpacity"] = fillOpacity;
  set map(GMap map) => this["map"] = map;
  set radius(num radius) => this["radius"] = radius;
  set strokeColor(String strokeColor) => this["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => this["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => this["strokeWeight"] = strokeWeight;
  set visible(bool visible) => this["visible"] = visible;
  set zIndex(num zIndex) => this["zIndex"] = zIndex;
}

class GroundOverlay extends MVCObject {
  static const String TYPE_NAME = "google.maps.GroundOverlay";

  GroundOverlay(String url, LatLngBounds bounds, [GroundOverlayOptions opts]) : super.newInstance(TYPE_NAME, [url, bounds, opts]);
  GroundOverlay.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getBounds() => new LatLngBounds.fromJsRef(callJs("getBounds"));
  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  num getOpacity() => callJs("getOpacity");
  String getUrl() => callJs("getUrl");
  void setMap(GMap map) { callJs("setMap", [map]); }
  void setOpacity(num opacity) { callJs("setOpacity", [opacity]); }
}

class GroundOverlayOptions extends js.JsObject {
  set clickable(bool clickable) => this["clickable"] = clickable;
  set map(GMap map) => this["map"] = map;
  set opacity(num radius) => this["opacity"] = opacity;
}

class OverlayView extends MVCObject {
  static const String TYPE_NAME = "google.maps.OverlayView";

  OverlayView() : super.newInstance(TYPE_NAME);
  OverlayView.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void draw() { callJs("draw"); }
  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  MapPanes getPanes() => new MapPanes.fromJsRef(callJs("getPanes"));
  MapCanvasProjection getProjection() => new MapCanvasProjection.fromJsRef(callJs("getProjection"));
  void onAdd() { callJs("onAdd"); }
  void onRemove() { callJs("onRemove"); }
  void setMap(Object map) {
    if (map === null || map is GMap || map is StreetViewPanorama) {
      callJs("setMap", [map]);
    } else {
      throw new IllegalArgumentException(map);
    }
  }
}

class MapPanes extends js.JsObject {
  MapPanes.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  html.Node get floatPane => this["floatPane"];
            set floatPane(html.Node floatPane) => this["floatPane"] = floatPane;
  html.Node get floatShadow => this["floatShadow"];
            set floatShadow(html.Node floatShadow) => this["floatShadow"] = floatShadow;
  html.Node get mapPane => this["mapPane"];
            set mapPane(html.Node mapPane) => this["mapPane"] = mapPane;
  html.Node get overlayImage => this["overlayImage"];
            set overlayImage(html.Node overlayImage) => this["overlayImage"] = overlayImage;
  html.Node get overlayLayer => this["overlayLayer"];
            set overlayLayer(html.Node overlayLayer) => this["overlayLayer"] = overlayLayer;
  html.Node get overlayMouseTarget => this["overlayMouseTarget"];
            set overlayMouseTarget(html.Node overlayMouseTarget) => this["overlayMouseTarget"] = overlayMouseTarget;
  html.Node get overlayShadow => this["overlayShadow"];
            set overlayShadow(html.Node overlayShadow) => this["overlayShadow"] = overlayShadow;
}

class MapCanvasProjection extends MVCObject {
  MapCanvasProjection.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLng fromContainerPixelToLatLng(Point pixel, [bool nowrap]) => new LatLng.fromJsRef(callJs("fromContainerPixelToLatLng", [pixel, nowrap]));
  LatLng fromDivPixelToLatLng(Point pixel, [bool nowrap]) => new LatLng.fromJsRef(callJs("fromDivPixelToLatLng", [pixel, nowrap]));
  Point fromLatLngToContainerPixel(LatLng latLng) => new Point.fromJsRef(callJs("fromLatLngToContainerPixel", [latLng]));
  Point fromLatLngToDivPixel(LatLng latLng) => new Point.fromJsRef(callJs("fromLatLngToDivPixel", [latLng]));
  num getWorldWidth() => callJs("getWorldWidth");
}

class Geocoder extends js.JsObject {
  static const String TYPE_NAME = "google.maps.Geocoder";

  Geocoder() : super.newInstance(TYPE_NAME);

  void geocode(GeocoderRequest request, void callback(List<GeocoderResult> results, GeocoderStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new GeocoderResult.fromJsRef(e)), GeocoderStatus.find(args[1]));
    };
    callJs("geocode", [request, callbackFunction]);
  }
}

class GeocoderRequest extends js.JsObject {
  set address(String address) => this["address"] = address;
  set bounds(LatLngBounds bounds) => this["bounds"] = bounds;
  set location(LatLng location) => this["location"] = location;
  set region(String region) => this["region"] = region;
}

class GeocoderStatus extends js.JsConst {
  static const String TYPE_NAME = "google.maps.GeocoderStatus";

  static const GeocoderStatus ERROR = const GeocoderStatus._("${TYPE_NAME}.ERROR");
  static const GeocoderStatus INVALID_REQUEST = const GeocoderStatus._("${TYPE_NAME}.INVALID_REQUEST");
  static const GeocoderStatus OK = const GeocoderStatus._("${TYPE_NAME}.OK");
  static const GeocoderStatus OVER_QUERY_LIMIT = const GeocoderStatus._("${TYPE_NAME}.OVER_QUERY_LIMIT");
  static const GeocoderStatus REQUEST_DENIED = const GeocoderStatus._("${TYPE_NAME}.REQUEST_DENIED");
  static const GeocoderStatus UNKNOWN_ERROR = const GeocoderStatus._("${TYPE_NAME}.UNKNOWN_ERROR");
  static const GeocoderStatus ZERO_RESULTS = const GeocoderStatus._("${TYPE_NAME}.ZERO_RESULTS");

  static GeocoderStatus find(Object o) { return js.JsConst.findIn(o, [ERROR, INVALID_REQUEST, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR, ZERO_RESULTS]); }

  const GeocoderStatus._(String jsName) : super.fromJsName(jsName);
}

class GeocoderResult extends js.JsObject {
  GeocoderResult() : super();
  GeocoderResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<GeocoderAddressComponent> get address_components => new js.JsList<GeocoderAddressComponent>.fromJsRef(getJsRef("address_components"), (e) => new GeocoderAddressComponent.fromJsRef(e));
  String get formatted_address => this["formatted_address"];
  GeocoderGeometry get geometry => new GeocoderGeometry.fromJsRef(this["geometry"]);
  List<String> get types => new js.JsList<String>.fromJsRef(getJsRef("types"), (e) => js.getObject(new js.JsObject.fromJsRef(e)));
}

class GeocoderAddressComponent extends js.JsObject {
  GeocoderAddressComponent() : super();
  GeocoderAddressComponent.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get long_name => this["long_name"];
  String get short_name => this["short_name"];
  List<String> get types => new js.JsList<String>.fromJsRef(getJsRef("types"), (e) => js.getObject(new js.JsObject.fromJsRef(e)));
}

class GeocoderGeometry extends js.JsObject {
  GeocoderGeometry() : super();
  GeocoderGeometry.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds get bounds => new LatLngBounds.fromJsRef(this["bounds"]);
  LatLng get location => new LatLng.fromJsRef(this["location"]);
  GeocoderLocationType get location_type => GeocoderLocationType.find(this["location_type"]);
  LatLngBounds get viewport => new    LatLngBounds.fromJsRef(this["viewport"]);
}

class GeocoderLocationType extends js.JsConst {
  static const String TYPE_NAME = "google.maps.GeocoderLocationType";

  static const GeocoderLocationType APPROXIMATE = const GeocoderLocationType._("${TYPE_NAME}.APPROXIMATE");
  static const GeocoderLocationType GEOMETRIC_CENTER = const GeocoderLocationType._("${TYPE_NAME}.GEOMETRIC_CENTER");
  static const GeocoderLocationType RANGE_INTERPOLATED = const GeocoderLocationType._("${TYPE_NAME}.RANGE_INTERPOLATED");
  static const GeocoderLocationType ROOFTOP = const GeocoderLocationType._("${TYPE_NAME}.ROOFTOP");

  static GeocoderLocationType find(Object o) { return js.JsConst.findIn(o, [APPROXIMATE, GEOMETRIC_CENTER, RANGE_INTERPOLATED, ROOFTOP]); }

  const GeocoderLocationType._(String jsName) : super.fromJsName(jsName);
}

class DirectionsRenderer extends MVCObject {
  static const String TYPE_NAME = "google.maps.DirectionsRenderer";

  DirectionsRenderer([DirectionsRendererOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  DirectionsRenderer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  DirectionsResult getDirections() => new DirectionsResult.fromJsRef(callJs("getDirections"));
  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  html.Node getPanel() => callJs("getPanel");
  num getRouteIndex() => callJs("getRouteIndex");
  void setDirections(DirectionsResult directions) { callJs("setDirections", [directions]); }
  void setMap(GMap map) { callJs("setMap", [map]); }
  void setOptions(DirectionsRendererOptions options) { callJs("setOptions", [options]); }
  void setPanel(html.Node panel) { callJs("setPanel", [panel]); }
  void setRouteIndex(num routeIndex) { callJs("setRouteIndex", [routeIndex]); }
}

class DirectionsRendererOptions extends js.JsObject {
  set directions(DirectionsResult directions) => this["directions"] = directions;
  set draggable(bool draggable) => this["draggable"] = draggable;
  set hideRouteList(bool hideRouteList) => this["hideRouteList"] = hideRouteList;
  set infoWindow(InfoWindow infoWindow) => this["infoWindow"] = infoWindow;
  set map(GMap map) => this["map"] = map;
  set markerOptions(MarkerOptions markerOptions) => this["markerOptions"] = markerOptions;
  set panel(html.Node panel) => this["panel"] = panel;
  set polylineOptions(PolylineOptions polylineOptions) => this["polylineOptions"] = polylineOptions;
  set preserveViewport(bool preserveViewport) => this["preserveViewport"] = preserveViewport;
  set routeIndex(num routeIndex) => this["routeIndex"] = routeIndex;
  set suppressBicyclingLayer(bool suppressBicyclingLayer) => this["suppressBicyclingLayer"] = suppressBicyclingLayer;
  set suppressInfoWindows(bool suppressInfoWindows) => this["suppressInfoWindows"] = suppressInfoWindows;
  set suppressMarkers(bool suppressMarkers) => this["suppressMarkers"] = suppressMarkers;
  set suppressPolylines(bool suppressPolylines) => this["suppressPolylines"] = suppressPolylines;
}

class DirectionsService extends js.JsObject {
  static const String TYPE_NAME = "google.maps.DirectionsService";

  DirectionsService() : super.newInstance(TYPE_NAME);

  void route(DirectionsRequest request, void callback(DirectionsResult results, DirectionsStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new DirectionsResult.fromJsRef(args[0]), DirectionsStatus.find(args[1]));
    };
    callJs("route", [request, callbackFunction]);
  }
}

class DirectionsRequest extends js.JsObject {
  set avoidHighways(bool avoidHighways) => this["avoidHighways"] = avoidHighways;
  set avoidTolls(bool avoidTolls) => this["avoidTolls"] = avoidTolls;
  set destination(Object destination) {
    if (destination is String || destination is LatLng) {
      this["destination"] = destination;
    } else {
      throw new IllegalArgumentException(destination);
    }
  }
  set optimizeWaypoints(bool optimizeWaypoints) => this["optimizeWaypoints"] = optimizeWaypoints;
  set origin(Object origin) {
    if (origin is String || origin is LatLng) {
      this["origin"] = origin;
    } else {
      throw new IllegalArgumentException(origin);
    }
  }
  set provideRouteAlternatives(bool provideRouteAlternatives) => this["provideRouteAlternatives"] = provideRouteAlternatives;
  set region(String region) => this["region"] = region;
  set transitOptions(TransitOptions transitOptions) => this["transitOptions"] = transitOptions;
  set travelMode(TravelMode travelMode) => this["travelMode"] = travelMode;
  set unitSystem(UnitSystem unitSystem) => this["unitSystem"] = unitSystem;
  set waypoints(List<DirectionsWaypoint> waypoints) => this["waypoints"] = waypoints;
}

class TravelMode extends js.JsConst {
  static const String TYPE_NAME = "google.maps.TravelMode";

  static const TravelMode BICYCLING = const TravelMode._("${TYPE_NAME}.BICYCLING");
  static const TravelMode DRIVING = const TravelMode._("${TYPE_NAME}.DRIVING");
  static const TravelMode TRANSIT = const TravelMode._("${TYPE_NAME}.TRANSIT");
  static const TravelMode WALKING = const TravelMode._("${TYPE_NAME}.WALKING");

  static TravelMode find(Object o) { return js.JsConst.findIn(o, [BICYCLING, DRIVING, TRANSIT, WALKING]); }

  const TravelMode._(String jsName) : super.fromJsName(jsName);
}

class UnitSystem extends js.JsConst {
  static const String TYPE_NAME = "google.maps.UnitSystem";

  static const UnitSystem IMPERIAL = const UnitSystem._("${TYPE_NAME}.IMPERIAL");
  static const UnitSystem METRIC = const UnitSystem._("${TYPE_NAME}.METRIC");

  static UnitSystem find(Object o) { return js.JsConst.findIn(o, [IMPERIAL, METRIC]); }

  const UnitSystem._(String jsName) : super.fromJsName(jsName);
}

class TransitOptions extends js.JsObject {
  set arrivalTime(Date arrivalTime) => this["arrivalTime"] = arrivalTime;
  set departureTime(Date departureTime) => this["departureTime"] = departureTime;
}

class DirectionsWaypoint extends js.JsObject {
  set location(Object location) {
    if (location is String || location is LatLng) {
      this["location"] = location;
    } else {
      throw new IllegalArgumentException(location);
    }
  }
  set stopover(bool stopover) => this["stopover"] = stopover;
}

class DirectionsStatus extends js.JsConst {
  static const String TYPE_NAME = "google.maps.DirectionsStatus";

  static const DirectionsStatus INVALID_REQUEST = const DirectionsStatus._("${TYPE_NAME}.INVALID_REQUEST");
  static const DirectionsStatus MAX_WAYPOINTS_EXCEEDED = const DirectionsStatus._("${TYPE_NAME}.MAX_WAYPOINTS_EXCEEDED");
  static const DirectionsStatus NOT_FOUND = const DirectionsStatus._("${TYPE_NAME}.NOT_FOUND");
  static const DirectionsStatus OK = const DirectionsStatus._("${TYPE_NAME}.OK");
  static const DirectionsStatus OVER_QUERY_LIMIT = const DirectionsStatus._("${TYPE_NAME}.OVER_QUERY_LIMIT");
  static const DirectionsStatus REQUEST_DENIED = const DirectionsStatus._("${TYPE_NAME}.REQUEST_DENIED");
  static const DirectionsStatus UNKNOWN_ERROR = const DirectionsStatus._("${TYPE_NAME}.UNKNOWN_ERROR");
  static const DirectionsStatus ZERO_RESULTS = const DirectionsStatus._("${TYPE_NAME}.ZERO_RESULTS");

  static DirectionsStatus find(Object o) { return js.JsConst.findIn(o, [INVALID_REQUEST, MAX_WAYPOINTS_EXCEEDED, NOT_FOUND, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR, ZERO_RESULTS]); }

  const DirectionsStatus._(String jsName) : super.fromJsName(jsName);
}

class DirectionsResult extends js.JsObject {
  DirectionsResult() : super();
  DirectionsResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<DirectionsRoute> get routes => new js.JsList<DirectionsRoute>.fromJsRef(getJsRef("routes"), (e) => new DirectionsRoute.fromJsRef(e));
}

class DirectionsRoute extends js.JsObject {
  DirectionsRoute() : super();
  DirectionsRoute.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds get bounds => new LatLngBounds.fromJsRef(this["bounds"]);
  String get copyrights => this["copyrights"];
  List<DirectionsLeg> get legs => new js.JsList<DirectionsLeg>.fromJsRef(getJsRef("legs"), (e) => new DirectionsLeg.fromJsRef(e));
  List<LatLng> get overview_path => new js.JsList<LatLng>.fromJsRef(getJsRef("overview_path"), (e) => new LatLng.fromJsRef(e));
  List<String> get warnings => new js.JsList<String>.fromJsRef(getJsRef("warnings"), (e) => js.getObject(new js.JsObject.fromJsRef(e)));
  List<num> get waypoint_order => new js.JsList<num>.fromJsRef(getJsRef("waypoint_order"), (e) => js.getObject(new js.JsObject.fromJsRef(e)));
}

class DirectionsLeg extends js.JsObject {
  DirectionsLeg() : super();
  DirectionsLeg.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  // TODO test return type
  Distance get arrival_time => new Distance.fromJsRef(this["arrival_time"]);
  GDuration get departure_time => new GDuration.fromJsRef(this["departure_time"]);
  Distance get distance => new Distance.fromJsRef(this["distance"]);
  GDuration get duration => new GDuration.fromJsRef(this["duration"]);
  String get end_address => this["end_address"];
  LatLng get end_location => new LatLng.fromJsRef(this["end_location"]);
  String get start_address => this["start_address"];
  LatLng get start_location => new LatLng.fromJsRef(this["start_location"]);
  List<DirectionsStep> get steps => new js.JsList<DirectionsStep>.fromJsRef(getJsRef("steps"), (e) => new DirectionsStep.fromJsRef(e));
  List<LatLng> get via_waypoints => new js.JsList<LatLng>.fromJsRef(getJsRef("via_waypoints"), (e) => new LatLng.fromJsRef(e));
}

class DirectionsStep extends js.JsObject {
  DirectionsStep() : super();
  DirectionsStep.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Distance get distance => new Distance.fromJsRef(this["distance"]);
  GDuration get duration => new GDuration.fromJsRef(this["duration"]);
  LatLng get end_location => new LatLng.fromJsRef(this["end_location"]);
  String get instructions => this["instructions"];
  List<LatLng> get path => new js.JsList<LatLng>.fromJsRef(getJsRef("path"), (e) => new LatLng.fromJsRef(e));
  LatLng get start_location => new LatLng.fromJsRef(this["start_location"]);
  // TODO check return type
  DirectionsStep get steps => new DirectionsStep.fromJsRef(this["steps"]);
//  List<DirectionsStep> get steps => new js.JsList<DirectionsStep>.fromJsRef(getJsRef("steps"), (e) => new DirectionsStep.fromJsRef(e));
  TransitDetails get transit => new TransitDetails.fromJsRef(this["transit"]);
  TravelMode get travel_mode => TravelMode.find(this["travel_mode"]);
}

class Distance extends js.JsObject {
  Distance() : super();
  Distance.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get text => this["text"];
  num get value => this["value"];
}

class GDuration extends js.JsObject {
  GDuration() : super();
  GDuration.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get text => this["text"];
  num get value => this["value"];
}

class Time extends js.JsObject {
  Time() : super();
  Time.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get text => this["text"];
  String get time_zone => this["time_zone"];
  Date get value => this["value"];
}

class TransitDetails extends js.JsObject {
  TransitDetails() : super();
  TransitDetails.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  TransitStop get arrival_stop => new TransitStop.fromJsRef(this["arrival_stop"]);
  Time get arrival_time => new Time.fromJsRef(this["arrival_time"]);
  TransitStop get departure_stop => new TransitStop.fromJsRef(this["departure_stop"]);
  Time get departure_time => new Time.fromJsRef(this["departure_time"]);
  String get headsign => this["headsign"];
  num get headway => this["headway"];
  TransitLine get line => new TransitLine.fromJsRef(this["line"]);
  num get num_stops => this["num_stops"];
}

class TransitStop extends js.JsObject {
  TransitStop() : super();
  TransitStop.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLng get location => new LatLng.fromJsRef(this["location"]);
  String get name => this["name"];
}

class TransitLine extends js.JsObject {
  TransitLine() : super();
  TransitLine.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<TransitAgency> get agencies => new js.JsList<TransitAgency>.fromJsRef(getJsRef("agencies"), (e) => new TransitAgency.fromJsRef(e));
  String get color => this["color"];
  String get icon => this["icon"];
  String get name => this["name"];
  String get short_name => this["short_name"];
  String get text_color => this["text_color"];
  String get url => this["url"];
  TransitVehicle get vehicle => new TransitVehicle.fromJsRef(this["vehicle"]);
}

class TransitAgency extends js.JsObject {
  TransitAgency() : super();
  TransitAgency.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get name => this["name"];
  String get phone => this["phone"];
  String get url => this["url"];
}

class TransitVehicle extends js.JsObject {
  TransitVehicle() : super();
  TransitVehicle.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get icon => this["icon"];
  String get local_icon => this["local_icon"];
  String get name => this["name"];
  // TODO check type
  String get type => this["type"];
}

class ElevationService extends js.JsObject {
  static const String TYPE_NAME = "google.maps.ElevationService";

  ElevationService() : super.newInstance(TYPE_NAME);

  void getElevationAlongPath(PathElevationRequest request, void callback(List<ElevationResult> results, ElevationStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new ElevationResult.fromJsRef(e)), ElevationStatus.find(args[1]));
    };
    callJs("getElevationAlongPath", [request, callbackFunction]);
  }
  void getElevationForLocations(LocationElevationRequest request, void callback(List<ElevationResult> results, ElevationStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new ElevationResult.fromJsRef(e)), ElevationStatus.find(args[1]));
    };
    callJs("getElevationForLocations", [request, callbackFunction]);
  }
}

class LocationElevationRequest extends js.JsObject {
  set locations(List<LatLng> locations) => this["locations"] = locations;
}

class PathElevationRequest extends js.JsObject {
  set path(List<LatLng> path) => this["path"] = path;
  set samples(num samples) => this["samples"] = samples;
}

class ElevationResult extends js.JsObject {
  ElevationResult() : super();
  ElevationResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  num get elevation => this["elevation"];
  LatLng get location => new LatLng.fromJsRef(this["location"]);
  num get resolution => this["resolution"];
}

class ElevationStatus extends js.JsConst {
  static const String TYPE_NAME = "google.maps.ElevationStatus";

  static const ElevationStatus INVALID_REQUEST = const ElevationStatus._("${TYPE_NAME}.INVALID_REQUEST");
  static const ElevationStatus OK = const ElevationStatus._("${TYPE_NAME}.OK");
  static const ElevationStatus OVER_QUERY_LIMIT = const ElevationStatus._("${TYPE_NAME}.OVER_QUERY_LIMIT");
  static const ElevationStatus REQUEST_DENIED = const ElevationStatus._("${TYPE_NAME}.REQUEST_DENIED");
  static const ElevationStatus UNKNOWN_ERROR = const ElevationStatus._("${TYPE_NAME}.UNKNOWN_ERROR");

  static ElevationStatus find(Object o) { return js.JsConst.findIn(o, [INVALID_REQUEST, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR]); }

  const ElevationStatus._(String jsName) : super.fromJsName(jsName);
}

class MaxZoomService extends js.JsObject {
  static const String TYPE_NAME = "google.maps.MaxZoomService";

  MaxZoomService() : super.newInstance(TYPE_NAME);

  void getMaxZoomAtLatLng(LatLng latlng, void callback(MaxZoomResult result)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new MaxZoomResult.fromJsRef(args[0]));
    };
    callJs("getMaxZoomAtLatLng", [latlng, callbackFunction]);
  }
}

class MaxZoomResult extends js.JsObject {
  MaxZoomResult() : super();
  MaxZoomResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  MaxZoomStatus get status => MaxZoomStatus.find(this["status"]);
  num get zoom => this["zoom"];
}

class MaxZoomStatus extends js.JsConst {
  static const String TYPE_NAME = "google.maps.MaxZoomStatus";

  static const MaxZoomStatus ERROR = const MaxZoomStatus._("${TYPE_NAME}.ERROR");
  static const MaxZoomStatus OK = const MaxZoomStatus._("${TYPE_NAME}.OK");

  static MaxZoomStatus find(Object o) { return js.JsConst.findIn(o, [ERROR, OK]); }

  const MaxZoomStatus._(String jsName) : super.fromJsName(jsName);
}

class DistanceMatrixService extends js.JsObject {
  static const String TYPE_NAME = "google.maps.DistanceMatrixService";

  DistanceMatrixService() : super.newInstance(TYPE_NAME);

  void getDistanceMatrix(DistanceMatrixRequest request, void callback(DistanceMatrixResponse response, DistanceMatrixStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new DistanceMatrixResponse.fromJsRef(args[0]), DistanceMatrixStatus.find(args[1]));
    };
    callJs("getDistanceMatrix", [request, callbackFunction]);
  }
}

class DistanceMatrixRequest extends js.JsObject {
  set avoidHighways(bool avoidHighways) => this["avoidHighways"] = avoidHighways;
  set avoidTolls(bool avoidTolls) => this["avoidTolls"] = avoidTolls;
  set destinations(Object destinations) {
    if (destinations is List<String> || destinations is List<LatLng>) {
      this["destinations"] = destinations;
    } else {
      throw new IllegalArgumentException(destinations);
    }
  }
  set origins(Object origins) {
    if (origins is List<String> || origins is List<LatLng>) {
      this["origins"] = origins;
    } else {
      throw new IllegalArgumentException(origins);
    }
  }
  set region(String region) => this["region"] = region;
  set travelMode(TravelMode travelMode) => this["travelMode"] = travelMode;
  set unitSystem(UnitSystem unitSystem) => this["unitSystem"] = unitSystem;
}

class DistanceMatrixResponse extends js.JsObject {
  DistanceMatrixResponse() : super();
  DistanceMatrixResponse.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<String> get destinationAddresses => new js.JsList<String>.fromJsRef(getJsRef("destinationAddresses"), (e) => js.getObject(new js.JsObject.fromJsRef(e)));
  List<String> get originAddresses => new js.JsList<String>.fromJsRef(getJsRef("originAddresses"), (e) => js.getObject(new js.JsObject.fromJsRef(e)));
  List<DistanceMatrixResponseRow> get rows => new js.JsList<DistanceMatrixResponseRow>.fromJsRef(getJsRef("rows"), (e) => new DistanceMatrixResponseRow.fromJsRef(e));
}

class DistanceMatrixResponseRow extends js.JsObject {
  DistanceMatrixResponseRow() : super();
  DistanceMatrixResponseRow.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<DistanceMatrixResponseElement> get elements => new js.JsList<DistanceMatrixResponseElement>.fromJsRef(getJsRef("elements"), (e) => new DistanceMatrixResponseElement.fromJsRef(e));
}

class DistanceMatrixResponseElement extends js.JsObject {
  DistanceMatrixResponseElement() : super();
  DistanceMatrixResponseElement.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Distance get distance => new Distance.fromJsRef(this["distance"]);
  GDuration get duration => new GDuration.fromJsRef(this["duration"]);
  DistanceMatrixElementStatus get status => DistanceMatrixElementStatus.find(this["status"]);
}

class DistanceMatrixStatus extends js.JsConst {
  static const String TYPE_NAME = "google.maps.DistanceMatrixStatus";

  static const DistanceMatrixStatus INVALID_REQUEST = const DistanceMatrixStatus._("${TYPE_NAME}.INVALID_REQUEST");
  static const DistanceMatrixStatus MAX_DIMENSIONS_EXCEEDED = const DistanceMatrixStatus._("${TYPE_NAME}.MAX_DIMENSIONS_EXCEEDED");
  static const DistanceMatrixStatus MAX_ELEMENTS_EXCEEDED = const DistanceMatrixStatus._("${TYPE_NAME}.MAX_ELEMENTS_EXCEEDED");
  static const DistanceMatrixStatus OK = const DistanceMatrixStatus._("${TYPE_NAME}.OK");
  static const DistanceMatrixStatus OVER_QUERY_LIMIT = const DistanceMatrixStatus._("${TYPE_NAME}.OVER_QUERY_LIMIT");
  static const DistanceMatrixStatus REQUEST_DENIED = const DistanceMatrixStatus._("${TYPE_NAME}.REQUEST_DENIED");
  static const DistanceMatrixStatus UNKNOWN_ERROR = const DistanceMatrixStatus._("${TYPE_NAME}.UNKNOWN_ERROR");

  static DistanceMatrixStatus find(Object o) { return js.JsConst.findIn(o, [INVALID_REQUEST, MAX_DIMENSIONS_EXCEEDED, MAX_ELEMENTS_EXCEEDED, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR]); }

  const DistanceMatrixStatus._(String jsName) : super.fromJsName(jsName);
}

class DistanceMatrixElementStatus extends js.JsConst {
  static const String TYPE_NAME = "google.maps.DistanceMatrixElementStatus";

  static const DistanceMatrixElementStatus NOT_FOUND = const DistanceMatrixElementStatus._("${TYPE_NAME}.NOT_FOUND");
  static const DistanceMatrixElementStatus OK = const DistanceMatrixElementStatus._("${TYPE_NAME}.OK");
  static const DistanceMatrixElementStatus ZERO_RESULTS = const DistanceMatrixElementStatus._("${TYPE_NAME}.ZERO_RESULTS");

  static DistanceMatrixElementStatus find(Object o) { return js.JsConst.findIn(o, [NOT_FOUND, OK, ZERO_RESULTS]); }

  const DistanceMatrixElementStatus._(String jsName) : super.fromJsName(jsName);
}

class MapType extends js.JsObject {
  MapType() : super();
  MapType.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);
  MapType.newInstance(String objectName, [List args]) : super.newInstance(objectName, args);

  html.Node getTile(Point tileCoord, num zoom, html.Document ownerDocument) => callJs("getTile", [tileCoord, zoom, ownerDocument]);
  html.Node releaseTile(html.Node tile) => callJs("releaseTile", [tile]);

  String get alt => this["alt"];
         set alt(String alt) => this["alt"] = alt;
  num get maxZoom => this["maxZoom"];
      set maxZoom(num maxZoom) => this["maxZoom"] = maxZoom;
  num get minZoom => this["minZoom"];
      set minZoom(num minZoom) => this["minZoom"] = minZoom;
  String get name => this["name"];
         set name(String name) => this["name"] = name;
  Projection get projection => new Projection.fromJsRef(this["projection"]);
             set projection(Projection projection) => this["projection"] = projection;
  num get radius => this["radius"];
      set radius(num radius) => this["radius"] = radius;
  Size get tileSize => new Size.fromJsRef(this["tileSize"]);
       set tileSize(Size tileSize) => this["tileSize"] = tileSize;
}

class MapTypeRegistry extends MVCObject {
  static const String TYPE_NAME = "google.maps.MapTypeRegistry";

  MapTypeRegistry() : super.newInstance(TYPE_NAME);
  MapTypeRegistry.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void set_(String id, MapType mapType) { callJs("set", [id, mapType]); }
}

class Projection extends js.JsObject {
  Projection() : super();
  Projection.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Point fromLatLngToPoint(LatLng latLng, [Point point]) => new Point.fromJsRef(callJs("fromLatLngToPoint", [latLng, point]));
  LatLng fromPointToLatLng(Point pixel, [bool nowrap]) => new LatLng.fromJsRef(callJs("fromPointToLatLng", [pixel, nowrap]));
}

class ImageMapType extends MapType {
  static const String TYPE_NAME = "google.maps.ImageMapType";

  ImageMapType(ImageMapTypeOptions opts) : super.newInstance(TYPE_NAME, [opts]);
  ImageMapType.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  num getOpacity() { callJs("getOpacity"); }
  void setOpacity(num opacity) { callJs("setOpacity", [opacity]); }
}

class ImageMapTypeOptions extends js.JsObject {
  set alt(String alt) => this["alt"] = alt;
  set getTileUrl(String callback(Point point, num zoomLevel)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      return callback(new Point.fromJsRef(args[0]), args[1]);
    };
    this["getTileUrl"] = callbackFunction;
  }
  set maxZoom(num maxZoom) => this["maxZoom"] = maxZoom;
  set minZoom(num minZoom) => this["minZoom"] = minZoom;
  set name(String name) => this["name"] = name;
  set opacity(num opacity) => this["opacity"] = opacity;
  set tileSize(Size tileSize) => this["tileSize"] = tileSize;
}

class StyledMapType extends MapType {
  static const String TYPE_NAME = "google.maps.StyledMapType";

  StyledMapType(List<MapTypeStyle> styles, [StyledMapTypeOptions options]) : super.newInstance(TYPE_NAME, [styles, options]);
}

class StyledMapTypeOptions extends js.JsObject {
  set alt(String alt) => this["alt"] = alt;
  set maxZoom(num maxZoom) => this["maxZoom"] = maxZoom;
  set minZoom(num minZoom) => this["minZoom"] = minZoom;
  set name(String name) => this["name"] = name;
}

class MapTypeStyle extends js.JsObject {
  set elementType(MapTypeStyleElementType elementType) => this["elementType"] = elementType.value;
  set featureType(MapTypeStyleFeatureType featureType) => this["featureType"] = featureType.value;
  set stylers(List<MapTypeStyler> stylers) => this["stylers"] = stylers;
}

class MapTypeStyleFeatureType extends _Constant<String> {
  static const MapTypeStyleFeatureType ADMINISTRATIVE = const MapTypeStyleFeatureType._("administrative");
  static const MapTypeStyleFeatureType ADMINISTRATIVE_COUNTRY = const MapTypeStyleFeatureType._("administrative.country");
  static const MapTypeStyleFeatureType ADMINISTRATIVE_LAND_PARCEL = const MapTypeStyleFeatureType._("administrative.land_parcel");
  static const MapTypeStyleFeatureType ADMINISTRATIVE_LOCALITY = const MapTypeStyleFeatureType._("administrative.locality");
  static const MapTypeStyleFeatureType ADMINISTRATIVE_NEIGHBORHOOD = const MapTypeStyleFeatureType._("administrative.neighborhood");
  static const MapTypeStyleFeatureType ADMINISTRATIVE_PROVINCE = const MapTypeStyleFeatureType._("administrative.province");
  static const MapTypeStyleFeatureType ALL = const MapTypeStyleFeatureType._("all");
  static const MapTypeStyleFeatureType LANDSCAPE = const MapTypeStyleFeatureType._("landscape");
  static const MapTypeStyleFeatureType LANDSCAPE_MAN_MADE = const MapTypeStyleFeatureType._("landscape.man_made");
  static const MapTypeStyleFeatureType LANDSCAPE_NATURAL = const MapTypeStyleFeatureType._("landscape.natural");
  static const MapTypeStyleFeatureType POI = const MapTypeStyleFeatureType._("poi");
  static const MapTypeStyleFeatureType POI_ATTRACTION = const MapTypeStyleFeatureType._("poi.attraction");
  static const MapTypeStyleFeatureType POI_BUSINESS = const MapTypeStyleFeatureType._("poi.business");
  static const MapTypeStyleFeatureType POI_GOVERNMENT = const MapTypeStyleFeatureType._("poi.government");
  static const MapTypeStyleFeatureType POI_MEDICAL = const MapTypeStyleFeatureType._("poi.medical");
  static const MapTypeStyleFeatureType POI_PARK = const MapTypeStyleFeatureType._("poi.park");
  static const MapTypeStyleFeatureType POI_PLACE_OF_WORSHIP = const MapTypeStyleFeatureType._("poi.place_of_worship");
  static const MapTypeStyleFeatureType POI_SCHOOL = const MapTypeStyleFeatureType._("poi.school");
  static const MapTypeStyleFeatureType POI_SPORTS_COMPLEX = const MapTypeStyleFeatureType._("poi.sports_complex");
  static const MapTypeStyleFeatureType ROAD = const MapTypeStyleFeatureType._("road");
  static const MapTypeStyleFeatureType ROAD_ARTERIAL = const MapTypeStyleFeatureType._("road.arterial");
  static const MapTypeStyleFeatureType ROAD_HIGHWAY = const MapTypeStyleFeatureType._("road.highway");
  static const MapTypeStyleFeatureType ROAD_HIGHWAY_CONTROLLED_ACCESS = const MapTypeStyleFeatureType._("road.highway.controlled_access");
  static const MapTypeStyleFeatureType ROAD_LOCAL = const MapTypeStyleFeatureType._("road.local");
  static const MapTypeStyleFeatureType TRANSIT = const MapTypeStyleFeatureType._("transit");
  static const MapTypeStyleFeatureType TRANSIT_LINE = const MapTypeStyleFeatureType._("transit.line");
  static const MapTypeStyleFeatureType TRANSIT_STATION = const MapTypeStyleFeatureType._("transit.station");
  static const MapTypeStyleFeatureType TRANSIT_STATION_AIRPORT = const MapTypeStyleFeatureType._("transit.station.airport");
  static const MapTypeStyleFeatureType TRANSIT_STATION_BUS = const MapTypeStyleFeatureType._("transit.station.bus");
  static const MapTypeStyleFeatureType TRANSIT_STATION_RAIL = const MapTypeStyleFeatureType._("transit.station.rail");
  static const MapTypeStyleFeatureType WATER = const MapTypeStyleFeatureType._("water");

  static MapTypeStyleFeatureType find(String value) => findIn(value, [ADMINISTRATIVE, ADMINISTRATIVE_COUNTRY, ADMINISTRATIVE_LAND_PARCEL, ADMINISTRATIVE_LOCALITY, ADMINISTRATIVE_NEIGHBORHOOD, ADMINISTRATIVE_PROVINCE, ALL, LANDSCAPE, LANDSCAPE_MAN_MADE, LANDSCAPE_NATURAL, POI, POI_ATTRACTION, POI_BUSINESS, POI_GOVERNMENT, POI_MEDICAL, POI_PARK, POI_PLACE_OF_WORSHIP, POI_SCHOOL, POI_SPORTS_COMPLEX, ROAD, ROAD_ARTERIAL, ROAD_HIGHWAY, ROAD_HIGHWAY_CONTROLLED_ACCESS, ROAD_LOCAL, TRANSIT, TRANSIT_LINE, TRANSIT_STATION, TRANSIT_STATION_AIRPORT, TRANSIT_STATION_BUS, TRANSIT_STATION_RAIL, WATER]);

  const MapTypeStyleFeatureType._(String value) : super.fromValue(value);
}

class MapTypeStyleElementType extends _Constant<String> {
  static const MapTypeStyleElementType ALL = const MapTypeStyleElementType._("all");
  static const MapTypeStyleElementType GEOMETRY = const MapTypeStyleElementType._("geometry");
  static const MapTypeStyleElementType LABELS = const MapTypeStyleElementType._("labels");

  static MapTypeStyleElementType find(String value) => findIn(value, [ALL, GEOMETRY, LABELS]);

  const MapTypeStyleElementType._(String value) : super.fromValue(value);
}

// this class should have been used but "google.maps.MapTypeStyleFeatureType" and "google.maps.MapTypeStyleElementType" objects does not exist as describe in doc
class _MapTypeStyle extends js.JsObject {
  set elementType(_MapTypeStyleElementType elementType) => this["elementType"] = elementType;
  set featureType(_MapTypeStyleFeatureType featureType) => this["featureType"] = featureType;
  set stylers(List<MapTypeStyler> stylers) => this["stylers"] = stylers;
}

// this class should have been used but "google.maps.MapTypeStyleFeatureType" object does not exist as describe in doc
class _MapTypeStyleFeatureType extends js.JsConst {
  static const String TYPE_NAME = "google.maps.MapTypeStyleFeatureType";

  static const _MapTypeStyleFeatureType ADMINISTRATIVE = const _MapTypeStyleFeatureType._("${TYPE_NAME}.administrative");
  static const _MapTypeStyleFeatureType ADMINISTRATIVE_COUNTRY = const _MapTypeStyleFeatureType._("${TYPE_NAME}.administrative.country");
  static const _MapTypeStyleFeatureType ADMINISTRATIVE_LAND_PARCEL = const _MapTypeStyleFeatureType._("${TYPE_NAME}.administrative.land_parcel");
  static const _MapTypeStyleFeatureType ADMINISTRATIVE_LOCALITY = const _MapTypeStyleFeatureType._("${TYPE_NAME}.administrative.locality");
  static const _MapTypeStyleFeatureType ADMINISTRATIVE_NEIGHBORHOOD = const _MapTypeStyleFeatureType._("${TYPE_NAME}.administrative.neighborhood");
  static const _MapTypeStyleFeatureType ADMINISTRATIVE_PROVINCE = const _MapTypeStyleFeatureType._("${TYPE_NAME}.administrative.province");
  static const _MapTypeStyleFeatureType ALL = const _MapTypeStyleFeatureType._("${TYPE_NAME}.all");
  static const _MapTypeStyleFeatureType LANDSCAPE = const _MapTypeStyleFeatureType._("${TYPE_NAME}.landscape");
  static const _MapTypeStyleFeatureType LANDSCAPE_MAN_MADE = const _MapTypeStyleFeatureType._("${TYPE_NAME}.landscape.man_made");
  static const _MapTypeStyleFeatureType LANDSCAPE_NATURAL = const _MapTypeStyleFeatureType._("${TYPE_NAME}.landscape.natural");
  static const _MapTypeStyleFeatureType POI = const _MapTypeStyleFeatureType._("${TYPE_NAME}.poi");
  static const _MapTypeStyleFeatureType POI_ATTRACTION = const _MapTypeStyleFeatureType._("${TYPE_NAME}.poi.attraction");
  static const _MapTypeStyleFeatureType POI_BUSINESS = const _MapTypeStyleFeatureType._("${TYPE_NAME}.poi.business");
  static const _MapTypeStyleFeatureType POI_GOVERNMENT = const _MapTypeStyleFeatureType._("${TYPE_NAME}.poi.government");
  static const _MapTypeStyleFeatureType POI_MEDICAL = const _MapTypeStyleFeatureType._("${TYPE_NAME}.poi.medical");
  static const _MapTypeStyleFeatureType POI_PARK = const _MapTypeStyleFeatureType._("${TYPE_NAME}.poi.park");
  static const _MapTypeStyleFeatureType POI_PLACE_OF_WORSHIP = const _MapTypeStyleFeatureType._("${TYPE_NAME}.poi.place_of_worship");
  static const _MapTypeStyleFeatureType POI_SCHOOL = const _MapTypeStyleFeatureType._("${TYPE_NAME}.poi.school");
  static const _MapTypeStyleFeatureType POI_SPORTS_COMPLEX = const _MapTypeStyleFeatureType._("${TYPE_NAME}.poi.sports_complex");
  static const _MapTypeStyleFeatureType ROAD = const _MapTypeStyleFeatureType._("${TYPE_NAME}.road");
  static const _MapTypeStyleFeatureType ROAD_ARTERIAL = const _MapTypeStyleFeatureType._("${TYPE_NAME}.road.arterial");
  static const _MapTypeStyleFeatureType ROAD_HIGHWAY = const _MapTypeStyleFeatureType._("${TYPE_NAME}.road.highway");
  static const _MapTypeStyleFeatureType ROAD_HIGHWAY_CONTROLLED_ACCESS = const _MapTypeStyleFeatureType._("${TYPE_NAME}.road.highway.controlled_access");
  static const _MapTypeStyleFeatureType ROAD_LOCAL = const _MapTypeStyleFeatureType._("${TYPE_NAME}.road.local");
  static const _MapTypeStyleFeatureType TRANSIT = const _MapTypeStyleFeatureType._("${TYPE_NAME}.transit");
  static const _MapTypeStyleFeatureType TRANSIT_LINE = const _MapTypeStyleFeatureType._("${TYPE_NAME}.transit.line");
  static const _MapTypeStyleFeatureType TRANSIT_STATION = const _MapTypeStyleFeatureType._("${TYPE_NAME}.transit.station");
  static const _MapTypeStyleFeatureType TRANSIT_STATION_AIRPORT = const _MapTypeStyleFeatureType._("${TYPE_NAME}.transit.station.airport");
  static const _MapTypeStyleFeatureType TRANSIT_STATION_BUS = const _MapTypeStyleFeatureType._("${TYPE_NAME}.transit.station.bus");
  static const _MapTypeStyleFeatureType TRANSIT_STATION_RAIL = const _MapTypeStyleFeatureType._("${TYPE_NAME}.transit.station.rail");
  static const _MapTypeStyleFeatureType WATER = const _MapTypeStyleFeatureType._("${TYPE_NAME}.water");

  static _MapTypeStyleFeatureType find(Object o) { return js.JsConst.findIn(o, [ADMINISTRATIVE, ADMINISTRATIVE_COUNTRY, ADMINISTRATIVE_LAND_PARCEL, ADMINISTRATIVE_LOCALITY, ADMINISTRATIVE_NEIGHBORHOOD, ADMINISTRATIVE_PROVINCE, ALL, LANDSCAPE, LANDSCAPE_MAN_MADE, LANDSCAPE_NATURAL, POI, POI_ATTRACTION, POI_BUSINESS, POI_GOVERNMENT, POI_MEDICAL, POI_PARK, POI_PLACE_OF_WORSHIP, POI_SCHOOL, POI_SPORTS_COMPLEX, ROAD, ROAD_ARTERIAL, ROAD_HIGHWAY, ROAD_HIGHWAY_CONTROLLED_ACCESS, ROAD_LOCAL, TRANSIT, TRANSIT_LINE, TRANSIT_STATION, TRANSIT_STATION_AIRPORT, TRANSIT_STATION_BUS, TRANSIT_STATION_RAIL, WATER]); }

  const _MapTypeStyleFeatureType._(String jsName) : super.fromJsName(jsName);
}

// this class should have been used but "google.maps.MapTypeStyleElementType" object does not exist as describe in doc
class _MapTypeStyleElementType extends js.JsConst {
  static const String TYPE_NAME = "google.maps.MapTypeStyleElementType";

  static const _MapTypeStyleElementType ALL = const _MapTypeStyleElementType._("${TYPE_NAME}.all");
  static const _MapTypeStyleElementType GEOMETRY = const _MapTypeStyleElementType._("${TYPE_NAME}.geometry");
  static const _MapTypeStyleElementType LABELS = const _MapTypeStyleElementType._("${TYPE_NAME}.labels");

  static _MapTypeStyleElementType find(Object o) { return js.JsConst.findIn(o, [ALL, GEOMETRY, LABELS]); }

  const _MapTypeStyleElementType._(String jsName) : super.fromJsName(jsName);
}

class MapTypeStyler extends js.JsObject {
  set gamma(num gamma) => this["gamma"] = gamma;
  set hue(String hue) => this["hue"] = hue;
  set invert_lightness(bool invert_lightness) => this["invert_lightness"] = invert_lightness;
  set lightness(num lightness) => this["lightness"] = lightness;
  set saturation(num saturation) => this["saturation"] = saturation;
  set visibility(MapTypeStylerVisibility visibility) => this["visibility"] = visibility.value;
}

class MapTypeStylerVisibility extends _Constant<String> {
  static const MapTypeStylerVisibility ON = const MapTypeStylerVisibility._("on");
  static const MapTypeStylerVisibility OFF = const MapTypeStylerVisibility._("off");
  static const MapTypeStylerVisibility SIMPLIFIED = const MapTypeStylerVisibility._("simplified");

  static MapTypeStylerVisibility find(String value) => findIn(value, [ON, OFF, SIMPLIFIED]);

  const MapTypeStylerVisibility._(String value) : super.fromValue(value);
}

class BicyclingLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.BicyclingLayer";

  BicyclingLayer() : super.newInstance(TYPE_NAME);
  BicyclingLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { callJs("setMap", [map]); }
}

class FusionTablesLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.FusionTablesLayer";

  FusionTablesLayer(FusionTablesLayerOptions options) : super.newInstance(TYPE_NAME, [options]);
  FusionTablesLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { callJs("setMap", [map]); }
  void setOptions(FusionTablesLayerOptions options) { callJs("setOptions", [options]); }
}

class FusionTablesLayerOptions extends js.JsObject {
  set clickable(bool clickable) => this["clickable"] = clickable;
  set heatmap(FusionTablesHeatmap heatmap) => this["heatmap"] = heatmap;
  set map(GMap map) => this["map"] = map;
  set query(FusionTablesQuery query) => this["query"] = query;
  set styles(List<FusionTablesStyle> styles) => this["styles"] = styles;
  set suppressInfoWindows(bool suppressInfoWindows) => this["suppressInfoWindows"] = suppressInfoWindows;
}

class FusionTablesQuery extends js.JsObject {
  set from(String from) => this["from"] = from;
  set limit(num limit) => this["limit"] = limit;
  set offset(num offset) => this["offset"] = offset;
  set orderBy(String orderBy) => this["orderBy"] = orderBy;
  set select(String select) => this["select"] = select;
  set where(String where) => this["where"] = where;
}

class FusionTablesStyle extends js.JsObject {
  set markerOptions(FusionTablesMarkerOptions markerOptions) => this["markerOptions"] = markerOptions;
  set polygonOptions(FusionTablesPolygonOptions polygonOptions) => this["polygonOptions"] = polygonOptions;
  set polylineOptions(FusionTablesPolylineOptions polylineOptions) => this["polylineOptions"] = polylineOptions;
  set where(String where) => this["where"] = where;
}

class FusionTablesHeatmap extends js.JsObject {
  set enabled(bool enabled) => this["enabled"] = enabled;
}

class FusionTablesMarkerOptions extends js.JsObject {
  set iconName(String iconName) => this["iconName"] = iconName;
}

class FusionTablesPolygonOptions extends js.JsObject {
  set fillColor(String fillColor) => this["fillColor"] = fillColor;
  set fillOpacity(num fillOpacity) => this["fillOpacity"] = fillOpacity;
  set strokeColor(String strokeColor) => this["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => this["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => this["strokeWeight"] = strokeWeight;
}

class FusionTablesPolylineOptions extends js.JsObject {
  set strokeColor(String strokeColor) => this["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => this["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => this["strokeWeight"] = strokeWeight;
}

class FusionTablesMouseEvent extends NativeEvent {
  FusionTablesMouseEvent();
  FusionTablesMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  String get infoWindowHtml => this["infoWindowHtml"];
  LatLng get latLng => new LatLng.fromJsRef(this["latLng"]);
  Size get pixelOffset => new Size.fromJsRef(this["pixelOffset"]);
  // TODO improve return type ( should be Map<String, FusionTablesCell> )
  js.JsRef get row => this["row"];
}

class FusionTablesCell extends js.JsObject {
  String get columnName => this["columnName"];
         set columnName(String columnName) => this["columnName"] = columnName;
  String get value => this["value"];
         set value(String value) => this["value"] = value;
}

class KmlLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.KmlLayer";

  KmlLayer(String url, [KmlLayerOptions options]) : super.newInstance(TYPE_NAME, [url, options]);
  KmlLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getDefaultViewport() => new LatLngBounds.fromJsRef(callJs("getDefaultViewport"));
  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  KmlLayerMetadata getMetadata() => new KmlLayerMetadata.fromJsRef(callJs("getMetadata"));
  KmlLayerStatus getStatus() => KmlLayerStatus.find(callJs("getStatus"));
  String getUrl() => callJs("getUrl");
  void setMap(GMap map) { callJs("setMap", [map]); }
}

class KmlLayerOptions extends js.JsObject {
  set clickable(bool clickable) => this["clickable"] = clickable;
  set map(GMap map) => this["map"] = map;
  set preserveViewport(bool preserveViewport) => this["preserveViewport"] = preserveViewport;
  set suppressInfoWindows(bool suppressInfoWindows) => this["suppressInfoWindows"] = suppressInfoWindows;
}

class KmlLayerMetadata extends js.JsObject {
  KmlLayerMetadata.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  KmlAuthor get author => new KmlAuthor.fromJsRef(this["author"]);
  String get description => this["description"];
  String get name => this["name"];
  String get snippet => this["snippet"];
}

class KmlLayerStatus extends js.JsConst {
  static const String TYPE_NAME = "google.maps.KmlLayerStatus";

  static const KmlLayerStatus DOCUMENT_NOT_FOUND = const KmlLayerStatus._("${TYPE_NAME}.DOCUMENT_NOT_FOUND");
  static const KmlLayerStatus DOCUMENT_TOO_LARGE = const KmlLayerStatus._("${TYPE_NAME}.DOCUMENT_TOO_LARGE");
  static const KmlLayerStatus FETCH_ERROR = const KmlLayerStatus._("${TYPE_NAME}.FETCH_ERROR");
  static const KmlLayerStatus INVALID_DOCUMENT = const KmlLayerStatus._("${TYPE_NAME}.INVALID_DOCUMENT");
  static const KmlLayerStatus INVALID_REQUEST = const KmlLayerStatus._("${TYPE_NAME}.INVALID_REQUEST");
  static const KmlLayerStatus LIMITS_EXCEEDED = const KmlLayerStatus._("${TYPE_NAME}.LIMITS_EXCEEDED");
  static const KmlLayerStatus OK = const KmlLayerStatus._("${TYPE_NAME}.OK");
  static const KmlLayerStatus TIMED_OUT = const KmlLayerStatus._("${TYPE_NAME}.TIMED_OUT");
  static const KmlLayerStatus UNKNOWN = const KmlLayerStatus._("${TYPE_NAME}.UNKNOWN");

  static KmlLayerStatus find(Object o) { return js.JsConst.findIn(o, [DOCUMENT_NOT_FOUND, DOCUMENT_TOO_LARGE, FETCH_ERROR, INVALID_DOCUMENT, INVALID_REQUEST, LIMITS_EXCEEDED, OK, TIMED_OUT, UNKNOWN]); }

  const KmlLayerStatus._(String jsName) : super.fromJsName(jsName);
}

class KmlMouseEvent extends NativeEvent {
  KmlMouseEvent();
  KmlMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  KmlFeatureData get featureData => new KmlFeatureData.fromJsRef(this["featureData"]);
  LatLng get latLng => new LatLng.fromJsRef(this["latLng"]);
  Size get pixelOffset => new Size.fromJsRef(this["pixelOffset"]);
}

class KmlFeatureData extends js.JsObject {
  KmlFeatureData.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  KmlAuthor get author => new KmlAuthor.fromJsRef(this["author"]);
  String get description => this["description"];
  String get id => this["id"];
  String get infoWindowHtml => this["infoWindowHtml"];
  String get name => this["name"];
  String get snippet => this["snippet"];
}

class KmlAuthor extends js.JsObject {
  KmlAuthor.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get email => this["email"];
  String get name => this["name"];
  String get uri => this["uri"];
}

class TrafficLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.TrafficLayer";

  TrafficLayer() : super.newInstance(TYPE_NAME);
  TrafficLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { callJs("setMap", [map]); }
}

class TransitLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.TransitLayer";

  TransitLayer() : super.newInstance(TYPE_NAME);
  TransitLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { callJs("setMap", [map]); }
}

class StreetViewPanorama extends MVCObject {
  static const String TYPE_NAME = "google.maps.StreetViewPanorama";

  StreetViewPanorama(html.Node container, [StreetViewPanoramaOptions opts]) : super.newInstance(TYPE_NAME, [container, opts]);
  StreetViewPanorama.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<StreetViewLink> getLinks() => new js.JsList<StreetViewLink>.fromJsRef(callJsForRef("getLinks"), (e) => new StreetViewLink.fromJsRef(e));
  String getPano() => callJs("getPano");
  LatLng getPosition() => new LatLng.fromJsRef(callJs("getPosition"));
  StreetViewPov getPov() => new StreetViewPov.fromJsRef(callJs("getPov"));
  bool getVisible() => callJs("getVisible");
  void registerPanoProvider(StreetViewPanoramaData provider(String pano)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      return provider(args[0]);
    };
    callJs("registerPanoProvider", [callbackFunction]);
  }
  void setPano(String pano) { callJs("setPano", [pano]); }
  void setPosition(LatLng latLng) { callJs("setPosition", [latLng]); }
  void setPov(StreetViewPov pov) { callJs("setPov", [pov]); }
  void setVisible(bool flag) { callJs("setVisible", [flag]); }

  Controls get controls => new Controls.fromJsRef(js.getPropertyRef(this, "controls"));
  set controls(Controls controls) => this["controls"] = controls;
}

class StreetViewPanoramaOptions extends js.JsObject {
  set addressControl(bool addressControl) => this["addressControl"] = addressControl;
  set addressControlOptions(StreetViewAddressControlOptions addressControlOptions) => this["addressControlOptions"] = addressControlOptions;
  set clickToGo(bool clickToGo) => this["clickToGo"] = clickToGo;
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => this["disableDoubleClickZoom"] = disableDoubleClickZoom;
  set enableCloseButton(bool enableCloseButton) => this["enableCloseButton"] = enableCloseButton;
  set imageDateControl(bool imageDateControl) => this["imageDateControl"] = imageDateControl;
  set linksControl(bool linksControl) => this["linksControl"] = linksControl;
  set panControl(bool panControl) => this["panControl"] = panControl;
  set panControlOptions(PanControlOptions panControlOptions) => this["panControlOptions"] = panControlOptions;
  set pano(String pano) => this["pano"] = pano;
  set panoProvider(StreetViewPanoramaData provider(String pano)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      return provider(args[0]);
    };
    this["panoProvider"] = callbackFunction;
  }
  set position(LatLng position) => this["position"] = position;
  set pov(StreetViewPov pov) => this["pov"] = pov;
  set scrollwheel(bool scrollwheel) => this["scrollwheel"] = scrollwheel;
  set visible(bool visible) => this["visible"] = visible;
  set zoomControl(bool zoomControl) => this["zoomControl"] = zoomControl;
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => this["zoomControlOptions"] = zoomControlOptions;
}

class StreetViewAddressControlOptions extends js.JsObject {
  set position(ControlPosition position) => this["position"] = position;
}

class StreetViewLink extends js.JsObject {
  StreetViewLink() : super();
  StreetViewLink.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get description => this["description"];
         set description(String description) => this["description"] = description;
  num get heading => this["heading"];
      set heading(num heading) => this["heading"] = heading;
  String get pano => this["pano"];
         set pano(String pano) => this["pano"] = pano;
}

class StreetViewPov extends js.JsObject {
  StreetViewPov() : super();
  StreetViewPov.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  num get heading => this["heading"];
      set heading(num heading) => this["heading"] = heading;
  num get pitch => this["pitch"];
      set pitch(num pitch) => this["pitch"] = pitch;
  num get zoom => this["zoom"];
      set zoom(num zoom) => this["zoom"] = zoom;
}

class StreetViewPanoramaData extends js.JsObject {
  StreetViewPanoramaData() : super();
  StreetViewPanoramaData.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get copyright => this["copyright"];
         set copyright(String copyright) => this["copyright"] = copyright;
  String get imageDate => this["imageDate"];
         set imageDate(String imageDate) => this["imageDate"] = imageDate;
  List<StreetViewLink> get links => new js.JsList<StreetViewLink>.fromJsRef(getJsRef("links"), (e) => new StreetViewLink.fromJsRef(e));
                       set links(List<StreetViewLink> links) => this["links"] = links;
  StreetViewLocation get location => new StreetViewLocation.fromJsRef(this["location"]);
                     set location(StreetViewLocation location) => this["location"] = location;
  StreetViewTileData get tiles => new StreetViewTileData.fromJsRef(this["tiles"]);
                     set tiles(StreetViewTileData tiles) => this["tiles"] = tiles;
}

class StreetViewLocation extends js.JsObject {
  StreetViewLocation() : super();
  StreetViewLocation.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get description => this["description"];
         set description(String description) => this["description"] = description;
  LatLng get latLng => new LatLng.fromJsRef(this["latLng"]);
         set latLng(LatLng latLng) => this["latLng"] = latLng;
  String get pano => this["pano"];
         set pano(String pano) => this["pano"] = pano;
}

class StreetViewTileData extends js.JsObject {
  StreetViewTileData() : super();
  StreetViewTileData.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String getTileUrl(String pano, num tileZoom, num tileX, num tileY) => callJs("getTileUrl", [pano, tileZoom, tileX, tileY]);

  set centerHeading(num centerHeading) => this["centerHeading"] = centerHeading;
  set tileSize(Size tileSize) => this["tileSize"] = tileSize;
  set worldSize(Size worldSize) => this["worldSize"] = worldSize;
}

class StreetViewService extends js.JsObject {
  static const String TYPE_NAME = "google.maps.StreetViewService";

  StreetViewService() : super.newInstance(TYPE_NAME);

  void getPanoramaById(String pano, void callback(StreetViewPanoramaData streetViewPanoramaData, StreetViewStatus streetViewStatus)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new StreetViewPanoramaData.fromJsRef(args[0]), StreetViewStatus.find(args[1]));
    };
    callJs("getPanoramaById", [pano, callbackFunction]);
  }
  void getPanoramaByLocation(LatLng latlng, num radius, void callback(StreetViewPanoramaData streetViewPanoramaData, StreetViewStatus streetViewStatus)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new StreetViewPanoramaData.fromJsRef(args[0]), StreetViewStatus.find(args[1]));
    };
    callJs("getPanoramaByLocation", [latlng, radius, callbackFunction]);
  }
}

class StreetViewStatus extends js.JsConst {
  static const String TYPE_NAME = "google.maps.StreetViewStatus";

  static const StreetViewStatus OK = const StreetViewStatus._("${TYPE_NAME}.OK");
  static const StreetViewStatus UNKNOWN_ERROR = const StreetViewStatus._("${TYPE_NAME}.UNKNOWN_ERROR");
  static const StreetViewStatus ZERO_RESULTS = const StreetViewStatus._("${TYPE_NAME}.ZERO_RESULTS");

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
  static const String TYPE_NAME = "google.maps.event";

  static MapsEventListener addDomListener(Object instance, String eventName, void handler(NativeEvent e), [bool capture]) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.callFunction(null, "${TYPE_NAME}.addDomListener", [instance, eventName, callback, capture]));
  }
  static MapsEventListener addDomListenerOnce(Object instance, String eventName, void handler(NativeEvent e), [bool capture]) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.callFunction(null, "${TYPE_NAME}.addDomListenerOnce", [instance, eventName, callback, capture]));
  }
  static MapsEventListener addListener(js.JsObject instance, String eventName, void handler(NativeEvent e)) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.callFunction(null, "${TYPE_NAME}.addListener", [instance, eventName, callback]));
  }
  static MapsEventListener addListenerOnce(js.JsObject instance, String eventName, void handler(NativeEvent e)) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.callFunction(null, "${TYPE_NAME}.addListenerOnce", [instance, eventName, callback]));
  }
  static void clearInstanceListeners(js.JsObject instance) { js.callFunction(null, "${TYPE_NAME}.clearInstanceListeners", [instance]); }
  static void clearListeners(js.JsObject instance, String eventName) { js.callFunction(null, "${TYPE_NAME}.clearListeners", [instance, eventName]); }
  static void removeListener(MapsEventListener listener) { js.callFunction(null, "${TYPE_NAME}.removeListener", [listener]); }
  static void trigger(js.JsObject instance, String eventName, List<Object> args) {
    final parameters = new List<Object>();
    parameters.add(instance);
    parameters.add(eventName);
    parameters.addAll(args);
    js.callFunction(null, "${TYPE_NAME}.trigger", parameters);
  }
}

class MouseEvent extends NativeEvent {
  MouseEvent();
  MouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  LatLng get latLng => new LatLng.fromJsRef(this["latLng"]);
}

class LatLng extends js.JsObject {
  static const String TYPE_NAME = "google.maps.LatLng";

  LatLng(num lat, num lng, [bool noWrap]) : super.newInstance(TYPE_NAME, [lat, lng, noWrap]);
  LatLng.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool equals(LatLng other) => callJs("equals", [other]);
  num lat() => callJs("lat");
  num lng() => callJs("lng");
  String toString() => callJs("toString");
  String toUrlValue([num precision]) => callJs("toUrlValue", [precision]);
}

class LatLngBounds extends js.JsObject {
  static const String TYPE_NAME = "google.maps.LatLngBounds";

  LatLngBounds([LatLng sw, LatLng ne]) : super.newInstance(TYPE_NAME, [sw, ne]);
  LatLngBounds.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool contains(LatLng latLng) => callJs("contains", [latLng]);
  bool equals(LatLngBounds other) => callJs("equals", [other]);
  LatLngBounds extend(LatLng point) => new LatLngBounds.fromJsRef(callJs("extend", [point]));
  LatLng getCenter() => new LatLng.fromJsRef(callJs("getCenter"));
  LatLng getNorthEast() => new LatLng.fromJsRef(callJs("getNorthEast"));
  LatLng getSouthWest() => new LatLng.fromJsRef(callJs("getSouthWest"));
  bool intersects(LatLngBounds other) => callJs("intersects", [other]);
  bool isEmpty() => callJs("isEmpty");
  LatLng toSpan() => new LatLng.fromJsRef(callJs("toSpan"));
  String toString() => callJs("toString");
  String toUrlValue([num precision]) => callJs("toUrlValue", [precision]);
  bool union(LatLngBounds other) => callJs("union", [other]);
}

class Point extends js.JsObject {
  static const String TYPE_NAME = "google.maps.Point";

  Point(num x, num y) : super.newInstance(TYPE_NAME, [x, y]);
  Point.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool equals(Point other) => callJs("equals", [other]);
  String toString() => callJs("toString");

  num get x => this["x"];
      set x(num x) => this["x"] = x;
  num get y => this["y"];
      set y(num y) => this["y"] = y;
}

class Size extends js.JsObject {
  static const String TYPE_NAME = "google.maps.Size";

  Size(num width, num height, [String widthUnit, String heightUnit]) : super.newInstance(TYPE_NAME, [width, height, widthUnit, heightUnit]);
  Size.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool equals(Size other) => callJs("equals", [other]);
  String toString() => callJs("toString");

  num get height => this["height"];
      set height(num height) => this["height"] = height;
  num get width => this["width"];
      set width(num width) => this["width"] = width;
}

class MVCObject extends js.JsObject {
  static const String TYPE_NAME = "google.maps.MVCObject";

  MVCObject() : super.newInstance(TYPE_NAME);
  MVCObject.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);
  MVCObject.newInstance(String objectName, [List args]) : super.newInstance(objectName, args);

  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]) { callJs("bindTo", [key, target, targetKey, noNotify]); }
  void changed(String key) { callJs("changed", [key]); }
  Object get_(String key) => callJs("get", [key]);
  void notify(String key) { callJs("notify", [key]); }
  void set_(String key, Object value) { callJs("set", [key, value]); }
  void setValues(Map<String, Object> values) {
    final valuesJs = new js.JsObject();
    values.forEach((String key, Object value) {
      this[key] = value;
    });
    callJs("setValues", [valuesJs]);
  }
  void unbind(String key) { callJs("unbind", [key]); }
  void unbindAll() { callJs("unbindAll"); }
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

  void clear() { callJs("clear"); }
  void forEach(void callback(E o, num index)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(_mayWrap(args[0]), args[1]);
    };
    callJs("forEach", [callbackFunction]);
  }
  List<E> getArray() => new js.JsList<E>.fromJsRef(callJsForRef("getArray"), _mayWrap);
  E getAt(num i) => _mayWrap(callJs("getAt", [i]));
  num getLength() => callJs("getLength");
  void insertAt(num i, E elem) { callJs("insertAt", [i, elem]); }
  E pop() => _mayWrap(callJs("pop"));
  num push(E elem) => callJs("push", [elem]);
  E removeAt(num i) => _mayWrap(callJs("removeAt", [i]));
  void setAt(num i, E elem) { callJs("setAt", [i, elem]); }

  E _mayWrap(Object o) {
    if (_jsRefWrapper !== null && o is js.JsRef) {
      return _jsRefWrapper(o);
    }
    return o;
  }
}


