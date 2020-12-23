// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.core;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_GMap)
@JS('google.maps.Map')
class GMap extends MVCObject {
  external GMap(
    Element mapDiv, [
    MapOptions opts, // ignore: unused_element
  ]);

  external Data get data;

  external set data(Data value);

  external MapTypeRegistry get mapTypes;

  external set mapTypes(MapTypeRegistry value);

  external MVCArray<MapType> get overlayMapTypes;

  external set overlayMapTypes(MVCArray<MapType> value);

  external void fitBounds(
    LatLngBounds bounds, [
    Object /*num|Padding*/ padding,
  ]);

  external void panBy(num x, num y);

  external void panTo(LatLng latLng);

  external void panToBounds(
    LatLngBounds latLngBounds, [
    Object /*num|Padding*/ padding,
  ]);
}

@GeneratedFrom(_GMap)
extension GMap$Ext on GMap {
  List<MVCArray<Node>> get controls =>
      getProperty(this, 'controls')?.cast<MVCArray<Node>>();

  set controls(List<MVCArray<Node>> value) {
    setProperty(this, 'controls', value);
  }

  LatLngBounds get bounds => _getBounds();
  LatLng get center => _getCenter();
  bool get clickableIcons => _getClickableIcons();
  Element get div => _getDiv();
  num get heading => _getHeading();
  Object /*MapTypeId|String*/ get mapTypeId => _getMapTypeId();
  Projection get projection => _getProjection();
  StreetViewPanorama get streetView => _getStreetView();
  num get tilt => _getTilt();
  num get zoom => _getZoom();
  set center(LatLng center) => _setCenter(center);
  set clickableIcons(bool clickableIcons) => _setClickableIcons(clickableIcons);
  set heading(num heading) => _setHeading(heading);
  set mapTypeId(Object /*MapTypeId|String*/ mapTypeId) =>
      _setMapTypeId(mapTypeId);
  set options(MapOptions options) => _setOptions(options);
  set streetView(StreetViewPanorama streetView) => _setStreetView(streetView);
  set tilt(num tilt) => _setTilt(tilt);
  set zoom(num zoom) => _setZoom(zoom);
  Stream<void> get onBoundsChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'bounds_changed',
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

  Stream<void> get onCenterChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'center_changed',
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

