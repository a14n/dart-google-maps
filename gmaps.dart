#library('gmaps');

#import('dart:html', prefix:'html');
#import('jsni.dart', prefix:'js');
#source('utils.dart');

// start GMaps wrapping

class GMap extends MVCObject {
  static const String TYPE_NAME = "google.maps.Map";

  GMap(html.Node mapDiv, [MapOptions opts]) : super.newInstance(TYPE_NAME, [mapDiv, opts]);
  GMap.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void fitBounds(LatLngBounds bounds) { $.call("fitBounds", [bounds]); }
  LatLngBounds getBounds() => new LatLngBounds.fromJsRef($.call("getBounds"));
  LatLng getCenter() => new LatLng.fromJsRef($.call("getCenter"));
  html.Node getDiv() => $.call("getDiv");
  num getHeading() => $.call("getHeading");
  Object getMapTypeId() {
    final result = $.call("getMapTypeId");
    final mapTypeId = MapTypeId.find(result);
    if ( mapTypeId !== null ) {
      return mapTypeId;
    } else {
      return result;
    }
  }
  Projection getProjection() => new Projection.fromJsRef($.call("getProjection"));
  StreetViewPanorama getStreetView() => new StreetViewPanorama.fromJsRef($.call("getStreetView"));
  num getTilt() => $.call("getTilt");
  num getZoom() => $.call("getZoom");
  void panBy(num x, num y) { $.call("panBy", [x, y]); }
  void panTo(LatLng latLng) { $.call("panTo", [latLng]); }
  void panToBounds(LatLngBounds latLngBounds) { $.call("panToBounds", [latLngBounds]); }
  void setCenter(LatLng latLng) { $.call("setCenter", [latLng]); }
  void setHeading(num heading) { $.call("setHeading", [heading]); }
  void setMapTypeId(Object mapTypeId) {
    if (mapTypeId is String || mapTypeId is MapTypeId) {
      $.call("setMapTypeId", [mapTypeId]);
    } else {
      throw new IllegalArgumentException(mapTypeId);
    }
  }
  void setOptions(MapOptions options) { $.call("setOptions", [options]); }
  void setStreetView(StreetViewPanorama panorama) { $.call("setStreetView", [panorama]); }
  void setTilt(num tilt) { $.call("setTilt", [tilt]); }
  void setZoom(num zoom) { $.call("setZoom", [zoom]); }

  Controls get controls => new Controls.fromJsRef($.getPropertyAsJsRef("controls"));
           set controls(Controls controls) => $["controls"] = controls;
  MapTypeRegistry get mapTypes => new MapTypeRegistry.fromJsRef($["mapTypes"]);
                  set mapTypes(MapTypeRegistry mapTypes) => $["mapTypes"] = mapTypes;
  MVCArray<MapType> get overlayMapTypes => new MVCArray.fromJsRef($["overlayMapTypes"], (js.JsRef jsRef) => new MapType.fromJsRef(jsRef));
                    set overlayMapTypes(MVCArray<MapType> overlayMapTypes) => $["overlayMapTypes"] = overlayMapTypes;
}

class Controls extends js.JsObject {
  Controls() : super.newInstance("Array");
  Controls.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  MVCArray<html.Node> getNodes(ControlPosition controlPosition) => new MVCArray.fromJsRef($[controlPosition.$.value.toString()]);
  void setNodes(ControlPosition controlPosition, MVCArray<html.Node> nodes) { $[controlPosition.$.value.toString()] = nodes; }
}

class MapOptions extends js.JsObject {
  set backgroundColor(String backgroundColor) => $["backgroundColor"] = backgroundColor;
  set center(LatLng center) => $["center"] = center;
  set disableDefaultUI(bool disableDefaultUI) => $["disableDefaultUI"] = disableDefaultUI;
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => $["disableDoubleClickZoom"] = disableDoubleClickZoom;
  set draggable(bool draggable) => $["draggable"] = draggable;
  set draggableCursor(String draggableCursor) => $["draggableCursor"] = draggableCursor;
  set draggingCursor(String draggingCursor) => $["draggingCursor"] = draggingCursor;
  set heading(num heading) => $["heading"] = heading;
  set keyboardShortcuts(bool keyboardShortcuts) => $["keyboardShortcuts"] = keyboardShortcuts;
  set mapMaker(bool mapMaker) => $["mapMaker"] = mapMaker;
  set mapTypeControl(bool mapTypeControl) => $["mapTypeControl"] = mapTypeControl;
  set mapTypeControlOptions(MapTypeControlOptions mapTypeControlOptions) => $["mapTypeControlOptions"] = mapTypeControlOptions;
  set mapTypeId(Object mapTypeId) {
    if (mapTypeId is String || mapTypeId is MapTypeId) {
      $["mapTypeId"] = mapTypeId;
    } else {
      throw new IllegalArgumentException(mapTypeId);
    }
  }
  set maxZoom(num maxZoom) => $["maxZoom"] = maxZoom;
  set minZoom(num minZoom) => $["minZoom"] = minZoom;
  set noClear(bool noClear) => $["noClear"] = noClear;
  set overviewMapControl(bool overviewMapControl) => $["overviewMapControl"] = overviewMapControl;
  set overviewMapControlOptions(OverviewMapControlOptions overviewMapControlOptions) => $["overviewMapControlOptions"] = overviewMapControlOptions;
  set panControl(bool panControl) => $["panControl"] = panControl;
  set panControlOptions(PanControlOptions panControlOptions) => $["panControlOptions"] = panControlOptions;
  set rotateControl(bool rotateControl) => $["rotateControl"] = rotateControl;
  set rotateControlOptions(RotateControlOptions rotateControlOptions) => $["rotateControlOptions"] = rotateControlOptions;
  set scaleControl(bool scaleControl) => $["scaleControl"] = scaleControl;
  set scaleControlOptions(ScaleControlOptions scaleControlOptions) => $["scaleControlOptions"] = scaleControlOptions;
  set scrollwheel(bool scrollwheel) => $["scrollwheel"] = scrollwheel;
  set streetView(StreetViewPanorama streetView) => $["streetView"] = streetView;
  set streetViewControl(bool streetViewControl) => $["streetViewControl"] = streetViewControl;
  set streetViewControlOptions(StreetViewControlOptions streetViewControlOptions) => $["streetViewControlOptions"] = streetViewControlOptions;
  set styles(List<MapTypeStyle> styles) => $["styles"] = styles;
  set tilt(num tilt) => $["tilt"] = tilt;
  set zoom(num zoom) => $["zoom"] = zoom;
  set zoomControl(bool zoomControl) => $["zoomControl"] = zoomControl;
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => $["zoomControlOptions"] = zoomControlOptions;
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
    $["mapTypeIds"] = mapTypeIds;
  }
  set position(ControlPosition position) => $["position"] = position;
  set style(MapTypeControlStyle style) => $["style"] = style;
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
  set opened(bool opened) => $["opened"] = opened;
}

class PanControlOptions extends js.JsObject {
  set position(ControlPosition position) => $["position"] = position;
}

class RotateControlOptions extends js.JsObject {
  set position(ControlPosition position) => $["position"] = position;
}

class ScaleControlOptions extends js.JsObject {
  set position(ControlPosition position) => $["position"] = position;
  set style(ScaleControlStyle style) => $["style"] = style;
}

class ScaleControlStyle extends js.JsConst {
  static const String TYPE_NAME = "google.maps.ScaleControlStyle";

  static const ScaleControlStyle DEFAULT = const ScaleControlStyle._("${TYPE_NAME}.DEFAULT");

  static ScaleControlStyle find(Object o) { return js.JsConst.findIn(o, [DEFAULT]); }

  const ScaleControlStyle._(String jsName) : super.fromJsName(jsName);
}

class StreetViewControlOptions extends js.JsObject {
  set position(ControlPosition position) => $["position"] = position;
}

class ZoomControlOptions extends js.JsObject {
  set position(ControlPosition position) => $["position"] = position;
  set style(ZoomControlStyle style) => $["style"] = style;
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
  // static const num MAX_ZINDEX = js.getWindow().$.call("${TYPE_NAME}.MAX_ZINDEX");

  Marker([MarkerOptions opts]) : super.newInstance(TYPE_NAME, [opts]);

  Animation getAnimation() => Animation.find($.call("getAnimation"));
  bool getClickable() => $.call("getClickable");
  String getCursor() => $.call("getCursor");
  bool getDraggable() => $.call("getDraggable");
  bool getFlat() => $.call("getFlat");
  Object getIcon() {
    final result = $.call("getIcon");
    if (result is String) {
      return result;
    } else if (result is js.JsRef) {
      return new MarkerImage.fromJsRef(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  Object getMap() {
    final result = $.call("getMap");
    if (js.isInstanceOf(result ,GMap.TYPE_NAME)) {
      return new GMap.fromJsRef(result);
    } else if (js.isInstanceOf(result ,StreetViewPanorama.TYPE_NAME)) {
      return new StreetViewPanorama.fromJsRef(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  LatLng getPosition() => new LatLng.fromJsRef($.call("getPosition"));
  Object getShadow() {
    final result = $.call("getShadow");
    if (result is String) {
      return result;
    } else if (result is js.JsRef) {
      return new MarkerImage.fromJsRef(result);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  MarkerShape getShape() => new MarkerShape.fromJsRef($.call("getShape"));
  String getTitle() => $.call("getTitle");
  bool getVisible() => $.call("getVisible");
  num getZIndex() => $.call("getZIndex");
  void setAnimation(Animation animation) { $.call("setAnimation", [animation]); }
  void setClickable(bool flag) { $.call("setClickable", [flag]); }
  void setCursor(String cursor) { $.call("setCursor", [cursor]); }
  void setDraggable(bool flag) { $.call("setDraggable", [flag]); }
  void setFlat(bool flag) { $.call("setFlat", [flag]); }
  void setIcon(Object icon) {
    if (icon is String || icon is MarkerImage) {
      $.call("setIcon", [icon]);
    } else {
      throw new IllegalArgumentException(icon);
    }
  }
  void setMap(Object map) {
    if (map === null || map is GMap || map is StreetViewPanorama) {
      $.call("setMap", [map]);
    } else {
      throw new IllegalArgumentException(map);
    }
  }
  void setOptions(MarkerOptions options) { $.call("setOptions", [options]); }
  void setPosition(LatLng latlng) { $.call("setPosition", [latlng]); }
  void setShadow(Object shadow) {
    if (shadow is String || shadow is MarkerImage) {
      $.call("setShadow", [shadow]);
    } else {
      throw new IllegalArgumentException(shadow);
    }
  }
  void setTitle(String title) { $.call("setTitle", [title]); }
  void setVisible(bool visible) { $.call("setVisible", [visible]); }
  void setZIndex(num zIndex) { $.call("setZIndex", [zIndex]); }
}

class MarkerOptions extends js.JsObject {
  set animation(Animation animation) => $["animation"] = animation;
  set clickable(bool clickable) => $["clickable"] = clickable;
  set cursor(String cursor) => $["cursor"] = cursor;
  set draggable(bool draggable) => $["draggable"] = draggable;
  set flat(bool flat) => $["flat"] = flat;
  set icon(Object icon) {
    if (icon is String || icon is MarkerImage || icon is Symbol) {
      $["icon"] = icon;
    } else {
      throw new IllegalArgumentException(icon);
    }
  }
  set map(Object map) {
    if (map is GMap || map is StreetViewPanorama) {
      $["map"] = map;
    } else {
      throw new IllegalArgumentException(map);
    }
  }
  set optimized(bool optimized) => $["optimized"] = optimized;
  set position(LatLng position) => $["position"] = position;
  set raiseOnDrag(bool raiseOnDrag) => $["raiseOnDrag"] = raiseOnDrag;
  set shadow(Object shadow) {
    if (shadow is String || shadow is MarkerImage || shadow is Symbol) {
      $["shadow"] = shadow;
    } else {
      throw new IllegalArgumentException(shadow);
    }
  }
  set shape(MarkerShape shape) => $["shape"] = shape;
  set title(String title) => $["title"] = title;
  set visible(bool visible) => $["visible"] = visible;
  set zIndex(num zIndex) => $["zIndex"] = zIndex;
}

class MarkerImage extends js.JsObject {
  static const String TYPE_NAME = "google.maps.MarkerImage";

  MarkerImage(String url, [Size size, Point origin, Point anchor, Size scaledSize]) : super.newInstance(TYPE_NAME, [url, size, origin, anchor, scaledSize]);
  MarkerImage.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Point get anchor => new Point.fromJsRef($["anchor"]);
        set anchor(Point anchor) => $["anchor"] = anchor;
  Point get origin => new Point.fromJsRef($["origin"]);
        set origin(Point origin) => $["origin"] = origin;
  Size get scaledSize => new Size.fromJsRef($["scaledSize"]);
       set scaledSize(Size scaledSize) => $["scaledSize"] = scaledSize;
  Size get size => new Size.fromJsRef($["size"]);
       set size(Size size) => $["size"] = size;
  String get url => $["url"];
         set url(String url) => $["url"] = url;
}

class MarkerShape extends js.JsObject {
  MarkerShape() : super();
  MarkerShape.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<num> get coords => new js.JsList<num>.fromJsRef($.getPropertyAsJsRef("coords"), (e) => js.$$(e).value);
            set coords(List<num> coords) => $["coords"] = coords;
  MarkerShapeType get type => MarkerShapeType.find($["type"]);
                  set type(MarkerShapeType type) => $["type"] = type.value;
}

class MarkerShapeType extends _Constant<String> {
  static const MarkerShapeType CIRCLE = const MarkerShapeType._("circle");
  static const MarkerShapeType POLY = const MarkerShapeType._("poly");
  static const MarkerShapeType RECT = const MarkerShapeType._("rect");

  static MarkerShapeType find(String value) => findIn(value, [CIRCLE, POLY, RECT]);

  const MarkerShapeType._(String value) : super.fromValue(value);
}

class Symbol extends js.JsObject {
  Point get anchor => new Point.fromJsRef($["anchor"]);
        set anchor(Point anchor) => $["anchor"] = anchor;
  String get fillColor => $["fillColor"];
         set fillColor(String fillColor) => $["fillColor"] = fillColor;
  num get fillOpacity => $["fillOpacity"];
      set fillOpacity(num fillOpacity) => $["fillOpacity"] = fillOpacity;
  Object get path {
           final result = $["path"];
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
             $["path"] = path;
           } else {
             throw new IllegalArgumentException(path);
           }
         }
  num get rotation => $["rotation"];
      set rotation(num rotation) => $["rotation"] = rotation;
  num get scale => $["scale"];
      set scale(num scale) => $["scale"] = scale;
  String get strokeColor => $["strokeColor"];
         set strokeColor(String strokeColor) => $["strokeColor"] = strokeColor;
  num get strokeOpacity => $["strokeOpacity"];
      set strokeOpacity(num strokeOpacity) => $["strokeOpacity"] = strokeOpacity;
  num get strokeWeight => $["strokeWeight"];
      set strokeWeight(num rotation) => $["strokeWeight"] = strokeWeight;
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

  void close() { $.call("close"); }
  Object getContent() {
    final result = $.call("getContent");
    if (result is String || result is html.Node) {
      return result;
    } else {
      throw new Exception("Unsupported result");
    }
  }
  LatLng getPosition() => new LatLng.fromJsRef($.call("getPosition"));
  num getZIndex() => $.call("getZIndex");
  void open([Object map, MVCObject anchor]) {
    if (map is GMap || map is StreetViewPanorama) {
      $.call("open", [map, anchor]);
    } else {
      throw new IllegalArgumentException(map);
    }
  }
  void setContent(Object content) {
    if (content is String || content is html.Node) {
      $.call("setContent", [content]);
    } else {
      throw new IllegalArgumentException(content);
    }
  }
  void setOptions(InfoWindowOptions options) { $.call("setOptions", [options]); }
  void setPosition(LatLng position) { $.call("setPosition", [position]); }
  void setZIndex(num zIndex) { $.call("setZIndex", [zIndex]); }
}

class InfoWindowOptions extends js.JsObject {
  set content(Object content) {
    if (content is String || content is html.Node) {
      $["content"] = content;
    } else {
      throw new IllegalArgumentException(content);
    }
  }
  bool get disableAutoPan => $["disableAutoPan"];
       set disableAutoPan(bool disableAutoPan) => $["disableAutoPan"] = disableAutoPan;
  num get maxWidth => $["maxWidth"];
      set maxWidth(num maxWidth) => $["maxWidth"] = maxWidth;
  Size get pixelOffset => new Size.fromJsRef($["pixelOffset"]);
       set pixelOffset(Size pixelOffset) => $["pixelOffset"] = pixelOffset;
  LatLng get position => new LatLng.fromJsRef($["position"]);
         set position(LatLng position) => $["position"] = position;
  num get zIndex => $["zIndex"];
      set zIndex(num zIndex) => $["zIndex"] = zIndex;
}

class Polyline extends MVCObject {
  static const String TYPE_NAME = "google.maps.Polyline";

  Polyline([PolylineOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  Polyline.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool getEditable() => $.call("getEditable");
  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  MVCArray<LatLng> getPath() => new MVCArray.fromJsRef($.call("getPath"), (js.JsRef jsRef) => new LatLng.fromJsRef(jsRef));
  bool getVisible() => $.call("getVisible");
  void setEditable(bool editable) { $.call("setEditable", [editable]); }
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(PolylineOptions options) { $.call("setOptions", [options]); }
  void setPath(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      $.call("setPath", [path]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  void setVisible(bool visible) { $.call("setVisible", [visible]); }
}

class PolylineOptions extends js.JsObject {
  set clickable(bool clickable) => $["clickable"] = clickable;
  set editable(bool editable) => $["editable"] = editable;
  set geodesic(bool geodesic) => $["geodesic"] = geodesic;
  set icons(List<IconSequence> icons) => $["icons"] = icons;
  set map(GMap map) => $["map"] = map;
  set path(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      $["path"] = path;
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  set strokeColor(String strokeColor) => $["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => $["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => $["strokeWeight"] = strokeWeight;
  set visible(bool visible) => $["visible"] = visible;
  set zIndex(num zIndex) => $["zIndex"] = zIndex;
}

class IconSequence extends js.JsObject {
  IconSequence() : super();
  IconSequence.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  set icon(Symbol icon) => $["icon"] = icon;
  set offset(String offset) => $["offset"] = offset;
  set repeat(String repeat) => $["repeat"] = repeat;
}

class Polygon extends MVCObject {
  static const String TYPE_NAME = "google.maps.Polygon";

  Polygon([PolygonOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  Polygon.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool getEditable() => $.call("getEditable");
  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  MVCArray<LatLng> getPath() => new MVCArray.fromJsRef($.call("getPath"), (js.JsRef jsRef) => new LatLng.fromJsRef(jsRef));
  MVCArray<MVCArray<LatLng>> getPaths() => new MVCArray.fromJsRef($.call("getPaths"), (js.JsRef jsRef) => new MVCArray.fromJsRef(jsRef, (js.JsRef jsRef) => new LatLng.fromJsRef(jsRef)));
  bool getVisible() => $.call("getVisible");
  void setEditable(bool editable) { $.call("setEditable", [editable]); }
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(PolylineOptions options) { $.call("setOptions", [options]); }
  void setPath(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      $.call("setPath", [path]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  void setPaths(Object paths) {
    if (paths is MVCArray<MVCArray<LatLng>> || paths is MVCArray<LatLng> || paths is List<List<LatLng>> || paths is List<LatLng>) {
      $.call("setPaths", [paths]);
    } else {
      throw new IllegalArgumentException(paths);
    }
  }
  void setVisible(bool visible) { $.call("setVisible", [visible]); }
}

class PolygonOptions extends js.JsObject {
  set clickable(bool clickable) => $["clickable"] = clickable;
  set editable(bool editable) => $["editable"] = editable;
  set fillColor(String fillColor) => $["fillColor"] = fillColor;
  set fillOpacity(num fillOpacity) => $["fillOpacity"] = fillOpacity;
  set geodesic(bool geodesic) => $["geodesic"] = geodesic;
  set map(GMap map) => $["map"] = map;
  set paths(Object paths) {
    if (paths is MVCArray<MVCArray<LatLng>> || paths is MVCArray<LatLng> || paths is List<List<LatLng>> || paths is List<LatLng>) {
      $["paths"] = paths;
    } else {
      throw new IllegalArgumentException(paths);
    }
  }
  set strokeColor(String strokeColor) => $["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => $["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => $["strokeWeight"] = strokeWeight;
  set visible(bool visible) => $["visible"] = visible;
  set zIndex(num zIndex) => $["zIndex"] = zIndex;
}

class PolyMouseEvent extends MouseEvent {
  PolyMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  num get edge => $["edge"];
  num get path => $["path"];
  num get vertex => $["vertex"];
}

class Rectangle extends MVCObject {
  static const String TYPE_NAME = "google.maps.Rectangle";

  Rectangle([RectangleOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  Rectangle.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getBounds() => new LatLngBounds.fromJsRef($.call("getBounds"));
  bool getEditable() => $.call("getEditable");
  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  bool getVisible() => $.call("getVisible");
  void setBounds(LatLngBounds bounds) { $.call("setBounds", [bounds]); }
  void setEditable(bool editable) { $.call("setEditable", [editable]); }
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(RectangleOptions options) { $.call("setOptions", [options]); }
  void setVisible(bool visible) { $.call("setVisible", [visible]); }
}

class RectangleOptions extends js.JsObject {
  set bounds(LatLngBounds bounds) => $["bounds"] = bounds;
  set clickable(bool clickable) => $["clickable"] = clickable;
  set editable(bool editable) => $["editable"] = editable;
  set fillColor(String fillColor) => $["fillColor"] = fillColor;
  set fillOpacity(num fillOpacity) => $["fillOpacity"] = fillOpacity;
  set map(GMap map) => $["map"] = map;
  set strokeColor(String strokeColor) => $["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => $["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => $["strokeWeight"] = strokeWeight;
  set visible(bool visible) => $["visible"] = visible;
  set zIndex(num zIndex) => $["zIndex"] = zIndex;
}

class Circle extends MVCObject {
  static const String TYPE_NAME = "google.maps.Circle";

  Circle([CircleOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  Circle.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getBounds() => new LatLngBounds.fromJsRef($.call("getBounds"));
  LatLng getCenter() => new LatLng.fromJsRef($.call("getCenter"));
  bool getEditable() => $.call("getEditable");
  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  num getRadius() => $.call("getRadius");
  bool getVisible() => $.call("getVisible");
  void setCenter(LatLng center) { $.call("setCenter", [center]); }
  void setEditable(bool editable) { $.call("setEditable", [editable]); }
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(CircleOptions options) { $.call("setOptions", [options]); }
  void setRadius(bool radius) { $.call("setRadius", [radius]); }
  void setVisible(bool visible) { $.call("setVisible", [visible]); }
}

class CircleOptions extends js.JsObject {
  set center(LatLng center) => $["center"] = center;
  set clickable(bool clickable) => $["clickable"] = clickable;
  set editable(bool editable) => $["editable"] = editable;
  set fillColor(String fillColor) => $["fillColor"] = fillColor;
  set fillOpacity(num fillOpacity) => $["fillOpacity"] = fillOpacity;
  set map(GMap map) => $["map"] = map;
  set radius(num radius) => $["radius"] = radius;
  set strokeColor(String strokeColor) => $["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => $["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => $["strokeWeight"] = strokeWeight;
  set visible(bool visible) => $["visible"] = visible;
  set zIndex(num zIndex) => $["zIndex"] = zIndex;
}

class GroundOverlay extends MVCObject {
  static const String TYPE_NAME = "google.maps.GroundOverlay";

  GroundOverlay(String url, LatLngBounds bounds, [GroundOverlayOptions opts]) : super.newInstance(TYPE_NAME, [url, bounds, opts]);
  GroundOverlay.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getBounds() => new LatLngBounds.fromJsRef($.call("getBounds"));
  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  num getOpacity() => $.call("getOpacity");
  String getUrl() => $.call("getUrl");
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOpacity(num opacity) { $.call("setOpacity", [opacity]); }
}

class GroundOverlayOptions extends js.JsObject {
  set clickable(bool clickable) => $["clickable"] = clickable;
  set map(GMap map) => $["map"] = map;
  set opacity(num radius) => $["opacity"] = opacity;
}

class OverlayView extends MVCObject {
  static const String TYPE_NAME = "google.maps.OverlayView";

  OverlayView() : super.newInstance(TYPE_NAME);
  OverlayView.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void draw() { $.call("draw"); }
  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  MapPanes getPanes() => new MapPanes.fromJsRef($.call("getPanes"));
  MapCanvasProjection getProjection() => new MapCanvasProjection.fromJsRef($.call("getProjection"));
  void onAdd() { $.call("onAdd"); }
  void onRemove() { $.call("onRemove"); }
  void setMap(Object map) {
    if (map === null || map is GMap || map is StreetViewPanorama) {
      $.call("setMap", [map]);
    } else {
      throw new IllegalArgumentException(map);
    }
  }
}

class MapPanes extends js.JsObject {
  MapPanes.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  html.Node get floatPane => $["floatPane"];
            set floatPane(html.Node floatPane) => $["floatPane"] = floatPane;
  html.Node get floatShadow => $["floatShadow"];
            set floatShadow(html.Node floatShadow) => $["floatShadow"] = floatShadow;
  html.Node get mapPane => $["mapPane"];
            set mapPane(html.Node mapPane) => $["mapPane"] = mapPane;
  html.Node get overlayImage => $["overlayImage"];
            set overlayImage(html.Node overlayImage) => $["overlayImage"] = overlayImage;
  html.Node get overlayLayer => $["overlayLayer"];
            set overlayLayer(html.Node overlayLayer) => $["overlayLayer"] = overlayLayer;
  html.Node get overlayMouseTarget => $["overlayMouseTarget"];
            set overlayMouseTarget(html.Node overlayMouseTarget) => $["overlayMouseTarget"] = overlayMouseTarget;
  html.Node get overlayShadow => $["overlayShadow"];
            set overlayShadow(html.Node overlayShadow) => $["overlayShadow"] = overlayShadow;
}

class MapCanvasProjection extends MVCObject {
  MapCanvasProjection.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLng fromContainerPixelToLatLng(Point pixel, [bool nowrap]) => new LatLng.fromJsRef($.call("fromContainerPixelToLatLng", [pixel, nowrap]));
  LatLng fromDivPixelToLatLng(Point pixel, [bool nowrap]) => new LatLng.fromJsRef($.call("fromDivPixelToLatLng", [pixel, nowrap]));
  Point fromLatLngToContainerPixel(LatLng latLng) => new Point.fromJsRef($.call("fromLatLngToContainerPixel", [latLng]));
  Point fromLatLngToDivPixel(LatLng latLng) => new Point.fromJsRef($.call("fromLatLngToDivPixel", [latLng]));
  num getWorldWidth() => $.call("getWorldWidth");
}

class Geocoder extends js.JsObject {
  static const String TYPE_NAME = "google.maps.Geocoder";

  Geocoder() : super.newInstance(TYPE_NAME);

  void geocode(GeocoderRequest request, void callback(List<GeocoderResult> results, GeocoderStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new GeocoderResult.fromJsRef(e)), GeocoderStatus.find(args[1]));
    };
    $.call("geocode", [request, callbackFunction]);
  }
}

class GeocoderRequest extends js.JsObject {
  set address(String address) => $["address"] = address;
  set bounds(LatLngBounds bounds) => $["bounds"] = bounds;
  set location(LatLng location) => $["location"] = location;
  set region(String region) => $["region"] = region;
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

  List<GeocoderAddressComponent> get address_components => new js.JsList<GeocoderAddressComponent>.fromJsRef($.getPropertyAsJsRef("address_components"), (e) => new GeocoderAddressComponent.fromJsRef(e));
  String get formatted_address => $["formatted_address"];
  GeocoderGeometry get geometry => new GeocoderGeometry.fromJsRef($["geometry"]);
  List<String> get types => new js.JsList<String>.fromJsRef($.getPropertyAsJsRef("types"), (e) => js.$$(e).value);
}

class GeocoderAddressComponent extends js.JsObject {
  GeocoderAddressComponent() : super();
  GeocoderAddressComponent.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get long_name => $["long_name"];
  String get short_name => $["short_name"];
  List<String> get types => new js.JsList<String>.fromJsRef($.getPropertyAsJsRef("types"), (e) => js.$$(e).value);
}

class GeocoderGeometry extends js.JsObject {
  GeocoderGeometry() : super();
  GeocoderGeometry.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds get bounds => new LatLngBounds.fromJsRef($["bounds"]);
  LatLng get location => new LatLng.fromJsRef($["location"]);
  GeocoderLocationType get location_type => GeocoderLocationType.find($["location_type"]);
  LatLngBounds get viewport => new    LatLngBounds.fromJsRef($["viewport"]);
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

  DirectionsResult getDirections() => new DirectionsResult.fromJsRef($.call("getDirections"));
  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  html.Node getPanel() => $.call("getPanel");
  num getRouteIndex() => $.call("getRouteIndex");
  void setDirections(DirectionsResult directions) { $.call("setDirections", [directions]); }
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(DirectionsRendererOptions options) { $.call("setOptions", [options]); }
  void setPanel(html.Node panel) { $.call("setPanel", [panel]); }
  void setRouteIndex(num routeIndex) { $.call("setRouteIndex", [routeIndex]); }
}

class DirectionsRendererOptions extends js.JsObject {
  set directions(DirectionsResult directions) => $["directions"] = directions;
  set draggable(bool draggable) => $["draggable"] = draggable;
  set hideRouteList(bool hideRouteList) => $["hideRouteList"] = hideRouteList;
  set infoWindow(InfoWindow infoWindow) => $["infoWindow"] = infoWindow;
  set map(GMap map) => $["map"] = map;
  set markerOptions(MarkerOptions markerOptions) => $["markerOptions"] = markerOptions;
  set panel(html.Node panel) => $["panel"] = panel;
  set polylineOptions(PolylineOptions polylineOptions) => $["polylineOptions"] = polylineOptions;
  set preserveViewport(bool preserveViewport) => $["preserveViewport"] = preserveViewport;
  set routeIndex(num routeIndex) => $["routeIndex"] = routeIndex;
  set suppressBicyclingLayer(bool suppressBicyclingLayer) => $["suppressBicyclingLayer"] = suppressBicyclingLayer;
  set suppressInfoWindows(bool suppressInfoWindows) => $["suppressInfoWindows"] = suppressInfoWindows;
  set suppressMarkers(bool suppressMarkers) => $["suppressMarkers"] = suppressMarkers;
  set suppressPolylines(bool suppressPolylines) => $["suppressPolylines"] = suppressPolylines;
}

class DirectionsService extends js.JsObject {
  static const String TYPE_NAME = "google.maps.DirectionsService";

  DirectionsService() : super.newInstance(TYPE_NAME);

  void route(DirectionsRequest request, void callback(DirectionsResult results, DirectionsStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new DirectionsResult.fromJsRef(args[0]), DirectionsStatus.find(args[1]));
    };
    $.call("route", [request, callbackFunction]);
  }
}

class DirectionsRequest extends js.JsObject {
  set avoidHighways(bool avoidHighways) => $["avoidHighways"] = avoidHighways;
  set avoidTolls(bool avoidTolls) => $["avoidTolls"] = avoidTolls;
  set destination(Object destination) {
    if (destination is String || destination is LatLng) {
      $["destination"] = destination;
    } else {
      throw new IllegalArgumentException(destination);
    }
  }
  set optimizeWaypoints(bool optimizeWaypoints) => $["optimizeWaypoints"] = optimizeWaypoints;
  set origin(Object origin) {
    if (origin is String || origin is LatLng) {
      $["origin"] = origin;
    } else {
      throw new IllegalArgumentException(origin);
    }
  }
  set provideRouteAlternatives(bool provideRouteAlternatives) => $["provideRouteAlternatives"] = provideRouteAlternatives;
  set region(String region) => $["region"] = region;
  set transitOptions(TransitOptions transitOptions) => $["transitOptions"] = transitOptions;
  set travelMode(TravelMode travelMode) => $["travelMode"] = travelMode;
  set unitSystem(UnitSystem unitSystem) => $["unitSystem"] = unitSystem;
  set waypoints(List<DirectionsWaypoint> waypoints) => $["waypoints"] = waypoints;
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
  set arrivalTime(Date arrivalTime) => $["arrivalTime"] = arrivalTime;
  set departureTime(Date departureTime) => $["departureTime"] = departureTime;
}

class DirectionsWaypoint extends js.JsObject {
  set location(Object location) {
    if (location is String || location is LatLng) {
      $["location"] = location;
    } else {
      throw new IllegalArgumentException(location);
    }
  }
  set stopover(bool stopover) => $["stopover"] = stopover;
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

  List<DirectionsRoute> get routes => new js.JsList<DirectionsRoute>.fromJsRef($.getPropertyAsJsRef("routes"), (e) => new DirectionsRoute.fromJsRef(e));
}

class DirectionsRoute extends js.JsObject {
  DirectionsRoute() : super();
  DirectionsRoute.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds get bounds => new LatLngBounds.fromJsRef($["bounds"]);
  String get copyrights => $["copyrights"];
  List<DirectionsLeg> get legs => new js.JsList<DirectionsLeg>.fromJsRef($.getPropertyAsJsRef("legs"), (e) => new DirectionsLeg.fromJsRef(e));
  List<LatLng> get overview_path => new js.JsList<LatLng>.fromJsRef($.getPropertyAsJsRef("overview_path"), (e) => new LatLng.fromJsRef(e));
  List<String> get warnings => new js.JsList<String>.fromJsRef($.getPropertyAsJsRef("warnings"), (e) => js.$$(e).value);
  List<num> get waypoint_order => new js.JsList<num>.fromJsRef($.getPropertyAsJsRef("waypoint_order"), (e) => js.$$(e).value);
}

class DirectionsLeg extends js.JsObject {
  DirectionsLeg() : super();
  DirectionsLeg.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  // TODO test return type
  Distance get arrival_time => new Distance.fromJsRef($["arrival_time"]);
  GDuration get departure_time => new GDuration.fromJsRef($["departure_time"]);
  Distance get distance => new Distance.fromJsRef($["distance"]);
  GDuration get duration => new GDuration.fromJsRef($["duration"]);
  String get end_address => $["end_address"];
  LatLng get end_location => new LatLng.fromJsRef($["end_location"]);
  String get start_address => $["start_address"];
  LatLng get start_location => new LatLng.fromJsRef($["start_location"]);
  List<DirectionsStep> get steps => new js.JsList<DirectionsStep>.fromJsRef($.getPropertyAsJsRef("steps"), (e) => new DirectionsStep.fromJsRef(e));
  List<LatLng> get via_waypoints => new js.JsList<LatLng>.fromJsRef($.getPropertyAsJsRef("via_waypoints"), (e) => new LatLng.fromJsRef(e));
}

class DirectionsStep extends js.JsObject {
  DirectionsStep() : super();
  DirectionsStep.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Distance get distance => new Distance.fromJsRef($["distance"]);
  GDuration get duration => new GDuration.fromJsRef($["duration"]);
  LatLng get end_location => new LatLng.fromJsRef($["end_location"]);
  String get instructions => $["instructions"];
  List<LatLng> get path => new js.JsList<LatLng>.fromJsRef($.getPropertyAsJsRef("path"), (e) => new LatLng.fromJsRef(e));
  LatLng get start_location => new LatLng.fromJsRef($["start_location"]);
  // TODO check return type
  DirectionsStep get steps => new DirectionsStep.fromJsRef($["steps"]);
//  List<DirectionsStep> get steps => new js.JsList<DirectionsStep>.fromJsRef($.getJsRef("steps"), (e) => new DirectionsStep.fromJsRef(e));
  TransitDetails get transit => new TransitDetails.fromJsRef($["transit"]);
  TravelMode get travel_mode => TravelMode.find($["travel_mode"]);
}

class Distance extends js.JsObject {
  Distance() : super();
  Distance.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get text => $["text"];
  num get value => $["value"];
}

class GDuration extends js.JsObject {
  GDuration() : super();
  GDuration.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get text => $["text"];
  num get value => $["value"];
}

class Time extends js.JsObject {
  Time() : super();
  Time.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get text => $["text"];
  String get time_zone => $["time_zone"];
  Date get value => $["value"];
}

class TransitDetails extends js.JsObject {
  TransitDetails() : super();
  TransitDetails.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  TransitStop get arrival_stop => new TransitStop.fromJsRef($["arrival_stop"]);
  Time get arrival_time => new Time.fromJsRef($["arrival_time"]);
  TransitStop get departure_stop => new TransitStop.fromJsRef($["departure_stop"]);
  Time get departure_time => new Time.fromJsRef($["departure_time"]);
  String get headsign => $["headsign"];
  num get headway => $["headway"];
  TransitLine get line => new TransitLine.fromJsRef($["line"]);
  num get num_stops => $["num_stops"];
}

class TransitStop extends js.JsObject {
  TransitStop() : super();
  TransitStop.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLng get location => new LatLng.fromJsRef($["location"]);
  String get name => $["name"];
}

class TransitLine extends js.JsObject {
  TransitLine() : super();
  TransitLine.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<TransitAgency> get agencies => new js.JsList<TransitAgency>.fromJsRef($.getPropertyAsJsRef("agencies"), (e) => new TransitAgency.fromJsRef(e));
  String get color => $["color"];
  String get icon => $["icon"];
  String get name => $["name"];
  String get short_name => $["short_name"];
  String get text_color => $["text_color"];
  String get url => $["url"];
  TransitVehicle get vehicle => new TransitVehicle.fromJsRef($["vehicle"]);
}

class TransitAgency extends js.JsObject {
  TransitAgency() : super();
  TransitAgency.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get name => $["name"];
  String get phone => $["phone"];
  String get url => $["url"];
}

class TransitVehicle extends js.JsObject {
  TransitVehicle() : super();
  TransitVehicle.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get icon => $["icon"];
  String get local_icon => $["local_icon"];
  String get name => $["name"];
  // TODO check type
  String get type => $["type"];
}

class ElevationService extends js.JsObject {
  static const String TYPE_NAME = "google.maps.ElevationService";

  ElevationService() : super.newInstance(TYPE_NAME);

  void getElevationAlongPath(PathElevationRequest request, void callback(List<ElevationResult> results, ElevationStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new ElevationResult.fromJsRef(e)), ElevationStatus.find(args[1]));
    };
    $.call("getElevationAlongPath", [request, callbackFunction]);
  }
  void getElevationForLocations(LocationElevationRequest request, void callback(List<ElevationResult> results, ElevationStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new ElevationResult.fromJsRef(e)), ElevationStatus.find(args[1]));
    };
    $.call("getElevationForLocations", [request, callbackFunction]);
  }
}

class LocationElevationRequest extends js.JsObject {
  set locations(List<LatLng> locations) => $["locations"] = locations;
}

class PathElevationRequest extends js.JsObject {
  set path(List<LatLng> path) => $["path"] = path;
  set samples(num samples) => $["samples"] = samples;
}

class ElevationResult extends js.JsObject {
  ElevationResult() : super();
  ElevationResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  num get elevation => $["elevation"];
  LatLng get location => new LatLng.fromJsRef($["location"]);
  num get resolution => $["resolution"];
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
    $.call("getMaxZoomAtLatLng", [latlng, callbackFunction]);
  }
}

class MaxZoomResult extends js.JsObject {
  MaxZoomResult() : super();
  MaxZoomResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  MaxZoomStatus get status => MaxZoomStatus.find($["status"]);
  num get zoom => $["zoom"];
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
    $.call("getDistanceMatrix", [request, callbackFunction]);
  }
}

class DistanceMatrixRequest extends js.JsObject {
  set avoidHighways(bool avoidHighways) => $["avoidHighways"] = avoidHighways;
  set avoidTolls(bool avoidTolls) => $["avoidTolls"] = avoidTolls;
  set destinations(Object destinations) {
    if (destinations is List<String> || destinations is List<LatLng>) {
      $["destinations"] = destinations;
    } else {
      throw new IllegalArgumentException(destinations);
    }
  }
  set origins(Object origins) {
    if (origins is List<String> || origins is List<LatLng>) {
      $["origins"] = origins;
    } else {
      throw new IllegalArgumentException(origins);
    }
  }
  set region(String region) => $["region"] = region;
  set travelMode(TravelMode travelMode) => $["travelMode"] = travelMode;
  set unitSystem(UnitSystem unitSystem) => $["unitSystem"] = unitSystem;
}

class DistanceMatrixResponse extends js.JsObject {
  DistanceMatrixResponse() : super();
  DistanceMatrixResponse.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<String> get destinationAddresses => new js.JsList<String>.fromJsRef($.getPropertyAsJsRef("destinationAddresses"), (e) => js.$$(e).value);
  List<String> get originAddresses => new js.JsList<String>.fromJsRef($.getPropertyAsJsRef("originAddresses"), (e) => js.$$(e).value);
  List<DistanceMatrixResponseRow> get rows => new js.JsList<DistanceMatrixResponseRow>.fromJsRef($.getPropertyAsJsRef("rows"), (e) => new DistanceMatrixResponseRow.fromJsRef(e));
}

class DistanceMatrixResponseRow extends js.JsObject {
  DistanceMatrixResponseRow() : super();
  DistanceMatrixResponseRow.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<DistanceMatrixResponseElement> get elements => new js.JsList<DistanceMatrixResponseElement>.fromJsRef($.getPropertyAsJsRef("elements"), (e) => new DistanceMatrixResponseElement.fromJsRef(e));
}

class DistanceMatrixResponseElement extends js.JsObject {
  DistanceMatrixResponseElement() : super();
  DistanceMatrixResponseElement.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Distance get distance => new Distance.fromJsRef($["distance"]);
  GDuration get duration => new GDuration.fromJsRef($["duration"]);
  DistanceMatrixElementStatus get status => DistanceMatrixElementStatus.find($["status"]);
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

  html.Node getTile(Point tileCoord, num zoom, html.Document ownerDocument) => $.call("getTile", [tileCoord, zoom, ownerDocument]);
  html.Node releaseTile(html.Node tile) => $.call("releaseTile", [tile]);

  String get alt => $["alt"];
         set alt(String alt) => $["alt"] = alt;
  num get maxZoom => $["maxZoom"];
      set maxZoom(num maxZoom) => $["maxZoom"] = maxZoom;
  num get minZoom => $["minZoom"];
      set minZoom(num minZoom) => $["minZoom"] = minZoom;
  String get name => $["name"];
         set name(String name) => $["name"] = name;
  Projection get projection => new Projection.fromJsRef($["projection"]);
             set projection(Projection projection) => $["projection"] = projection;
  num get radius => $["radius"];
      set radius(num radius) => $["radius"] = radius;
  Size get tileSize => new Size.fromJsRef($["tileSize"]);
       set tileSize(Size tileSize) => $["tileSize"] = tileSize;
}

class MapTypeRegistry extends MVCObject {
  static const String TYPE_NAME = "google.maps.MapTypeRegistry";

  MapTypeRegistry() : super.newInstance(TYPE_NAME);
  MapTypeRegistry.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void set_(String id, MapType mapType) { $.call("set", [id, mapType]); }
}

class Projection extends js.JsObject {
  Projection() : super();
  Projection.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  Point fromLatLngToPoint(LatLng latLng, [Point point]) => new Point.fromJsRef($.call("fromLatLngToPoint", [latLng, point]));
  LatLng fromPointToLatLng(Point pixel, [bool nowrap]) => new LatLng.fromJsRef($.call("fromPointToLatLng", [pixel, nowrap]));
}

class ImageMapType extends MapType {
  static const String TYPE_NAME = "google.maps.ImageMapType";

  ImageMapType(ImageMapTypeOptions opts) : super.newInstance(TYPE_NAME, [opts]);
  ImageMapType.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  num getOpacity() { $.call("getOpacity"); }
  void setOpacity(num opacity) { $.call("setOpacity", [opacity]); }
}

class ImageMapTypeOptions extends js.JsObject {
  set alt(String alt) => $["alt"] = alt;
  set getTileUrl(String callback(Point point, num zoomLevel)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      return callback(new Point.fromJsRef(args[0]), args[1]);
    };
    $["getTileUrl"] = callbackFunction;
  }
  set maxZoom(num maxZoom) => $["maxZoom"] = maxZoom;
  set minZoom(num minZoom) => $["minZoom"] = minZoom;
  set name(String name) => $["name"] = name;
  set opacity(num opacity) => $["opacity"] = opacity;
  set tileSize(Size tileSize) => $["tileSize"] = tileSize;
}

class StyledMapType extends MapType {
  static const String TYPE_NAME = "google.maps.StyledMapType";

  StyledMapType(List<MapTypeStyle> styles, [StyledMapTypeOptions options]) : super.newInstance(TYPE_NAME, [styles, options]);
}

class StyledMapTypeOptions extends js.JsObject {
  set alt(String alt) => $["alt"] = alt;
  set maxZoom(num maxZoom) => $["maxZoom"] = maxZoom;
  set minZoom(num minZoom) => $["minZoom"] = minZoom;
  set name(String name) => $["name"] = name;
}

class MapTypeStyle extends js.JsObject {
  set elementType(MapTypeStyleElementType elementType) => $["elementType"] = elementType.value;
  set featureType(MapTypeStyleFeatureType featureType) => $["featureType"] = featureType.value;
  set stylers(List<MapTypeStyler> stylers) => $["stylers"] = stylers;
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
  set elementType(_MapTypeStyleElementType elementType) => $["elementType"] = elementType;
  set featureType(_MapTypeStyleFeatureType featureType) => $["featureType"] = featureType;
  set stylers(List<MapTypeStyler> stylers) => $["stylers"] = stylers;
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
  set gamma(num gamma) => $["gamma"] = gamma;
  set hue(String hue) => $["hue"] = hue;
  set invert_lightness(bool invert_lightness) => $["invert_lightness"] = invert_lightness;
  set lightness(num lightness) => $["lightness"] = lightness;
  set saturation(num saturation) => $["saturation"] = saturation;
  set visibility(MapTypeStylerVisibility visibility) => $["visibility"] = visibility.value;
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

  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { $.call("setMap", [map]); }
}

class FusionTablesLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.FusionTablesLayer";

  FusionTablesLayer(FusionTablesLayerOptions options) : super.newInstance(TYPE_NAME, [options]);
  FusionTablesLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(FusionTablesLayerOptions options) { $.call("setOptions", [options]); }
}

class FusionTablesLayerOptions extends js.JsObject {
  set clickable(bool clickable) => $["clickable"] = clickable;
  set heatmap(FusionTablesHeatmap heatmap) => $["heatmap"] = heatmap;
  set map(GMap map) => $["map"] = map;
  set query(FusionTablesQuery query) => $["query"] = query;
  set styles(List<FusionTablesStyle> styles) => $["styles"] = styles;
  set suppressInfoWindows(bool suppressInfoWindows) => $["suppressInfoWindows"] = suppressInfoWindows;
}

class FusionTablesQuery extends js.JsObject {
  set from(String from) => $["from"] = from;
  set limit(num limit) => $["limit"] = limit;
  set offset(num offset) => $["offset"] = offset;
  set orderBy(String orderBy) => $["orderBy"] = orderBy;
  set select(String select) => $["select"] = select;
  set where(String where) => $["where"] = where;
}

class FusionTablesStyle extends js.JsObject {
  set markerOptions(FusionTablesMarkerOptions markerOptions) => $["markerOptions"] = markerOptions;
  set polygonOptions(FusionTablesPolygonOptions polygonOptions) => $["polygonOptions"] = polygonOptions;
  set polylineOptions(FusionTablesPolylineOptions polylineOptions) => $["polylineOptions"] = polylineOptions;
  set where(String where) => $["where"] = where;
}

class FusionTablesHeatmap extends js.JsObject {
  set enabled(bool enabled) => $["enabled"] = enabled;
}

class FusionTablesMarkerOptions extends js.JsObject {
  set iconName(String iconName) => $["iconName"] = iconName;
}

class FusionTablesPolygonOptions extends js.JsObject {
  set fillColor(String fillColor) => $["fillColor"] = fillColor;
  set fillOpacity(num fillOpacity) => $["fillOpacity"] = fillOpacity;
  set strokeColor(String strokeColor) => $["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => $["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => $["strokeWeight"] = strokeWeight;
}

class FusionTablesPolylineOptions extends js.JsObject {
  set strokeColor(String strokeColor) => $["strokeColor"] = strokeColor;
  set strokeOpacity(num strokeOpacity) => $["strokeOpacity"] = strokeOpacity;
  set strokeWeight(num strokeWeight) => $["strokeWeight"] = strokeWeight;
}

class FusionTablesMouseEvent extends NativeEvent {
  FusionTablesMouseEvent();
  FusionTablesMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  String get infoWindowHtml => $["infoWindowHtml"];
  LatLng get latLng => new LatLng.fromJsRef($["latLng"]);
  Size get pixelOffset => new Size.fromJsRef($["pixelOffset"]);
  // TODO improve return type ( should be Map<String, FusionTablesCell> )
  js.JsRef get row => $["row"];
}

class FusionTablesCell extends js.JsObject {
  String get columnName => $["columnName"];
         set columnName(String columnName) => $["columnName"] = columnName;
  String get value => $["value"];
         set value(String value) => $["value"] = value;
}

class KmlLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.KmlLayer";

  KmlLayer(String url, [KmlLayerOptions options]) : super.newInstance(TYPE_NAME, [url, options]);
  KmlLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getDefaultViewport() => new LatLngBounds.fromJsRef($.call("getDefaultViewport"));
  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  KmlLayerMetadata getMetadata() => new KmlLayerMetadata.fromJsRef($.call("getMetadata"));
  KmlLayerStatus getStatus() => KmlLayerStatus.find($.call("getStatus"));
  String getUrl() => $.call("getUrl");
  void setMap(GMap map) { $.call("setMap", [map]); }
}

class KmlLayerOptions extends js.JsObject {
  set clickable(bool clickable) => $["clickable"] = clickable;
  set map(GMap map) => $["map"] = map;
  set preserveViewport(bool preserveViewport) => $["preserveViewport"] = preserveViewport;
  set suppressInfoWindows(bool suppressInfoWindows) => $["suppressInfoWindows"] = suppressInfoWindows;
}

class KmlLayerMetadata extends js.JsObject {
  KmlLayerMetadata.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  KmlAuthor get author => new KmlAuthor.fromJsRef($["author"]);
  String get description => $["description"];
  String get name => $["name"];
  String get snippet => $["snippet"];
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

  KmlFeatureData get featureData => new KmlFeatureData.fromJsRef($["featureData"]);
  LatLng get latLng => new LatLng.fromJsRef($["latLng"]);
  Size get pixelOffset => new Size.fromJsRef($["pixelOffset"]);
}

class KmlFeatureData extends js.JsObject {
  KmlFeatureData.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  KmlAuthor get author => new KmlAuthor.fromJsRef($["author"]);
  String get description => $["description"];
  String get id => $["id"];
  String get infoWindowHtml => $["infoWindowHtml"];
  String get name => $["name"];
  String get snippet => $["snippet"];
}

class KmlAuthor extends js.JsObject {
  KmlAuthor.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get email => $["email"];
  String get name => $["name"];
  String get uri => $["uri"];
}

class TrafficLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.TrafficLayer";

  TrafficLayer() : super.newInstance(TYPE_NAME);
  TrafficLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { $.call("setMap", [map]); }
}

class TransitLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.TransitLayer";

  TransitLayer() : super.newInstance(TYPE_NAME);
  TransitLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { $.call("setMap", [map]); }
}

class StreetViewPanorama extends MVCObject {
  static const String TYPE_NAME = "google.maps.StreetViewPanorama";

  StreetViewPanorama(html.Node container, [StreetViewPanoramaOptions opts]) : super.newInstance(TYPE_NAME, [container, opts]);
  StreetViewPanorama.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<StreetViewLink> getLinks() => new js.JsList<StreetViewLink>.fromJsRef($.callForJsRef("getLinks"), (e) => new StreetViewLink.fromJsRef(e));
  String getPano() => $.call("getPano");
  LatLng getPosition() => new LatLng.fromJsRef($.call("getPosition"));
  StreetViewPov getPov() => new StreetViewPov.fromJsRef($.call("getPov"));
  bool getVisible() => $.call("getVisible");
  void registerPanoProvider(StreetViewPanoramaData provider(String pano)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      return provider(args[0]);
    };
    $.call("registerPanoProvider", [callbackFunction]);
  }
  void setPano(String pano) { $.call("setPano", [pano]); }
  void setPosition(LatLng latLng) { $.call("setPosition", [latLng]); }
  void setPov(StreetViewPov pov) { $.call("setPov", [pov]); }
  void setVisible(bool flag) { $.call("setVisible", [flag]); }

  Controls get controls => new Controls.fromJsRef($.getPropertyAsJsRef("controls"));
  set controls(Controls controls) => $["controls"] = controls;
}

class StreetViewPanoramaOptions extends js.JsObject {
  set addressControl(bool addressControl) => $["addressControl"] = addressControl;
  set addressControlOptions(StreetViewAddressControlOptions addressControlOptions) => $["addressControlOptions"] = addressControlOptions;
  set clickToGo(bool clickToGo) => $["clickToGo"] = clickToGo;
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => $["disableDoubleClickZoom"] = disableDoubleClickZoom;
  set enableCloseButton(bool enableCloseButton) => $["enableCloseButton"] = enableCloseButton;
  set imageDateControl(bool imageDateControl) => $["imageDateControl"] = imageDateControl;
  set linksControl(bool linksControl) => $["linksControl"] = linksControl;
  set panControl(bool panControl) => $["panControl"] = panControl;
  set panControlOptions(PanControlOptions panControlOptions) => $["panControlOptions"] = panControlOptions;
  set pano(String pano) => $["pano"] = pano;
  set panoProvider(StreetViewPanoramaData provider(String pano)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      return provider(args[0]);
    };
    $["panoProvider"] = callbackFunction;
  }
  set position(LatLng position) => $["position"] = position;
  set pov(StreetViewPov pov) => $["pov"] = pov;
  set scrollwheel(bool scrollwheel) => $["scrollwheel"] = scrollwheel;
  set visible(bool visible) => $["visible"] = visible;
  set zoomControl(bool zoomControl) => $["zoomControl"] = zoomControl;
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => $["zoomControlOptions"] = zoomControlOptions;
}

class StreetViewAddressControlOptions extends js.JsObject {
  set position(ControlPosition position) => $["position"] = position;
}

class StreetViewLink extends js.JsObject {
  StreetViewLink() : super();
  StreetViewLink.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get description => $["description"];
         set description(String description) => $["description"] = description;
  num get heading => $["heading"];
      set heading(num heading) => $["heading"] = heading;
  String get pano => $["pano"];
         set pano(String pano) => $["pano"] = pano;
}

class StreetViewPov extends js.JsObject {
  StreetViewPov() : super();
  StreetViewPov.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  num get heading => $["heading"];
      set heading(num heading) => $["heading"] = heading;
  num get pitch => $["pitch"];
      set pitch(num pitch) => $["pitch"] = pitch;
  num get zoom => $["zoom"];
      set zoom(num zoom) => $["zoom"] = zoom;
}

class StreetViewPanoramaData extends js.JsObject {
  StreetViewPanoramaData() : super();
  StreetViewPanoramaData.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get copyright => $["copyright"];
         set copyright(String copyright) => $["copyright"] = copyright;
  String get imageDate => $["imageDate"];
         set imageDate(String imageDate) => $["imageDate"] = imageDate;
  List<StreetViewLink> get links => new js.JsList<StreetViewLink>.fromJsRef($.getPropertyAsJsRef("links"), (e) => new StreetViewLink.fromJsRef(e));
                       set links(List<StreetViewLink> links) => $["links"] = links;
  StreetViewLocation get location => new StreetViewLocation.fromJsRef($["location"]);
                     set location(StreetViewLocation location) => $["location"] = location;
  StreetViewTileData get tiles => new StreetViewTileData.fromJsRef($["tiles"]);
                     set tiles(StreetViewTileData tiles) => $["tiles"] = tiles;
}

class StreetViewLocation extends js.JsObject {
  StreetViewLocation() : super();
  StreetViewLocation.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get description => $["description"];
         set description(String description) => $["description"] = description;
  LatLng get latLng => new LatLng.fromJsRef($["latLng"]);
         set latLng(LatLng latLng) => $["latLng"] = latLng;
  String get pano => $["pano"];
         set pano(String pano) => $["pano"] = pano;
}

class StreetViewTileData extends js.JsObject {
  StreetViewTileData() : super();
  StreetViewTileData.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String getTileUrl(String pano, num tileZoom, num tileX, num tileY) => $.call("getTileUrl", [pano, tileZoom, tileX, tileY]);

  set centerHeading(num centerHeading) => $["centerHeading"] = centerHeading;
  set tileSize(Size tileSize) => $["tileSize"] = tileSize;
  set worldSize(Size worldSize) => $["worldSize"] = worldSize;
}

class StreetViewService extends js.JsObject {
  static const String TYPE_NAME = "google.maps.StreetViewService";

  StreetViewService() : super.newInstance(TYPE_NAME);

  void getPanoramaById(String pano, void callback(StreetViewPanoramaData streetViewPanoramaData, StreetViewStatus streetViewStatus)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new StreetViewPanoramaData.fromJsRef(args[0]), StreetViewStatus.find(args[1]));
    };
    $.call("getPanoramaById", [pano, callbackFunction]);
  }
  void getPanoramaByLocation(LatLng latlng, num radius, void callback(StreetViewPanoramaData streetViewPanoramaData, StreetViewStatus streetViewStatus)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new StreetViewPanoramaData.fromJsRef(args[0]), StreetViewStatus.find(args[1]));
    };
    $.call("getPanoramaByLocation", [latlng, radius, callbackFunction]);
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
    return new MapsEventListener.fromJsRef(js.getWindow().$.call("${TYPE_NAME}.addDomListener", [instance, eventName, callback, capture]));
  }
  static MapsEventListener addDomListenerOnce(Object instance, String eventName, void handler(NativeEvent e), [bool capture]) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.getWindow().$.call("${TYPE_NAME}.addDomListenerOnce", [instance, eventName, callback, capture]));
  }
  static MapsEventListener addListener(js.JsObject instance, String eventName, void handler(NativeEvent e)) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.getWindow().$.call("${TYPE_NAME}.addListener", [instance, eventName, callback]));
  }
  static MapsEventListener addListenerOnce(js.JsObject instance, String eventName, void handler(NativeEvent e)) {
    js.CallbackFunction callback = Object _(List args) {
      if (args.length === 1) {
        handler(new NativeEvent.fromJsRef(args[0]));
      } else {
        handler(null);
      }
    };
    return new MapsEventListener.fromJsRef(js.getWindow().$.call("${TYPE_NAME}.addListenerOnce", [instance, eventName, callback]));
  }
  static void clearInstanceListeners(js.JsObject instance) { js.getWindow().$.call("${TYPE_NAME}.clearInstanceListeners", [instance]); }
  static void clearListeners(js.JsObject instance, String eventName) { js.getWindow().$.call("${TYPE_NAME}.clearListeners", [instance, eventName]); }
  static void removeListener(MapsEventListener listener) { js.getWindow().$.call("${TYPE_NAME}.removeListener", [listener]); }
  static void trigger(js.JsObject instance, String eventName, List<Object> args) {
    final parameters = new List<Object>();
    parameters.add(instance);
    parameters.add(eventName);
    parameters.addAll(args);
    js.getWindow().$.call("${TYPE_NAME}.trigger", parameters);
  }
}

class MouseEvent extends NativeEvent {
  MouseEvent();
  MouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  LatLng get latLng => new LatLng.fromJsRef($["latLng"]);
}

class LatLng extends js.JsObject {
  static const String TYPE_NAME = "google.maps.LatLng";