  Stream<IconMouseEvent> get onClick {
    StreamController<IconMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          allowInterop((IconMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<IconMouseEvent>(
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

  Stream<void> get onDrag {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'drag',
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

  Stream<void> get onDragend {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragend',
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

  Stream<void> get onDragstart {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragstart',
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

  Stream<void> get onHeadingChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'heading_changed',
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

  Stream<void> get onIdle {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'idle',
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

  Stream<void> get onMaptypeidChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'maptypeid_changed',
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

  Stream<MapMouseEvent> get onMousemove {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
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

  Stream<void> get onProjectionChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'projection_changed',
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

  Stream<void> get onTilesloaded {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'tilesloaded',
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

  Stream<void> get onTiltChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'tilt_changed',
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

  Stream<void> get onZoomChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'zoom_changed',
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

  LatLngBounds _getBounds() => callMethod(this, 'getBounds', []);

  LatLng _getCenter() => callMethod(this, 'getCenter', []);

  bool _getClickableIcons() => callMethod(this, 'getClickableIcons', []);

  Element _getDiv() => callMethod(this, 'getDiv', []);

  num _getHeading() => callMethod(this, 'getHeading', []);

  Object /*MapTypeId|String*/ _getMapTypeId() =>
      callMethod(this, 'getMapTypeId', []);

  Projection _getProjection() => callMethod(this, 'getProjection', []);

  StreetViewPanorama _getStreetView() => callMethod(this, 'getStreetView', []);

  num _getTilt() => callMethod(this, 'getTilt', []);

  num _getZoom() => callMethod(this, 'getZoom', []);

  void _setCenter(LatLng latlng) {
    callMethod(this, 'setCenter', [latlng]);
  }

  void _setClickableIcons(bool value) {
    callMethod(this, 'setClickableIcons', [value]);
  }

  void _setHeading(num heading) {
    callMethod(this, 'setHeading', [heading]);
  }

  void _setMapTypeId(Object /*MapTypeId|String*/ mapTypeId) {
    callMethod(this, 'setMapTypeId', [mapTypeId]);
  }

  void _setOptions(MapOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setStreetView(StreetViewPanorama panorama) {
    callMethod(this, 'setStreetView', [panorama]);
  }

  void _setTilt(num tilt) {
    callMethod(this, 'setTilt', [tilt]);
  }

  void _setZoom(num zoom) {
    callMethod(this, 'setZoom', [zoom]);
  }
}

@GeneratedFrom(_MapOptions)
@JS()
@anonymous
class MapOptions {
  external factory MapOptions();

  external String get backgroundColor;

  external set backgroundColor(String value);

  external LatLng get center;

  external set center(LatLng value);

  external bool get clickableIcons;

  external set clickableIcons(bool value);

  external num get controlSize;

  external set controlSize(num value);

  external bool get disableDefaultUI;

  external set disableDefaultUI(bool value);

  external bool get disableDoubleClickZoom;

  external set disableDoubleClickZoom(bool value);

  external bool get draggable;

  external set draggable(bool value);

  external String get draggableCursor;

  external set draggableCursor(String value);

  external String get draggingCursor;

  external set draggingCursor(String value);

  external bool get fullscreenControl;

  external set fullscreenControl(bool value);

  external FullscreenControlOptions get fullscreenControlOptions;

  external set fullscreenControlOptions(FullscreenControlOptions value);

  external String get gestureHandling;

  external set gestureHandling(String value);

  external num get heading;

  external set heading(num value);

  external bool get keyboardShortcuts;

  external set keyboardShortcuts(bool value);

  external bool get mapTypeControl;

  external set mapTypeControl(bool value);

  external MapTypeControlOptions get mapTypeControlOptions;

  external set mapTypeControlOptions(MapTypeControlOptions value);

  external Object /*MapTypeId|String*/ get mapTypeId;

  external set mapTypeId(Object /*MapTypeId|String*/ value);

  external num get maxZoom;

  external set maxZoom(num value);

  external num get minZoom;

  external set minZoom(num value);

  external bool get noClear;

  external set noClear(bool value);

  external bool get panControl;

  external set panControl(bool value);

  external PanControlOptions get panControlOptions;

  external set panControlOptions(PanControlOptions value);

  external MapRestriction get restriction;

  external set restriction(MapRestriction value);

  external bool get rotateControl;

  external set rotateControl(bool value);

  external RotateControlOptions get rotateControlOptions;

  external set rotateControlOptions(RotateControlOptions value);

  external bool get scaleControl;

  external set scaleControl(bool value);

  external ScaleControlOptions get scaleControlOptions;

  external set scaleControlOptions(ScaleControlOptions value);

  external bool get scrollwheel;

  external set scrollwheel(bool value);

  external StreetViewPanorama get streetView;

  external set streetView(StreetViewPanorama value);

  external bool get streetViewControl;

  external set streetViewControl(bool value);

  external StreetViewControlOptions get streetViewControlOptions;

  external set streetViewControlOptions(StreetViewControlOptions value);

  external num get tilt;

  external set tilt(num value);

  external num get zoom;

  external set zoom(num value);

  external bool get zoomControl;

  external set zoomControl(bool value);

  external ZoomControlOptions get zoomControlOptions;

  external set zoomControlOptions(ZoomControlOptions value);
}

@GeneratedFrom(_MapOptions)
extension MapOptions$Ext on MapOptions {
  List<MapTypeStyle> get styles =>
      getProperty(this, 'styles')?.cast<MapTypeStyle>();

  set styles(List<MapTypeStyle> value) {
    setProperty(this, 'styles', value);
  }
}

@GeneratedFrom(_MapTypeStyle)
@JS()
@anonymous
class MapTypeStyle {
  external factory MapTypeStyle();

  external String get elementType;

  external set elementType(String value);

  external String get featureType;

  external set featureType(String value);
}

@GeneratedFrom(_MapTypeStyle)
extension MapTypeStyle$Ext on MapTypeStyle {
  List<Object> get stylers => getProperty(this, 'stylers')?.cast<Object>();

  set stylers(List<Object> value) {
    setProperty(this, 'stylers', value);
  }
}

@GeneratedFrom(_MapMouseEvent)
@JS()
@anonymous
class MapMouseEvent {
  external factory MapMouseEvent();

  external Object /*MouseEvent|TouchEvent|PointerEvent|Object*/ get domEvent;

  external set domEvent(
      Object /*MouseEvent|TouchEvent|PointerEvent|Object*/ value);

  external LatLng get latLng;

  external set latLng(LatLng value);

  external void stop();
}

@GeneratedFrom(_IconMouseEvent)
@JS()
@anonymous
class IconMouseEvent extends MapMouseEvent {
  external factory IconMouseEvent();

  external String get placeId;

  external set placeId(String value);
}

@GeneratedFrom(_MapTypeId)
@JS('google.maps.MapTypeId')
class MapTypeId {
  external static MapTypeId get HYBRID;
  external static MapTypeId get ROADMAP;
  external static MapTypeId get SATELLITE;
  external static MapTypeId get TERRAIN;
}

@GeneratedFrom(_MapTypeRegistry)
@JS('google.maps.MapTypeRegistry')
class MapTypeRegistry extends MVCObject {
  external MapTypeRegistry();

  external void set(String id, Object /*MapType|Object*/ mapType);
}

@GeneratedFrom(_MapRestriction)
@JS()
@anonymous
class MapRestriction {
  external factory MapRestriction();

  external LatLngBounds get latLngBounds;

  external set latLngBounds(LatLngBounds value);

  external bool get strictBounds;

  external set strictBounds(bool value);
}

@GeneratedFrom(_TrafficLayer)
@JS('google.maps.TrafficLayer')
class TrafficLayer extends MVCObject {
  external TrafficLayer([
    TrafficLayerOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_TrafficLayer)
extension TrafficLayer$Ext on TrafficLayer {
  GMap get map => _getMap();
  set map(GMap map) => _setMap(map);
  set options(TrafficLayerOptions options) => _setOptions(options);

  GMap _getMap() => callMethod(this, 'getMap', []);

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(TrafficLayerOptions options) {
    callMethod(this, 'setOptions', [options]);
  }
}

@GeneratedFrom(_TrafficLayerOptions)
@JS()
@anonymous
class TrafficLayerOptions {
  external factory TrafficLayerOptions();

  external bool get autoRefresh;

  external set autoRefresh(bool value);

  external GMap get map;

  external set map(GMap value);
}

@GeneratedFrom(_TransitLayer)
@JS('google.maps.TransitLayer')
class TransitLayer extends MVCObject {
  external TransitLayer();
}

@GeneratedFrom(_TransitLayer)
extension TransitLayer$Ext on TransitLayer {
  GMap get map => _getMap();
  set map(GMap map) => _setMap(map);

  GMap _getMap() => callMethod(this, 'getMap', []);

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }
}

@GeneratedFrom(_BicyclingLayer)
@JS('google.maps.BicyclingLayer')
class BicyclingLayer extends MVCObject {
  external BicyclingLayer();
}

@GeneratedFrom(_BicyclingLayer)
extension BicyclingLayer$Ext on BicyclingLayer {
  GMap get map => _getMap();
  set map(GMap map) => _setMap(map);

  GMap _getMap() => callMethod(this, 'getMap', []);

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }
}

@GeneratedFrom(_LatLng)
@JS('google.maps.LatLng')
class LatLng {
  external LatLng(
    num lat,
    num lng, [
    bool noWrap, // ignore: unused_element
  ]);

  external bool equals(LatLng other);

  external String toString();

  external String toUrlValue([
    num precision,
  ]);
}

@GeneratedFrom(_LatLng)
extension LatLng$Ext on LatLng {
  num get lat => _lat();
  num get lng => _lng();

  num _lat() => callMethod(this, 'lat', []);

  num _lng() => callMethod(this, 'lng', []);
}

@GeneratedFrom(_LatLngBounds)
@JS('google.maps.LatLngBounds')
class LatLngBounds {
  external LatLngBounds([
    LatLng sw, // ignore: unused_element
    LatLng ne, // ignore: unused_element
  ]);

  external bool contains(LatLng latLng);

  external bool equals(LatLngBounds other);

  external LatLngBounds extend(LatLng point);

  external bool intersects(LatLngBounds other);

  external bool isEmpty();

  external LatLng toSpan();

  external String toString();

  external String toUrlValue([
    num precision,
  ]);

  external LatLngBounds union(LatLngBounds other);
}

@GeneratedFrom(_LatLngBounds)
extension LatLngBounds$Ext on LatLngBounds {
  LatLng get center => _getCenter();
  LatLng get northEast => _getNorthEast();
  LatLng get southWest => _getSouthWest();

  LatLng _getCenter() => callMethod(this, 'getCenter', []);

  LatLng _getNorthEast() => callMethod(this, 'getNorthEast', []);

  LatLng _getSouthWest() => callMethod(this, 'getSouthWest', []);
}

@GeneratedFrom(_Point)
@JS('google.maps.Point')
class Point {
  external Point(num x, num y);

  external num get x;

  external set x(num value);

  external num get y;

  external set y(num value);

  external bool equals(Point other);

  external String toString();
}

@GeneratedFrom(_Size)
@JS('google.maps.Size')
class Size {
  external Size(
    num width,
    num height, [
    String widthUnit, // ignore: unused_element
    String heightUnit, // ignore: unused_element
  ]);

  external num get height;

  external set height(num value);

  external num get width;

  external set width(num value);

  external bool equals(Size other);

  external String toString();
}

@GeneratedFrom(_Padding)
@JS()
@anonymous
class Padding {
  external factory Padding();

  external num get bottom;

  external set bottom(num value);

  external num get left;

  external set left(num value);

  external num get right;

  external set right(num value);

  external num get top;

  external set top(num value);
}

@GeneratedFrom(_MapsEventListener)
@JS()
@anonymous
class MapsEventListener {
  external factory MapsEventListener();

  external void remove();
}

@GeneratedFrom(_MVCObject)
@JS('google.maps.MVCObject')
class MVCObject {
  external MVCObject();

  external MapsEventListener addListener(String eventName, Function handler);

  external void bindTo(
    String key,
    MVCObject target, [
    String targetKey,
    bool noNotify,
  ]);

  external Object get(String key);

  external void notify(String key);

  external void set(String key, Object value);

  external void unbind(String key);

  external void unbindAll();
}

@GeneratedFrom(_MVCObject)
extension MVCObject$Ext on MVCObject {
  set values(Object values) => _setValues(values);

  void _setValues(Object values) {
    callMethod(this, 'setValues', [values]);
  }
}

@GeneratedFrom(_MVCArray)
@JS('google.maps.MVCArray')
class MVCArray<T> extends MVCObject {
  external MVCArray([
    List<T> array, // ignore: unused_element
  ]);

  external void clear();

  external T getAt(num i);

  external void insertAt(num i, T elem);

  external T pop();

  external num push(T elem);

  external T removeAt(num i);

  external void setAt(num i, T elem);
}

@GeneratedFrom(_MVCArray)
extension MVCArray$Ext<T> on MVCArray<T> {
  List<T> get array => _getArray();
  num get length => _getLength();
  Stream<num> get onInsertAt {
    StreamController<num> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'insert_at',
          allowInterop((num index) => sc.add(index)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<num>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<List> get onRemoveAt {
    StreamController<List> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'remove_at',
          allowInterop((num index, T removed) => sc.add([index, removed])),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<List>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<List> get onSetAt {
    StreamController<List> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'set_at',
          allowInterop((num index, T previous) => sc.add([index, previous])),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<List>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  void forEach(void Function(T p1, num p2) callback) {
    callMethod(this, 'forEach', [allowInterop(callback)]);
  }

  List<T> _getArray() => callMethod(this, 'getArray', [])?.cast<T>();

  num _getLength() => callMethod(this, 'getLength', []);
}

@GeneratedFrom(_ErrorEvent)
@JS()
@anonymous
class ErrorEvent {
  external factory ErrorEvent();

  external Object get error;

  external set error(Object value);
}

@GeneratedFrom(_FullscreenControlOptions)
@JS()
@anonymous
class FullscreenControlOptions {
  external factory FullscreenControlOptions();

  external ControlPosition get position;

  external set position(ControlPosition value);
}

@GeneratedFrom(_MapTypeControlOptions)
@JS()
@anonymous
class MapTypeControlOptions {
  external factory MapTypeControlOptions();

  external ControlPosition get position;

  external set position(ControlPosition value);

  external MapTypeControlStyle get style;

  external set style(MapTypeControlStyle value);
}

@GeneratedFrom(_MapTypeControlOptions)
extension MapTypeControlOptions$Ext on MapTypeControlOptions {
  List<Object /*MapTypeId|String*/ > get mapTypeIds =>
      getProperty(this, 'mapTypeIds')?.cast<Object /*MapTypeId|String*/ >();

  set mapTypeIds(List<Object /*MapTypeId|String*/ > value) {
    setProperty(this, 'mapTypeIds', value);
  }
}

@GeneratedFrom(_MapTypeControlStyle)
@JS('google.maps.MapTypeControlStyle')
class MapTypeControlStyle {
  external static MapTypeControlStyle get DEFAULT;
  external static MapTypeControlStyle get DROPDOWN_MENU;
  external static MapTypeControlStyle get HORIZONTAL_BAR;
}

@GeneratedFrom(_MotionTrackingControlOptions)
@JS()
@anonymous
class MotionTrackingControlOptions {
  external factory MotionTrackingControlOptions();

  external ControlPosition get position;

  external set position(ControlPosition value);
}

@GeneratedFrom(_PanControlOptions)
@JS()
@anonymous
class PanControlOptions {
  external factory PanControlOptions();

  external ControlPosition get position;

  external set position(ControlPosition value);
}

@GeneratedFrom(_RotateControlOptions)
@JS()
@anonymous
class RotateControlOptions {
  external factory RotateControlOptions();

  external ControlPosition get position;

  external set position(ControlPosition value);
}

@GeneratedFrom(_ScaleControlOptions)
@JS()
@anonymous
class ScaleControlOptions {
  external factory ScaleControlOptions();

  external ScaleControlStyle get style;

  external set style(ScaleControlStyle value);
}

@GeneratedFrom(_ScaleControlStyle)
@JS('google.maps.ScaleControlStyle')
class ScaleControlStyle {
  external static ScaleControlStyle get DEFAULT;
}

@GeneratedFrom(_StreetViewControlOptions)
@JS()
@anonymous
class StreetViewControlOptions {
  external factory StreetViewControlOptions();

  external ControlPosition get position;

  external set position(ControlPosition value);
}

@GeneratedFrom(_ZoomControlOptions)
@JS()
@anonymous
class ZoomControlOptions {
  external factory ZoomControlOptions();

  external ControlPosition get position;

  external set position(ControlPosition value);
}

@GeneratedFrom(_ControlPosition)
@JS('google.maps.ControlPosition')
class ControlPosition {
  external static ControlPosition get BOTTOM_CENTER;
  external static ControlPosition get BOTTOM_LEFT;
  external static ControlPosition get BOTTOM_RIGHT;
  external static ControlPosition get LEFT_BOTTOM;
  external static ControlPosition get LEFT_CENTER;
  external static ControlPosition get LEFT_TOP;
  external static ControlPosition get RIGHT_BOTTOM;
  external static ControlPosition get RIGHT_CENTER;
  external static ControlPosition get RIGHT_TOP;
  external static ControlPosition get TOP_CENTER;
  external static ControlPosition get TOP_LEFT;
  external static ControlPosition get TOP_RIGHT;
}

@GeneratedFrom(_Marker)
@JS('google.maps.Marker')
class Marker extends MVCObject {
  external Marker([
    MarkerOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_Marker)
extension Marker$Ext on Marker {
  Animation get animation => _getAnimation();
  bool get clickable => _getClickable();
  String get cursor => _getCursor();
  bool get draggable => _getDraggable();
  Object /*String|Icon|GSymbol*/ get icon => _getIcon();
  MarkerLabel get label => _getLabel();
  Object /*GMap|StreetViewPanorama*/ get map => _getMap();
  num get opacity => _getOpacity();
  LatLng get position => _getPosition();
  MarkerShape get shape => _getShape();
  String get title => _getTitle();
  bool get visible => _getVisible();
  num get zIndex => _getZIndex();
  set animation(Animation animation) => _setAnimation(animation);
  set clickable(bool clickable) => _setClickable(clickable);
  set cursor(String cursor) => _setCursor(cursor);
  set draggable(bool draggable) => _setDraggable(draggable);
  set icon(Object /*String|Icon|GSymbol*/ icon) => _setIcon(icon);
  set label(Object /*String|MarkerLabel*/ label) => _setLabel(label);
  set map(Object /*GMap|StreetViewPanorama*/ map) => _setMap(map);
  set opacity(num opacity) => _setOpacity(opacity);
  set options(MarkerOptions options) => _setOptions(options);
  set position(LatLng position) => _setPosition(position);
  set shape(MarkerShape shape) => _setShape(shape);
  set title(String title) => _setTitle(title);
  set visible(bool visible) => _setVisible(visible);
  set zIndex(num zIndex) => _setZIndex(zIndex);
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

  Animation _getAnimation() => callMethod(this, 'getAnimation', []);

  bool _getClickable() => callMethod(this, 'getClickable', []);

  String _getCursor() => callMethod(this, 'getCursor', []);

  bool _getDraggable() => callMethod(this, 'getDraggable', []);

  Object /*String|Icon|GSymbol*/ _getIcon() => callMethod(this, 'getIcon', []);

  MarkerLabel _getLabel() => callMethod(this, 'getLabel', []);

  Object /*GMap|StreetViewPanorama*/ _getMap() =>
      callMethod(this, 'getMap', []);

  num _getOpacity() => callMethod(this, 'getOpacity', []);

  LatLng _getPosition() => callMethod(this, 'getPosition', []);

  MarkerShape _getShape() => callMethod(this, 'getShape', []);

  String _getTitle() => callMethod(this, 'getTitle', []);

  bool _getVisible() => callMethod(this, 'getVisible', []);

  num _getZIndex() => callMethod(this, 'getZIndex', []);

  void _setAnimation(Animation animation) {
    callMethod(this, 'setAnimation', [animation]);
  }

  void _setClickable(bool flag) {
    callMethod(this, 'setClickable', [flag]);
  }

  void _setCursor(String cursor) {
    callMethod(this, 'setCursor', [cursor]);
  }

  void _setDraggable(bool flag) {
    callMethod(this, 'setDraggable', [flag]);
  }

  void _setIcon(Object /*String|Icon|GSymbol*/ icon) {
    callMethod(this, 'setIcon', [icon]);
  }

  void _setLabel(Object /*String|MarkerLabel*/ label) {
    callMethod(this, 'setLabel', [label]);
  }

  void _setMap(Object /*GMap|StreetViewPanorama*/ map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOpacity(num opacity) {
    callMethod(this, 'setOpacity', [opacity]);
  }

  void _setOptions(MarkerOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPosition(LatLng latlng) {
    callMethod(this, 'setPosition', [latlng]);
  }

  void _setShape(MarkerShape shape) {
    callMethod(this, 'setShape', [shape]);
  }

  void _setTitle(String title) {
    callMethod(this, 'setTitle', [title]);
  }

  void _setVisible(bool visible) {
    callMethod(this, 'setVisible', [visible]);
  }

  void _setZIndex(num zIndex) {
    callMethod(this, 'setZIndex', [zIndex]);
  }
}

@GeneratedFrom(_MarkerOptions)
@JS()
@anonymous
class MarkerOptions {
  external factory MarkerOptions();

  external Point get anchorPoint;

  external set anchorPoint(Point value);

  external Animation get animation;

  external set animation(Animation value);

  external bool get clickable;

  external set clickable(bool value);

  external bool get crossOnDrag;

  external set crossOnDrag(bool value);

  external String get cursor;

  external set cursor(String value);

  external bool get draggable;

  external set draggable(bool value);

  external Object /*String|Icon|GSymbol*/ get icon;

  external set icon(Object /*String|Icon|GSymbol*/ value);

  external Object /*String|MarkerLabel*/ get label;

  external set label(Object /*String|MarkerLabel*/ value);

  external Object /*GMap|StreetViewPanorama*/ get map;

  external set map(Object /*GMap|StreetViewPanorama*/ value);

  external num get opacity;

  external set opacity(num value);

  external bool get optimized;

  external set optimized(bool value);

  external LatLng get position;

  external set position(LatLng value);

  external MarkerShape get shape;

  external set shape(MarkerShape value);

  external String get title;

  external set title(String value);

  external bool get visible;

  external set visible(bool value);

  external num get zIndex;

  external set zIndex(num value);
}

@GeneratedFrom(_Icon)
@JS()
@anonymous
class Icon {
  external factory Icon();

  external String get url;

  external set url(String value);

  external Point get anchor;

  external set anchor(Point value);

  external Point get labelOrigin;

  external set labelOrigin(Point value);

  external Point get origin;

  external set origin(Point value);

  external Size get scaledSize;

  external set scaledSize(Size value);

  external Size get size;

  external set size(Size value);
}

@GeneratedFrom(_MarkerLabel)
@JS()
@anonymous
class MarkerLabel {
  external factory MarkerLabel();

  external String get text;

  external set text(String value);

  external String get className;

  external set className(String value);

  external String get color;

  external set color(String value);

  external String get fontFamily;

  external set fontFamily(String value);

  external String get fontSize;

  external set fontSize(String value);

  external String get fontWeight;

  external set fontWeight(String value);
}

@GeneratedFrom(_MarkerShape)
@JS()
@anonymous
class MarkerShape {
  external factory MarkerShape();

  external String get type;

  external set type(String value);
}

@GeneratedFrom(_MarkerShape)
extension MarkerShape$Ext on MarkerShape {
  List<num> get coords => getProperty(this, 'coords')?.cast<num>();

  set coords(List<num> value) {
    setProperty(this, 'coords', value);
  }
}

@GeneratedFrom(_GSymbol)
@JS()
@anonymous
class GSymbol {
  external factory GSymbol();

  external Object /*SymbolPath|String*/ get path;

  external set path(Object /*SymbolPath|String*/ value);

  external Point get anchor;

  external set anchor(Point value);

  external String get fillColor;

  external set fillColor(String value);

  external num get fillOpacity;

  external set fillOpacity(num value);

  external Point get labelOrigin;

  external set labelOrigin(Point value);

  external num get rotation;

  external set rotation(num value);

  external num get scale;

  external set scale(num value);

  external String get strokeColor;

  external set strokeColor(String value);

  external num get strokeOpacity;

  external set strokeOpacity(num value);

  external num get strokeWeight;

  external set strokeWeight(num value);
}

@GeneratedFrom(_SymbolPath)
@JS('google.maps.SymbolPath')
class SymbolPath {
  external static SymbolPath get BACKWARD_CLOSED_ARROW;
  external static SymbolPath get BACKWARD_OPEN_ARROW;
  external static SymbolPath get CIRCLE;
  external static SymbolPath get FORWARD_CLOSED_ARROW;
  external static SymbolPath get FORWARD_OPEN_ARROW;
}

@GeneratedFrom(_Animation)
@JS('google.maps.Animation')
class Animation {
  external static Animation get BOUNCE;
  external static Animation get DROP;
}

@GeneratedFrom(_InfoWindow)
@JS('google.maps.InfoWindow')
class InfoWindow extends MVCObject {
  external InfoWindow([
    InfoWindowOptions opts, // ignore: unused_element
  ]);

  external void close();

  external void open([
    Object /*GMap|StreetViewPanorama*/ map,
    MVCObject anchor,
  ]);
}

@GeneratedFrom(_InfoWindow)
extension InfoWindow$Ext on InfoWindow {
  Object /*String|Node*/ get content => _getContent();
  LatLng get position => _getPosition();
  num get zIndex => _getZIndex();
  set content(Object /*String|Node*/ content) => _setContent(content);
  set options(InfoWindowOptions options) => _setOptions(options);
  set position(LatLng position) => _setPosition(position);
  set zIndex(num zIndex) => _setZIndex(zIndex);
  Stream<void> get onCloseclick {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'closeclick',
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

  Stream<void> get onContentChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'content_changed',
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

  Stream<void> get onDomready {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'domready',
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

  Object /*String|Node*/ _getContent() => callMethod(this, 'getContent', []);

  LatLng _getPosition() => callMethod(this, 'getPosition', []);

  num _getZIndex() => callMethod(this, 'getZIndex', []);

  void _setContent(Object /*String|Node*/ content) {
    callMethod(this, 'setContent', [content]);
  }

  void _setOptions(InfoWindowOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPosition(LatLng position) {
    callMethod(this, 'setPosition', [position]);
  }

  void _setZIndex(num zIndex) {
    callMethod(this, 'setZIndex', [zIndex]);
  }
}

@GeneratedFrom(_InfoWindowOptions)
@JS()
@anonymous
class InfoWindowOptions {
  external factory InfoWindowOptions();

  external Object /*String|Node*/ get content;

  external set content(Object /*String|Node*/ value);

  external bool get disableAutoPan;

  external set disableAutoPan(bool value);

  external num get maxWidth;

  external set maxWidth(num value);

  external num get minWidth;

  external set minWidth(num value);

  external Size get pixelOffset;

  external set pixelOffset(Size value);

  external LatLng get position;

  external set position(LatLng value);

  external num get zIndex;

  external set zIndex(num value);
}

@GeneratedFrom(_Polyline)
@JS('google.maps.Polyline')
class Polyline extends MVCObject {
  external Polyline([
    PolylineOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_Polyline)
extension Polyline$Ext on Polyline {
  bool get draggable => _getDraggable();
  bool get editable => _getEditable();
  GMap get map => _getMap();
  MVCArray<LatLng> get path => _getPath();
  bool get visible => _getVisible();
  set draggable(bool draggable) => _setDraggable(draggable);
  set editable(bool editable) => _setEditable(editable);
  set map(GMap map) => _setMap(map);
  set options(PolylineOptions options) => _setOptions(options);
  set path(Object /*MVCArray<LatLng>|List<LatLng>*/ path) => _setPath(path);
  set visible(bool visible) => _setVisible(visible);
  Stream<PolyMouseEvent> get onClick {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onContextmenu {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onDblclick {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
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

  Stream<PolyMouseEvent> get onMousedown {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMousemove {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseout {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseover {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseup {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onRightclick {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  bool _getDraggable() => callMethod(this, 'getDraggable', []);

  bool _getEditable() => callMethod(this, 'getEditable', []);

  GMap _getMap() => callMethod(this, 'getMap', []);

  MVCArray<LatLng> _getPath() => callMethod(this, 'getPath', []);

  bool _getVisible() => callMethod(this, 'getVisible', []);

  void _setDraggable(bool draggable) {
    callMethod(this, 'setDraggable', [draggable]);
  }

  void _setEditable(bool editable) {
    callMethod(this, 'setEditable', [editable]);
  }

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(PolylineOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPath(Object /*MVCArray<LatLng>|List<LatLng>*/ path) {
    callMethod(this, 'setPath', [path]);
  }

  void _setVisible(bool visible) {
    callMethod(this, 'setVisible', [visible]);
  }
}

@GeneratedFrom(_PolylineOptions)
@JS()
@anonymous
class PolylineOptions {
  external factory PolylineOptions();

  external bool get clickable;

  external set clickable(bool value);

  external bool get draggable;

  external set draggable(bool value);

  external bool get editable;

  external set editable(bool value);

  external bool get geodesic;

  external set geodesic(bool value);

  external GMap get map;

  external set map(GMap value);

  external Object /*MVCArray<LatLng>|List<LatLng>*/ get path;

  external set path(Object /*MVCArray<LatLng>|List<LatLng>*/ value);

  external String get strokeColor;

  external set strokeColor(String value);

  external num get strokeOpacity;

  external set strokeOpacity(num value);

  external num get strokeWeight;

  external set strokeWeight(num value);

  external bool get visible;

  external set visible(bool value);

  external num get zIndex;

  external set zIndex(num value);
}

@GeneratedFrom(_PolylineOptions)
extension PolylineOptions$Ext on PolylineOptions {
  List<IconSequence> get icons =>
      getProperty(this, 'icons')?.cast<IconSequence>();

  set icons(List<IconSequence> value) {
    setProperty(this, 'icons', value);
  }
}

@GeneratedFrom(_IconSequence)
@JS()
@anonymous
class IconSequence {
  external factory IconSequence();

  external bool get fixedRotation;

  external set fixedRotation(bool value);

  external GSymbol get icon;

  external set icon(GSymbol value);

  external String get offset;

  external set offset(String value);

  external String get repeat;

  external set repeat(String value);
}

@GeneratedFrom(_Polygon)
@JS('google.maps.Polygon')
class Polygon extends MVCObject {
  external Polygon([
    PolygonOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_Polygon)
extension Polygon$Ext on Polygon {
  bool get draggable => _getDraggable();
  bool get editable => _getEditable();
  GMap get map => _getMap();
  MVCArray<LatLng> get path => _getPath();
  MVCArray<MVCArray<LatLng>> get paths => _getPaths();
  bool get visible => _getVisible();
  set draggable(bool draggable) => _setDraggable(draggable);
  set editable(bool editable) => _setEditable(editable);
  set map(GMap map) => _setMap(map);
  set options(PolygonOptions options) => _setOptions(options);
  set path(Object /*MVCArray<LatLng>|List<LatLng>*/ path) => _setPath(path);
  set paths(
          Object /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) =>
      _setPaths(paths);
  set visible(bool visible) => _setVisible(visible);
  Stream<PolyMouseEvent> get onClick {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onContextmenu {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onDblclick {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
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

  Stream<PolyMouseEvent> get onMousedown {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMousemove {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseout {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseover {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseup {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onRightclick {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          allowInterop((PolyMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  bool _getDraggable() => callMethod(this, 'getDraggable', []);

  bool _getEditable() => callMethod(this, 'getEditable', []);

  GMap _getMap() => callMethod(this, 'getMap', []);

  MVCArray<LatLng> _getPath() => callMethod(this, 'getPath', []);

  MVCArray<MVCArray<LatLng>> _getPaths() => callMethod(this, 'getPaths', []);

  bool _getVisible() => callMethod(this, 'getVisible', []);

  void _setDraggable(bool draggable) {
    callMethod(this, 'setDraggable', [draggable]);
  }

  void _setEditable(bool editable) {
    callMethod(this, 'setEditable', [editable]);
  }

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(PolygonOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPath(Object /*MVCArray<LatLng>|List<LatLng>*/ path) {
    callMethod(this, 'setPath', [path]);
  }

  void _setPaths(
      Object /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) {
    callMethod(this, 'setPaths', [paths]);
  }

  void _setVisible(bool visible) {
    callMethod(this, 'setVisible', [visible]);
  }
}

@GeneratedFrom(_PolygonOptions)
@JS()
@anonymous
class PolygonOptions {
  external factory PolygonOptions();

  external bool get clickable;

  external set clickable(bool value);

  external bool get draggable;

  external set draggable(bool value);

  external bool get editable;

  external set editable(bool value);

  external String get fillColor;

  external set fillColor(String value);

  external num get fillOpacity;

  external set fillOpacity(num value);

  external bool get geodesic;

  external set geodesic(bool value);

  external GMap get map;

  external set map(GMap value);

  external Object /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ get paths;

  external set paths(
      Object /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ value);

  external String get strokeColor;

  external set strokeColor(String value);

  external num get strokeOpacity;

  external set strokeOpacity(num value);

  external StrokePosition get strokePosition;

  external set strokePosition(StrokePosition value);

  external num get strokeWeight;

  external set strokeWeight(num value);

  external bool get visible;

  external set visible(bool value);

  external num get zIndex;

  external set zIndex(num value);
}

@GeneratedFrom(_PolyMouseEvent)
@JS()
@anonymous
class PolyMouseEvent extends MapMouseEvent {
  external factory PolyMouseEvent();

  external num get edge;

  external set edge(num value);

  external num get path;

  external set path(num value);

  external num get vertex;

  external set vertex(num value);
}

@GeneratedFrom(_Rectangle)
@JS('google.maps.Rectangle')
class Rectangle extends MVCObject {
  external Rectangle([
    RectangleOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_Rectangle)
extension Rectangle$Ext on Rectangle {
  LatLngBounds get bounds => _getBounds();
  bool get draggable => _getDraggable();
  bool get editable => _getEditable();
  GMap get map => _getMap();
  bool get visible => _getVisible();
  set bounds(LatLngBounds bounds) => _setBounds(bounds);
  set draggable(bool draggable) => _setDraggable(draggable);
  set editable(bool editable) => _setEditable(editable);
  set map(GMap map) => _setMap(map);
  set options(RectangleOptions options) => _setOptions(options);
  set visible(bool visible) => _setVisible(visible);
  Stream<void> get onBoundsChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'bounds_changed',
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

  Stream<MapMouseEvent> get onMousemove {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
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

  LatLngBounds _getBounds() => callMethod(this, 'getBounds', []);

  bool _getDraggable() => callMethod(this, 'getDraggable', []);

  bool _getEditable() => callMethod(this, 'getEditable', []);

  GMap _getMap() => callMethod(this, 'getMap', []);

  bool _getVisible() => callMethod(this, 'getVisible', []);

  void _setBounds(LatLngBounds bounds) {
    callMethod(this, 'setBounds', [bounds]);
  }

  void _setDraggable(bool draggable) {
    callMethod(this, 'setDraggable', [draggable]);
  }

  void _setEditable(bool editable) {
    callMethod(this, 'setEditable', [editable]);
  }

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(RectangleOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setVisible(bool visible) {
    callMethod(this, 'setVisible', [visible]);
  }
}

@GeneratedFrom(_RectangleOptions)
@JS()
@anonymous
class RectangleOptions {
  external factory RectangleOptions();

  external LatLngBounds get bounds;

  external set bounds(LatLngBounds value);

  external bool get clickable;

  external set clickable(bool value);

  external bool get draggable;

  external set draggable(bool value);

  external bool get editable;

  external set editable(bool value);

  external String get fillColor;

  external set fillColor(String value);

  external num get fillOpacity;

  external set fillOpacity(num value);

  external GMap get map;

  external set map(GMap value);

  external String get strokeColor;

  external set strokeColor(String value);

  external num get strokeOpacity;

  external set strokeOpacity(num value);

  external StrokePosition get strokePosition;

  external set strokePosition(StrokePosition value);

  external num get strokeWeight;

  external set strokeWeight(num value);

  external bool get visible;

  external set visible(bool value);

  external num get zIndex;

  external set zIndex(num value);
}

@GeneratedFrom(_Circle)
@JS('google.maps.Circle')
class Circle extends MVCObject {
  external Circle([
    CircleOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_Circle)
extension Circle$Ext on Circle {
  LatLngBounds get bounds => _getBounds();
  LatLng get center => _getCenter();
  bool get draggable => _getDraggable();
  bool get editable => _getEditable();
  GMap get map => _getMap();
  num get radius => _getRadius();
  bool get visible => _getVisible();
  set center(LatLng center) => _setCenter(center);
  set draggable(bool draggable) => _setDraggable(draggable);
  set editable(bool editable) => _setEditable(editable);
  set map(GMap map) => _setMap(map);
  set options(CircleOptions options) => _setOptions(options);
  set radius(num radius) => _setRadius(radius);
  set visible(bool visible) => _setVisible(visible);
  Stream<void> get onCenterChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'center_changed',
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

  Stream<MapMouseEvent> get onMousemove {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
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

  Stream<void> get onRadiusChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'radius_changed',
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

  LatLngBounds _getBounds() => callMethod(this, 'getBounds', []);

  LatLng _getCenter() => callMethod(this, 'getCenter', []);

  bool _getDraggable() => callMethod(this, 'getDraggable', []);

  bool _getEditable() => callMethod(this, 'getEditable', []);

  GMap _getMap() => callMethod(this, 'getMap', []);

  num _getRadius() => callMethod(this, 'getRadius', []);

  bool _getVisible() => callMethod(this, 'getVisible', []);

  void _setCenter(LatLng center) {
    callMethod(this, 'setCenter', [center]);
  }

  void _setDraggable(bool draggable) {
    callMethod(this, 'setDraggable', [draggable]);
  }

  void _setEditable(bool editable) {
    callMethod(this, 'setEditable', [editable]);
  }

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(CircleOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setRadius(num radius) {
    callMethod(this, 'setRadius', [radius]);
  }

  void _setVisible(bool visible) {
    callMethod(this, 'setVisible', [visible]);
  }
}

@GeneratedFrom(_CircleOptions)
@JS()
@anonymous
class CircleOptions {
  external factory CircleOptions();

  external LatLng get center;

  external set center(LatLng value);

  external bool get clickable;

  external set clickable(bool value);

  external bool get draggable;

  external set draggable(bool value);

  external bool get editable;

  external set editable(bool value);

  external String get fillColor;

  external set fillColor(String value);

  external num get fillOpacity;

  external set fillOpacity(num value);

  external GMap get map;

  external set map(GMap value);

  external num get radius;

  external set radius(num value);

  external String get strokeColor;

  external set strokeColor(String value);

  external num get strokeOpacity;

  external set strokeOpacity(num value);

  external StrokePosition get strokePosition;

  external set strokePosition(StrokePosition value);

  external num get strokeWeight;

  external set strokeWeight(num value);

  external bool get visible;

  external set visible(bool value);

  external num get zIndex;

  external set zIndex(num value);
}

@GeneratedFrom(_StrokePosition)
@JS('google.maps.StrokePosition')
class StrokePosition {
  external static StrokePosition get CENTER;
  external static StrokePosition get INSIDE;
  external static StrokePosition get OUTSIDE;
}

@GeneratedFrom(_Data)
@JS('google.maps.Data')
class Data extends MVCObject {
  external Data([
    DataDataOptions options, // ignore: unused_element
  ]);

  external DataFeature add([
    Object /*DataFeature|DataFeatureOptions*/ feature,
  ]);

  external bool contains(DataFeature feature);

  external DataFeature getFeatureById(Object /*num|String*/ id);

  external void overrideStyle(DataFeature feature, DataStyleOptions style);

  external void remove(DataFeature feature);

  external void revertStyle([
    DataFeature feature,
  ]);
}

@GeneratedFrom(_Data)
extension Data$Ext on Data {
  ControlPosition get controlPosition => _getControlPosition();
  List<String> get controls => _getControls();
  String get drawingMode => _getDrawingMode();
  GMap get map => _getMap();
  Object /*DataStylingFunction|DataStyleOptions*/ get style => _getStyle();
  set controlPosition(ControlPosition controlPosition) =>
      _setControlPosition(controlPosition);
  set controls(List<String> controls) => _setControls(controls);
  set drawingMode(String drawingMode) => _setDrawingMode(drawingMode);
  set map(GMap map) => _setMap(map);
  set style(Object /*DataStylingFunction|DataStyleOptions*/ style) =>
      _setStyle(style);
  Stream<DataAddFeatureEvent> get onAddfeature {
    StreamController<DataAddFeatureEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'addfeature',
          allowInterop((DataAddFeatureEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataAddFeatureEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onClick {
    StreamController<DataMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          allowInterop((DataMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onContextmenu {
    StreamController<DataMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          allowInterop((DataMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onDblclick {
    StreamController<DataMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          allowInterop((DataMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMousedown {
    StreamController<DataMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          allowInterop((DataMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMouseout {
    StreamController<DataMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          allowInterop((DataMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMouseover {
    StreamController<DataMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          allowInterop((DataMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMouseup {
    StreamController<DataMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          allowInterop((DataMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataRemoveFeatureEvent> get onRemovefeature {
    StreamController<DataRemoveFeatureEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'removefeature',
          allowInterop((DataRemoveFeatureEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataRemoveFeatureEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataRemovePropertyEvent> get onRemoveproperty {
    StreamController<DataRemovePropertyEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'removeproperty',
          allowInterop((DataRemovePropertyEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataRemovePropertyEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onRightclick {
    StreamController<DataMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          allowInterop((DataMouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataSetGeometryEvent> get onSetgeometry {
    StreamController<DataSetGeometryEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'setgeometry',
          allowInterop((DataSetGeometryEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataSetGeometryEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataSetPropertyEvent> get onSetproperty {
    StreamController<DataSetPropertyEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'setproperty',
          allowInterop((DataSetPropertyEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataSetPropertyEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  List<DataFeature> addGeoJson(
    Object geoJson, [
    DataGeoJsonOptions options,
  ]) =>
      callMethod(this, 'addGeoJson', [geoJson, options])?.cast<DataFeature>();

  void forEach(void Function(DataFeature p1) callback) {
    callMethod(this, 'forEach', [allowInterop(callback)]);
  }

  ControlPosition _getControlPosition() =>
      callMethod(this, 'getControlPosition', []);

  List<String> _getControls() =>
      callMethod(this, 'getControls', [])?.cast<String>();

  String _getDrawingMode() => callMethod(this, 'getDrawingMode', []);

  GMap _getMap() => callMethod(this, 'getMap', []);

  Object /*DataStylingFunction|DataStyleOptions*/ _getStyle() =>
      callMethod(this, 'getStyle', []);

  void loadGeoJson(
    String url, [
    DataGeoJsonOptions options,
    void Function(List<DataFeature> p1) callback,
  ]) {
    callMethod(this, 'loadGeoJson', [url, options, allowInterop(callback)]);
  }

  void _setControlPosition(ControlPosition controlPosition) {
    callMethod(this, 'setControlPosition', [controlPosition]);
  }

  void _setControls(List<String> controls) {
    callMethod(this, 'setControls', [controls]);
  }

  void _setDrawingMode(String drawingMode) {
    callMethod(this, 'setDrawingMode', [drawingMode]);
  }

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setStyle(Object /*DataStylingFunction|DataStyleOptions*/ style) {
    callMethod(this, 'setStyle', [style]);
  }

  void toGeoJson(void Function(Object p1) callback) {
    callMethod(this, 'toGeoJson', [allowInterop(callback)]);
  }
}

@GeneratedFrom(_DataDataOptions)
@JS()
@anonymous
class DataDataOptions {
  external factory DataDataOptions();

  external GMap get map;

  external set map(GMap value);

  external ControlPosition get controlPosition;

  external set controlPosition(ControlPosition value);

  external String get drawingMode;

  external set drawingMode(String value);

  external Object /*DataStylingFunction|DataStyleOptions*/ get style;

  external set style(Object /*DataStylingFunction|DataStyleOptions*/ value);
}

@GeneratedFrom(_DataDataOptions)
extension DataDataOptions$Ext on DataDataOptions {
  List<String> get controls => getProperty(this, 'controls')?.cast<String>();

  set controls(List<String> value) {
    setProperty(this, 'controls', value);
  }

  DataFeature Function(DataGeometry p1) get featureFactory =>
      getProperty(this, 'featureFactory');

  set featureFactory(DataFeature Function(DataGeometry p1) value) {
    setProperty(this, 'featureFactory', allowInterop(value));
  }
}

@GeneratedFrom(_DataGeoJsonOptions)
@JS()
@anonymous
class DataGeoJsonOptions {
  external factory DataGeoJsonOptions();

  external String get idPropertyName;

  external set idPropertyName(String value);
}

@GeneratedFrom(_DataStyleOptions)
@JS()
@anonymous
class DataStyleOptions {
  external factory DataStyleOptions();

  external bool get clickable;

  external set clickable(bool value);

  external String get cursor;

  external set cursor(String value);

  external bool get draggable;

  external set draggable(bool value);

  external bool get editable;

  external set editable(bool value);

  external String get fillColor;

  external set fillColor(String value);

  external num get fillOpacity;

  external set fillOpacity(num value);

  external Object /*String|Icon|GSymbol*/ get icon;

  external set icon(Object /*String|Icon|GSymbol*/ value);

  external MarkerShape get shape;

  external set shape(MarkerShape value);

  external String get strokeColor;

  external set strokeColor(String value);

  external num get strokeOpacity;

  external set strokeOpacity(num value);

  external num get strokeWeight;

  external set strokeWeight(num value);

  external String get title;

  external set title(String value);

  external bool get visible;

  external set visible(bool value);

  external num get zIndex;

  external set zIndex(num value);
}

@GeneratedFrom(_DataFeature)
@JS('google.maps.Data.Feature')
class DataFeature {
  external DataFeature([
    DataFeatureOptions options, // ignore: unused_element
  ]);

  external Object getProperty(String name);

  external void removeProperty(String name);

  external void setProperty(String name, Object newValue);
}

@GeneratedFrom(_DataFeature)
extension DataFeature$Ext on DataFeature {
  DataGeometry get geometry => _getGeometry();
  Object /*num|String*/ get id => _getId();
  set geometry(Object /*DataGeometry|LatLng*/ geometry) =>
      _setGeometry(geometry);
  Stream<DataRemovePropertyEvent> get onRemoveproperty {
    StreamController<DataRemovePropertyEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'removeproperty',
          allowInterop((DataRemovePropertyEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataRemovePropertyEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataSetGeometryEvent> get onSetgeometry {
    StreamController<DataSetGeometryEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'setgeometry',
          allowInterop((DataSetGeometryEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataSetGeometryEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataSetPropertyEvent> get onSetproperty {
    StreamController<DataSetPropertyEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'setproperty',
          allowInterop((DataSetPropertyEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataSetPropertyEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  void forEachProperty(void Function(Object p1, String p2) callback) {
    callMethod(this, 'forEachProperty', [allowInterop(callback)]);
  }

  DataGeometry _getGeometry() => callMethod(this, 'getGeometry', []);

  Object /*num|String*/ _getId() => callMethod(this, 'getId', []);

  void _setGeometry(Object /*DataGeometry|LatLng*/ newGeometry) {
    callMethod(this, 'setGeometry', [newGeometry]);
  }

  void toGeoJson(void Function(Object p1) callback) {
    callMethod(this, 'toGeoJson', [allowInterop(callback)]);
  }
}

@GeneratedFrom(_DataFeatureOptions)
@JS()
@anonymous
class DataFeatureOptions {
  external factory DataFeatureOptions();

  external Object /*DataGeometry|LatLng*/ get geometry;

  external set geometry(Object /*DataGeometry|LatLng*/ value);

  external Object /*num|String*/ get id;

  external set id(Object /*num|String*/ value);

  external Object get properties;

  external set properties(Object value);
}

@GeneratedFrom(_DataGeometry)
@JS()
@anonymous
class DataGeometry {
  external factory DataGeometry();
}

@GeneratedFrom(_DataGeometry)
extension DataGeometry$Ext on DataGeometry {
  String get type => _getType();

  void forEachLatLng(void Function(LatLng p1) callback) {
    callMethod(this, 'forEachLatLng', [allowInterop(callback)]);
  }

  String _getType() => callMethod(this, 'getType', []);
}

@GeneratedFrom(_DataPoint)
@JS('google.maps.Data.Point')
class DataPoint implements DataGeometry {
  external DataPoint(LatLng latLng);

  external LatLng get();
}

@GeneratedFrom(_DataPoint)
extension DataPoint$Ext on DataPoint {
  String get type => _getType();

  void forEachLatLng(void Function(LatLng p1) callback) {
    callMethod(this, 'forEachLatLng', [allowInterop(callback)]);
  }

  String _getType() => callMethod(this, 'getType', []);
}

@GeneratedFrom(_DataMultiPoint)
@JS('google.maps.Data.MultiPoint')
class DataMultiPoint implements DataGeometry {
  external DataMultiPoint(List<LatLng> elements);

  external LatLng getAt(num n);
}

@GeneratedFrom(_DataMultiPoint)
extension DataMultiPoint$Ext on DataMultiPoint {
  List<LatLng> get array => _getArray();
  num get length => _getLength();
  String get type => _getType();

  void forEachLatLng(void Function(LatLng p1) callback) {
    callMethod(this, 'forEachLatLng', [allowInterop(callback)]);
  }

  List<LatLng> _getArray() => callMethod(this, 'getArray', [])?.cast<LatLng>();

  num _getLength() => callMethod(this, 'getLength', []);

  String _getType() => callMethod(this, 'getType', []);
}

@GeneratedFrom(_DataLineString)
@JS('google.maps.Data.LineString')
class DataLineString implements DataGeometry {
  external DataLineString(List<LatLng> elements);

  external LatLng getAt(num n);
}

@GeneratedFrom(_DataLineString)
extension DataLineString$Ext on DataLineString {
  List<LatLng> get array => _getArray();
  num get length => _getLength();
  String get type => _getType();

  void forEachLatLng(void Function(LatLng p1) callback) {
    callMethod(this, 'forEachLatLng', [allowInterop(callback)]);
  }

  List<LatLng> _getArray() => callMethod(this, 'getArray', [])?.cast<LatLng>();

  num _getLength() => callMethod(this, 'getLength', []);

  String _getType() => callMethod(this, 'getType', []);
}

@GeneratedFrom(_DataMultiLineString)
@JS('google.maps.Data.MultiLineString')
class DataMultiLineString implements DataGeometry {
  external DataMultiLineString(
      List<Object /*DataLineString|List<LatLng>*/ > elements);

  external DataLineString getAt(num n);
}

@GeneratedFrom(_DataMultiLineString)
extension DataMultiLineString$Ext on DataMultiLineString {
  List<DataLineString> get array => _getArray();
  num get length => _getLength();
  String get type => _getType();

  void forEachLatLng(void Function(LatLng p1) callback) {
    callMethod(this, 'forEachLatLng', [allowInterop(callback)]);
  }

  List<DataLineString> _getArray() =>
      callMethod(this, 'getArray', [])?.cast<DataLineString>();

  num _getLength() => callMethod(this, 'getLength', []);

  String _getType() => callMethod(this, 'getType', []);
}

@GeneratedFrom(_DataLinearRing)
@JS('google.maps.Data.LinearRing')
class DataLinearRing implements DataGeometry {
  external DataLinearRing(List<LatLng> elements);

  external LatLng getAt(num n);
}

@GeneratedFrom(_DataLinearRing)
extension DataLinearRing$Ext on DataLinearRing {
  List<LatLng> get array => _getArray();
  num get length => _getLength();
  String get type => _getType();

  void forEachLatLng(void Function(LatLng p1) callback) {
    callMethod(this, 'forEachLatLng', [allowInterop(callback)]);
  }

  List<LatLng> _getArray() => callMethod(this, 'getArray', [])?.cast<LatLng>();

  num _getLength() => callMethod(this, 'getLength', []);

  String _getType() => callMethod(this, 'getType', []);
}

@GeneratedFrom(_DataPolygon)
@JS('google.maps.Data.Polygon')
class DataPolygon implements DataGeometry {
  external DataPolygon(List<Object /*DataLinearRing|List<LatLng>*/ > elements);

  external DataLinearRing getAt(num n);
}

@GeneratedFrom(_DataPolygon)
extension DataPolygon$Ext on DataPolygon {
  List<DataLinearRing> get array => _getArray();
  num get length => _getLength();
  String get type => _getType();

  void forEachLatLng(void Function(LatLng p1) callback) {
    callMethod(this, 'forEachLatLng', [allowInterop(callback)]);
  }

  List<DataLinearRing> _getArray() =>
      callMethod(this, 'getArray', [])?.cast<DataLinearRing>();

  num _getLength() => callMethod(this, 'getLength', []);

  String _getType() => callMethod(this, 'getType', []);
}

@GeneratedFrom(_DataMultiPolygon)
@JS('google.maps.Data.MultiPolygon')
class DataMultiPolygon implements DataGeometry {
  external DataMultiPolygon(
      List<Object /*DataPolygon|List<Object/*DataLinearRing|List<LatLng>*/>*/ >
          elements);

  external DataPolygon getAt(num n);
}

@GeneratedFrom(_DataMultiPolygon)
extension DataMultiPolygon$Ext on DataMultiPolygon {
  List<DataPolygon> get array => _getArray();
  num get length => _getLength();
  String get type => _getType();

  void forEachLatLng(void Function(LatLng p1) callback) {
    callMethod(this, 'forEachLatLng', [allowInterop(callback)]);
  }

  List<DataPolygon> _getArray() =>
      callMethod(this, 'getArray', [])?.cast<DataPolygon>();

  num _getLength() => callMethod(this, 'getLength', []);

  String _getType() => callMethod(this, 'getType', []);
}

@GeneratedFrom(_DataGeometryCollection)
@JS('google.maps.Data.GeometryCollection')
class DataGeometryCollection implements DataGeometry {
  external DataGeometryCollection(
      List<Object /*DataGeometry|LatLng*/ > elements);

  external DataGeometry getAt(num n);
}

@GeneratedFrom(_DataGeometryCollection)
extension DataGeometryCollection$Ext on DataGeometryCollection {
  List<DataGeometry> get array => _getArray();
  num get length => _getLength();
  String get type => _getType();

  void forEachLatLng(void Function(LatLng p1) callback) {
    callMethod(this, 'forEachLatLng', [allowInterop(callback)]);
  }

  List<DataGeometry> _getArray() =>
      callMethod(this, 'getArray', [])?.cast<DataGeometry>();

  num _getLength() => callMethod(this, 'getLength', []);

  String _getType() => callMethod(this, 'getType', []);
}

@GeneratedFrom(_DataMouseEvent)
@JS()
@anonymous
class DataMouseEvent extends MapMouseEvent {
  external factory DataMouseEvent();

  external DataFeature get feature;

  external set feature(DataFeature value);
}

@GeneratedFrom(_DataAddFeatureEvent)
@JS()
@anonymous
class DataAddFeatureEvent {
  external factory DataAddFeatureEvent();

  external DataFeature get feature;

  external set feature(DataFeature value);
}

@GeneratedFrom(_DataRemoveFeatureEvent)
@JS()
@anonymous
class DataRemoveFeatureEvent {
  external factory DataRemoveFeatureEvent();

  external DataFeature get feature;

  external set feature(DataFeature value);
}

@GeneratedFrom(_DataSetGeometryEvent)
@JS()
@anonymous
class DataSetGeometryEvent {
  external factory DataSetGeometryEvent();

  external DataFeature get feature;

  external set feature(DataFeature value);

  external DataGeometry get newGeometry;

  external set newGeometry(DataGeometry value);

  external DataGeometry get oldGeometry;

  external set oldGeometry(DataGeometry value);
}

@GeneratedFrom(_DataSetPropertyEvent)
@JS()
@anonymous
class DataSetPropertyEvent {
  external factory DataSetPropertyEvent();

  external DataFeature get feature;

  external set feature(DataFeature value);

  external String get name;

  external set name(String value);

  external Object get newValue;

  external set newValue(Object value);

  external Object get oldValue;

  external set oldValue(Object value);
}

@GeneratedFrom(_DataRemovePropertyEvent)
@JS()
@anonymous
class DataRemovePropertyEvent {
  external factory DataRemovePropertyEvent();

  external DataFeature get feature;

  external set feature(DataFeature value);

  external String get name;

  external set name(String value);

  external Object get oldValue;

  external set oldValue(Object value);
}

@GeneratedFrom(_OverlayView)
@JS('google.maps.OverlayView')
class OverlayView extends MVCObject {
  external OverlayView();
}

@GeneratedFrom(_OverlayView)
extension OverlayView$Ext on OverlayView {
  void Function() get draw => getProperty(this, 'draw');

  set draw(void Function() value) {
    setProperty(this, 'draw', allowInterop(value));
  }

  void Function() get onAdd => getProperty(this, 'onAdd');

  set onAdd(void Function() value) {
    setProperty(this, 'onAdd', allowInterop(value));
  }

  void Function() get onRemove => getProperty(this, 'onRemove');

  set onRemove(void Function() value) {
    setProperty(this, 'onRemove', allowInterop(value));
  }

  Object /*GMap|StreetViewPanorama*/ get map => _getMap();
  MapPanes get panes => _getPanes();
  MapCanvasProjection get projection => _getProjection();
  set map(Object /*GMap|StreetViewPanorama*/ map) => _setMap(map);

  Object /*GMap|StreetViewPanorama*/ _getMap() =>
      callMethod(this, 'getMap', []);

  MapPanes _getPanes() => callMethod(this, 'getPanes', []);

  MapCanvasProjection _getProjection() => callMethod(this, 'getProjection', []);

  void _setMap(Object /*GMap|StreetViewPanorama*/ map) {
    callMethod(this, 'setMap', [map]);
  }
}

@GeneratedFrom(_MapPanes)
@JS()
@anonymous
class MapPanes {
  external factory MapPanes();

  external Element get floatPane;

  external set floatPane(Element value);

  external Element get mapPane;

  external set mapPane(Element value);

  external Element get markerLayer;

  external set markerLayer(Element value);

  external Element get overlayLayer;

  external set overlayLayer(Element value);

  external Element get overlayMouseTarget;

  external set overlayMouseTarget(Element value);
}

@GeneratedFrom(_MapCanvasProjection)
@JS()
@anonymous
class MapCanvasProjection {
  external factory MapCanvasProjection();

  external LatLng fromContainerPixelToLatLng([
    Point pixel,
    bool nowrap,
  ]);

  external LatLng fromDivPixelToLatLng([
    Point pixel,
    bool nowrap,
  ]);

  external Point fromLatLngToContainerPixel([
    LatLng latLng,
  ]);

  external Point fromLatLngToDivPixel([
    LatLng latLng,
  ]);
}

@GeneratedFrom(_MapCanvasProjection)
extension MapCanvasProjection$Ext on MapCanvasProjection {
  num get worldWidth => _getWorldWidth();

  num _getWorldWidth() => callMethod(this, 'getWorldWidth', []);
}

@GeneratedFrom(_KmlLayer)
@JS('google.maps.KmlLayer')
class KmlLayer extends MVCObject {
  external KmlLayer([
    KmlLayerOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_KmlLayer)
extension KmlLayer$Ext on KmlLayer {
  LatLngBounds get defaultViewport => _getDefaultViewport();
  GMap get map => _getMap();
  KmlLayerMetadata get metadata => _getMetadata();
  KmlLayerStatus get status => _getStatus();
  String get url => _getUrl();
  num get zIndex => _getZIndex();
  set map(GMap map) => _setMap(map);
  set options(KmlLayerOptions options) => _setOptions(options);
  set url(String url) => _setUrl(url);
  set zIndex(num zIndex) => _setZIndex(zIndex);
  Stream<KmlMouseEvent> get onClick {
    StreamController<KmlMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          allowInterop((KmlMouseEvent kmlClickEvent) => sc.add(kmlClickEvent)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<KmlMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onDefaultviewportChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'defaultviewport_changed',
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

  Stream<void> get onStatusChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'status_changed',
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

  LatLngBounds _getDefaultViewport() =>
      callMethod(this, 'getDefaultViewport', []);

  GMap _getMap() => callMethod(this, 'getMap', []);

  KmlLayerMetadata _getMetadata() => callMethod(this, 'getMetadata', []);

  KmlLayerStatus _getStatus() => callMethod(this, 'getStatus', []);

  String _getUrl() => callMethod(this, 'getUrl', []);

  num _getZIndex() => callMethod(this, 'getZIndex', []);

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(KmlLayerOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setUrl(String url) {
    callMethod(this, 'setUrl', [url]);
  }

  void _setZIndex(num zIndex) {
    callMethod(this, 'setZIndex', [zIndex]);
  }
}

@GeneratedFrom(_KmlLayerOptions)
@JS()
@anonymous
class KmlLayerOptions {
  external factory KmlLayerOptions();

  external bool get clickable;

  external set clickable(bool value);

  external GMap get map;

  external set map(GMap value);

  external bool get preserveViewport;

  external set preserveViewport(bool value);

  external bool get screenOverlays;

  external set screenOverlays(bool value);

  external bool get suppressInfoWindows;

  external set suppressInfoWindows(bool value);

  external String get url;

  external set url(String value);

  external num get zIndex;

  external set zIndex(num value);
}

@GeneratedFrom(_KmlLayerMetadata)
@JS()
@anonymous
class KmlLayerMetadata {
  external factory KmlLayerMetadata();

  external KmlAuthor get author;

  external set author(KmlAuthor value);

  external String get description;

  external set description(String value);

  external bool get hasScreenOverlays;

  external set hasScreenOverlays(bool value);

  external String get name;

  external set name(String value);

  external String get snippet;

  external set snippet(String value);
}

@GeneratedFrom(_KmlLayerStatus)
@JS('google.maps.KmlLayerStatus')
class KmlLayerStatus {
  external static KmlLayerStatus get DOCUMENT_NOT_FOUND;
  external static KmlLayerStatus get DOCUMENT_TOO_LARGE;
  external static KmlLayerStatus get FETCH_ERROR;
  external static KmlLayerStatus get INVALID_DOCUMENT;
  external static KmlLayerStatus get INVALID_REQUEST;
  external static KmlLayerStatus get LIMITS_EXCEEDED;
  external static KmlLayerStatus get OK;
  external static KmlLayerStatus get TIMED_OUT;
  external static KmlLayerStatus get UNKNOWN;
}

@GeneratedFrom(_KmlMouseEvent)
@JS()
@anonymous
class KmlMouseEvent {
  external factory KmlMouseEvent();

  external KmlFeatureData get featureData;

  external set featureData(KmlFeatureData value);

  external LatLng get latLng;

  external set latLng(LatLng value);

  external Size get pixelOffset;

  external set pixelOffset(Size value);
}

@GeneratedFrom(_KmlFeatureData)
@JS()
@anonymous
class KmlFeatureData {
  external factory KmlFeatureData();

  external KmlAuthor get author;

  external set author(KmlAuthor value);

  external String get description;

  external set description(String value);

  external String get id;

  external set id(String value);

  external String get infoWindowHtml;

  external set infoWindowHtml(String value);

  external String get name;

  external set name(String value);

  external String get snippet;

  external set snippet(String value);
}

@GeneratedFrom(_KmlAuthor)
@JS()
@anonymous
class KmlAuthor {
  external factory KmlAuthor();

  external String get email;

  external set email(String value);

  external String get name;

  external set name(String value);

  external String get uri;

  external set uri(String value);
}

@GeneratedFrom(_MapType)
@JS()
@anonymous
class MapType {
  external factory MapType();

  external num get maxZoom;

  external set maxZoom(num value);

  external num get minZoom;

  external set minZoom(num value);

  external num get radius;

  external set radius(num value);

  external Size get tileSize;

  external set tileSize(Size value);

  external String get alt;

  external set alt(String value);

  external String get name;

  external set name(String value);

  external Projection get projection;

  external set projection(Projection value);
}

@GeneratedFrom(_MapType)
extension MapType$Ext on MapType {
  Node Function(Point tileCoord, num zoom, Document ownerDocument)
      get getTile => getProperty(this, 'getTile');

  set getTile(
      Node Function(Point tileCoord, num zoom, Document ownerDocument) value) {
    setProperty(this, 'getTile', allowInterop(value));
  }

  void Function(Node tile) get releaseTile => getProperty(this, 'releaseTile');

  set releaseTile(void Function(Node tile) value) {
    setProperty(this, 'releaseTile', allowInterop(value));
  }
}

@GeneratedFrom(_Projection)
@JS()
@anonymous
class Projection {
  external factory Projection();
}

@GeneratedFrom(_Projection)
extension Projection$Ext on Projection {
  Point Function(
    LatLng latLng, [
    Point point,
  ]) get fromLatLngToPoint => getProperty(this, 'fromLatLngToPoint');

  set fromLatLngToPoint(
      Point Function(
    LatLng latLng, [
    Point point,
  ])
          value) {
    setProperty(this, 'fromLatLngToPoint', allowInterop(value));
  }

  LatLng Function(
    Point pixel, [
    bool noWrap,
  ]) get fromPointToLatLng => getProperty(this, 'fromPointToLatLng');

  set fromPointToLatLng(
      LatLng Function(
    Point pixel, [
    bool noWrap,
  ])
          value) {
    setProperty(this, 'fromPointToLatLng', allowInterop(value));
  }
}

@GeneratedFrom(_ImageMapType)
@JS('google.maps.ImageMapType')
class ImageMapType extends MVCObject implements MapType {
  external ImageMapType(ImageMapTypeOptions opts);

  external String get alt;

  external set alt(String value);

  external num get maxZoom;

  external set maxZoom(num value);

  external num get minZoom;

  external set minZoom(num value);

  external String get name;

  external set name(String value);

  external Projection get projection;

  external set projection(Projection value);

  external num get radius;

  external set radius(num value);

  external Size get tileSize;

  external set tileSize(Size value);

  external Node getTile(Point tileCoord, num zoom, Document ownerDocument);

  external void releaseTile(Node tileDiv);
}

@GeneratedFrom(_ImageMapType)
extension ImageMapType$Ext on ImageMapType {
  num get opacity => _getOpacity();
  set opacity(num opacity) => _setOpacity(opacity);
  Stream<void> get onTilesloaded {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'tilesloaded',
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

  num _getOpacity() => callMethod(this, 'getOpacity', []);

  void _setOpacity(num opacity) {
    callMethod(this, 'setOpacity', [opacity]);
  }
}

@GeneratedFrom(_ImageMapTypeOptions)
@JS()
@anonymous
class ImageMapTypeOptions {
  external factory ImageMapTypeOptions();

  external String get alt;

  external set alt(String value);

  external num get maxZoom;

  external set maxZoom(num value);

  external num get minZoom;

  external set minZoom(num value);

  external String get name;

  external set name(String value);

  external num get opacity;

  external set opacity(num value);

  external Size get tileSize;

  external set tileSize(Size value);
}

@GeneratedFrom(_ImageMapTypeOptions)
extension ImageMapTypeOptions$Ext on ImageMapTypeOptions {
  String Function(Point p1, num p2) get getTileUrl =>
      getProperty(this, 'getTileUrl');

  set getTileUrl(String Function(Point p1, num p2) value) {
    setProperty(this, 'getTileUrl', allowInterop(value));
  }
}

@GeneratedFrom(_GroundOverlay)
@JS('google.maps.GroundOverlay')
class GroundOverlay extends MVCObject {
  external GroundOverlay(
    String url,
    LatLngBounds bounds, [
    GroundOverlayOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_GroundOverlay)
extension GroundOverlay$Ext on GroundOverlay {
  LatLngBounds get bounds => _getBounds();
  GMap get map => _getMap();
  num get opacity => _getOpacity();
  String get url => _getUrl();
  set map(GMap map) => _setMap(map);
  set opacity(num opacity) => _setOpacity(opacity);
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

  LatLngBounds _getBounds() => callMethod(this, 'getBounds', []);

  GMap _getMap() => callMethod(this, 'getMap', []);

  num _getOpacity() => callMethod(this, 'getOpacity', []);

  String _getUrl() => callMethod(this, 'getUrl', []);

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOpacity(num opacity) {
    callMethod(this, 'setOpacity', [opacity]);
  }
}

@GeneratedFrom(_GroundOverlayOptions)
@JS()
@anonymous
class GroundOverlayOptions {
  external factory GroundOverlayOptions();

  external bool get clickable;

  external set clickable(bool value);

  external GMap get map;

  external set map(GMap value);

  external num get opacity;

  external set opacity(num value);
}

@GeneratedFrom(_StyledMapType)
@JS('google.maps.StyledMapType')
class StyledMapType extends MVCObject implements MapType {
  external StyledMapType(
    List<MapTypeStyle> styles, [
    StyledMapTypeOptions options, // ignore: unused_element
  ]);

  external String get alt;

  external set alt(String value);

  external num get maxZoom;

  external set maxZoom(num value);

  external num get minZoom;

  external set minZoom(num value);

  external String get name;

  external set name(String value);

  external Projection get projection;

  external set projection(Projection value);

  external num get radius;

  external set radius(num value);

  external Size get tileSize;

  external set tileSize(Size value);
}

@GeneratedFrom(_StyledMapType)
extension StyledMapType$Ext on StyledMapType {
  Node Function(Point tileCoord, num zoom, Document ownerDocument)
      get getTile => getProperty(this, 'getTile');

  set getTile(
      Node Function(Point tileCoord, num zoom, Document ownerDocument) value) {
    setProperty(this, 'getTile', allowInterop(value));
  }

  void Function(Node tile) get releaseTile => getProperty(this, 'releaseTile');

  set releaseTile(void Function(Node tile) value) {
    setProperty(this, 'releaseTile', allowInterop(value));
  }
}

@GeneratedFrom(_StyledMapTypeOptions)
@JS()
@anonymous
class StyledMapTypeOptions {
  external factory StyledMapTypeOptions();

  external String get alt;

  external set alt(String value);

  external num get maxZoom;

  external set maxZoom(num value);

  external num get minZoom;

  external set minZoom(num value);

  external String get name;

  external set name(String value);
}

@GeneratedFrom(_MaxZoomService)
@JS('google.maps.MaxZoomService')
class MaxZoomService {
  external MaxZoomService();
}

@GeneratedFrom(_MaxZoomService)
extension MaxZoomService$Ext on MaxZoomService {
  Future<MaxZoomResult> getMaxZoomAtLatLng(
    LatLng latlng, [
    void Function(MaxZoomResult p1) callback,
  ]) =>
      promiseToFuture(callMethod(
          this, 'getMaxZoomAtLatLng', [latlng, allowInterop(callback)]));
}

@GeneratedFrom(_MaxZoomResult)
@JS()
@anonymous
class MaxZoomResult {
  external factory MaxZoomResult();

  external num get zoom;

  external set zoom(num value);

  external MaxZoomStatus get status;

  external set status(MaxZoomStatus value);
}

@GeneratedFrom(_MaxZoomStatus)
@JS('google.maps.MaxZoomStatus')
class MaxZoomStatus {
  external static MaxZoomStatus get ERROR;
  external static MaxZoomStatus get OK;
}

@GeneratedFrom(_StreetViewPanorama)
@JS('google.maps.StreetViewPanorama')
class StreetViewPanorama extends MVCObject {
  external StreetViewPanorama(
    Element container, [
    StreetViewPanoramaOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_StreetViewPanorama)
extension StreetViewPanorama$Ext on StreetViewPanorama {
  List<MVCArray<Node>> get controls =>
      getProperty(this, 'controls')?.cast<MVCArray<Node>>();

  set controls(List<MVCArray<Node>> value) {
    setProperty(this, 'controls', value);
  }

  List<StreetViewLink> get links => _getLinks();
  StreetViewLocation get location => _getLocation();
  bool get motionTracking => _getMotionTracking();
  String get pano => _getPano();
  StreetViewPov get photographerPov => _getPhotographerPov();
  LatLng get position => _getPosition();
  StreetViewPov get pov => _getPov();
  StreetViewStatus get status => _getStatus();
  bool get visible => _getVisible();
  num get zoom => _getZoom();
  set links(List<StreetViewLink> links) => _setLinks(links);
  set motionTracking(bool motionTracking) => _setMotionTracking(motionTracking);
  set options(StreetViewPanoramaOptions options) => _setOptions(options);
  set pano(String pano) => _setPano(pano);
  set position(LatLng position) => _setPosition(position);
  set pov(StreetViewPov pov) => _setPov(pov);
  set visible(bool visible) => _setVisible(visible);
  set zoom(num zoom) => _setZoom(zoom);
  Stream<Object> get onCloseclick {
    StreamController<Object> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'closeclick',
          allowInterop((Object event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Object>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onPanoChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'pano_changed',
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

  Stream<void> get onPovChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'pov_changed',
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

  Stream<void> get onResize {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'resize',
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

  Stream<void> get onStatusChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'status_changed',
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

  Stream<void> get onZoomChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'zoom_changed',
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

  List<StreetViewLink> _getLinks() =>
      callMethod(this, 'getLinks', [])?.cast<StreetViewLink>();

  StreetViewLocation _getLocation() => callMethod(this, 'getLocation', []);

  bool _getMotionTracking() => callMethod(this, 'getMotionTracking', []);

  String _getPano() => callMethod(this, 'getPano', []);

  StreetViewPov _getPhotographerPov() =>
      callMethod(this, 'getPhotographerPov', []);

  LatLng _getPosition() => callMethod(this, 'getPosition', []);

  StreetViewPov _getPov() => callMethod(this, 'getPov', []);

  StreetViewStatus _getStatus() => callMethod(this, 'getStatus', []);

  bool _getVisible() => callMethod(this, 'getVisible', []);

  num _getZoom() => callMethod(this, 'getZoom', []);

  void registerPanoProvider([
    StreetViewPanoramaData Function(String p1) provider,
    PanoProviderOptions opt_options,
  ]) {
    callMethod(
        this, 'registerPanoProvider', [allowInterop(provider), opt_options]);
  }

  void _setLinks(List<StreetViewLink> links) {
    callMethod(this, 'setLinks', [links]);
  }

  void _setMotionTracking(bool motionTracking) {
    callMethod(this, 'setMotionTracking', [motionTracking]);
  }

  void _setOptions(StreetViewPanoramaOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPano(String pano) {
    callMethod(this, 'setPano', [pano]);
  }

  void _setPosition(LatLng latLng) {
    callMethod(this, 'setPosition', [latLng]);
  }

  void _setPov(StreetViewPov pov) {
    callMethod(this, 'setPov', [pov]);
  }

  void _setVisible(bool flag) {
    callMethod(this, 'setVisible', [flag]);
  }

  void _setZoom(num zoom) {
    callMethod(this, 'setZoom', [zoom]);
  }
}

@GeneratedFrom(_StreetViewPanoramaOptions)
@JS()
@anonymous
class StreetViewPanoramaOptions {
  external factory StreetViewPanoramaOptions();

  external bool get addressControl;

  external set addressControl(bool value);

  external StreetViewAddressControlOptions get addressControlOptions;

  external set addressControlOptions(StreetViewAddressControlOptions value);

  external bool get clickToGo;

  external set clickToGo(bool value);

  external num get controlSize;

  external set controlSize(num value);

  external bool get disableDefaultUI;

  external set disableDefaultUI(bool value);

  external bool get disableDoubleClickZoom;

  external set disableDoubleClickZoom(bool value);

  external bool get enableCloseButton;

  external set enableCloseButton(bool value);

  external bool get fullscreenControl;

  external set fullscreenControl(bool value);

  external FullscreenControlOptions get fullscreenControlOptions;

  external set fullscreenControlOptions(FullscreenControlOptions value);

  external bool get imageDateControl;

  external set imageDateControl(bool value);

  external bool get linksControl;

  external set linksControl(bool value);

  external bool get motionTracking;

  external set motionTracking(bool value);

  external bool get motionTrackingControl;

  external set motionTrackingControl(bool value);

  external MotionTrackingControlOptions get motionTrackingControlOptions;

  external set motionTrackingControlOptions(MotionTrackingControlOptions value);

  external bool get panControl;

  external set panControl(bool value);

  external PanControlOptions get panControlOptions;

  external set panControlOptions(PanControlOptions value);

  external String get pano;

  external set pano(String value);

  external LatLng get position;

  external set position(LatLng value);

  external StreetViewPov get pov;

  external set pov(StreetViewPov value);

  external bool get scrollwheel;

  external set scrollwheel(bool value);

  external bool get showRoadLabels;

  external set showRoadLabels(bool value);

  external bool get visible;

  external set visible(bool value);

  external num get zoom;

  external set zoom(num value);

  external bool get zoomControl;

  external set zoomControl(bool value);

  external ZoomControlOptions get zoomControlOptions;

  external set zoomControlOptions(ZoomControlOptions value);
}

@GeneratedFrom(_StreetViewAddressControlOptions)
@JS()
@anonymous
class StreetViewAddressControlOptions {
  external factory StreetViewAddressControlOptions();

  external ControlPosition get position;

  external set position(ControlPosition value);
}

@GeneratedFrom(_PanoProviderOptions)
@JS()
@anonymous
class PanoProviderOptions {
  external factory PanoProviderOptions();

  external bool get cors;

  external set cors(bool value);
}

@GeneratedFrom(_StreetViewTileData)
@JS()
@anonymous
class StreetViewTileData {
  external factory StreetViewTileData();

  external num get centerHeading;

  external set centerHeading(num value);

  external Size get tileSize;

  external set tileSize(Size value);

  external Size get worldSize;

  external set worldSize(Size value);
}

@GeneratedFrom(_StreetViewTileData)
extension StreetViewTileData$Ext on StreetViewTileData {
  String Function(String pano, num tileZoom, num tileX, num tileY)
      get getTileUrl => getProperty(this, 'getTileUrl');

  set getTileUrl(
      String Function(String pano, num tileZoom, num tileX, num tileY) value) {
    setProperty(this, 'getTileUrl', allowInterop(value));
  }
}

@GeneratedFrom(_StreetViewPov)
@JS()
@anonymous
class StreetViewPov {
  external factory StreetViewPov();

  external num get heading;

  external set heading(num value);

  external num get pitch;

  external set pitch(num value);
}

@GeneratedFrom(_StreetViewCoverageLayer)
@JS('google.maps.StreetViewCoverageLayer')
class StreetViewCoverageLayer extends MVCObject {
  external StreetViewCoverageLayer();
}

@GeneratedFrom(_StreetViewCoverageLayer)
extension StreetViewCoverageLayer$Ext on StreetViewCoverageLayer {
  GMap get map => _getMap();
  set map(GMap map) => _setMap(map);

  GMap _getMap() => callMethod(this, 'getMap', []);

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }
}

@GeneratedFrom(_StreetViewService)
@JS('google.maps.StreetViewService')
class StreetViewService {
  external StreetViewService();
}

@GeneratedFrom(_StreetViewService)
extension StreetViewService$Ext on StreetViewService {
  Future<StreetViewResponse> getPanorama(
    Object /*StreetViewLocationRequest|StreetViewPanoRequest*/ request, [
    void Function(StreetViewPanoramaData p1, StreetViewStatus p2) callback,
  ]) =>
      promiseToFuture(
          callMethod(this, 'getPanorama', [request, allowInterop(callback)]));
}

@GeneratedFrom(_StreetViewStatus)
@JS('google.maps.StreetViewStatus')
class StreetViewStatus {
  external static StreetViewStatus get OK;
  external static StreetViewStatus get UNKNOWN_ERROR;
  external static StreetViewStatus get ZERO_RESULTS;
}

@GeneratedFrom(_StreetViewLocationRequest)
@JS()
@anonymous
class StreetViewLocationRequest {
  external factory StreetViewLocationRequest();

  external LatLng get location;

  external set location(LatLng value);

  external StreetViewPreference get preference;

  external set preference(StreetViewPreference value);

  external num get radius;

  external set radius(num value);

  external StreetViewSource get source;

  external set source(StreetViewSource value);
}

@GeneratedFrom(_StreetViewPanoRequest)
@JS()
@anonymous
class StreetViewPanoRequest {
  external factory StreetViewPanoRequest();

  external String get pano;

  external set pano(String value);
}

@GeneratedFrom(_StreetViewResponse)
@JS()
@anonymous
class StreetViewResponse {
  external factory StreetViewResponse();

  external StreetViewPanoramaData get data;

  external set data(StreetViewPanoramaData value);
}

@GeneratedFrom(_StreetViewLocation)
@JS()
@anonymous
class StreetViewLocation {
  external factory StreetViewLocation();

  external String get pano;

  external set pano(String value);

  external String get description;

  external set description(String value);

  external LatLng get latLng;

  external set latLng(LatLng value);

  external String get shortDescription;

  external set shortDescription(String value);
}

@GeneratedFrom(_StreetViewPreference)
@JS('google.maps.StreetViewPreference')
class StreetViewPreference {
  external static StreetViewPreference get BEST;
  external static StreetViewPreference get NEAREST;
}

@GeneratedFrom(_StreetViewSource)
@JS('google.maps.StreetViewSource')
class StreetViewSource {
  external static StreetViewSource get DEFAULT;
  external static StreetViewSource get OUTDOOR;
}

@GeneratedFrom(_StreetViewPanoramaData)
@JS()
@anonymous
class StreetViewPanoramaData {
  external factory StreetViewPanoramaData();

  external String get copyright;

  external set copyright(String value);

  external String get imageDate;

  external set imageDate(String value);

  external StreetViewLocation get location;

  external set location(StreetViewLocation value);

  external StreetViewTileData get tiles;

  external set tiles(StreetViewTileData value);
}

@GeneratedFrom(_StreetViewPanoramaData)
extension StreetViewPanoramaData$Ext on StreetViewPanoramaData {
  List<StreetViewLink> get links =>
      getProperty(this, 'links')?.cast<StreetViewLink>();

  set links(List<StreetViewLink> value) {
    setProperty(this, 'links', value);
  }
}

@GeneratedFrom(_StreetViewLink)
@JS()
@anonymous
class StreetViewLink {
  external factory StreetViewLink();

  external String get description;

  external set description(String value);

  external num get heading;

  external set heading(num value);

  external String get pano;

  external set pano(String value);
}

@GeneratedFrom(_Geocoder)
@JS('google.maps.Geocoder')
class Geocoder {
  external Geocoder();
}

@GeneratedFrom(_Geocoder)
extension Geocoder$Ext on Geocoder {
  Future<GeocoderResponse> geocode(
    GeocoderRequest request, [
    void Function(List<GeocoderResult> p1, GeocoderStatus p2) callback,
  ]) =>
      promiseToFuture(
          callMethod(this, 'geocode', [request, allowInterop(callback)]));
}

@GeneratedFrom(_GeocoderRequest)
@JS()
@anonymous
class GeocoderRequest {
  external factory GeocoderRequest();

  external String get address;

  external set address(String value);

  external LatLngBounds get bounds;

  external set bounds(LatLngBounds value);

  external GeocoderComponentRestrictions get componentRestrictions;

  external set componentRestrictions(GeocoderComponentRestrictions value);

  external LatLng get location;

  external set location(LatLng value);

  external String get placeId;

  external set placeId(String value);

  external String get region;

  external set region(String value);
}

@GeneratedFrom(_GeocoderComponentRestrictions)
@JS()
@anonymous
class GeocoderComponentRestrictions {
  external factory GeocoderComponentRestrictions();

  external String get administrativeArea;

  external set administrativeArea(String value);

  external String get country;

  external set country(String value);

  external String get locality;

  external set locality(String value);

  external String get postalCode;

  external set postalCode(String value);

  external String get route;

  external set route(String value);
}

@GeneratedFrom(_GeocoderStatus)
@JS('google.maps.GeocoderStatus')
class GeocoderStatus {
  external static GeocoderStatus get ERROR;
  external static GeocoderStatus get INVALID_REQUEST;
  external static GeocoderStatus get OK;
  external static GeocoderStatus get OVER_QUERY_LIMIT;
  external static GeocoderStatus get REQUEST_DENIED;
  external static GeocoderStatus get UNKNOWN_ERROR;
  external static GeocoderStatus get ZERO_RESULTS;
}

@GeneratedFrom(_GeocoderResponse)
@JS()
@anonymous
class GeocoderResponse {
  external factory GeocoderResponse();
}

@GeneratedFrom(_GeocoderResponse)
extension GeocoderResponse$Ext on GeocoderResponse {
  List<GeocoderResult> get results =>
      getProperty(this, 'results')?.cast<GeocoderResult>();

  set results(List<GeocoderResult> value) {
    setProperty(this, 'results', value);
  }
}

@GeneratedFrom(_GeocoderResult)
@JS()
@anonymous
class GeocoderResult {
  external factory GeocoderResult();

  external GeocoderGeometry get geometry;

  external set geometry(GeocoderGeometry value);
}

@GeneratedFrom(_GeocoderResult)
extension GeocoderResult$Ext on GeocoderResult {
  List<GeocoderAddressComponent> get addressComponents =>
      getProperty(this, 'address_components')?.cast<GeocoderAddressComponent>();

  set addressComponents(List<GeocoderAddressComponent> value) {
    setProperty(this, 'address_components', value);
  }

  String get formattedAddress => getProperty(this, 'formatted_address');

  set formattedAddress(String value) {
    setProperty(this, 'formatted_address', value);
  }

  bool get partialMatch => getProperty(this, 'partial_match');

  set partialMatch(bool value) {
    setProperty(this, 'partial_match', value);
  }

  String get placeId => getProperty(this, 'place_id');

  set placeId(String value) {
    setProperty(this, 'place_id', value);
  }

  List<String> get postcodeLocalities =>
      getProperty(this, 'postcode_localities')?.cast<String>();

  set postcodeLocalities(List<String> value) {
    setProperty(this, 'postcode_localities', value);
  }

  List<String> get types => getProperty(this, 'types')?.cast<String>();

  set types(List<String> value) {
    setProperty(this, 'types', value);
  }
}

@GeneratedFrom(_GeocoderAddressComponent)
@JS()
@anonymous
class GeocoderAddressComponent {
  external factory GeocoderAddressComponent();
}

@GeneratedFrom(_GeocoderAddressComponent)
extension GeocoderAddressComponent$Ext on GeocoderAddressComponent {
  String get longName => getProperty(this, 'long_name');

  set longName(String value) {
    setProperty(this, 'long_name', value);
  }

  String get shortName => getProperty(this, 'short_name');

  set shortName(String value) {
    setProperty(this, 'short_name', value);
  }

  List<String> get types => getProperty(this, 'types')?.cast<String>();

  set types(List<String> value) {
    setProperty(this, 'types', value);
  }
}

@GeneratedFrom(_GeocoderGeometry)
@JS()
@anonymous
class GeocoderGeometry {
  external factory GeocoderGeometry();

  external LatLngBounds get bounds;

  external set bounds(LatLngBounds value);

  external LatLng get location;

  external set location(LatLng value);

  external LatLngBounds get viewport;

  external set viewport(LatLngBounds value);
}

@GeneratedFrom(_GeocoderGeometry)
extension GeocoderGeometry$Ext on GeocoderGeometry {
  GeocoderLocationType get locationType => getProperty(this, 'location_type');

  set locationType(GeocoderLocationType value) {
    setProperty(this, 'location_type', value);
  }
}

@GeneratedFrom(_GeocoderLocationType)
@JS('google.maps.GeocoderLocationType')
class GeocoderLocationType {
  external static GeocoderLocationType get APPROXIMATE;
  external static GeocoderLocationType get GEOMETRIC_CENTER;
  external static GeocoderLocationType get RANGE_INTERPOLATED;
  external static GeocoderLocationType get ROOFTOP;
}

@GeneratedFrom(_DirectionsService)
@JS('google.maps.DirectionsService')
class DirectionsService {
  external DirectionsService();
}

@GeneratedFrom(_DirectionsService)
extension DirectionsService$Ext on DirectionsService {
  Future<DirectionsResult> route(
    DirectionsRequest request, [
    void Function(DirectionsResult p1, DirectionsStatus p2) callback,
  ]) =>
      promiseToFuture(
          callMethod(this, 'route', [request, allowInterop(callback)]));
}

@GeneratedFrom(_DirectionsRequest)
@JS()
@anonymous
class DirectionsRequest {
  external factory DirectionsRequest();

  external Object /*String|LatLng|Place*/ get destination;

  external set destination(Object /*String|LatLng|Place*/ value);

  external Object /*String|LatLng|Place*/ get origin;

  external set origin(Object /*String|LatLng|Place*/ value);

  external TravelMode get travelMode;

  external set travelMode(TravelMode value);

  external bool get avoidFerries;

  external set avoidFerries(bool value);

  external bool get avoidHighways;

  external set avoidHighways(bool value);

  external bool get avoidTolls;

  external set avoidTolls(bool value);

  external DrivingOptions get drivingOptions;

  external set drivingOptions(DrivingOptions value);

  external bool get optimizeWaypoints;

  external set optimizeWaypoints(bool value);

  external bool get provideRouteAlternatives;

  external set provideRouteAlternatives(bool value);

  external String get region;

  external set region(String value);

  external TransitOptions get transitOptions;

  external set transitOptions(TransitOptions value);

  external UnitSystem get unitSystem;

  external set unitSystem(UnitSystem value);
}

@GeneratedFrom(_DirectionsRequest)
extension DirectionsRequest$Ext on DirectionsRequest {
  List<DirectionsWaypoint> get waypoints =>
      getProperty(this, 'waypoints')?.cast<DirectionsWaypoint>();

  set waypoints(List<DirectionsWaypoint> value) {
    setProperty(this, 'waypoints', value);
  }
}

@GeneratedFrom(_DirectionsStatus)
@JS('google.maps.DirectionsStatus')
class DirectionsStatus {
  external static DirectionsStatus get INVALID_REQUEST;
  external static DirectionsStatus get MAX_WAYPOINTS_EXCEEDED;
  external static DirectionsStatus get NOT_FOUND;
  external static DirectionsStatus get OK;
  external static DirectionsStatus get OVER_QUERY_LIMIT;
  external static DirectionsStatus get REQUEST_DENIED;
  external static DirectionsStatus get UNKNOWN_ERROR;
  external static DirectionsStatus get ZERO_RESULTS;
}

@GeneratedFrom(_DirectionsResult)
@JS()
@anonymous
class DirectionsResult {
  external factory DirectionsResult();
}

@GeneratedFrom(_DirectionsResult)
extension DirectionsResult$Ext on DirectionsResult {
  List<DirectionsGeocodedWaypoint> get geocodedWaypoints =>
      getProperty(this, 'geocoded_waypoints')
          ?.cast<DirectionsGeocodedWaypoint>();

  set geocodedWaypoints(List<DirectionsGeocodedWaypoint> value) {
    setProperty(this, 'geocoded_waypoints', value);
  }

  List<DirectionsRoute> get routes =>
      getProperty(this, 'routes')?.cast<DirectionsRoute>();

  set routes(List<DirectionsRoute> value) {
    setProperty(this, 'routes', value);
  }
}

@GeneratedFrom(_DirectionsRenderer)
@JS('google.maps.DirectionsRenderer')
class DirectionsRenderer extends MVCObject {
  external DirectionsRenderer([
    DirectionsRendererOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_DirectionsRenderer)
extension DirectionsRenderer$Ext on DirectionsRenderer {
  DirectionsResult get directions => _getDirections();
  GMap get map => _getMap();
  Node get panel => _getPanel();
  num get routeIndex => _getRouteIndex();
  set directions(DirectionsResult directions) => _setDirections(directions);
  set map(GMap map) => _setMap(map);
  set options(DirectionsRendererOptions options) => _setOptions(options);
  set panel(Node panel) => _setPanel(panel);
  set routeIndex(num routeIndex) => _setRouteIndex(routeIndex);
  Stream<void> get onDirectionsChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'directions_changed',
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

  DirectionsResult _getDirections() => callMethod(this, 'getDirections', []);

  GMap _getMap() => callMethod(this, 'getMap', []);

  Node _getPanel() => callMethod(this, 'getPanel', []);

  num _getRouteIndex() => callMethod(this, 'getRouteIndex', []);

  void _setDirections(DirectionsResult directions) {
    callMethod(this, 'setDirections', [directions]);
  }

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(DirectionsRendererOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setPanel(Node panel) {
    callMethod(this, 'setPanel', [panel]);
  }

  void _setRouteIndex(num routeIndex) {
    callMethod(this, 'setRouteIndex', [routeIndex]);
  }
}

@GeneratedFrom(_DirectionsRendererOptions)
@JS()
@anonymous
class DirectionsRendererOptions {
  external factory DirectionsRendererOptions();

  external DirectionsResult get directions;

  external set directions(DirectionsResult value);

  external bool get draggable;

  external set draggable(bool value);

  external bool get hideRouteList;

  external set hideRouteList(bool value);

  external InfoWindow get infoWindow;

  external set infoWindow(InfoWindow value);

  external GMap get map;

  external set map(GMap value);

  external MarkerOptions get markerOptions;

  external set markerOptions(MarkerOptions value);

  external Node get panel;

  external set panel(Node value);

  external PolylineOptions get polylineOptions;

  external set polylineOptions(PolylineOptions value);

  external bool get preserveViewport;

  external set preserveViewport(bool value);

  external num get routeIndex;

  external set routeIndex(num value);

  external bool get suppressBicyclingLayer;

  external set suppressBicyclingLayer(bool value);

  external bool get suppressInfoWindows;

  external set suppressInfoWindows(bool value);

  external bool get suppressMarkers;

  external set suppressMarkers(bool value);

  external bool get suppressPolylines;

  external set suppressPolylines(bool value);
}

@GeneratedFrom(_DirectionsWaypoint)
@JS()
@anonymous
class DirectionsWaypoint {
  external factory DirectionsWaypoint();

  external Object /*String|LatLng|Place*/ get location;

  external set location(Object /*String|LatLng|Place*/ value);

  external bool get stopover;

  external set stopover(bool value);
}

@GeneratedFrom(_DirectionsGeocodedWaypoint)
@JS()
@anonymous
class DirectionsGeocodedWaypoint {
  external factory DirectionsGeocodedWaypoint();
}

@GeneratedFrom(_DirectionsGeocodedWaypoint)
extension DirectionsGeocodedWaypoint$Ext on DirectionsGeocodedWaypoint {
  bool get partialMatch => getProperty(this, 'partial_match');

  set partialMatch(bool value) {
    setProperty(this, 'partial_match', value);
  }

  String get placeId => getProperty(this, 'place_id');

  set placeId(String value) {
    setProperty(this, 'place_id', value);
  }

  List<String> get types => getProperty(this, 'types')?.cast<String>();

  set types(List<String> value) {
    setProperty(this, 'types', value);
  }
}

@GeneratedFrom(_DirectionsRoute)
@JS()
@anonymous
class DirectionsRoute {
  external factory DirectionsRoute();

  external LatLngBounds get bounds;

  external set bounds(LatLngBounds value);

  external String get copyrights;

  external set copyrights(String value);

  external TransitFare get fare;

  external set fare(TransitFare value);
}

@GeneratedFrom(_DirectionsRoute)
extension DirectionsRoute$Ext on DirectionsRoute {
  List<DirectionsLeg> get legs =>
      getProperty(this, 'legs')?.cast<DirectionsLeg>();

  set legs(List<DirectionsLeg> value) {
    setProperty(this, 'legs', value);
  }

  List<LatLng> get overviewPath =>
      getProperty(this, 'overview_path')?.cast<LatLng>();

  set overviewPath(List<LatLng> value) {
    setProperty(this, 'overview_path', value);
  }

  String get overviewPolyline => getProperty(this, 'overview_polyline');

  set overviewPolyline(String value) {
    setProperty(this, 'overview_polyline', value);
  }

  List<String> get warnings => getProperty(this, 'warnings')?.cast<String>();

  set warnings(List<String> value) {
    setProperty(this, 'warnings', value);
  }

  List<num> get waypointOrder =>
      getProperty(this, 'waypoint_order')?.cast<num>();

  set waypointOrder(List<num> value) {
    setProperty(this, 'waypoint_order', value);
  }
}

@GeneratedFrom(_DirectionsLeg)
@JS()
@anonymous
class DirectionsLeg {
  external factory DirectionsLeg();

  external Distance get distance;

  external set distance(Distance value);

  external GDuration get duration;

  external set duration(GDuration value);
}

@GeneratedFrom(_DirectionsLeg)
extension DirectionsLeg$Ext on DirectionsLeg {
  Time get arrivalTime => getProperty(this, 'arrival_time');

  set arrivalTime(Time value) {
    setProperty(this, 'arrival_time', value);
  }

  Time get departureTime => getProperty(this, 'departure_time');

  set departureTime(Time value) {
    setProperty(this, 'departure_time', value);
  }

  GDuration get durationInTraffic => getProperty(this, 'duration_in_traffic');

  set durationInTraffic(GDuration value) {
    setProperty(this, 'duration_in_traffic', value);
  }

  String get endAddress => getProperty(this, 'end_address');

  set endAddress(String value) {
    setProperty(this, 'end_address', value);
  }

  LatLng get endLocation => getProperty(this, 'end_location');

  set endLocation(LatLng value) {
    setProperty(this, 'end_location', value);
  }

  String get startAddress => getProperty(this, 'start_address');

  set startAddress(String value) {
    setProperty(this, 'start_address', value);
  }

  LatLng get startLocation => getProperty(this, 'start_location');

  set startLocation(LatLng value) {
    setProperty(this, 'start_location', value);
  }

  List<DirectionsStep> get steps =>
      getProperty(this, 'steps')?.cast<DirectionsStep>();

  set steps(List<DirectionsStep> value) {
    setProperty(this, 'steps', value);
  }

  List<LatLng> get viaWaypoints =>
      getProperty(this, 'via_waypoints')?.cast<LatLng>();

  set viaWaypoints(List<LatLng> value) {
    setProperty(this, 'via_waypoints', value);
  }
}

@GeneratedFrom(_DirectionsStep)
@JS()
@anonymous
class DirectionsStep {
  external factory DirectionsStep();

  external Distance get distance;

  external set distance(Distance value);

  external GDuration get duration;

  external set duration(GDuration value);

  external String get instructions;

  external set instructions(String value);

  external TransitDetails get transit;

  external set transit(TransitDetails value);
}

@GeneratedFrom(_DirectionsStep)
extension DirectionsStep$Ext on DirectionsStep {
  LatLng get endLocation => getProperty(this, 'end_location');

  set endLocation(LatLng value) {
    setProperty(this, 'end_location', value);
  }

  List<LatLng> get path => getProperty(this, 'path')?.cast<LatLng>();

  set path(List<LatLng> value) {
    setProperty(this, 'path', value);
  }

  LatLng get startLocation => getProperty(this, 'start_location');

  set startLocation(LatLng value) {
    setProperty(this, 'start_location', value);
  }

  List<DirectionsStep> get steps =>
      getProperty(this, 'steps')?.cast<DirectionsStep>();

  set steps(List<DirectionsStep> value) {
    setProperty(this, 'steps', value);
  }

  TravelMode get travelMode => getProperty(this, 'travel_mode');

  set travelMode(TravelMode value) {
    setProperty(this, 'travel_mode', value);
  }
}

@GeneratedFrom(_Place)
@JS()
@anonymous
class Place {
  external factory Place();

  external LatLng get location;

  external set location(LatLng value);

  external String get placeId;

  external set placeId(String value);

  external String get query;

  external set query(String value);
}

@GeneratedFrom(_TravelMode)
@JS('google.maps.TravelMode')
class TravelMode {
  external static TravelMode get BICYCLING;
  external static TravelMode get DRIVING;
  external static TravelMode get TRANSIT;
  external static TravelMode get WALKING;
}

@GeneratedFrom(_DrivingOptions)
@JS()
@anonymous
class DrivingOptions {
  external factory DrivingOptions();

  external DateTime get departureTime;

  external set departureTime(DateTime value);

  external TrafficModel get trafficModel;

  external set trafficModel(TrafficModel value);
}

@GeneratedFrom(_TrafficModel)
@JS('google.maps.TrafficModel')
class TrafficModel {
  external static TrafficModel get BEST_GUESS;
  external static TrafficModel get OPTIMISTIC;
  external static TrafficModel get PESSIMISTIC;
}

@GeneratedFrom(_TransitOptions)
@JS()
@anonymous
class TransitOptions {
  external factory TransitOptions();

  external DateTime get arrivalTime;

  external set arrivalTime(DateTime value);

  external DateTime get departureTime;

  external set departureTime(DateTime value);

  external TransitRoutePreference get routingPreference;

  external set routingPreference(TransitRoutePreference value);
}

@GeneratedFrom(_TransitOptions)
extension TransitOptions$Ext on TransitOptions {
  List<TransitMode> get modes =>
      getProperty(this, 'modes')?.cast<TransitMode>();

  set modes(List<TransitMode> value) {
    setProperty(this, 'modes', value);
  }
}

@GeneratedFrom(_TransitMode)
@JS('google.maps.TransitMode')
class TransitMode {
  external static TransitMode get BUS;
  external static TransitMode get RAIL;
  external static TransitMode get SUBWAY;
  external static TransitMode get TRAIN;
  external static TransitMode get TRAM;
}

@GeneratedFrom(_TransitRoutePreference)
@JS('google.maps.TransitRoutePreference')
class TransitRoutePreference {
  external static TransitRoutePreference get FEWER_TRANSFERS;
  external static TransitRoutePreference get LESS_WALKING;
}

@GeneratedFrom(_TransitFare)
@JS()
@anonymous
class TransitFare {
  external factory TransitFare();

  external String get currency;

  external set currency(String value);

  external num get value;

  external set value(num value);
}

@GeneratedFrom(_TransitDetails)
@JS()
@anonymous
class TransitDetails {
  external factory TransitDetails();

  external String get headsign;

  external set headsign(String value);

  external num get headway;

  external set headway(num value);

  external TransitLine get line;

  external set line(TransitLine value);
}

@GeneratedFrom(_TransitDetails)
extension TransitDetails$Ext on TransitDetails {
  TransitStop get arrivalStop => getProperty(this, 'arrival_stop');

  set arrivalStop(TransitStop value) {
    setProperty(this, 'arrival_stop', value);
  }

  Time get arrivalTime => getProperty(this, 'arrival_time');

  set arrivalTime(Time value) {
    setProperty(this, 'arrival_time', value);
  }

  TransitStop get departureStop => getProperty(this, 'departure_stop');

  set departureStop(TransitStop value) {
    setProperty(this, 'departure_stop', value);
  }

  Time get departureTime => getProperty(this, 'departure_time');

  set departureTime(Time value) {
    setProperty(this, 'departure_time', value);
  }

  num get numStops => getProperty(this, 'num_stops');

  set numStops(num value) {
    setProperty(this, 'num_stops', value);
  }

  String get tripShortName => getProperty(this, 'trip_short_name');

  set tripShortName(String value) {
    setProperty(this, 'trip_short_name', value);
  }
}

@GeneratedFrom(_TransitStop)
@JS()
@anonymous
class TransitStop {
  external factory TransitStop();

  external LatLng get location;

  external set location(LatLng value);

  external String get name;

  external set name(String value);
}

@GeneratedFrom(_TransitLine)
@JS()
@anonymous
class TransitLine {
  external factory TransitLine();

  external String get color;

  external set color(String value);

  external String get icon;

  external set icon(String value);

  external String get name;

  external set name(String value);

  external String get url;

  external set url(String value);

  external TransitVehicle get vehicle;

  external set vehicle(TransitVehicle value);
}

@GeneratedFrom(_TransitLine)
extension TransitLine$Ext on TransitLine {
  List<TransitAgency> get agencies =>
      getProperty(this, 'agencies')?.cast<TransitAgency>();

  set agencies(List<TransitAgency> value) {
    setProperty(this, 'agencies', value);
  }

  String get shortName => getProperty(this, 'short_name');

  set shortName(String value) {
    setProperty(this, 'short_name', value);
  }

  String get textColor => getProperty(this, 'text_color');

  set textColor(String value) {
    setProperty(this, 'text_color', value);
  }
}

@GeneratedFrom(_TransitAgency)
@JS()
@anonymous
class TransitAgency {
  external factory TransitAgency();

  external String get name;

  external set name(String value);

  external String get phone;

  external set phone(String value);

  external String get url;

  external set url(String value);
}

@GeneratedFrom(_TransitVehicle)
@JS()
@anonymous
class TransitVehicle {
  external factory TransitVehicle();

  external String get icon;

  external set icon(String value);

  external String get name;

  external set name(String value);

  external VehicleType get type;

  external set type(VehicleType value);
}

@GeneratedFrom(_TransitVehicle)
extension TransitVehicle$Ext on TransitVehicle {
  String get localIcon => getProperty(this, 'local_icon');

  set localIcon(String value) {
    setProperty(this, 'local_icon', value);
  }
}

@GeneratedFrom(_VehicleType)
@JS('google.maps.VehicleType')
class VehicleType {
  external static VehicleType get BUS;
  external static VehicleType get CABLE_CAR;
  external static VehicleType get COMMUTER_TRAIN;
  external static VehicleType get FERRY;
  external static VehicleType get FUNICULAR;
  external static VehicleType get GONDOLA_LIFT;
  external static VehicleType get HEAVY_RAIL;
  external static VehicleType get HIGH_SPEED_TRAIN;
  external static VehicleType get INTERCITY_BUS;
  external static VehicleType get METRO_RAIL;
  external static VehicleType get MONORAIL;
  external static VehicleType get OTHER;
  external static VehicleType get RAIL;
  external static VehicleType get SHARE_TAXI;
  external static VehicleType get SUBWAY;
  external static VehicleType get TRAM;
  external static VehicleType get TROLLEYBUS;
}

@GeneratedFrom(_UnitSystem)
@JS('google.maps.UnitSystem')
class UnitSystem {
  external static UnitSystem get IMPERIAL;
  external static UnitSystem get METRIC;
}

@GeneratedFrom(_Distance)
@JS()
@anonymous
class Distance {
  external factory Distance();

  external String get text;

  external set text(String value);

  external num get value;

  external set value(num value);
}

@GeneratedFrom(_GDuration)
@JS()
@anonymous
class GDuration {
  external factory GDuration();

  external String get text;

  external set text(String value);

  external num get value;

  external set value(num value);
}

@GeneratedFrom(_Time)
@JS()
@anonymous
class Time {
  external factory Time();

  external String get text;

  external set text(String value);

  external DateTime get value;

  external set value(DateTime value);
}

@GeneratedFrom(_Time)
extension Time$Ext on Time {
  String get timeZone => getProperty(this, 'time_zone');

  set timeZone(String value) {
    setProperty(this, 'time_zone', value);
  }
}

@GeneratedFrom(_DistanceMatrixService)
@JS('google.maps.DistanceMatrixService')
class DistanceMatrixService {
  external DistanceMatrixService();
}

@GeneratedFrom(_DistanceMatrixService)
extension DistanceMatrixService$Ext on DistanceMatrixService {
  Future<DistanceMatrixResponse> getDistanceMatrix(
    DistanceMatrixRequest request, [
    void Function(DistanceMatrixResponse p1, DistanceMatrixStatus p2) callback,
  ]) =>
      promiseToFuture(callMethod(
          this, 'getDistanceMatrix', [request, allowInterop(callback)]));
}

@GeneratedFrom(_DistanceMatrixRequest)
@JS()
@anonymous
class DistanceMatrixRequest {
  external factory DistanceMatrixRequest();

  external TravelMode get travelMode;

  external set travelMode(TravelMode value);

  external bool get avoidFerries;

  external set avoidFerries(bool value);

  external bool get avoidHighways;

  external set avoidHighways(bool value);

  external bool get avoidTolls;

  external set avoidTolls(bool value);

  external DrivingOptions get drivingOptions;

  external set drivingOptions(DrivingOptions value);

  external String get region;

  external set region(String value);

  external TransitOptions get transitOptions;

  external set transitOptions(TransitOptions value);

  external UnitSystem get unitSystem;

  external set unitSystem(UnitSystem value);
}

@GeneratedFrom(_DistanceMatrixRequest)
extension DistanceMatrixRequest$Ext on DistanceMatrixRequest {
  List<Object /*String|LatLng|Place*/ > get destinations =>
      getProperty(this, 'destinations')
          ?.cast<Object /*String|LatLng|Place*/ >();

  set destinations(List<Object /*String|LatLng|Place*/ > value) {
    setProperty(this, 'destinations', value);
  }

  List<Object /*String|LatLng|Place*/ > get origins =>
      getProperty(this, 'origins')?.cast<Object /*String|LatLng|Place*/ >();

  set origins(List<Object /*String|LatLng|Place*/ > value) {
    setProperty(this, 'origins', value);
  }
}

@GeneratedFrom(_DistanceMatrixResponse)
@JS()
@anonymous
class DistanceMatrixResponse {
  external factory DistanceMatrixResponse();
}

@GeneratedFrom(_DistanceMatrixResponse)
extension DistanceMatrixResponse$Ext on DistanceMatrixResponse {
  List<String> get destinationAddresses =>
      getProperty(this, 'destinationAddresses')?.cast<String>();

  set destinationAddresses(List<String> value) {
    setProperty(this, 'destinationAddresses', value);
  }

  List<String> get originAddresses =>
      getProperty(this, 'originAddresses')?.cast<String>();

  set originAddresses(List<String> value) {
    setProperty(this, 'originAddresses', value);
  }

  List<DistanceMatrixResponseRow> get rows =>
      getProperty(this, 'rows')?.cast<DistanceMatrixResponseRow>();

  set rows(List<DistanceMatrixResponseRow> value) {
    setProperty(this, 'rows', value);
  }
}

@GeneratedFrom(_DistanceMatrixResponseRow)
@JS()
@anonymous
class DistanceMatrixResponseRow {
  external factory DistanceMatrixResponseRow();
}

@GeneratedFrom(_DistanceMatrixResponseRow)
extension DistanceMatrixResponseRow$Ext on DistanceMatrixResponseRow {
  List<DistanceMatrixResponseElement> get elements =>
      getProperty(this, 'elements')?.cast<DistanceMatrixResponseElement>();

  set elements(List<DistanceMatrixResponseElement> value) {
    setProperty(this, 'elements', value);
  }
}

@GeneratedFrom(_DistanceMatrixResponseElement)
@JS()
@anonymous
class DistanceMatrixResponseElement {
  external factory DistanceMatrixResponseElement();

  external Distance get distance;

  external set distance(Distance value);

  external GDuration get duration;

  external set duration(GDuration value);

  external TransitFare get fare;

  external set fare(TransitFare value);

  external DistanceMatrixElementStatus get status;

  external set status(DistanceMatrixElementStatus value);
}

@GeneratedFrom(_DistanceMatrixResponseElement)
extension DistanceMatrixResponseElement$Ext on DistanceMatrixResponseElement {
  GDuration get durationInTraffic => getProperty(this, 'duration_in_traffic');

  set durationInTraffic(GDuration value) {
    setProperty(this, 'duration_in_traffic', value);
  }
}

@GeneratedFrom(_DistanceMatrixStatus)
@JS('google.maps.DistanceMatrixStatus')
class DistanceMatrixStatus {
  external static DistanceMatrixStatus get INVALID_REQUEST;
  external static DistanceMatrixStatus get MAX_DIMENSIONS_EXCEEDED;
  external static DistanceMatrixStatus get MAX_ELEMENTS_EXCEEDED;
  external static DistanceMatrixStatus get OK;
  external static DistanceMatrixStatus get OVER_QUERY_LIMIT;
  external static DistanceMatrixStatus get REQUEST_DENIED;
  external static DistanceMatrixStatus get UNKNOWN_ERROR;
}

@GeneratedFrom(_DistanceMatrixElementStatus)
@JS('google.maps.DistanceMatrixElementStatus')
class DistanceMatrixElementStatus {
  external static DistanceMatrixElementStatus get NOT_FOUND;
  external static DistanceMatrixElementStatus get OK;
  external static DistanceMatrixElementStatus get ZERO_RESULTS;
}

@GeneratedFrom(_ElevationService)
@JS('google.maps.ElevationService')
class ElevationService {
  external ElevationService();
}

@GeneratedFrom(_ElevationService)
extension ElevationService$Ext on ElevationService {
  Future<PathElevationResponse> getElevationAlongPath(
    PathElevationRequest request, [
    void Function(List<ElevationResult> p1, ElevationStatus p2) callback,
  ]) =>
      promiseToFuture(callMethod(
          this, 'getElevationAlongPath', [request, allowInterop(callback)]));

  Future<LocationElevationResponse> getElevationForLocations(
    LocationElevationRequest request, [
    void Function(List<ElevationResult> p1, ElevationStatus p2) callback,
  ]) =>
      promiseToFuture(callMethod(
          this, 'getElevationForLocations', [request, allowInterop(callback)]));
}

@GeneratedFrom(_LocationElevationRequest)
@JS()
@anonymous
class LocationElevationRequest {
  external factory LocationElevationRequest();
}

@GeneratedFrom(_LocationElevationRequest)
extension LocationElevationRequest$Ext on LocationElevationRequest {
  List<LatLng> get locations => getProperty(this, 'locations')?.cast<LatLng>();

  set locations(List<LatLng> value) {
    setProperty(this, 'locations', value);
  }
}

@GeneratedFrom(_LocationElevationResponse)
@JS()
@anonymous
class LocationElevationResponse {
  external factory LocationElevationResponse();
}

@GeneratedFrom(_LocationElevationResponse)
extension LocationElevationResponse$Ext on LocationElevationResponse {
  List<ElevationResult> get results =>
      getProperty(this, 'results')?.cast<ElevationResult>();

  set results(List<ElevationResult> value) {
    setProperty(this, 'results', value);
  }
}

@GeneratedFrom(_PathElevationRequest)
@JS()
@anonymous
class PathElevationRequest {
  external factory PathElevationRequest();

  external num get samples;

  external set samples(num value);
}

@GeneratedFrom(_PathElevationRequest)
extension PathElevationRequest$Ext on PathElevationRequest {
  List<LatLng> get path => getProperty(this, 'path')?.cast<LatLng>();

  set path(List<LatLng> value) {
    setProperty(this, 'path', value);
  }
}

@GeneratedFrom(_PathElevationResponse)
@JS()
@anonymous
class PathElevationResponse {
  external factory PathElevationResponse();
}

@GeneratedFrom(_PathElevationResponse)
extension PathElevationResponse$Ext on PathElevationResponse {
  List<ElevationResult> get results =>
      getProperty(this, 'results')?.cast<ElevationResult>();

  set results(List<ElevationResult> value) {
    setProperty(this, 'results', value);
  }
}

@GeneratedFrom(_ElevationResult)
@JS()
@anonymous
class ElevationResult {
  external factory ElevationResult();

  external num get elevation;

  external set elevation(num value);

  external LatLng get location;

  external set location(LatLng value);

  external num get resolution;

  external set resolution(num value);
}

@GeneratedFrom(_ElevationStatus)
@JS('google.maps.ElevationStatus')
class ElevationStatus {
  external static ElevationStatus get INVALID_REQUEST;
  external static ElevationStatus get OK;
  external static ElevationStatus get OVER_QUERY_LIMIT;
  external static ElevationStatus get REQUEST_DENIED;
  external static ElevationStatus get UNKNOWN_ERROR;
}