  LatLng(num lat, num lng, [bool noWrap]) : super.newInstance(TYPE_NAME, [lat, lng, noWrap]);
  LatLng.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool equals(LatLng other) => $.call("equals", [other]);
  num lat() => $.call("lat");
  num lng() => $.call("lng");
  String toString() => $.call("toString");
  String toUrlValue([num precision]) => $.call("toUrlValue", [precision]);
}

class LatLngBounds extends js.JsObject {
  static const String TYPE_NAME = "google.maps.LatLngBounds";

  LatLngBounds([LatLng sw, LatLng ne]) : super.newInstance(TYPE_NAME, [sw, ne]);
  LatLngBounds.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool contains(LatLng latLng) => $.call("contains", [latLng]);
  bool equals(LatLngBounds other) => $.call("equals", [other]);
  LatLngBounds extend(LatLng point) => new LatLngBounds.fromJsRef($.call("extend", [point]));
  LatLng getCenter() => new LatLng.fromJsRef($.call("getCenter"));
  LatLng getNorthEast() => new LatLng.fromJsRef($.call("getNorthEast"));
  LatLng getSouthWest() => new LatLng.fromJsRef($.call("getSouthWest"));
  bool intersects(LatLngBounds other) => $.call("intersects", [other]);
  bool isEmpty() => $.call("isEmpty");
  LatLng toSpan() => new LatLng.fromJsRef($.call("toSpan"));
  String toString() => $.call("toString");
  String toUrlValue([num precision]) => $.call("toUrlValue", [precision]);
  bool union(LatLngBounds other) => $.call("union", [other]);
}

class Point extends js.JsObject {
  static const String TYPE_NAME = "google.maps.Point";

  Point(num x, num y) : super.newInstance(TYPE_NAME, [x, y]);
  Point.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool equals(Point other) => $.call("equals", [other]);
  String toString() => $.call("toString");

  num get x => $["x"];
      set x(num x) => $["x"] = x;
  num get y => $["y"];
      set y(num y) => $["y"] = y;
}

class Size extends js.JsObject {
  static const String TYPE_NAME = "google.maps.Size";

  Size(num width, num height, [String widthUnit, String heightUnit]) : super.newInstance(TYPE_NAME, [width, height, widthUnit, heightUnit]);
  Size.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  bool equals(Size other) => $.call("equals", [other]);
  String toString() => $.call("toString");

  num get height => $["height"];
      set height(num height) => $["height"] = height;
  num get width => $["width"];
      set width(num width) => $["width"] = width;
}

class MVCObject extends js.JsObject {
  static const String TYPE_NAME = "google.maps.MVCObject";

  MVCObject() : super.newInstance(TYPE_NAME);
  MVCObject.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);
  MVCObject.newInstance(String objectName, [List args]) : super.newInstance(objectName, args);

  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]) { $.call("bindTo", [key, target, targetKey, noNotify]); }
  void changed(String key) { $.call("changed", [key]); }
  Object get_(String key) => $.call("get", [key]);
  void notify(String key) { $.call("notify", [key]); }
  void set_(String key, Object value) { $.call("set", [key, value]); }
  void setValues(Map<String, Object> values) {
    final valuesJs = new js.JsObject();
    values.forEach((String key, Object value) {
      $[key] = value;
    });
    $.call("setValues", [valuesJs]);
  }
  void unbind(String key) { $.call("unbind", [key]); }
  void unbindAll() { $.call("unbindAll"); }
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

  void clear() { $.call("clear"); }
  void forEach(void callback(E o, num index)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(_mayWrap(args[0]), args[1]);
    };
    $.call("forEach", [callbackFunction]);
  }
  List<E> getArray() => new js.JsList<E>.fromJsRef($.callForJsRef("getArray"), _mayWrap);
  E getAt(num i) => _mayWrap($.call("getAt", [i]));
  num getLength() => $.call("getLength");
  void insertAt(num i, E elem) { $.call("insertAt", [i, elem]); }
  E pop() => _mayWrap($.call("pop"));
  num push(E elem) => $.call("push", [elem]);
  E removeAt(num i) => _mayWrap($.call("removeAt", [i]));
  void setAt(num i, E elem) { $.call("setAt", [i, elem]); }

  E _mayWrap(Object o) {
    if (_jsRefWrapper !== null && o is js.JsRef) {
      return _jsRefWrapper(o);
    }
    return o;
  }
}


