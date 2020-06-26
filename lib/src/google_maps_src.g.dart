// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.src;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_Controls)
class Controls extends JsInterface
    with MapMixin<ControlPosition, MVCArray<Node>> {
  Controls() : super.created(JsArray());
  Controls.created(JsObject o) : super.created(o);

  @override
  MVCArray<Node> operator [](covariant ControlPosition key) {
    final value = asJsObject(this)[_toJsControlPosition(key)];
    if (value == null) return null;
    return MVCArray<Node>.created(value as JsObject);
  }

  @override
  void operator []=(ControlPosition key, MVCArray<Node> value) {
    asJsObject(this)[_toJsControlPosition(key)] = asJsObject(value);
  }

  Iterable<ControlPosition> get keys {
    final result = <ControlPosition>[];
    for (final control in ControlPosition.values) {
      if (this[control] != null) result.add(control);
    }
    return result;
  }

  MVCArray<Node> remove(Object key) {
    final result = this[key as ControlPosition];
    this[key as ControlPosition] = null;
    return result;
  }

  void clear() => (asJsObject(this) as JsArray).clear();

  dynamic _toJsControlPosition(ControlPosition controlPosition) => (e) {
        if (e == null) return null;
        final path = context['google']['maps']['ControlPosition'];
        if (e == ControlPosition.BOTTOM_CENTER) return path['BOTTOM_CENTER'];
        if (e == ControlPosition.BOTTOM_LEFT) return path['BOTTOM_LEFT'];
        if (e == ControlPosition.BOTTOM_RIGHT) return path['BOTTOM_RIGHT'];
        if (e == ControlPosition.LEFT_BOTTOM) return path['LEFT_BOTTOM'];
        if (e == ControlPosition.LEFT_CENTER) return path['LEFT_CENTER'];
        if (e == ControlPosition.LEFT_TOP) return path['LEFT_TOP'];
        if (e == ControlPosition.RIGHT_BOTTOM) return path['RIGHT_BOTTOM'];
        if (e == ControlPosition.RIGHT_CENTER) return path['RIGHT_CENTER'];
        if (e == ControlPosition.RIGHT_TOP) return path['RIGHT_TOP'];
        if (e == ControlPosition.TOP_CENTER) return path['TOP_CENTER'];
        if (e == ControlPosition.TOP_LEFT) return path['TOP_LEFT'];
        if (e == ControlPosition.TOP_RIGHT) return path['TOP_RIGHT'];
      }(controlPosition);
}

@GeneratedFrom(_LatLng)
@JsName('google.maps.LatLng')
class LatLng extends JsInterface {
  LatLng(num lat, num lng, [bool noWrap])
      : this.created(
            JsObject(context['google']['maps']['LatLng'], [lat, lng, noWrap]));
  LatLng.created(JsObject o) : super.created(o);

  bool equals(LatLng other) =>
      asJsObject(this).callMethod('equals', [__codec0.encode(other)]);
  num get lat => _lat();
  num _lat() => asJsObject(this).callMethod('lat');
  num get lng => _lng();
  num _lng() => asJsObject(this).callMethod('lng');
  String toString() => asJsObject(this).callMethod('toString');
  String toUrlValue([num precision]) =>
      asJsObject(this).callMethod('toUrlValue', [precision]);
}

@GeneratedFrom(_LatLngBounds)
@JsName('google.maps.LatLngBounds')
class LatLngBounds extends JsInterface {
  LatLngBounds([LatLng sw, LatLng ne])
      : this.created(JsObject(context['google']['maps']['LatLngBounds'],
            [__codec0.encode(sw), __codec0.encode(ne)]));
  LatLngBounds.created(JsObject o) : super.created(o);

  bool contains(LatLng latLng) =>
      asJsObject(this).callMethod('contains', [__codec0.encode(latLng)]);
  bool equals(LatLngBounds other) =>
      asJsObject(this).callMethod('equals', [__codec1.encode(other)]);
  LatLngBounds extend(LatLng point) => __codec1
      .decode(asJsObject(this).callMethod('extend', [__codec0.encode(point)]));
  LatLng get center => _getCenter();
  LatLng _getCenter() =>
      __codec0.decode(asJsObject(this).callMethod('getCenter'));
  LatLng get northEast => _getNorthEast();
  LatLng _getNorthEast() =>
      __codec0.decode(asJsObject(this).callMethod('getNorthEast'));
  LatLng get southWest => _getSouthWest();
  LatLng _getSouthWest() =>
      __codec0.decode(asJsObject(this).callMethod('getSouthWest'));
  bool intersects(LatLngBounds other) =>
      asJsObject(this).callMethod('intersects', [__codec1.encode(other)]);
  bool get isEmpty => _isEmpty();
  bool _isEmpty() => asJsObject(this).callMethod('isEmpty');
  LatLng toSpan() => __codec0.decode(asJsObject(this).callMethod('toSpan'));
  String toString() => asJsObject(this).callMethod('toString');
  String toUrlValue([num precision]) =>
      asJsObject(this).callMethod('toUrlValue', [precision]);
  LatLngBounds union(LatLngBounds other) => __codec1
      .decode(asJsObject(this).callMethod('union', [__codec1.encode(other)]));
}

@GeneratedFrom(_Padding)
@anonymous
class Padding extends JsInterface {
  Padding() : this.created(JsObject(context['Object']));
  Padding.created(JsObject o) : super.created(o);

  set bottom(num _bottom) {
    asJsObject(this)['bottom'] = _bottom;
  }

  num get bottom => asJsObject(this)['bottom'];
  set left(num _left) {
    asJsObject(this)['left'] = _left;
  }

  num get left => asJsObject(this)['left'];
  set right(num _right) {
    asJsObject(this)['right'] = _right;
  }

  num get right => asJsObject(this)['right'];
  set top(num _top) {
    asJsObject(this)['top'] = _top;
  }

  num get top => asJsObject(this)['top'];
}

@GeneratedFrom(_Point)
@JsName('google.maps.Point')
class Point extends JsInterface {
  Point(num x, num y)
      : this.created(JsObject(context['google']['maps']['Point'], [x, y]));
  Point.created(JsObject o) : super.created(o);

  bool equals(Point other) =>
      asJsObject(this).callMethod('equals', [__codec2.encode(other)]);
  String toString() => asJsObject(this).callMethod('toString');

  set x(num _x) {
    asJsObject(this)['x'] = _x;
  }

  num get x => asJsObject(this)['x'];
  set y(num _y) {
    asJsObject(this)['y'] = _y;
  }

  num get y => asJsObject(this)['y'];
}

@GeneratedFrom(_Size)
@JsName('google.maps.Size')
class Size extends JsInterface {
  Size(num width, num height, [String widthUnit, String heightUnit])
      : this.created(JsObject(context['google']['maps']['Size'],
            [width, height, widthUnit, heightUnit]));
  Size.created(JsObject o) : super.created(o);

  bool equals(Size other) =>
      asJsObject(this).callMethod('equals', [__codec3.encode(other)]);
  String toString() => asJsObject(this).callMethod('toString');

  set height(num _height) {
    asJsObject(this)['height'] = _height;
  }

  num get height => asJsObject(this)['height'];
  set width(num _width) {
    asJsObject(this)['width'] = _width;
  }

  num get width => asJsObject(this)['width'];
}

class ControlPosition extends JsEnum {
  static final values = <ControlPosition>[
    BOTTOM_CENTER,
    BOTTOM_LEFT,
    BOTTOM_RIGHT,
    LEFT_BOTTOM,
    LEFT_CENTER,
    LEFT_TOP,
    RIGHT_BOTTOM,
    RIGHT_CENTER,
    RIGHT_TOP,
    TOP_CENTER,
    TOP_LEFT,
    TOP_RIGHT
  ];
  static final BOTTOM_CENTER = ControlPosition._('BOTTOM_CENTER',
      context['google']['maps']['ControlPosition']['BOTTOM_CENTER']);
  static final BOTTOM_LEFT = ControlPosition._('BOTTOM_LEFT',
      context['google']['maps']['ControlPosition']['BOTTOM_LEFT']);
  static final BOTTOM_RIGHT = ControlPosition._('BOTTOM_RIGHT',
      context['google']['maps']['ControlPosition']['BOTTOM_RIGHT']);
  static final LEFT_BOTTOM = ControlPosition._('LEFT_BOTTOM',
      context['google']['maps']['ControlPosition']['LEFT_BOTTOM']);
  static final LEFT_CENTER = ControlPosition._('LEFT_CENTER',
      context['google']['maps']['ControlPosition']['LEFT_CENTER']);
  static final LEFT_TOP = ControlPosition._(
      'LEFT_TOP', context['google']['maps']['ControlPosition']['LEFT_TOP']);
  static final RIGHT_BOTTOM = ControlPosition._('RIGHT_BOTTOM',
      context['google']['maps']['ControlPosition']['RIGHT_BOTTOM']);
  static final RIGHT_CENTER = ControlPosition._('RIGHT_CENTER',
      context['google']['maps']['ControlPosition']['RIGHT_CENTER']);
  static final RIGHT_TOP = ControlPosition._(
      'RIGHT_TOP', context['google']['maps']['ControlPosition']['RIGHT_TOP']);
  static final TOP_CENTER = ControlPosition._(
      'TOP_CENTER', context['google']['maps']['ControlPosition']['TOP_CENTER']);
  static final TOP_LEFT = ControlPosition._(
      'TOP_LEFT', context['google']['maps']['ControlPosition']['TOP_LEFT']);
  static final TOP_RIGHT = ControlPosition._(
      'TOP_RIGHT', context['google']['maps']['ControlPosition']['TOP_RIGHT']);
  final String _name;
  ControlPosition._(this._name, o) : super.created(o);

  @override
  String toString() => 'ControlPosition.$_name';
}

@GeneratedFrom(_FullscreenControlOptions)
@anonymous
class FullscreenControlOptions extends JsInterface {
  FullscreenControlOptions() : this.created(JsObject(context['Object']));
  FullscreenControlOptions.created(JsObject o) : super.created(o);

  set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec4.encode(_position);
  }

  ControlPosition get position => __codec4.decode(asJsObject(this)['position']);
}

@GeneratedFrom(_MapTypeControlOptions)
@anonymous
class MapTypeControlOptions extends JsInterface {
  MapTypeControlOptions() : this.created(JsObject(context['Object']));
  MapTypeControlOptions.created(JsObject o) : super.created(o);

  dynamic get _mapTypeIds => asJsObject(this)['mapTypeIds'];
  List<dynamic /*MapTypeId|String*/ > get mapTypeIds =>
      JsListCodec<dynamic /*MapTypeId|String*/ >(ChainedCodec()
            ..add(BiMapCodec<MapTypeId, dynamic>({
              MapTypeId.HYBRID: context['google']['maps']['MapTypeId']
                  ['HYBRID'],
              MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']
                  ['ROADMAP'],
              MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
                  ['SATELLITE'],
              MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']
                  ['TERRAIN']
            }))
            ..add(IdentityCodec<String>()))
          .decode(_mapTypeIds as JsArray);
  set _mapTypeIds(dynamic mapTypeIds) {
    asJsObject(this)['mapTypeIds'] = mapTypeIds;
  }

  set mapTypeIds(List<dynamic /*MapTypeId|String*/ > mapTypeIds) {
    _mapTypeIds = JsListCodec<dynamic /*MapTypeId|String*/ >(ChainedCodec()
          ..add(BiMapCodec<MapTypeId, dynamic>({
            MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
            MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']
                ['ROADMAP'],
            MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
                ['SATELLITE'],
            MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
          }))
          ..add(IdentityCodec<String>()))
        .encode(mapTypeIds);
  }

  set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec4.encode(_position);
  }

  ControlPosition get position => __codec4.decode(asJsObject(this)['position']);
  set style(MapTypeControlStyle _style) {
    asJsObject(this)['style'] = __codec5.encode(_style);
  }

  MapTypeControlStyle get style => __codec5.decode(asJsObject(this)['style']);
}

class MapTypeControlStyle extends JsEnum {
  static final values = <MapTypeControlStyle>[
    DEFAULT,
    DROPDOWN_MENU,
    HORIZONTAL_BAR
  ];
  static final DEFAULT = MapTypeControlStyle._(
      'DEFAULT', context['google']['maps']['MapTypeControlStyle']['DEFAULT']);
  static final DROPDOWN_MENU = MapTypeControlStyle._('DROPDOWN_MENU',
      context['google']['maps']['MapTypeControlStyle']['DROPDOWN_MENU']);
  static final HORIZONTAL_BAR = MapTypeControlStyle._('HORIZONTAL_BAR',
      context['google']['maps']['MapTypeControlStyle']['HORIZONTAL_BAR']);
  final String _name;
  MapTypeControlStyle._(this._name, o) : super.created(o);

  @override
  String toString() => 'MapTypeControlStyle.$_name';
}

@GeneratedFrom(_OverviewMapControlOptions)
@anonymous
class OverviewMapControlOptions extends JsInterface {
  OverviewMapControlOptions() : this.created(JsObject(context['Object']));
  OverviewMapControlOptions.created(JsObject o) : super.created(o);

  set opened(bool _opened) {
    asJsObject(this)['opened'] = _opened;
  }

  bool get opened => asJsObject(this)['opened'];
}

@GeneratedFrom(_PanControlOptions)
@anonymous
class PanControlOptions extends JsInterface {
  PanControlOptions() : this.created(JsObject(context['Object']));
  PanControlOptions.created(JsObject o) : super.created(o);

  set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec4.encode(_position);
  }

  ControlPosition get position => __codec4.decode(asJsObject(this)['position']);
}

@GeneratedFrom(_RotateControlOptions)
@anonymous
class RotateControlOptions extends JsInterface {
  RotateControlOptions() : this.created(JsObject(context['Object']));
  RotateControlOptions.created(JsObject o) : super.created(o);

  set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec4.encode(_position);
  }

  ControlPosition get position => __codec4.decode(asJsObject(this)['position']);
}

@GeneratedFrom(_ScaleControlOptions)
@anonymous
class ScaleControlOptions extends JsInterface {
  ScaleControlOptions() : this.created(JsObject(context['Object']));
  ScaleControlOptions.created(JsObject o) : super.created(o);

  set style(ScaleControlStyle _style) {
    asJsObject(this)['style'] = __codec6.encode(_style);
  }

  ScaleControlStyle get style => __codec6.decode(asJsObject(this)['style']);
}

class ScaleControlStyle extends JsEnum {
  static final values = <ScaleControlStyle>[DEFAULT];
  static final DEFAULT = ScaleControlStyle._(
      'DEFAULT', context['google']['maps']['ScaleControlStyle']['DEFAULT']);
  final String _name;
  ScaleControlStyle._(this._name, o) : super.created(o);

  @override
  String toString() => 'ScaleControlStyle.$_name';
}

@GeneratedFrom(_StreetViewControlOptions)
@anonymous
class StreetViewControlOptions extends JsInterface {
  StreetViewControlOptions() : this.created(JsObject(context['Object']));
  StreetViewControlOptions.created(JsObject o) : super.created(o);

  set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec4.encode(_position);
  }

  ControlPosition get position => __codec4.decode(asJsObject(this)['position']);
}

@GeneratedFrom(_ZoomControlOptions)
@anonymous
class ZoomControlOptions extends JsInterface {
  ZoomControlOptions() : this.created(JsObject(context['Object']));
  ZoomControlOptions.created(JsObject o) : super.created(o);

  set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec4.encode(_position);
  }

  ControlPosition get position => __codec4.decode(asJsObject(this)['position']);
  set style(ZoomControlStyle _style) {
    asJsObject(this)['style'] = __codec7.encode(_style);
  }

  ZoomControlStyle get style => __codec7.decode(asJsObject(this)['style']);
}

class ZoomControlStyle extends JsEnum {
  static final values = <ZoomControlStyle>[DEFAULT, LARGE, SMALL];
  static final DEFAULT = ZoomControlStyle._(
      'DEFAULT', context['google']['maps']['ZoomControlStyle']['DEFAULT']);
  static final LARGE = ZoomControlStyle._(
      'LARGE', context['google']['maps']['ZoomControlStyle']['LARGE']);
  static final SMALL = ZoomControlStyle._(
      'SMALL', context['google']['maps']['ZoomControlStyle']['SMALL']);
  final String _name;
  ZoomControlStyle._(this._name, o) : super.created(o);

  @override
  String toString() => 'ZoomControlStyle.$_name';
}

@GeneratedFrom(_Data)
@JsName('google.maps.Data')
class Data extends JsInterface {
  Data([DataDataOptions options])
      : this.created(JsObject(
            context['google']['maps']['Data'], [__codec8.encode(options)]));
  Data.created(JsObject o) : super.created(o);

  DataFeature add(dynamic /*DataFeature|DataFeatureOptions*/ feature) =>
      JsInterfaceCodec<DataFeature>((o) => DataFeature.created(o)).decode(_add(
          (ChainedCodec()
                ..add(JsInterfaceCodec<DataFeature>(
                    (o) => DataFeature.created(o),
                    (o) =>
                        o != null &&
                        o.instanceof(context['google']['maps']['Data']
                            ['Feature'] as JsFunction)))
                ..add(JsInterfaceCodec<DataFeatureOptions>((o) => DataFeatureOptions.created(o))))
              .encode(feature)));
  dynamic _add(dynamic /*DataFeature|DataFeatureOptions*/ feature) => __codec9
      .decode(asJsObject(this).callMethod('add', [__codec9.encode(feature)]));
  List<DataFeature> addGeoJson(Object geoJson, [DataGeoJsonOptions options]) =>
      __codec13.decode(asJsObject(this).callMethod('addGeoJson',
          [__codec10.encode(geoJson), __codec11.encode(options)]));
  bool contains(DataFeature feature) =>
      asJsObject(this).callMethod('contains', [__codec12.encode(feature)]);
  void forEach(callback(DataFeature p1)) {
    asJsObject(this).callMethod('forEach', [__codec14.encode(callback)]);
  }

  ControlPosition get controlPosition => _getControlPosition();
  ControlPosition _getControlPosition() =>
      __codec4.decode(asJsObject(this).callMethod('getControlPosition'));
  List<String> get controls => _getControls();
  List<String> _getControls() =>
      __codec15.decode(asJsObject(this).callMethod('getControls'));
  String get drawingMode => _getDrawingMode();
  String _getDrawingMode() => asJsObject(this).callMethod('getDrawingMode');
  DataFeature getFeatureById(dynamic /*num|String*/ id) => __codec12.decode(
      asJsObject(this).callMethod('getFeatureById', [__codec9.encode(id)]));
  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  dynamic /*DataStylingFunction|DataStyleOptions*/ get style => (ChainedCodec()
        ..add(FunctionCodec<DataStylingFunction>((f) {
          if (f == null) return null;
          return (p_dataFeature) => JsInterfaceCodec<DataStyleOptions>(
                  (e) => e == null ? null : DataStyleOptions.created(e))
              .encode(f(JsInterfaceCodec<DataFeature>(
                      (e) => e == null ? null : DataFeature.created(e))
                  .decode(p_dataFeature as JsObject)));
        }, (f) {
          if (f == null) return null;
          return (p_dataFeature) => JsInterfaceCodec<DataStyleOptions>(
                  (e) => e == null ? null : DataStyleOptions.created(e))
              .decode(f is JsFunction
                  ? f.apply([
                      JsInterfaceCodec<DataFeature>(
                              (e) => e == null ? null : DataFeature.created(e))
                          .encode(p_dataFeature)
                    ]) as JsObject
                  : Function.apply(f, [
                      JsInterfaceCodec<DataFeature>(
                              (e) => e == null ? null : DataFeature.created(e))
                          .encode(p_dataFeature)
                    ]) as JsObject);
        }))
        ..add(JsInterfaceCodec<DataStyleOptions>(
            (o) => DataStyleOptions.created(o))))
      .decode(_getStyle());
  dynamic _getStyle() =>
      __codec9.decode(asJsObject(this).callMethod('getStyle'));
  void loadGeoJson(String url,
      [DataGeoJsonOptions options, callback(List<DataFeature> p1)]) {
    asJsObject(this).callMethod('loadGeoJson',
        [url, __codec11.encode(options), __codec17.encode(callback)]);
  }

  void overrideStyle(DataFeature feature, DataStyleOptions style) {
    asJsObject(this).callMethod(
        'overrideStyle', [__codec12.encode(feature), __codec18.encode(style)]);
  }

  void remove(DataFeature feature) {
    asJsObject(this).callMethod('remove', [__codec12.encode(feature)]);
  }

  void revertStyle([DataFeature feature]) {
    asJsObject(this).callMethod('revertStyle', [__codec12.encode(feature)]);
  }

  set controlPosition(ControlPosition controlPosition) =>
      _setControlPosition(controlPosition);
  void _setControlPosition(ControlPosition controlPosition) {
    asJsObject(this)
        .callMethod('setControlPosition', [__codec4.encode(controlPosition)]);
  }

  set controls(List<String> controls) => _setControls(controls);
  void _setControls(List<String> controls) {
    asJsObject(this).callMethod('setControls', [__codec15.encode(controls)]);
  }

  set drawingMode(String drawingMode) => _setDrawingMode(drawingMode);
  void _setDrawingMode(String drawingMode) {
    asJsObject(this).callMethod('setDrawingMode', [drawingMode]);
  }

  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }

  set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
      _setStyle((ChainedCodec()
            ..add(FunctionCodec<DataStylingFunction>((f) {
              if (f == null) return null;
              return (p_dataFeature) => JsInterfaceCodec<DataStyleOptions>(
                      (e) => e == null ? null : DataStyleOptions.created(e))
                  .encode(f(JsInterfaceCodec<DataFeature>(
                          (e) => e == null ? null : DataFeature.created(e))
                      .decode(p_dataFeature as JsObject)));
            }, (f) {
              if (f == null) return null;
              return (p_dataFeature) => JsInterfaceCodec<DataStyleOptions>(
                      (e) => e == null ? null : DataStyleOptions.created(e))
                  .decode(f is JsFunction
                      ? f.apply([
                          JsInterfaceCodec<DataFeature>((e) =>
                                  e == null ? null : DataFeature.created(e))
                              .encode(p_dataFeature)
                        ]) as JsObject
                      : Function.apply(f, [
                          JsInterfaceCodec<DataFeature>((e) =>
                                  e == null ? null : DataFeature.created(e))
                              .encode(p_dataFeature)
                        ]) as JsObject);
            }))
            ..add(JsInterfaceCodec<DataStyleOptions>(
                (o) => DataStyleOptions.created(o))))
          .encode(style));
  void _setStyle(dynamic /*DataStylingFunction|DataStyleOptions*/ style) {
    asJsObject(this).callMethod('setStyle', [__codec9.encode(style)]);
  }

  void toGeoJson(callback(Object p1)) {
    asJsObject(this).callMethod('toGeoJson', [__codec19.encode(callback)]);
  }

  Stream<DataAddFeatureEvent> get onAddfeature => getStream(
      this, 'addfeature', (JsObject o) => DataAddFeatureEvent.created(o));
  Stream<DataMouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMousedown =>
      getStream(this, 'mousedown', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMouseout =>
      getStream(this, 'mouseout', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMouseover =>
      getStream(this, 'mouseover', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMouseup =>
      getStream(this, 'mouseup', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataRemoveFeatureEvent> get onRemovefeature => getStream(
      this, 'removefeature', (JsObject o) => DataRemoveFeatureEvent.created(o));
  Stream<DataRemovePropertyEvent> get onRemoveproperty => getStream(this,
      'removeproperty', (JsObject o) => DataRemovePropertyEvent.created(o));
  Stream<DataMouseEvent> get onRightclick =>
      getStream(this, 'rightclick', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataSetGeometryEvent> get onSetgeometry => getStream(
      this, 'setgeometry', (JsObject o) => DataSetGeometryEvent.created(o));
  Stream<DataSetPropertyEvent> get onSetproperty => getStream(
      this, 'setproperty', (JsObject o) => DataSetPropertyEvent.created(o));
}

@GeneratedFrom(_DataAddFeatureEvent)
@anonymous
class DataAddFeatureEvent extends JsInterface {
  DataAddFeatureEvent() : this.created(JsObject(context['Object']));
  DataAddFeatureEvent.created(JsObject o) : super.created(o);

  set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec12.encode(_feature);
  }

  DataFeature get feature => __codec12.decode(asJsObject(this)['feature']);
}

@GeneratedFrom(_DataDataOptions)
@anonymous
class DataDataOptions extends JsInterface {
  DataDataOptions() : this.created(JsObject(context['Object']));
  DataDataOptions.created(JsObject o) : super.created(o);

  set controlPosition(ControlPosition _controlPosition) {
    asJsObject(this)['controlPosition'] = __codec4.encode(_controlPosition);
  }

  ControlPosition get controlPosition =>
      __codec4.decode(asJsObject(this)['controlPosition']);
  set controls(List<String> _controls) {
    asJsObject(this)['controls'] = __codec15.encode(_controls);
  }

  List<String> get controls => __codec15.decode(asJsObject(this)['controls']);
  set drawingMode(String _drawingMode) {
    asJsObject(this)['drawingMode'] = _drawingMode;
  }

  String get drawingMode => asJsObject(this)['drawingMode'];
  set featureFactory(dynamic _featureFactory) {
    asJsObject(this)['featureFactory'] = __codec9.encode(_featureFactory);
  }

  dynamic get featureFactory =>
      __codec9.decode(asJsObject(this)['featureFactory']);
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec16.encode(_map);
  }

  GMap get map => __codec16.decode(asJsObject(this)['map']);
  dynamic /*DataStylingFunction|DataStyleOptions*/ get style => (ChainedCodec()
        ..add(FunctionCodec<DataStylingFunction>((f) {
          if (f == null) return null;
          return (p_dataFeature) {
            final dataFeature = JsInterfaceCodec<DataFeature>(
                    (e) => e == null ? null : DataFeature.created(e))
                .decode(p_dataFeature as JsObject);
            final result = f(dataFeature);
            return JsInterfaceCodec<DataStyleOptions>(
                    (e) => e == null ? null : DataStyleOptions.created(e))
                .encode(result);
          };
        }, (f) {
          if (f == null) return null;
          return (p_dataFeature) {
            final dataFeature = JsInterfaceCodec<DataFeature>(
                    (e) => e == null ? null : DataFeature.created(e))
                .encode(p_dataFeature);
            final result = f is JsFunction
                ? f.apply([dataFeature])
                : Function.apply(f, [dataFeature]);
            return JsInterfaceCodec<DataStyleOptions>(
                    (e) => e == null ? null : DataStyleOptions.created(e))
                .decode(result as JsObject);
          };
        }))
        ..add(JsInterfaceCodec<DataStyleOptions>(
            (o) => DataStyleOptions.created(o))))
      .decode(_style);
  set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
      _style = (ChainedCodec()
            ..add(FunctionCodec<DataStylingFunction>((f) {
              if (f == null) return null;
              return (p_dataFeature) {
                final result = f(JsInterfaceCodec<DataFeature>(
                        (e) => e == null ? null : DataFeature.created(e))
                    .decode(p_dataFeature as JsObject));
                return JsInterfaceCodec<DataStyleOptions>(
                        (e) => e == null ? null : DataStyleOptions.created(e))
                    .encode(result);
              };
            }, (f) {
              if (f == null) return null;
              return (p_dataFeature) {
                final dataFeature = JsInterfaceCodec<DataFeature>(
                        (e) => e == null ? null : DataFeature.created(e))
                    .encode(p_dataFeature);
                final result = f is JsFunction
                    ? f.apply([dataFeature])
                    : Function.apply(f, [dataFeature]);
                return JsInterfaceCodec<DataStyleOptions>(
                        (e) => e == null ? null : DataStyleOptions.created(e))
                    .decode(result as JsObject);
              };
            }))
            ..add(JsInterfaceCodec<DataStyleOptions>(
                (o) => DataStyleOptions.created(o))))
          .encode(_style);
  set _style(dynamic __style) {
    asJsObject(this)['style'] = __codec9.encode(__style);
  }

  dynamic get _style => __codec9.decode(asJsObject(this)['style']);
}

@GeneratedFrom(_DataFeature)
@JsName('google.maps.Data.Feature')
class DataFeature extends JsInterface {
  DataFeature([DataFeatureOptions options])
      : this.created(JsObject(context['google']['maps']['Data']['Feature'],
            [__codec20.encode(options)]));
  DataFeature.created(JsObject o) : super.created(o);

  void forEachProperty(callback(dynamic p1, String p2)) {
    asJsObject(this)
        .callMethod('forEachProperty', [__codec21.encode(callback)]);
  }

  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ get geometry => (ChainedCodec()
        ..add(JsInterfaceCodec<DataGeometryCollection>(
            (o) => DataGeometryCollection.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']
                    ['GeometryCollection'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPolygon>(
            (o) => DataMultiPolygon.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']['MultiPolygon']
                    as JsFunction)))
        ..add(JsInterfaceCodec<DataPolygon>(
            (o) => DataPolygon.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
        ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction))))
      .decode(_getGeometry());
  dynamic _getGeometry() =>
      __codec9.decode(asJsObject(this).callMethod('getGeometry'));

  dynamic /*num|String*/ get id => _getId();
  dynamic /*num|String*/ _getId() =>
      __codec9.decode(asJsObject(this).callMethod('getId'));
  dynamic getProperty(String name) =>
      __codec9.decode(asJsObject(this).callMethod('getProperty', [name]));
  void removeProperty(String name) {
    asJsObject(this).callMethod('removeProperty', [name]);
  }

  set geometry(
          dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ newGeometry) =>
      _setGeometry((ChainedCodec()
            ..add(JsInterfaceCodec<DataGeometryCollection>(
                (o) => DataGeometryCollection.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(context['google']['maps']['Data']
                        ['GeometryCollection'] as JsFunction)))
            ..add(JsInterfaceCodec<DataMultiPolygon>(
                (o) => DataMultiPolygon.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(context['google']['maps']['Data']
                        ['MultiPolygon'] as JsFunction)))
            ..add(JsInterfaceCodec<DataPolygon>((o) => DataPolygon.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
            ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
            ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
            ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
            ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
            ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction)))
            ..add(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction))))
          .encode(newGeometry));
  void _setGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ newGeometry) {
    asJsObject(this).callMethod('setGeometry', [__codec9.encode(newGeometry)]);
  }

  void setProperty(String name, dynamic newValue) {
    asJsObject(this)
        .callMethod('setProperty', [name, __codec9.encode(newValue)]);
  }

  void toGeoJson(callback(Object p1)) {
    asJsObject(this).callMethod('toGeoJson', [__codec19.encode(callback)]);
  }

  Stream<DataRemovePropertyEvent> get onRemoveproperty => getStream(this,
      'removeproperty', (JsObject o) => DataRemovePropertyEvent.created(o));
  Stream<DataSetGeometryEvent> get onSetgeometry => getStream(
      this, 'setgeometry', (JsObject o) => DataSetGeometryEvent.created(o));
  Stream<DataSetPropertyEvent> get onSetproperty => getStream(
      this, 'setproperty', (JsObject o) => DataSetPropertyEvent.created(o));
}

@GeneratedFrom(_DataFeatureOptions)
@anonymous
class DataFeatureOptions extends JsInterface {
  DataFeatureOptions() : this.created(JsObject(context['Object']));
  DataFeatureOptions.created(JsObject o) : super.created(o);

  set _geometry(dynamic __geometry) {
    asJsObject(this)['geometry'] = __codec9.encode(__geometry);
  }

  dynamic get _geometry => __codec9.decode(asJsObject(this)['geometry']);
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ get geometry => (ChainedCodec()
        ..add(JsInterfaceCodec<DataGeometryCollection>(
            (o) => DataGeometryCollection.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']
                    ['GeometryCollection'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPolygon>(
            (o) => DataMultiPolygon.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']['MultiPolygon']
                    as JsFunction)))
        ..add(JsInterfaceCodec<DataPolygon>(
            (o) => DataPolygon.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
        ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction)))
        ..add(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction))))
      .decode(_geometry);
  set geometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ geometry) {
    _geometry = (ChainedCodec()
          ..add(JsInterfaceCodec<DataGeometryCollection>(
              (o) => DataGeometryCollection.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(context['google']['maps']['Data']
                      ['GeometryCollection'] as JsFunction)))
          ..add(JsInterfaceCodec<DataMultiPolygon>(
              (o) => DataMultiPolygon.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(context['google']['maps']['Data']['MultiPolygon']
                      as JsFunction)))
          ..add(JsInterfaceCodec<DataPolygon>(
              (o) => DataPolygon.created(o),
              (o) =>
                  o != null && o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
          ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
          ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
          ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
          ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
          ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction)))
          ..add(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction))))
        .encode(geometry);
  }

  set id(dynamic _id) {
    asJsObject(this)['id'] = __codec9.encode(_id);
  }

  dynamic get id => __codec9.decode(asJsObject(this)['id']);
  set properties(Object _properties) {
    asJsObject(this)['properties'] = __codec10.encode(_properties);
  }

  Object get properties => __codec10.decode(asJsObject(this)['properties']);
}

@GeneratedFrom(_DataGeoJsonOptions)
@anonymous
class DataGeoJsonOptions extends JsInterface {
  DataGeoJsonOptions() : this.created(JsObject(context['Object']));
  DataGeoJsonOptions.created(JsObject o) : super.created(o);

  set idPropertyName(String _idPropertyName) {
    asJsObject(this)['idPropertyName'] = _idPropertyName;
  }

  String get idPropertyName => asJsObject(this)['idPropertyName'];
}

@GeneratedFrom(_DataGeometry)
@JsName('google.maps.Data.Geometry')
class DataGeometry extends JsInterface {
  DataGeometry.created(JsObject o) : super.created(o);
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

@GeneratedFrom(_DataGeometryCollection)
@JsName('google.maps.Data.GeometryCollection')
class DataGeometryCollection extends DataGeometry {
  DataGeometryCollection(List<dynamic /*DataGeometry|LatLng*/ > elements)
      : this.created(JsObject(
            context['google']['maps']['Data']['GeometryCollection']
                as JsFunction,
            [
              JsListCodec<dynamic /*DataGeometry|LatLng*/ >(ChainedCodec()
                    ..add(JsInterfaceCodec<DataGeometry>(
                        (o) => DataGeometry.created(o),
                        (o) =>
                            o != null &&
                            o.instanceof(context['google']['maps']['Data']
                                ['Geometry'] as JsFunction)))
                    ..add(JsInterfaceCodec<LatLng>(
                        (o) => LatLng.created(o),
                        (o) =>
                            o != null &&
                            o.instanceof(context['google']['maps']['LatLng']
                                as JsFunction))))
                  .encode(elements)
            ]));
  DataGeometryCollection.created(JsObject o) : super.created(o);

  List<dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ > get array => JsListCodec<
          dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ >(ChainedCodec()
        ..add(JsInterfaceCodec<DataGeometryCollection>(
            (o) => DataGeometryCollection.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']
                    ['GeometryCollection'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPolygon>(
            (o) => DataMultiPolygon.created(o),
            (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPolygon'] as JsFunction)))
        ..add(JsInterfaceCodec<DataPolygon>((o) => DataPolygon.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
        ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction))))
      .decode(_getArray() as JsArray);
  dynamic _getArray() =>
      __codec9.decode(asJsObject(this).callMethod('getArray'));

  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ getAt(num n) => (ChainedCodec()
        ..add(JsInterfaceCodec<DataGeometryCollection>(
            (o) => DataGeometryCollection.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']
                    ['GeometryCollection'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPolygon>(
            (o) => DataMultiPolygon.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']['MultiPolygon']
                    as JsFunction)))
        ..add(JsInterfaceCodec<DataPolygon>(
            (o) => DataPolygon.created(o),
            (o) =>
                o != null && o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
        ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction))))
      .decode(_getAt(n));
  dynamic _getAt(num n) =>
      __codec9.decode(asJsObject(this).callMethod('getAt', [n]));

  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

@GeneratedFrom(_DataLineString)
@JsName('google.maps.Data.LineString')
class DataLineString extends DataGeometry {
  DataLineString(List<LatLng> elements)
      : this.created(JsObject(context['google']['maps']['Data']['LineString'],
            [__codec22.encode(elements)]));
  DataLineString.created(JsObject o) : super.created(o);

  List<LatLng> get array => _getArray();
  List<LatLng> _getArray() =>
      __codec22.decode(asJsObject(this).callMethod('getArray'));
  LatLng getAt(num n) =>
      __codec0.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

@GeneratedFrom(_DataLinearRing)
@JsName('google.maps.Data.LinearRing')
class DataLinearRing extends DataGeometry {
  DataLinearRing(List<LatLng> elements)
      : this.created(JsObject(context['google']['maps']['Data']['LinearRing'],
            [__codec22.encode(elements)]));
  DataLinearRing.created(JsObject o) : super.created(o);

  List<LatLng> get array => _getArray();
  List<LatLng> _getArray() =>
      __codec22.decode(asJsObject(this).callMethod('getArray'));
  LatLng getAt(num n) =>
      __codec0.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

@GeneratedFrom(_DataMouseEvent)
@anonymous
class DataMouseEvent extends MouseEvent {
  DataMouseEvent() : this.created(JsObject(context['Object']));
  DataMouseEvent.created(JsObject o) : super.created(o);

  set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec12.encode(_feature);
  }

  DataFeature get feature => __codec12.decode(asJsObject(this)['feature']);
}

@GeneratedFrom(_DataMultiLineString)
@JsName('google.maps.Data.MultiLineString')
class DataMultiLineString extends DataGeometry {
  DataMultiLineString(List<dynamic /*DataLineString|List<LatLng>*/ > elements)
      : this.created(JsObject(
            context['google']['maps']['Data']['MultiLineString'] as JsFunction,
            [
              JsListCodec<dynamic /*DataLineString|List<LatLng>*/ >(
                      ChainedCodec()
                        ..add(JsInterfaceCodec<DataLineString>(
                            (o) => DataLineString.created(o),
                            (o) =>
                                o != null &&
                                o.instanceof(context['google']['maps']['Data']
                                    ['LineString'] as JsFunction)))
                        ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>(
                            (o) => LatLng.created(o),
                            (o) =>
                                o != null &&
                                o.instanceof(context['google']['maps']['LatLng']
                                    as JsFunction)))))
                  .encode(elements)
            ]));
  DataMultiLineString.created(JsObject o) : super.created(o);

  List<DataLineString> get array => _getArray();
  List<DataLineString> _getArray() =>
      __codec24.decode(asJsObject(this).callMethod('getArray'));
  DataLineString getAt(num n) =>
      __codec23.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

@GeneratedFrom(_DataMultiPoint)
@JsName('google.maps.Data.MultiPoint')
class DataMultiPoint extends DataGeometry {
  DataMultiPoint(List<LatLng> elements)
      : this.created(JsObject(context['google']['maps']['Data']['MultiPoint'],
            [__codec22.encode(elements)]));
  DataMultiPoint.created(JsObject o) : super.created(o);

  List<LatLng> get array => _getArray();
  List<LatLng> _getArray() =>
      __codec22.decode(asJsObject(this).callMethod('getArray'));
  LatLng getAt(num n) =>
      __codec0.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

@GeneratedFrom(_DataMultiPolygon)
@JsName('google.maps.Data.MultiPolygon')
class DataMultiPolygon extends DataGeometry {
  DataMultiPolygon(
      List<dynamic /*DataPolygon|List<dynamic/*DataLinearRing|List<LatLng>*/>*/ >
          elements)
      : this.created(JsObject(
            context['google']['maps']['Data']['MultiPolygon'] as JsFunction, [
          JsListCodec<dynamic /*DataPolygon|List<dynamic/*DataLinearRing|List<LatLng>*/>*/ >(
                  ChainedCodec()
                    ..add(JsInterfaceCodec<DataPolygon>(
                        (o) => DataPolygon.created(o),
                        (o) =>
                            o != null &&
                            o.instanceof(context['google']['maps']['Data']
                                ['Polygon'] as JsFunction)))
                    ..add(JsListCodec<dynamic /*DataLinearRing|List<LatLng>*/ >(
                        ChainedCodec()
                          ..add(JsInterfaceCodec<DataLinearRing>(
                              (o) => DataLinearRing.created(o),
                              (o) =>
                                  o != null &&
                                  o.instanceof(context['google']['maps']['Data']
                                      ['LinearRing'] as JsFunction)))
                          ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))))
              .encode(elements)
        ]));
  DataMultiPolygon.created(JsObject o) : super.created(o);

  List<DataPolygon> get array => _getArray();
  List<DataPolygon> _getArray() =>
      __codec26.decode(asJsObject(this).callMethod('getArray'));
  DataPolygon getAt(num n) =>
      __codec25.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

@GeneratedFrom(_DataPoint)
@JsName('google.maps.Data.Point')
class DataPoint extends DataGeometry {
  DataPoint(LatLng latLng)
      : this.created(JsObject(context['google']['maps']['Data']['Point'],
            [__codec0.encode(latLng)]));
  DataPoint.created(JsObject o) : super.created(o);

  LatLng get() => __codec0.decode(asJsObject(this).callMethod('get'));
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

@GeneratedFrom(_DataPolygon)
@JsName('google.maps.Data.Polygon')
class DataPolygon extends DataGeometry {
  DataPolygon(List<dynamic /*DataLinearRing|List<LatLng>*/ > elements)
      : this.created(JsObject(
            context['google']['maps']['Data']['Polygon'] as JsFunction, [
          JsListCodec<dynamic /*DataLinearRing|List<LatLng>*/ >(ChainedCodec()
                ..add(JsInterfaceCodec<DataLinearRing>(
                    (o) => DataLinearRing.created(o),
                    (o) =>
                        o != null &&
                        o.instanceof(context['google']['maps']['Data']
                            ['LinearRing'] as JsFunction)))
                ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>(
                    (o) => LatLng.created(o),
                    (o) =>
                        o != null &&
                        o.instanceof(context['google']['maps']['LatLng']
                            as JsFunction)))))
              .encode(elements)
        ]));
  DataPolygon.created(JsObject o) : super.created(o);

  List<DataLinearRing> get array => _getArray();
  List<DataLinearRing> _getArray() =>
      __codec28.decode(asJsObject(this).callMethod('getArray'));
  DataLinearRing getAt(num n) =>
      __codec27.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

@GeneratedFrom(_DataRemoveFeatureEvent)
@anonymous
class DataRemoveFeatureEvent extends JsInterface {
  DataRemoveFeatureEvent() : this.created(JsObject(context['Object']));
  DataRemoveFeatureEvent.created(JsObject o) : super.created(o);

  set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec12.encode(_feature);
  }

  DataFeature get feature => __codec12.decode(asJsObject(this)['feature']);
}

@GeneratedFrom(_DataRemovePropertyEvent)
@anonymous
class DataRemovePropertyEvent extends JsInterface {
  DataRemovePropertyEvent() : this.created(JsObject(context['Object']));
  DataRemovePropertyEvent.created(JsObject o) : super.created(o);

  set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec12.encode(_feature);
  }

  DataFeature get feature => __codec12.decode(asJsObject(this)['feature']);
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set oldValue(dynamic _oldValue) {
    asJsObject(this)['oldValue'] = __codec9.encode(_oldValue);
  }

  dynamic get oldValue => __codec9.decode(asJsObject(this)['oldValue']);
}

@GeneratedFrom(_DataSetGeometryEvent)
@anonymous
class DataSetGeometryEvent extends JsInterface {
  DataSetGeometryEvent() : this.created(JsObject(context['Object']));
  DataSetGeometryEvent.created(JsObject o) : super.created(o);

  set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec12.encode(_feature);
  }

  DataFeature get feature => __codec12.decode(asJsObject(this)['feature']);
  set _newGeometry(dynamic __newGeometry) {
    asJsObject(this)['newGeometry'] = __codec9.encode(__newGeometry);
  }

  dynamic get _newGeometry => __codec9.decode(asJsObject(this)['newGeometry']);
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ get newGeometry => (ChainedCodec()
        ..add(JsInterfaceCodec<DataGeometryCollection>(
            (o) => DataGeometryCollection.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']
                    ['GeometryCollection'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPolygon>(
            (o) => DataMultiPolygon.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']['MultiPolygon']
                    as JsFunction)))
        ..add(JsInterfaceCodec<DataPolygon>(
            (o) => DataPolygon.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
        ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction))))
      .decode(_newGeometry);
  set newGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ newGeometry) {
    _newGeometry = (ChainedCodec()
          ..add(JsInterfaceCodec<DataGeometryCollection>(
              (o) => DataGeometryCollection.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(context['google']['maps']['Data']
                      ['GeometryCollection'] as JsFunction)))
          ..add(JsInterfaceCodec<DataMultiPolygon>(
              (o) => DataMultiPolygon.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(context['google']['maps']['Data']['MultiPolygon']
                      as JsFunction)))
          ..add(JsInterfaceCodec<DataPolygon>(
              (o) => DataPolygon.created(o),
              (o) =>
                  o != null && o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
          ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
          ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
          ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
          ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
          ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction))))
        .encode(newGeometry);
  }

  set _oldGeometry(dynamic __oldGeometry) {
    asJsObject(this)['oldGeometry'] = __codec9.encode(__oldGeometry);
  }

  dynamic get _oldGeometry => __codec9.decode(asJsObject(this)['oldGeometry']);
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ get oldGeometry => (ChainedCodec()
        ..add(JsInterfaceCodec<DataGeometryCollection>(
            (o) => DataGeometryCollection.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']
                    ['GeometryCollection'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPolygon>(
            (o) => DataMultiPolygon.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']['MultiPolygon']
                    as JsFunction)))
        ..add(JsInterfaceCodec<DataPolygon>(
            (o) => DataPolygon.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
        ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction))))
      .decode(_oldGeometry);
  set oldGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ oldGeometry) {
    _oldGeometry = (ChainedCodec()
          ..add(JsInterfaceCodec<DataGeometryCollection>(
              (o) => DataGeometryCollection.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(context['google']['maps']['Data']
                      ['GeometryCollection'] as JsFunction)))
          ..add(JsInterfaceCodec<DataMultiPolygon>(
              (o) => DataMultiPolygon.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(context['google']['maps']['Data']['MultiPolygon']
                      as JsFunction)))
          ..add(JsInterfaceCodec<DataPolygon>(
              (o) => DataPolygon.created(o),
              (o) =>
                  o != null && o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
          ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
          ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
          ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
          ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
          ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction))))
        .encode(oldGeometry);
  }
}

@GeneratedFrom(_DataSetPropertyEvent)
@anonymous
class DataSetPropertyEvent extends JsInterface {
  DataSetPropertyEvent() : this.created(JsObject(context['Object']));
  DataSetPropertyEvent.created(JsObject o) : super.created(o);

  set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec12.encode(_feature);
  }

  DataFeature get feature => __codec12.decode(asJsObject(this)['feature']);
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set newValue(dynamic _newValue) {
    asJsObject(this)['newValue'] = __codec9.encode(_newValue);
  }

  dynamic get newValue => __codec9.decode(asJsObject(this)['newValue']);
  set oldValue(dynamic _oldValue) {
    asJsObject(this)['oldValue'] = __codec9.encode(_oldValue);
  }

  dynamic get oldValue => __codec9.decode(asJsObject(this)['oldValue']);
}

@GeneratedFrom(_DataStyleOptions)
@anonymous
class DataStyleOptions extends JsInterface {
  DataStyleOptions() : this.created(JsObject(context['Object']));
  DataStyleOptions.created(JsObject o) : super.created(o);

  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set cursor(String _cursor) {
    asJsObject(this)['cursor'] = _cursor;
  }

  String get cursor => asJsObject(this)['cursor'];
  set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }

  bool get draggable => asJsObject(this)['draggable'];
  set editable(bool _editable) {
    asJsObject(this)['editable'] = _editable;
  }

  bool get editable => asJsObject(this)['editable'];
  set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }

  String get fillColor => asJsObject(this)['fillColor'];
  set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }

  num get fillOpacity => asJsObject(this)['fillOpacity'];
  set _icon(dynamic __icon) {
    asJsObject(this)['icon'] = __codec9.encode(__icon);
  }

  dynamic get _icon => __codec9.decode(asJsObject(this)['icon']);
  dynamic /*String|Icon|GSymbol*/ get icon => (ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<Icon>((o) => Icon.created(o)))
        ..add(JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o))))
      .decode(_icon);
  set icon(dynamic /*String|Icon|GSymbol*/ icon) {
    _icon = (ChainedCodec()
          ..add(IdentityCodec<String>())
          ..add(JsInterfaceCodec<Icon>((o) => Icon.created(o)))
          ..add(JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o))))
        .encode(icon);
  }

  set shape(MarkerShape _shape) {
    asJsObject(this)['shape'] = __codec29.encode(_shape);
  }

  MarkerShape get shape => __codec29.decode(asJsObject(this)['shape']);
  set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }

  String get strokeColor => asJsObject(this)['strokeColor'];
  set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }

  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }

  num get strokeWeight => asJsObject(this)['strokeWeight'];
  set title(String _title) {
    asJsObject(this)['title'] = _title;
  }

  String get title => asJsObject(this)['title'];
  set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }

  bool get visible => asJsObject(this)['visible'];
  set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }

  num get zIndex => asJsObject(this)['zIndex'];
}

@GeneratedFrom(_Event)
class Event extends JsInterface {
  Event.created(JsObject o) : super.created(o);
  MapsEventListener addDomListener(
          Object instance, String eventName, handler(dynamic p1),
          [bool capture]) =>
      __codec31.decode(asJsObject(this).callMethod('addDomListener', [
        __codec10.encode(instance),
        eventName,
        __codec30.encode(handler),
        capture
      ]));
  MapsEventListener addDomListenerOnce(
          Object instance, String eventName, handler(dynamic p1),
          [bool capture]) =>
      __codec31.decode(asJsObject(this).callMethod('addDomListenerOnce', [
        __codec10.encode(instance),
        eventName,
        __codec30.encode(handler),
        capture
      ]));
  MapsEventListener addListener(
    Object instance,
    String eventName,
    handler([dynamic p1, dynamic p2, dynamic p3, dynamic p4, dynamic p5]),
  ) =>
      __codec31.decode(asJsObject(this).callMethod('addListener',
          [__codec10.encode(instance), eventName, __codec32.encode(handler)]));
  MapsEventListener addListenerOnce(
    Object instance,
    String eventName,
    handler([dynamic p1, dynamic p2, dynamic p3, dynamic p4, dynamic p5]),
  ) =>
      __codec31.decode(asJsObject(this).callMethod('addListenerOnce',
          [__codec10.encode(instance), eventName, __codec32.encode(handler)]));
  void clearInstanceListeners(Object instance) {
    asJsObject(this)
        .callMethod('clearInstanceListeners', [__codec10.encode(instance)]);
  }

  void clearListeners(Object instance, String eventName) {
    asJsObject(this)
        .callMethod('clearListeners', [__codec10.encode(instance), eventName]);
  }

  void removeListener(MapsEventListener listener) {
    asJsObject(this).callMethod('removeListener', [__codec31.encode(listener)]);
  }

  void trigger(Object instance, String eventName, dynamic var_args) {
    asJsObject(this).callMethod('trigger',
        [__codec10.encode(instance), eventName, __codec9.encode(var_args)]);
  }
}

@GeneratedFrom(_MapsEventListener)
@anonymous
class MapsEventListener extends JsInterface {
  MapsEventListener() : this.created(JsObject(context['Object']));
  MapsEventListener.created(JsObject o) : super.created(o);
}

@GeneratedFrom(_MouseEvent)
@anonymous
class MouseEvent extends JsInterface {
  MouseEvent() : this.created(JsObject(context['Object']));
  MouseEvent.created(JsObject o) : super.created(o);

  void stop() {
    asJsObject(this).callMethod('stop');
  }

  set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec0.encode(_latLng);
  }

  LatLng get latLng => __codec0.decode(asJsObject(this)['latLng']);
}

@GeneratedFrom(_BicyclingLayer)
@JsName('google.maps.BicyclingLayer')
class BicyclingLayer extends MVCObject {
  BicyclingLayer()
      : this.created(JsObject(context['google']['maps']['BicyclingLayer']));
  BicyclingLayer.created(JsObject o) : super.created(o);

  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }
}

@GeneratedFrom(_FusionTablesCell)
@anonymous
class FusionTablesCell extends JsInterface {
  FusionTablesCell() : this.created(JsObject(context['Object']));
  FusionTablesCell.created(JsObject o) : super.created(o);

  set columnName(String _columnName) {
    asJsObject(this)['columnName'] = _columnName;
  }

  String get columnName => asJsObject(this)['columnName'];
  set value(String _value) {
    asJsObject(this)['value'] = _value;
  }

  String get value => asJsObject(this)['value'];
}

@GeneratedFrom(_FusionTablesHeatmap)
@anonymous
class FusionTablesHeatmap extends JsInterface {
  FusionTablesHeatmap() : this.created(JsObject(context['Object']));
  FusionTablesHeatmap.created(JsObject o) : super.created(o);

  set enabled(bool _enabled) {
    asJsObject(this)['enabled'] = _enabled;
  }

  bool get enabled => asJsObject(this)['enabled'];
}

@GeneratedFrom(_FusionTablesLayer)
@JsName('google.maps.FusionTablesLayer')
class FusionTablesLayer extends MVCObject {
  FusionTablesLayer(FusionTablesLayerOptions options)
      : this.created(JsObject(context['google']['maps']['FusionTablesLayer'],
            [__codec33.encode(options)]));
  FusionTablesLayer.created(JsObject o) : super.created(o);

  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }

  set options(FusionTablesLayerOptions options) => _setOptions(options);
  void _setOptions(FusionTablesLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec33.encode(options)]);
  }

  Stream<FusionTablesMouseEvent> get onClick => getStream(
      this, 'click', (JsObject o) => FusionTablesMouseEvent.created(o));
}

@GeneratedFrom(_FusionTablesLayerOptions)
@anonymous
class FusionTablesLayerOptions extends JsInterface {
  FusionTablesLayerOptions() : this.created(JsObject(context['Object']));
  FusionTablesLayerOptions.created(JsObject o) : super.created(o);

  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set heatmap(FusionTablesHeatmap _heatmap) {
    asJsObject(this)['heatmap'] = __codec34.encode(_heatmap);
  }

  FusionTablesHeatmap get heatmap =>
      __codec34.decode(asJsObject(this)['heatmap']);
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec16.encode(_map);
  }

  GMap get map => __codec16.decode(asJsObject(this)['map']);
  set query(FusionTablesQuery _query) {
    asJsObject(this)['query'] = __codec35.encode(_query);
  }

  FusionTablesQuery get query => __codec35.decode(asJsObject(this)['query']);
  set styles(List<FusionTablesStyle> _styles) {
    asJsObject(this)['styles'] = __codec37.encode(_styles);
  }

  List<FusionTablesStyle> get styles =>
      __codec37.decode(asJsObject(this)['styles']);
  set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }

  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
}

@GeneratedFrom(_FusionTablesMarkerOptions)
@anonymous
class FusionTablesMarkerOptions extends JsInterface {
  FusionTablesMarkerOptions() : this.created(JsObject(context['Object']));
  FusionTablesMarkerOptions.created(JsObject o) : super.created(o);

  set iconName(String _iconName) {
    asJsObject(this)['iconName'] = _iconName;
  }

  String get iconName => asJsObject(this)['iconName'];
}

@GeneratedFrom(_FusionTablesMouseEvent)
@anonymous
class FusionTablesMouseEvent extends JsInterface {
  FusionTablesMouseEvent() : this.created(JsObject(context['Object']));
  FusionTablesMouseEvent.created(JsObject o) : super.created(o);

  set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }

  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec0.encode(_latLng);
  }

  LatLng get latLng => __codec0.decode(asJsObject(this)['latLng']);
  set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec3.encode(_pixelOffset);
  }

  Size get pixelOffset => __codec3.decode(asJsObject(this)['pixelOffset']);
  set row(Map<String, FusionTablesCell> _row) {
    asJsObject(this)['row'] = __codec39.encode(_row);
  }

  Map<String, FusionTablesCell> get row =>
      __codec39.decode(asJsObject(this)['row']);
}

@GeneratedFrom(_FusionTablesPolygonOptions)
@anonymous
class FusionTablesPolygonOptions extends JsInterface {
  FusionTablesPolygonOptions() : this.created(JsObject(context['Object']));
  FusionTablesPolygonOptions.created(JsObject o) : super.created(o);

  set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }

  String get fillColor => asJsObject(this)['fillColor'];
  set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }

  num get fillOpacity => asJsObject(this)['fillOpacity'];
  set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }

  String get strokeColor => asJsObject(this)['strokeColor'];
  set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }

  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }

  num get strokeWeight => asJsObject(this)['strokeWeight'];
}

@GeneratedFrom(_FusionTablesPolylineOptions)
@anonymous
class FusionTablesPolylineOptions extends JsInterface {
  FusionTablesPolylineOptions() : this.created(JsObject(context['Object']));
  FusionTablesPolylineOptions.created(JsObject o) : super.created(o);

  set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }

  String get strokeColor => asJsObject(this)['strokeColor'];
  set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }

  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }

  num get strokeWeight => asJsObject(this)['strokeWeight'];
}

@GeneratedFrom(_FusionTablesQuery)
@anonymous
class FusionTablesQuery extends JsInterface {
  FusionTablesQuery() : this.created(JsObject(context['Object']));
  FusionTablesQuery.created(JsObject o) : super.created(o);

  set from(String _from) {
    asJsObject(this)['from'] = _from;
  }

  String get from => asJsObject(this)['from'];
  set limit(num _limit) {
    asJsObject(this)['limit'] = _limit;
  }

  num get limit => asJsObject(this)['limit'];
  set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }

  num get offset => asJsObject(this)['offset'];
  set orderBy(String _orderBy) {
    asJsObject(this)['orderBy'] = _orderBy;
  }

  String get orderBy => asJsObject(this)['orderBy'];
  set select(String _select) {
    asJsObject(this)['select'] = _select;
  }

  String get select => asJsObject(this)['select'];
  set where(String _where) {
    asJsObject(this)['where'] = _where;
  }

  String get where => asJsObject(this)['where'];
}

@GeneratedFrom(_FusionTablesStyle)
@anonymous
class FusionTablesStyle extends JsInterface {
  FusionTablesStyle() : this.created(JsObject(context['Object']));
  FusionTablesStyle.created(JsObject o) : super.created(o);

  set markerOptions(FusionTablesMarkerOptions _markerOptions) {
    asJsObject(this)['markerOptions'] = __codec40.encode(_markerOptions);
  }

  FusionTablesMarkerOptions get markerOptions =>
      __codec40.decode(asJsObject(this)['markerOptions']);
  set polygonOptions(FusionTablesPolygonOptions _polygonOptions) {
    asJsObject(this)['polygonOptions'] = __codec41.encode(_polygonOptions);
  }

  FusionTablesPolygonOptions get polygonOptions =>
      __codec41.decode(asJsObject(this)['polygonOptions']);
  set polylineOptions(FusionTablesPolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] = __codec42.encode(_polylineOptions);
  }

  FusionTablesPolylineOptions get polylineOptions =>
      __codec42.decode(asJsObject(this)['polylineOptions']);
  set where(String _where) {
    asJsObject(this)['where'] = _where;
  }

  String get where => asJsObject(this)['where'];
}

@GeneratedFrom(_KmlAuthor)
@anonymous
class KmlAuthor extends JsInterface {
  KmlAuthor() : this.created(JsObject(context['Object']));
  KmlAuthor.created(JsObject o) : super.created(o);

  set email(String _email) {
    asJsObject(this)['email'] = _email;
  }

  String get email => asJsObject(this)['email'];
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set uri(String _uri) {
    asJsObject(this)['uri'] = _uri;
  }

  String get uri => asJsObject(this)['uri'];
}

@GeneratedFrom(_KmlFeatureData)
@anonymous
class KmlFeatureData extends JsInterface {
  KmlFeatureData() : this.created(JsObject(context['Object']));
  KmlFeatureData.created(JsObject o) : super.created(o);

  set author(KmlAuthor _author) {
    asJsObject(this)['author'] = __codec43.encode(_author);
  }

  KmlAuthor get author => __codec43.decode(asJsObject(this)['author']);
  set description(String _description) {
    asJsObject(this)['description'] = _description;
  }

  String get description => asJsObject(this)['description'];
  set id(String _id) {
    asJsObject(this)['id'] = _id;
  }

  String get id => asJsObject(this)['id'];
  set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }

  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set snippet(String _snippet) {
    asJsObject(this)['snippet'] = _snippet;
  }

  String get snippet => asJsObject(this)['snippet'];
}

@GeneratedFrom(_KmlLayer)
@JsName('google.maps.KmlLayer')
class KmlLayer extends MVCObject {
  KmlLayer([KmlLayerOptions opts])
      : this.created(JsObject(
            context['google']['maps']['KmlLayer'], [__codec44.encode(opts)]));
  KmlLayer.created(JsObject o) : super.created(o);

  LatLngBounds get defaultViewport => _getDefaultViewport();
  LatLngBounds _getDefaultViewport() =>
      __codec1.decode(asJsObject(this).callMethod('getDefaultViewport'));
  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  KmlLayerMetadata get metadata => _getMetadata();
  KmlLayerMetadata _getMetadata() =>
      __codec45.decode(asJsObject(this).callMethod('getMetadata'));
  KmlLayerStatus get status => _getStatus();
  KmlLayerStatus _getStatus() =>
      __codec46.decode(asJsObject(this).callMethod('getStatus'));
  String get url => _getUrl();
  String _getUrl() => asJsObject(this).callMethod('getUrl');
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }

  set url(String url) => _setUrl(url);
  void _setUrl(String url) {
    asJsObject(this).callMethod('setUrl', [url]);
  }

  set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex) {
    asJsObject(this).callMethod('setZIndex', [zIndex]);
  }

  Stream<KmlMouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => KmlMouseEvent.created(o));
  Stream get onDefaultviewportChanged =>
      getStream(this, 'defaultviewport_changed');
  Stream get onStatusChanged => getStream(this, 'status_changed');
}

@GeneratedFrom(_KmlLayerMetadata)
@anonymous
class KmlLayerMetadata extends JsInterface {
  KmlLayerMetadata() : this.created(JsObject(context['Object']));
  KmlLayerMetadata.created(JsObject o) : super.created(o);

  set author(KmlAuthor _author) {
    asJsObject(this)['author'] = __codec43.encode(_author);
  }

  KmlAuthor get author => __codec43.decode(asJsObject(this)['author']);
  set description(String _description) {
    asJsObject(this)['description'] = _description;
  }

  String get description => asJsObject(this)['description'];
  set hasScreenOverlays(bool _hasScreenOverlays) {
    asJsObject(this)['hasScreenOverlays'] = _hasScreenOverlays;
  }

  bool get hasScreenOverlays => asJsObject(this)['hasScreenOverlays'];
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set snippet(String _snippet) {
    asJsObject(this)['snippet'] = _snippet;
  }

  String get snippet => asJsObject(this)['snippet'];
}

@GeneratedFrom(_KmlLayerOptions)
@anonymous
class KmlLayerOptions extends JsInterface {
  KmlLayerOptions() : this.created(JsObject(context['Object']));
  KmlLayerOptions.created(JsObject o) : super.created(o);

  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec16.encode(_map);
  }

  GMap get map => __codec16.decode(asJsObject(this)['map']);
  set preserveViewport(bool _preserveViewport) {
    asJsObject(this)['preserveViewport'] = _preserveViewport;
  }

  bool get preserveViewport => asJsObject(this)['preserveViewport'];
  set screenOverlays(bool _screenOverlays) {
    asJsObject(this)['screenOverlays'] = _screenOverlays;
  }

  bool get screenOverlays => asJsObject(this)['screenOverlays'];
  set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }

  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  set url(String _url) {
    asJsObject(this)['url'] = _url;
  }

  String get url => asJsObject(this)['url'];
  set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }

  num get zIndex => asJsObject(this)['zIndex'];
}

class KmlLayerStatus extends JsEnum {
  static final values = <KmlLayerStatus>[
    DOCUMENT_NOT_FOUND,
    DOCUMENT_TOO_LARGE,
    FETCH_ERROR,
    INVALID_DOCUMENT,
    INVALID_REQUEST,
    LIMITS_EXCEEDED,
    OK,
    TIMED_OUT,
    UNKNOWN
  ];
  static final DOCUMENT_NOT_FOUND = KmlLayerStatus._('DOCUMENT_NOT_FOUND',
      context['google']['maps']['KmlLayerStatus']['DOCUMENT_NOT_FOUND']);
  static final DOCUMENT_TOO_LARGE = KmlLayerStatus._('DOCUMENT_TOO_LARGE',
      context['google']['maps']['KmlLayerStatus']['DOCUMENT_TOO_LARGE']);
  static final FETCH_ERROR = KmlLayerStatus._('FETCH_ERROR',
      context['google']['maps']['KmlLayerStatus']['FETCH_ERROR']);
  static final INVALID_DOCUMENT = KmlLayerStatus._('INVALID_DOCUMENT',
      context['google']['maps']['KmlLayerStatus']['INVALID_DOCUMENT']);
  static final INVALID_REQUEST = KmlLayerStatus._('INVALID_REQUEST',
      context['google']['maps']['KmlLayerStatus']['INVALID_REQUEST']);
  static final LIMITS_EXCEEDED = KmlLayerStatus._('LIMITS_EXCEEDED',
      context['google']['maps']['KmlLayerStatus']['LIMITS_EXCEEDED']);
  static final OK =
      KmlLayerStatus._('OK', context['google']['maps']['KmlLayerStatus']['OK']);
  static final TIMED_OUT = KmlLayerStatus._(
      'TIMED_OUT', context['google']['maps']['KmlLayerStatus']['TIMED_OUT']);
  static final UNKNOWN = KmlLayerStatus._(
      'UNKNOWN', context['google']['maps']['KmlLayerStatus']['UNKNOWN']);
  final String _name;
  KmlLayerStatus._(this._name, o) : super.created(o);

  @override
  String toString() => 'KmlLayerStatus.$_name';
}

@GeneratedFrom(_KmlMouseEvent)
@anonymous
class KmlMouseEvent extends JsInterface {
  KmlMouseEvent() : this.created(JsObject(context['Object']));
  KmlMouseEvent.created(JsObject o) : super.created(o);

  set featureData(KmlFeatureData _featureData) {
    asJsObject(this)['featureData'] = __codec47.encode(_featureData);
  }

  KmlFeatureData get featureData =>
      __codec47.decode(asJsObject(this)['featureData']);
  set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec0.encode(_latLng);
  }

  LatLng get latLng => __codec0.decode(asJsObject(this)['latLng']);
  set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec3.encode(_pixelOffset);
  }

  Size get pixelOffset => __codec3.decode(asJsObject(this)['pixelOffset']);
}

@GeneratedFrom(_TrafficLayer)
@JsName('google.maps.TrafficLayer')
class TrafficLayer extends MVCObject {
  TrafficLayer()
      : this.created(JsObject(context['google']['maps']['TrafficLayer']));
  TrafficLayer.created(JsObject o) : super.created(o);

  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }
}

@GeneratedFrom(_TransitLayer)
@JsName('google.maps.TransitLayer')
class TransitLayer extends MVCObject {
  TransitLayer()
      : this.created(JsObject(context['google']['maps']['TransitLayer']));
  TransitLayer.created(JsObject o) : super.created(o);

  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }
}

@GeneratedFrom(_GMap)
@JsName('google.maps.Map')
class GMap extends MVCObject {
  GMap(Node mapDiv, [MapOptions opts])
      : this.created(JsObject(context['google']['maps']['Map'],
            [mapDiv, __codec48.encode(opts)]));
  GMap.created(JsObject o) : super.created(o);

  void fitBounds(LatLngBounds bounds, [dynamic /*num|Padding*/ padding]) {
    asJsObject(this).callMethod('fitBounds', [
      __codec1.encode(bounds),
      if (padding != null)
        (ChainedCodec()..add(__codec176)..add(IdentityCodec<String>()))
            .encode(padding),
    ]);
  }

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec1.decode(asJsObject(this).callMethod('getBounds'));
  LatLng get center => _getCenter();
  LatLng _getCenter() =>
      __codec0.decode(asJsObject(this).callMethod('getCenter'));
  bool get clickableIcons => _getClickableIcons();
  bool _getClickableIcons() => asJsObject(this).callMethod('getClickableIcons');
  Node get div => _getDiv();
  Node _getDiv() => asJsObject(this).callMethod('getDiv');
  num get heading => _getHeading();
  num _getHeading() => asJsObject(this).callMethod('getHeading');
  dynamic /*MapTypeId|String*/ get mapTypeId => (ChainedCodec()
        ..add(BiMapCodec<MapTypeId, dynamic>({
          MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
          MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
          MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
              ['SATELLITE'],
          MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
        }))
        ..add(IdentityCodec<String>()))
      .decode(_getMapTypeId());
  dynamic _getMapTypeId() =>
      __codec9.decode(asJsObject(this).callMethod('getMapTypeId'));
  Projection get projection => _getProjection();
  Projection _getProjection() =>
      __codec52.decode(asJsObject(this).callMethod('getProjection'));
  StreetViewPanorama get streetView => _getStreetView();
  StreetViewPanorama _getStreetView() =>
      __codec53.decode(asJsObject(this).callMethod('getStreetView'));
  num get tilt => _getTilt();
  num _getTilt() => asJsObject(this).callMethod('getTilt');
  int get zoom => _getZoom();
  int _getZoom() => asJsObject(this).callMethod('getZoom');
  void panBy(num x, num y) {
    asJsObject(this).callMethod('panBy', [x, y]);
  }

  void panTo(LatLng latLng) {
    asJsObject(this).callMethod('panTo', [__codec0.encode(latLng)]);
  }

  void panToBounds(LatLngBounds latLngBounds) {
    asJsObject(this).callMethod('panToBounds', [__codec1.encode(latLngBounds)]);
  }

  set center(LatLng latlng) => _setCenter(latlng);
  void _setCenter(LatLng latlng) {
    asJsObject(this).callMethod('setCenter', [__codec0.encode(latlng)]);
  }

  set clickableIcons(bool value) => _setClickableIcons(value);
  void _setClickableIcons(bool value) {
    asJsObject(this).callMethod('setClickableIcons', [value]);
  }

  set heading(num heading) => _setHeading(heading);
  void _setHeading(num heading) {
    asJsObject(this).callMethod('setHeading', [heading]);
  }

  set mapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) =>
      _setMapTypeId((ChainedCodec()
            ..add(BiMapCodec<MapTypeId, dynamic>({
              MapTypeId.HYBRID: context['google']['maps']['MapTypeId']
                  ['HYBRID'],
              MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']
                  ['ROADMAP'],
              MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
                  ['SATELLITE'],
              MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']
                  ['TERRAIN']
            }))
            ..add(IdentityCodec<String>()))
          .encode(mapTypeId));
  void _setMapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) {
    asJsObject(this).callMethod('setMapTypeId', [__codec9.encode(mapTypeId)]);
  }

  set options(MapOptions options) => _setOptions(options);
  void _setOptions(MapOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec48.encode(options)]);
  }

  set streetView(StreetViewPanorama panorama) => _setStreetView(panorama);
  void _setStreetView(StreetViewPanorama panorama) {
    asJsObject(this).callMethod('setStreetView', [__codec53.encode(panorama)]);
  }

  set tilt(num tilt) => _setTilt(tilt);
  void _setTilt(num tilt) {
    asJsObject(this).callMethod('setTilt', [tilt]);
  }

  set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom) {
    asJsObject(this).callMethod('setZoom', [zoom]);
  }

  set controls(Controls _controls) {
    asJsObject(this)['controls'] = __codec49.encode(_controls);
  }

  Controls get controls => __codec49.decode(asJsObject(this)['controls']);
  set data(Data _data) {
    asJsObject(this)['data'] = __codec50.encode(_data);
  }

  Data get data => __codec50.decode(asJsObject(this)['data']);
  set mapTypes(MapTypeRegistry _mapTypes) {
    asJsObject(this)['mapTypes'] = __codec51.encode(_mapTypes);
  }

  MapTypeRegistry get mapTypes =>
      __codec51.decode(asJsObject(this)['mapTypes']);
  set _overlayMapTypes(dynamic __overlayMapTypes) {
    asJsObject(this)['overlayMapTypes'] = __codec9.encode(__overlayMapTypes);
  }

  dynamic get _overlayMapTypes =>
      __codec9.decode(asJsObject(this)['overlayMapTypes']);
  MVCArray<MapType> get overlayMapTypes =>
      JsInterfaceCodec<MVCArray<MapType>>((o) => MVCArray<MapType>.created(
              o, JsInterfaceCodec<MapType>((o) => MapType.created(o))))
          .decode(_overlayMapTypes as JsObject);
  set overlayMapTypes(MVCArray<MapType> overlayMapTypes) {
    _overlayMapTypes = JsInterfaceCodec<MVCArray<MapType>>((o) =>
            MVCArray<MapType>.created(
                o, JsInterfaceCodec<MapType>((o) => MapType.created(o))))
        .encode(overlayMapTypes);
  }

  Stream get onBoundsChanged => getStream(this, 'bounds_changed');
  Stream get onCenterChanged => getStream(this, 'center_changed');
  Stream<MouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => MouseEvent.created(o));
  Stream get onDrag => getStream(this, 'drag');
  Stream get onDragend => getStream(this, 'dragend');
  Stream get onDragstart => getStream(this, 'dragstart');
  Stream get onHeadingChanged => getStream(this, 'heading_changed');
  Stream get onIdle => getStream(this, 'idle');
  Stream get onMaptypeidChanged => getStream(this, 'maptypeid_changed');
  Stream<MouseEvent> get onMousemove =>
      getStream(this, 'mousemove', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout =>
      getStream(this, 'mouseout', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover =>
      getStream(this, 'mouseover', (JsObject o) => MouseEvent.created(o));
  Stream get onProjectionChanged => getStream(this, 'projection_changed');
  Stream get onResize => getStream(this, 'resize');
  Stream<MouseEvent> get onRightclick =>
      getStream(this, 'rightclick', (JsObject o) => MouseEvent.created(o));
  Stream get onTilesloaded => getStream(this, 'tilesloaded');
  Stream get onTiltChanged => getStream(this, 'tilt_changed');
  Stream get onZoomChanged => getStream(this, 'zoom_changed');
}

@GeneratedFrom(_MapOptions)
@anonymous
class MapOptions extends JsInterface {
  MapOptions() : this.created(JsObject(context['Object']));
  MapOptions.created(JsObject o) : super.created(o);

  set backgroundColor(String _backgroundColor) {
    asJsObject(this)['backgroundColor'] = _backgroundColor;
  }

  String get backgroundColor => asJsObject(this)['backgroundColor'];
  set center(LatLng _center) {
    asJsObject(this)['center'] = __codec0.encode(_center);
  }

  LatLng get center => __codec0.decode(asJsObject(this)['center']);
  set clickableIcons(bool _clickableIcons) {
    asJsObject(this)['clickableIcons'] = _clickableIcons;
  }

  bool get clickableIcons => asJsObject(this)['clickableIcons'];
  set disableDefaultUI(bool _disableDefaultUI) {
    asJsObject(this)['disableDefaultUI'] = _disableDefaultUI;
  }

  bool get disableDefaultUI => asJsObject(this)['disableDefaultUI'];
  set disableDoubleClickZoom(bool _disableDoubleClickZoom) {
    asJsObject(this)['disableDoubleClickZoom'] = _disableDoubleClickZoom;
  }

  bool get disableDoubleClickZoom => asJsObject(this)['disableDoubleClickZoom'];
  set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }

  bool get draggable => asJsObject(this)['draggable'];
  set draggableCursor(String _draggableCursor) {
    asJsObject(this)['draggableCursor'] = _draggableCursor;
  }

  String get draggableCursor => asJsObject(this)['draggableCursor'];
  set draggingCursor(String _draggingCursor) {
    asJsObject(this)['draggingCursor'] = _draggingCursor;
  }

  String get draggingCursor => asJsObject(this)['draggingCursor'];
  set fullscreenControl(bool _fullscreenControl) {
    asJsObject(this)['fullscreenControl'] = _fullscreenControl;
  }

  bool get fullscreenControl => asJsObject(this)['fullscreenControl'];
  set fullscreenControlOptions(
      FullscreenControlOptions _fullscreenControlOptions) {
    asJsObject(this)['fullscreenControlOptions'] =
        __codec54.encode(_fullscreenControlOptions);
  }

  FullscreenControlOptions get fullscreenControlOptions =>
      __codec54.decode(asJsObject(this)['fullscreenControlOptions']);
  set gestureHandling(String _gestureHandling) {
    asJsObject(this)['gestureHandling'] = _gestureHandling;
  }

  String get gestureHandling => asJsObject(this)['gestureHandling'];
  set heading(num _heading) {
    asJsObject(this)['heading'] = _heading;
  }

  num get heading => asJsObject(this)['heading'];
  set keyboardShortcuts(bool _keyboardShortcuts) {
    asJsObject(this)['keyboardShortcuts'] = _keyboardShortcuts;
  }

  bool get keyboardShortcuts => asJsObject(this)['keyboardShortcuts'];
  set mapTypeControl(bool _mapTypeControl) {
    asJsObject(this)['mapTypeControl'] = _mapTypeControl;
  }

  bool get mapTypeControl => asJsObject(this)['mapTypeControl'];
  set mapTypeControlOptions(MapTypeControlOptions _mapTypeControlOptions) {
    asJsObject(this)['mapTypeControlOptions'] =
        __codec55.encode(_mapTypeControlOptions);
  }

  MapTypeControlOptions get mapTypeControlOptions =>
      __codec55.decode(asJsObject(this)['mapTypeControlOptions']);
  set _mapTypeId(dynamic __mapTypeId) {
    asJsObject(this)['mapTypeId'] = __codec9.encode(__mapTypeId);
  }

  dynamic get _mapTypeId => __codec9.decode(asJsObject(this)['mapTypeId']);
  dynamic /*MapTypeId|String*/ get mapTypeId => (ChainedCodec()
        ..add(BiMapCodec<MapTypeId, dynamic>({
          MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
          MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
          MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
              ['SATELLITE'],
          MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
        }))
        ..add(IdentityCodec<String>()))
      .decode(_mapTypeId);
  set mapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) {
    _mapTypeId = (ChainedCodec()
          ..add(BiMapCodec<MapTypeId, dynamic>({
            MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
            MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']
                ['ROADMAP'],
            MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
                ['SATELLITE'],
            MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
          }))
          ..add(IdentityCodec<String>()))
        .encode(mapTypeId);
  }

  set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }

  num get maxZoom => asJsObject(this)['maxZoom'];
  set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }

  num get minZoom => asJsObject(this)['minZoom'];
  set noClear(bool _noClear) {
    asJsObject(this)['noClear'] = _noClear;
  }

  bool get noClear => asJsObject(this)['noClear'];
  set overviewMapControl(bool _overviewMapControl) {
    asJsObject(this)['overviewMapControl'] = _overviewMapControl;
  }

  bool get overviewMapControl => asJsObject(this)['overviewMapControl'];
  set overviewMapControlOptions(
      OverviewMapControlOptions _overviewMapControlOptions) {
    asJsObject(this)['overviewMapControlOptions'] =
        __codec56.encode(_overviewMapControlOptions);
  }

  OverviewMapControlOptions get overviewMapControlOptions =>
      __codec56.decode(asJsObject(this)['overviewMapControlOptions']);
  set panControl(bool _panControl) {
    asJsObject(this)['panControl'] = _panControl;
  }

  bool get panControl => asJsObject(this)['panControl'];
  set panControlOptions(PanControlOptions _panControlOptions) {
    asJsObject(this)['panControlOptions'] =
        __codec57.encode(_panControlOptions);
  }

  PanControlOptions get panControlOptions =>
      __codec57.decode(asJsObject(this)['panControlOptions']);
  set rotateControl(bool _rotateControl) {
    asJsObject(this)['rotateControl'] = _rotateControl;
  }

  bool get rotateControl => asJsObject(this)['rotateControl'];
  set rotateControlOptions(RotateControlOptions _rotateControlOptions) {
    asJsObject(this)['rotateControlOptions'] =
        __codec58.encode(_rotateControlOptions);
  }

  RotateControlOptions get rotateControlOptions =>
      __codec58.decode(asJsObject(this)['rotateControlOptions']);
  set scaleControl(bool _scaleControl) {
    asJsObject(this)['scaleControl'] = _scaleControl;
  }

  bool get scaleControl => asJsObject(this)['scaleControl'];
  set scaleControlOptions(ScaleControlOptions _scaleControlOptions) {
    asJsObject(this)['scaleControlOptions'] =
        __codec59.encode(_scaleControlOptions);
  }

  ScaleControlOptions get scaleControlOptions =>
      __codec59.decode(asJsObject(this)['scaleControlOptions']);
  set scrollwheel(bool _scrollwheel) {
    asJsObject(this)['scrollwheel'] = _scrollwheel;
  }

  bool get scrollwheel => asJsObject(this)['scrollwheel'];
  set streetView(StreetViewPanorama _streetView) {
    asJsObject(this)['streetView'] = __codec53.encode(_streetView);
  }

  StreetViewPanorama get streetView =>
      __codec53.decode(asJsObject(this)['streetView']);
  set streetViewControl(bool _streetViewControl) {
    asJsObject(this)['streetViewControl'] = _streetViewControl;
  }

  bool get streetViewControl => asJsObject(this)['streetViewControl'];
  set streetViewControlOptions(
      StreetViewControlOptions _streetViewControlOptions) {
    asJsObject(this)['streetViewControlOptions'] =
        __codec60.encode(_streetViewControlOptions);
  }

  StreetViewControlOptions get streetViewControlOptions =>
      __codec60.decode(asJsObject(this)['streetViewControlOptions']);
  set styles(List<MapTypeStyle> _styles) {
    asJsObject(this)['styles'] = __codec62.encode(_styles);
  }

  List<MapTypeStyle> get styles => __codec62.decode(asJsObject(this)['styles']);
  set tilt(num _tilt) {
    asJsObject(this)['tilt'] = _tilt;
  }

  num get tilt => asJsObject(this)['tilt'];
  set zoom(num _zoom) {
    asJsObject(this)['zoom'] = _zoom;
  }

  num get zoom => asJsObject(this)['zoom'];
  set zoomControl(bool _zoomControl) {
    asJsObject(this)['zoomControl'] = _zoomControl;
  }

  bool get zoomControl => asJsObject(this)['zoomControl'];
  set zoomControlOptions(ZoomControlOptions _zoomControlOptions) {
    asJsObject(this)['zoomControlOptions'] =
        __codec63.encode(_zoomControlOptions);
  }

  ZoomControlOptions get zoomControlOptions =>
      __codec63.decode(asJsObject(this)['zoomControlOptions']);
}

class MapTypeId extends JsEnum {
  static final values = <MapTypeId>[HYBRID, ROADMAP, SATELLITE, TERRAIN];
  static final HYBRID =
      MapTypeId._('HYBRID', context['google']['maps']['MapTypeId']['HYBRID']);
  static final ROADMAP =
      MapTypeId._('ROADMAP', context['google']['maps']['MapTypeId']['ROADMAP']);
  static final SATELLITE = MapTypeId._(
      'SATELLITE', context['google']['maps']['MapTypeId']['SATELLITE']);
  static final TERRAIN =
      MapTypeId._('TERRAIN', context['google']['maps']['MapTypeId']['TERRAIN']);
  final String _name;
  MapTypeId._(this._name, o) : super.created(o);

  @override
  String toString() => 'MapTypeId.$_name';
}

@GeneratedFrom(_ImageMapType)
@JsName('google.maps.ImageMapType')
class ImageMapType extends MVCObject implements MapType {
  ImageMapType(ImageMapTypeOptions opts)
      : this.created(JsObject(context['google']['maps']['ImageMapType'],
            [__codec64.encode(opts)]));
  ImageMapType.created(JsObject o) : super.created(o);

  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  set getTile(
      Node Function(Point tileCoord, num zoom, Document ownerDocument)
          _getTile) {
    asJsObject(this)['getTile'] = __codec65.encode(_getTile);
  }

  Node Function(Point tileCoord, num zoom, Document ownerDocument)
      get getTile => __codec65.decode(asJsObject(this)['getTile']);
  void releaseTile(Node tile) {
    asJsObject(this).callMethod('releaseTile', [tile]);
  }

  set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity]);
  }

  set alt(String _alt) {
    asJsObject(this)['alt'] = _alt;
  }

  String get alt => asJsObject(this)['alt'];
  set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }

  num get maxZoom => asJsObject(this)['maxZoom'];
  set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }

  num get minZoom => asJsObject(this)['minZoom'];
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set projection(Projection _projection) {
    asJsObject(this)['projection'] = __codec52.encode(_projection);
  }

  Projection get projection => __codec52.decode(asJsObject(this)['projection']);
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
  set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec3.encode(_tileSize);
  }

  Size get tileSize => __codec3.decode(asJsObject(this)['tileSize']);

  Stream get onTilesloaded => getStream(this, 'tilesloaded');
}

@GeneratedFrom(_ImageMapTypeOptions)
@anonymous
class ImageMapTypeOptions extends JsInterface {
  ImageMapTypeOptions() : this.created(JsObject(context['Object']));
  ImageMapTypeOptions.created(JsObject o) : super.created(o);

  set alt(String _alt) {
    asJsObject(this)['alt'] = _alt;
  }

  String get alt => asJsObject(this)['alt'];
  set getTileUrl(String Function(Point point, num zoom) _getTileUrl) {
    asJsObject(this)['getTileUrl'] = __codec66.encode(_getTileUrl);
  }

  String Function(Point point, num zoom) get getTileUrl =>
      __codec66.decode(asJsObject(this)['getTileUrl']);
  set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }

  num get maxZoom => asJsObject(this)['maxZoom'];
  set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }

  num get minZoom => asJsObject(this)['minZoom'];
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }

  num get opacity => asJsObject(this)['opacity'];
  set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec3.encode(_tileSize);
  }

  Size get tileSize => __codec3.decode(asJsObject(this)['tileSize']);
}

@GeneratedFrom(_MapType)
@anonymous
class MapType extends JsInterface {
  MapType() : this.created(JsObject(context['Object']));
  MapType.created(JsObject o) : super.created(o);

  set getTile(
      Node Function(Point tileCoord, num zoom, Document ownerDocument)
          _getTile) {
    asJsObject(this)['getTile'] = __codec65.encode(_getTile);
  }

  Node Function(Point tileCoord, num zoom, Document ownerDocument)
      get getTile => __codec65.decode(asJsObject(this)['getTile']);
  void releaseTile(Node tile) {
    asJsObject(this).callMethod('releaseTile', [tile]);
  }

  set alt(String _alt) {
    asJsObject(this)['alt'] = _alt;
  }

  String get alt => asJsObject(this)['alt'];
  set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }

  num get maxZoom => asJsObject(this)['maxZoom'];
  set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }

  num get minZoom => asJsObject(this)['minZoom'];
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set projection(Projection _projection) {
    asJsObject(this)['projection'] = __codec52.encode(_projection);
  }

  Projection get projection => __codec52.decode(asJsObject(this)['projection']);
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
  set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec3.encode(_tileSize);
  }

  Size get tileSize => __codec3.decode(asJsObject(this)['tileSize']);
}

@GeneratedFrom(_MapTypeRegistry)
@JsName('google.maps.MapTypeRegistry')
class MapTypeRegistry extends MVCObject {
  MapTypeRegistry()
      : this.created(JsObject(context['google']['maps']['MapTypeRegistry']));
  MapTypeRegistry.created(JsObject o) : super.created(o);

  void set(String key, covariant MapType value) {
    asJsObject(this).callMethod('set', [key, __codec67.encode(value)]);
  }
}

@GeneratedFrom(_MapTypeStyle)
@anonymous
class MapTypeStyle extends JsInterface {
  MapTypeStyle() : this.created(JsObject(context['Object']));
  MapTypeStyle.created(JsObject o) : super.created(o);

  set elementType(MapTypeStyleElementType _elementType) {
    asJsObject(this)['elementType'] = __codec68.encode(_elementType);
  }

  MapTypeStyleElementType get elementType =>
      __codec68.decode(asJsObject(this)['elementType']);
  set featureType(MapTypeStyleFeatureType _featureType) {
    asJsObject(this)['featureType'] = __codec69.encode(_featureType);
  }

  MapTypeStyleFeatureType get featureType =>
      __codec69.decode(asJsObject(this)['featureType']);
  set stylers(List<MapTypeStyler> _stylers) {
    asJsObject(this)['stylers'] = __codec71.encode(_stylers);
  }

  List<MapTypeStyler> get stylers =>
      __codec71.decode(asJsObject(this)['stylers']);
}

@GeneratedFrom(_MapTypeStyler)
@anonymous
class MapTypeStyler extends JsInterface {
  MapTypeStyler() : this.created(JsObject(context['Object']));
  MapTypeStyler.created(JsObject o) : super.created(o);

  set color(String _color) {
    asJsObject(this)['color'] = _color;
  }

  String get color => asJsObject(this)['color'];
  set gamma(num _gamma) {
    asJsObject(this)['gamma'] = _gamma;
  }

  num get gamma => asJsObject(this)['gamma'];
  set hue(String _hue) {
    asJsObject(this)['hue'] = _hue;
  }

  String get hue => asJsObject(this)['hue'];
  set _invert_lightness(bool __invert_lightness) {
    asJsObject(this)['invert_lightness'] = __invert_lightness;
  }

  bool get _invert_lightness => asJsObject(this)['invert_lightness'];
  bool get invertLightness => _invert_lightness;
  set invertLightness(bool invertLightness) {
    _invert_lightness = invertLightness;
  }

  set lightness(num _lightness) {
    asJsObject(this)['lightness'] = _lightness;
  }

  num get lightness => asJsObject(this)['lightness'];
  set saturation(num _saturation) {
    asJsObject(this)['saturation'] = _saturation;
  }

  num get saturation => asJsObject(this)['saturation'];
  set visibility(String _visibility) {
    asJsObject(this)['visibility'] = _visibility;
  }

  String get visibility => asJsObject(this)['visibility'];
  set weight(num _weight) {
    asJsObject(this)['weight'] = _weight;
  }

  num get weight => asJsObject(this)['weight'];
}

@GeneratedFrom(_Projection)
@anonymous
class Projection extends JsInterface {
  Projection() : this.created(JsObject(context['Object']));
  Projection.created(JsObject o) : super.created(o);

  set fromLatLngToPoint(
      Point Function(LatLng latLng, [Point point]) _fromLatLngToPoint) {
    asJsObject(this)['fromLatLngToPoint'] =
        __codec72.encode(_fromLatLngToPoint);
  }

  Point Function(LatLng latLng, [Point point]) get fromLatLngToPoint =>
      (latLng, [point]) =>
          __codec72.decode(asJsObject(this)['fromLatLngToPoint'])(
              asJsObject(this), latLng, point);
  set fromPointToLatLng(
      LatLng Function(Point pixel, [bool nowrap]) _fromPointToLatLng) {
    asJsObject(this)['fromPointToLatLng'] =
        __codec73.encode(_fromPointToLatLng);
  }

  LatLng Function(Point pixel, [bool nowrap]) get fromPointToLatLng =>
      __codec73.decode(asJsObject(this)['fromPointToLatLng']);
}

@GeneratedFrom(_StyledMapType)
@JsName('google.maps.StyledMapType')
class StyledMapType extends MVCObject implements MapType {
  StyledMapType(List<MapTypeStyle> styles, [StyledMapTypeOptions options])
      : this.created(JsObject(context['google']['maps']['StyledMapType'],
            [__codec62.encode(styles), __codec74.encode(options)]));
  StyledMapType.created(JsObject o) : super.created(o);

  set getTile(
      Node Function(Point tileCoord, num zoom, Document ownerDocument)
          _getTile) {
    asJsObject(this)['getTile'] = __codec65.encode(_getTile);
  }

  Node Function(Point tileCoord, num zoom, Document ownerDocument)
      get getTile => __codec65.decode(asJsObject(this)['getTile']);
  void releaseTile(Node tile) {
    asJsObject(this).callMethod('releaseTile', [tile]);
  }

  set alt(String _alt) {
    asJsObject(this)['alt'] = _alt;
  }

  String get alt => asJsObject(this)['alt'];
  set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }

  num get maxZoom => asJsObject(this)['maxZoom'];
  set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }

  num get minZoom => asJsObject(this)['minZoom'];
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set projection(Projection _projection) {
    asJsObject(this)['projection'] = __codec52.encode(_projection);
  }

  Projection get projection => __codec52.decode(asJsObject(this)['projection']);
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
  set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec3.encode(_tileSize);
  }

  Size get tileSize => __codec3.decode(asJsObject(this)['tileSize']);
}

@GeneratedFrom(_StyledMapTypeOptions)
@anonymous
class StyledMapTypeOptions extends JsInterface {
  StyledMapTypeOptions() : this.created(JsObject(context['Object']));
  StyledMapTypeOptions.created(JsObject o) : super.created(o);

  set alt(String _alt) {
    asJsObject(this)['alt'] = _alt;
  }

  String get alt => asJsObject(this)['alt'];
  set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }

  num get maxZoom => asJsObject(this)['maxZoom'];
  set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }

  num get minZoom => asJsObject(this)['minZoom'];
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
}

@GeneratedFrom(_MVCArray)
@JsName('google.maps.MVCArray')
class MVCArray<E> extends MVCObject {
  MVCArray({List<E> elements, Codec<E, dynamic> codec})
      : this.created(
            JsObject(context['google']['maps']['MVCArray'] as JsFunction, [
              elements == null
                  ? JsArray()
                  : JsArray.from(
                      codec == null ? elements : elements.map(codec.encode))
            ]),
            codec);

  MVCArray.created(JsObject o, [Codec<E, dynamic> codec])
      : _codec = codec ?? IdentityCodec(),
        super.created(o);

  // ignore: avoid_init_to_null,prefer_final_fields
  Codec<E, dynamic> _codec = null;

  void clear() {
    asJsObject(this).callMethod('clear');
  }

  void forEach(void callback(E o, num index)) =>
      _forEach((o, num index) => callback(_codec.decode(o), index));
  void _forEach(void callback(o, num index)) {
    asJsObject(this).callMethod('forEach', [__codec75.encode(callback)]);
  }

  List<E> getArray() => JsList.created(_getArray() as JsArray, _codec);
  dynamic _getArray() =>
      __codec9.decode(asJsObject(this).callMethod('getArray'));
  E getAt(num i) => _codec.decode(_getAt(i));
  dynamic _getAt(num i) =>
      __codec9.decode(asJsObject(this).callMethod('getAt', [i]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  void insertAt(num i, E elem) => _insertAt(i, _codec.encode(elem));
  void _insertAt(num i, elem) {
    asJsObject(this).callMethod('insertAt', [i, __codec9.encode(elem)]);
  }

  E pop() => _codec.decode(_pop());
  dynamic _pop() => __codec9.decode(asJsObject(this).callMethod('pop'));
  num push(E elem) => _push(_codec.encode(elem));
  num _push(elem) =>
      asJsObject(this).callMethod('push', [__codec9.encode(elem)]);
  E removeAt(num i) => _codec.decode(_removeAt(i));
  dynamic _removeAt(num i) =>
      __codec9.decode(asJsObject(this).callMethod('removeAt', [i]));
  void setAt(num i, E elem) => _setAt(i, _codec.encode(elem));
  void _setAt(num i, elem) {
    asJsObject(this).callMethod('setAt', [i, __codec9.encode(elem)]);
  }

  Stream<int> get onInsertAt => getStream(this, 'insert_at');
  Stream<IndexAndElement<E>> get onRemoveAt => getStream(
        this,
        'remove_at',
        (int index, oldElement) =>
            IndexAndElement<E>(index, _codec.decode(oldElement)),
        2,
      );
  Stream<IndexAndElement<E>> get onSetAt => getStream(
        this,
        'set_at',
        (int index, oldElement) =>
            IndexAndElement<E>(index, _codec.decode(oldElement)),
        2,
      );
}

@GeneratedFrom(_MVCObject)
@JsName('google.maps.MVCObject')
class MVCObject extends JsInterface {
  MVCObject() : this.created(JsObject(context['google']['maps']['MVCObject']));
  MVCObject.created(JsObject o) : super.created(o);

  MapsEventListener addListener(String eventName, Function handler) => __codec31
      .decode(asJsObject(this).callMethod('addListener', [eventName, handler]));
  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]) {
    asJsObject(this).callMethod(
        'bindTo', [key, __codec76.encode(target), targetKey, noNotify]);
  }

  void changed(String key) {
    asJsObject(this).callMethod('changed', [key]);
  }

  dynamic get(String key) =>
      __codec9.decode(asJsObject(this).callMethod('get', [key]));
  void notify(String key) {
    asJsObject(this).callMethod('notify', [key]);
  }

  void set(String key, dynamic value) {
    asJsObject(this).callMethod('set', [key, __codec9.encode(value)]);
  }

  set values(Object values) => _setValues(values);
  void _setValues(Object values) {
    asJsObject(this).callMethod('setValues', [__codec10.encode(values)]);
  }

  void unbind(String key) {
    asJsObject(this).callMethod('unbind', [key]);
  }

  void unbindAll() {
    asJsObject(this).callMethod('unbindAll');
  }
}

class Animation extends JsEnum {
  static final values = <Animation>[BOUNCE, DROP];
  static final BOUNCE =
      Animation._('BOUNCE', context['google']['maps']['Animation']['BOUNCE']);
  static final DROP =
      Animation._('DROP', context['google']['maps']['Animation']['DROP']);
  final String _name;
  Animation._(this._name, o) : super.created(o);

  @override
  String toString() => 'Animation.$_name';
}

@GeneratedFrom(_Circle)
@JsName('google.maps.Circle')
class Circle extends MVCObject {
  Circle([CircleOptions opts])
      : this.created(JsObject(
            context['google']['maps']['Circle'], [__codec77.encode(opts)]));
  Circle.created(JsObject o) : super.created(o);

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec1.decode(asJsObject(this).callMethod('getBounds'));
  LatLng get center => _getCenter();
  LatLng _getCenter() =>
      __codec0.decode(asJsObject(this).callMethod('getCenter'));
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  num get radius => _getRadius();
  num _getRadius() => asJsObject(this).callMethod('getRadius');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  set center(LatLng center) => _setCenter(center);
  void _setCenter(LatLng center) {
    asJsObject(this).callMethod('setCenter', [__codec0.encode(center)]);
  }

  set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable]);
  }

  set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable]);
  }

  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }

  set options(CircleOptions options) => _setOptions(options);
  void _setOptions(CircleOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec77.encode(options)]);
  }

  set radius(num radius) => _setRadius(radius);
  void _setRadius(num radius) {
    asJsObject(this).callMethod('setRadius', [radius]);
  }

  set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible]);
  }

  Stream get onCenterChanged => getStream(this, 'center_changed');
  Stream<MouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDrag =>
      getStream(this, 'drag', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragend =>
      getStream(this, 'dragend', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart =>
      getStream(this, 'dragstart', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMousedown =>
      getStream(this, 'mousedown', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMousemove =>
      getStream(this, 'mousemove', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout =>
      getStream(this, 'mouseout', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover =>
      getStream(this, 'mouseover', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup =>
      getStream(this, 'mouseup', (JsObject o) => MouseEvent.created(o));
  Stream get onRadiusChanged => getStream(this, 'radius_changed');
  Stream<MouseEvent> get onRightclick =>
      getStream(this, 'rightclick', (JsObject o) => MouseEvent.created(o));
}

@GeneratedFrom(_CircleOptions)
@anonymous
class CircleOptions extends JsInterface {
  CircleOptions() : this.created(JsObject(context['Object']));
  CircleOptions.created(JsObject o) : super.created(o);

  set center(LatLng _center) {
    asJsObject(this)['center'] = __codec0.encode(_center);
  }

  LatLng get center => __codec0.decode(asJsObject(this)['center']);
  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }

  bool get draggable => asJsObject(this)['draggable'];
  set editable(bool _editable) {
    asJsObject(this)['editable'] = _editable;
  }

  bool get editable => asJsObject(this)['editable'];
  set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }

  String get fillColor => asJsObject(this)['fillColor'];
  set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }

  num get fillOpacity => asJsObject(this)['fillOpacity'];
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec16.encode(_map);
  }

  GMap get map => __codec16.decode(asJsObject(this)['map']);
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
  set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }

  String get strokeColor => asJsObject(this)['strokeColor'];
  set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }

  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  set strokePosition(StrokePosition _strokePosition) {
    asJsObject(this)['strokePosition'] = __codec78.encode(_strokePosition);
  }

  StrokePosition get strokePosition =>
      __codec78.decode(asJsObject(this)['strokePosition']);
  set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }

  num get strokeWeight => asJsObject(this)['strokeWeight'];
  set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }

  bool get visible => asJsObject(this)['visible'];
  set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }

  num get zIndex => asJsObject(this)['zIndex'];
}

@GeneratedFrom(_GroundOverlay)
@JsName('google.maps.GroundOverlay')
class GroundOverlay extends MVCObject {
  GroundOverlay(String url, LatLngBounds bounds, [GroundOverlayOptions opts])
      : this.created(JsObject(context['google']['maps']['GroundOverlay'],
            [url, __codec1.encode(bounds), __codec79.encode(opts)]));
  GroundOverlay.created(JsObject o) : super.created(o);

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec1.decode(asJsObject(this).callMethod('getBounds'));
  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  String get url => _getUrl();
  String _getUrl() => asJsObject(this).callMethod('getUrl');
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }

  set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity]);
  }

  Stream<MouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => MouseEvent.created(o));
}

@GeneratedFrom(_GroundOverlayOptions)
@anonymous
class GroundOverlayOptions extends JsInterface {
  GroundOverlayOptions() : this.created(JsObject(context['Object']));
  GroundOverlayOptions.created(JsObject o) : super.created(o);

  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec16.encode(_map);
  }

  GMap get map => __codec16.decode(asJsObject(this)['map']);
  set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }

  num get opacity => asJsObject(this)['opacity'];
}

@GeneratedFrom(_Icon)
@anonymous
class Icon extends JsInterface {
  Icon() : this.created(JsObject(context['Object']));
  Icon.created(JsObject o) : super.created(o);

  set anchor(Point _anchor) {
    asJsObject(this)['anchor'] = __codec2.encode(_anchor);
  }

  Point get anchor => __codec2.decode(asJsObject(this)['anchor']);
  set labelOrigin(Point _labelOrigin) {
    asJsObject(this)['labelOrigin'] = __codec2.encode(_labelOrigin);
  }

  Point get labelOrigin => __codec2.decode(asJsObject(this)['labelOrigin']);
  set origin(Point _origin) {
    asJsObject(this)['origin'] = __codec2.encode(_origin);
  }

  Point get origin => __codec2.decode(asJsObject(this)['origin']);
  set scaledSize(Size _scaledSize) {
    asJsObject(this)['scaledSize'] = __codec3.encode(_scaledSize);
  }

  Size get scaledSize => __codec3.decode(asJsObject(this)['scaledSize']);
  set size(Size _size) {
    asJsObject(this)['size'] = __codec3.encode(_size);
  }

  Size get size => __codec3.decode(asJsObject(this)['size']);
  set url(String _url) {
    asJsObject(this)['url'] = _url;
  }

  String get url => asJsObject(this)['url'];
}

@GeneratedFrom(_IconSequence)
@anonymous
class IconSequence extends JsInterface {
  IconSequence() : this.created(JsObject(context['Object']));
  IconSequence.created(JsObject o) : super.created(o);

  set fixedRotation(bool _fixedRotation) {
    asJsObject(this)['fixedRotation'] = _fixedRotation;
  }

  bool get fixedRotation => asJsObject(this)['fixedRotation'];
  set icon(GSymbol _icon) {
    asJsObject(this)['icon'] = __codec80.encode(_icon);
  }

  GSymbol get icon => __codec80.decode(asJsObject(this)['icon']);
  set offset(String _offset) {
    asJsObject(this)['offset'] = _offset;
  }

  String get offset => asJsObject(this)['offset'];
  set repeat(String _repeat) {
    asJsObject(this)['repeat'] = _repeat;
  }

  String get repeat => asJsObject(this)['repeat'];
}

@GeneratedFrom(_InfoWindow)
@JsName('google.maps.InfoWindow')
class InfoWindow extends MVCObject {
  InfoWindow([InfoWindowOptions opts])
      : this.created(JsObject(
            context['google']['maps']['InfoWindow'], [__codec81.encode(opts)]));
  InfoWindow.created(JsObject o) : super.created(o);

  void close() {
    asJsObject(this).callMethod('close');
  }

  dynamic /*String|Node*/ get content => _getContent();
  dynamic /*String|Node*/ _getContent() =>
      __codec9.decode(asJsObject(this).callMethod('getContent'));
  LatLng get position => _getPosition();
  LatLng _getPosition() =>
      __codec0.decode(asJsObject(this).callMethod('getPosition'));
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  void open([dynamic /*GMap|StreetViewPanorama*/ map, MVCObject anchor]) {
    _open(
        (ChainedCodec()
              ..add(JsInterfaceCodec<GMap>(
                  (o) => GMap.created(o),
                  (o) =>
                      o != null &&
                      o.instanceof(
                          context['google']['maps']['Map'] as JsFunction)))
              ..add(JsInterfaceCodec<StreetViewPanorama>(
                  (o) => StreetViewPanorama.created(o),
                  (o) =>
                      o != null &&
                      o.instanceof(context['google']['maps']
                          ['StreetViewPanorama'] as JsFunction))))
            .encode(map),
        anchor);
  }

  void _open([dynamic /*GMap|StreetViewPanorama*/ map, MVCObject anchor]) {
    asJsObject(this)
        .callMethod('open', [__codec9.encode(map), __codec76.encode(anchor)]);
  }

  set content(dynamic /*String|Node*/ content) => _setContent(content);
  void _setContent(dynamic /*String|Node*/ content) {
    asJsObject(this).callMethod('setContent', [__codec9.encode(content)]);
  }

  set options(InfoWindowOptions options) => _setOptions(options);
  void _setOptions(InfoWindowOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec81.encode(options)]);
  }

  set position(LatLng position) => _setPosition(position);
  void _setPosition(LatLng position) {
    asJsObject(this).callMethod('setPosition', [__codec0.encode(position)]);
  }

  set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex) {
    asJsObject(this).callMethod('setZIndex', [zIndex]);
  }

  Stream get onCloseclick => getStream(this, 'closeclick');
  Stream get onContentChanged => getStream(this, 'content_changed');
  Stream get onDomready => getStream(this, 'domready');
  Stream get onPositionChanged => getStream(this, 'position_changed');
  Stream get onZindexChanged => getStream(this, 'zindex_changed');
}

@GeneratedFrom(_InfoWindowOptions)
@anonymous
class InfoWindowOptions extends JsInterface {
  InfoWindowOptions() : this.created(JsObject(context['Object']));
  InfoWindowOptions.created(JsObject o) : super.created(o);

  set content(dynamic _content) {
    asJsObject(this)['content'] = __codec9.encode(_content);
  }

  dynamic get content => __codec9.decode(asJsObject(this)['content']);
  set disableAutoPan(bool _disableAutoPan) {
    asJsObject(this)['disableAutoPan'] = _disableAutoPan;
  }

  bool get disableAutoPan => asJsObject(this)['disableAutoPan'];
  set maxWidth(num _maxWidth) {
    asJsObject(this)['maxWidth'] = _maxWidth;
  }

  num get maxWidth => asJsObject(this)['maxWidth'];
  set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec3.encode(_pixelOffset);
  }

  Size get pixelOffset => __codec3.decode(asJsObject(this)['pixelOffset']);
  set position(LatLng _position) {
    asJsObject(this)['position'] = __codec0.encode(_position);
  }

  LatLng get position => __codec0.decode(asJsObject(this)['position']);
  set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }

  num get zIndex => asJsObject(this)['zIndex'];
}

@GeneratedFrom(_MapCanvasProjection)
@anonymous
class MapCanvasProjection extends MVCObject {
  MapCanvasProjection() : this.created(JsObject(context['Object']));
  MapCanvasProjection.created(JsObject o) : super.created(o);

  LatLng fromContainerPixelToLatLng(Point pixel, [bool nowrap]) =>
      __codec0.decode(asJsObject(this).callMethod(
          'fromContainerPixelToLatLng', [__codec2.encode(pixel), nowrap]));
  LatLng fromDivPixelToLatLng(Point pixel, [bool nowrap]) =>
      __codec0.decode(asJsObject(this).callMethod(
          'fromDivPixelToLatLng', [__codec2.encode(pixel), nowrap]));
  Point fromLatLngToContainerPixel(LatLng latLng) =>
      __codec2.decode(asJsObject(this)
          .callMethod('fromLatLngToContainerPixel', [__codec0.encode(latLng)]));
  Point fromLatLngToDivPixel(LatLng latLng) => __codec2.decode(asJsObject(this)
      .callMethod('fromLatLngToDivPixel', [__codec0.encode(latLng)]));
  num get worldWidth => _getWorldWidth();
  num _getWorldWidth() => asJsObject(this).callMethod('getWorldWidth');
}

@GeneratedFrom(_MapPanes)
@anonymous
class MapPanes extends JsInterface {
  MapPanes() : this.created(JsObject(context['Object']));
  MapPanes.created(JsObject o) : super.created(o);

  set floatPane(Node _floatPane) {
    asJsObject(this)['floatPane'] = _floatPane;
  }

  Node get floatPane => asJsObject(this)['floatPane'];
  set mapPane(Node _mapPane) {
    asJsObject(this)['mapPane'] = _mapPane;
  }

  Node get mapPane => asJsObject(this)['mapPane'];
  set markerLayer(Node _markerLayer) {
    asJsObject(this)['markerLayer'] = _markerLayer;
  }

  Node get markerLayer => asJsObject(this)['markerLayer'];
  set overlayLayer(Node _overlayLayer) {
    asJsObject(this)['overlayLayer'] = _overlayLayer;
  }

  Node get overlayLayer => asJsObject(this)['overlayLayer'];
  set overlayMouseTarget(Node _overlayMouseTarget) {
    asJsObject(this)['overlayMouseTarget'] = _overlayMouseTarget;
  }

  Node get overlayMouseTarget => asJsObject(this)['overlayMouseTarget'];
}

@GeneratedFrom(_Marker)
@JsName('google.maps.Marker')
class Marker extends MVCObject {
  Marker([MarkerOptions opts])
      : this.created(JsObject(
            context['google']['maps']['Marker'], [__codec82.encode(opts)]));
  Marker.created(JsObject o) : super.created(o);

  static num get MAX_ZINDEX =>
      context['google']['maps']['Marker']['MAX_ZINDEX'];

  Animation get animation => _getAnimation();
  Animation _getAnimation() =>
      __codec83.decode(asJsObject(this).callMethod('getAnimation'));
  Attribution get attribution => _getAttribution();
  Attribution _getAttribution() =>
      __codec84.decode(asJsObject(this).callMethod('getAttribution'));
  bool get clickable => _getClickable();
  bool _getClickable() => asJsObject(this).callMethod('getClickable');
  String get cursor => _getCursor();
  String _getCursor() => asJsObject(this).callMethod('getCursor');
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  dynamic /*String|Icon|GSymbol*/ get icon => (ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<Icon>((o) => Icon.created(o)))
        ..add(JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o))))
      .decode(_getIcon());
  dynamic _getIcon() => __codec9.decode(asJsObject(this).callMethod('getIcon'));
  MarkerLabel get label => _getLabel();
  MarkerLabel _getLabel() =>
      __codec85.decode(asJsObject(this).callMethod('getLabel'));
  dynamic /*GMap|StreetViewPanorama*/ get map => (ChainedCodec()
        ..add(JsInterfaceCodec<GMap>(
            (o) => GMap.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Map'] as JsFunction)))
        ..add(JsInterfaceCodec<StreetViewPanorama>(
            (o) => StreetViewPanorama.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']
                    as JsFunction))))
      .decode(_getMap());
  dynamic _getMap() => __codec9.decode(asJsObject(this).callMethod('getMap'));
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  MarkerPlace get place => _getPlace();
  MarkerPlace _getPlace() =>
      __codec86.decode(asJsObject(this).callMethod('getPlace'));
  LatLng get position => _getPosition();
  LatLng _getPosition() =>
      __codec0.decode(asJsObject(this).callMethod('getPosition'));
  MarkerShape get shape => _getShape();
  MarkerShape _getShape() =>
      __codec29.decode(asJsObject(this).callMethod('getShape'));
  String get title => _getTitle();
  String _getTitle() => asJsObject(this).callMethod('getTitle');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  set animation(Animation animation) => _setAnimation(animation);
  void _setAnimation(Animation animation) {
    asJsObject(this).callMethod('setAnimation', [__codec83.encode(animation)]);
  }

  set attribution(Attribution attribution) => _setAttribution(attribution);
  void _setAttribution(Attribution attribution) {
    asJsObject(this)
        .callMethod('setAttribution', [__codec84.encode(attribution)]);
  }

  set clickable(bool flag) => _setClickable(flag);
  void _setClickable(bool flag) {
    asJsObject(this).callMethod('setClickable', [flag]);
  }

  set cursor(String cursor) => _setCursor(cursor);
  void _setCursor(String cursor) {
    asJsObject(this).callMethod('setCursor', [cursor]);
  }

  set draggable(bool flag) => _setDraggable(flag);
  void _setDraggable(bool flag) {
    asJsObject(this).callMethod('setDraggable', [flag]);
  }

  set icon(dynamic /*String|Icon|GSymbol*/ icon) => _setIcon((ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<Icon>((o) => Icon.created(o)))
        ..add(JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o))))
      .encode(icon));
  void _setIcon(dynamic /*String|Icon|GSymbol*/ icon) {
    asJsObject(this).callMethod('setIcon', [__codec9.encode(icon)]);
  }

  set label(dynamic /*String|MarkerLabel*/ label) => _setLabel((ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<MarkerLabel>((o) => MarkerLabel.created(o))))
      .encode(label));
  void _setLabel(dynamic /*String|MarkerLabel*/ label) {
    asJsObject(this).callMethod('setLabel', [__codec9.encode(label)]);
  }

  set map(dynamic /*GMap|StreetViewPanorama*/ map) => _setMap((ChainedCodec()
        ..add(JsInterfaceCodec<GMap>(
            (o) => GMap.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Map'] as JsFunction)))
        ..add(JsInterfaceCodec<StreetViewPanorama>(
            (o) => StreetViewPanorama.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']
                    as JsFunction))))
      .encode(map));
  void _setMap(dynamic /*GMap|StreetViewPanorama*/ map) {
    asJsObject(this).callMethod('setMap', [__codec9.encode(map)]);
  }

  set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity]);
  }

  set options(MarkerOptions options) => _setOptions(options);
  void _setOptions(MarkerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec82.encode(options)]);
  }

  set place(MarkerPlace place) => _setPlace(place);
  void _setPlace(MarkerPlace place) {
    asJsObject(this).callMethod('setPlace', [__codec86.encode(place)]);
  }

  set position(LatLng latlng) => _setPosition(latlng);
  void _setPosition(LatLng latlng) {
    asJsObject(this).callMethod('setPosition', [__codec0.encode(latlng)]);
  }

  set shape(MarkerShape shape) => _setShape(shape);
  void _setShape(MarkerShape shape) {
    asJsObject(this).callMethod('setShape', [__codec29.encode(shape)]);
  }

  set title(String title) => _setTitle(title);
  void _setTitle(String title) {
    asJsObject(this).callMethod('setTitle', [title]);
  }

  set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible]);
  }

  set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex) {
    asJsObject(this).callMethod('setZIndex', [zIndex]);
  }

  Stream get onAnimationChanged => getStream(this, 'animation_changed');
  Stream<MouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => MouseEvent.created(o));
  Stream get onClickableChanged => getStream(this, 'clickable_changed');
  Stream get onCursorChanged => getStream(this, 'cursor_changed');
  Stream<MouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDrag =>
      getStream(this, 'drag', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragend =>
      getStream(this, 'dragend', (JsObject o) => MouseEvent.created(o));
  Stream get onDraggableChanged => getStream(this, 'draggable_changed');
  Stream<MouseEvent> get onDragstart =>
      getStream(this, 'dragstart', (JsObject o) => MouseEvent.created(o));
  Stream get onFlatChanged => getStream(this, 'flat_changed');
  Stream get onIconChanged => getStream(this, 'icon_changed');
  Stream<MouseEvent> get onMousedown =>
      getStream(this, 'mousedown', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout =>
      getStream(this, 'mouseout', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover =>
      getStream(this, 'mouseover', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup =>
      getStream(this, 'mouseup', (JsObject o) => MouseEvent.created(o));
  Stream get onPositionChanged => getStream(this, 'position_changed');
  Stream<MouseEvent> get onRightclick =>
      getStream(this, 'rightclick', (JsObject o) => MouseEvent.created(o));
  Stream get onShapeChanged => getStream(this, 'shape_changed');
  Stream get onTitleChanged => getStream(this, 'title_changed');
  Stream get onVisibleChanged => getStream(this, 'visible_changed');
  Stream get onZindexChanged => getStream(this, 'zindex_changed');
}

@GeneratedFrom(_MarkerLabel)
@anonymous
class MarkerLabel extends JsInterface {
  MarkerLabel() : this.created(JsObject(context['Object']));
  MarkerLabel.created(JsObject o) : super.created(o);

  set color(String _color) {
    asJsObject(this)['color'] = _color;
  }

  String get color => asJsObject(this)['color'];
  set fontFamily(String _fontFamily) {
    asJsObject(this)['fontFamily'] = _fontFamily;
  }

  String get fontFamily => asJsObject(this)['fontFamily'];
  set fontSize(String _fontSize) {
    asJsObject(this)['fontSize'] = _fontSize;
  }

  String get fontSize => asJsObject(this)['fontSize'];
  set fontWeight(String _fontWeight) {
    asJsObject(this)['fontWeight'] = _fontWeight;
  }

  String get fontWeight => asJsObject(this)['fontWeight'];
  set text(String _text) {
    asJsObject(this)['text'] = _text;
  }

  String get text => asJsObject(this)['text'];
}

@GeneratedFrom(_MarkerOptions)
@anonymous
class MarkerOptions extends JsInterface {
  MarkerOptions() : this.created(JsObject(context['Object']));
  MarkerOptions.created(JsObject o) : super.created(o);

  set anchorPoint(Point _anchorPoint) {
    asJsObject(this)['anchorPoint'] = __codec2.encode(_anchorPoint);
  }

  Point get anchorPoint => __codec2.decode(asJsObject(this)['anchorPoint']);
  set animation(Animation _animation) {
    asJsObject(this)['animation'] = __codec83.encode(_animation);
  }

  Animation get animation => __codec83.decode(asJsObject(this)['animation']);
  set attribution(Attribution _attribution) {
    asJsObject(this)['attribution'] = __codec84.encode(_attribution);
  }

  Attribution get attribution =>
      __codec84.decode(asJsObject(this)['attribution']);
  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set crossOnDrag(bool _crossOnDrag) {
    asJsObject(this)['crossOnDrag'] = _crossOnDrag;
  }

  bool get crossOnDrag => asJsObject(this)['crossOnDrag'];
  set cursor(String _cursor) {
    asJsObject(this)['cursor'] = _cursor;
  }

  String get cursor => asJsObject(this)['cursor'];
  set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }

  bool get draggable => asJsObject(this)['draggable'];
  set _icon(dynamic __icon) {
    asJsObject(this)['icon'] = __codec9.encode(__icon);
  }

  dynamic get _icon => __codec9.decode(asJsObject(this)['icon']);
  dynamic /*String|Icon|GSymbol*/ get icon => (ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<Icon>((o) => Icon.created(o)))
        ..add(JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o))))
      .decode(_icon);
  set icon(dynamic /*String|Icon|GSymbol*/ icon) {
    _icon = (ChainedCodec()
          ..add(IdentityCodec<String>())
          ..add(JsInterfaceCodec<Icon>((o) => Icon.created(o)))
          ..add(JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o))))
        .encode(icon);
  }

  set _label(dynamic __label) {
    asJsObject(this)['label'] = __codec9.encode(__label);
  }

  dynamic get _label => __codec9.decode(asJsObject(this)['label']);
  dynamic /*String|MarkerLabel*/ get label => (ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<MarkerLabel>((o) => MarkerLabel.created(o))))
      .decode(_label);
  set label(dynamic /*String|MarkerLabel*/ label) {
    _label = (ChainedCodec()
          ..add(IdentityCodec<String>())
          ..add(JsInterfaceCodec<MarkerLabel>((o) => MarkerLabel.created(o))))
        .encode(label);
  }

  set _map(dynamic __map) {
    asJsObject(this)['map'] = __codec9.encode(__map);
  }

  dynamic get _map => __codec9.decode(asJsObject(this)['map']);
  dynamic /*GMap|StreetViewPanorama*/ get map => (ChainedCodec()
        ..add(JsInterfaceCodec<GMap>(
            (o) => GMap.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Map'] as JsFunction)))
        ..add(JsInterfaceCodec<StreetViewPanorama>(
            (o) => StreetViewPanorama.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']
                    as JsFunction))))
      .decode(_map);
  set map(dynamic /*GMap|StreetViewPanorama*/ map) {
    _map = (ChainedCodec()
          ..add(JsInterfaceCodec<GMap>(
              (o) => GMap.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(context['google']['maps']['Map'] as JsFunction)))
          ..add(JsInterfaceCodec<StreetViewPanorama>(
              (o) => StreetViewPanorama.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(context['google']['maps']['StreetViewPanorama']
                      as JsFunction))))
        .encode(map);
  }

  set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }

  num get opacity => asJsObject(this)['opacity'];
  set optimized(bool _optimized) {
    asJsObject(this)['optimized'] = _optimized;
  }

  bool get optimized => asJsObject(this)['optimized'];
  set place(MarkerPlace _place) {
    asJsObject(this)['place'] = __codec86.encode(_place);
  }

  MarkerPlace get place => __codec86.decode(asJsObject(this)['place']);
  set position(LatLng _position) {
    asJsObject(this)['position'] = __codec0.encode(_position);
  }

  LatLng get position => __codec0.decode(asJsObject(this)['position']);
  set shape(MarkerShape _shape) {
    asJsObject(this)['shape'] = __codec29.encode(_shape);
  }

  MarkerShape get shape => __codec29.decode(asJsObject(this)['shape']);
  set title(String _title) {
    asJsObject(this)['title'] = _title;
  }

  String get title => asJsObject(this)['title'];
  set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }

  bool get visible => asJsObject(this)['visible'];
  set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }

  num get zIndex => asJsObject(this)['zIndex'];
}

@GeneratedFrom(_MarkerShape)
@anonymous
class MarkerShape extends JsInterface {
  MarkerShape() : this.created(JsObject(context['Object']));
  MarkerShape.created(JsObject o) : super.created(o);

  set coords(List<num> _coords) {
    asJsObject(this)['coords'] = __codec87.encode(_coords);
  }

  List<num> get coords => __codec87.decode(asJsObject(this)['coords']);
  set type(String _type) {
    asJsObject(this)['type'] = _type;
  }

  String get type => asJsObject(this)['type'];
}

@GeneratedFrom(_OverlayView)
@JsName('google.maps.OverlayView')
class OverlayView extends JsInterface {
  OverlayView()
      : this.created(JsObject(context['google']['maps']['OverlayView']));
  OverlayView.created(JsObject o) : super.created(o);

  set draw(void Function() _draw) {
    asJsObject(this)['draw'] = __codec88.encode(_draw);
  }

  void Function() get draw => __codec88.decode(asJsObject(this)['draw']);
  dynamic /*GMap|StreetViewPanorama*/ get map => (ChainedCodec()
        ..add(JsInterfaceCodec<GMap>(
            (o) => GMap.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Map'] as JsFunction)))
        ..add(JsInterfaceCodec<StreetViewPanorama>(
            (o) => StreetViewPanorama.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']
                    as JsFunction))))
      .decode(_getMap());
  dynamic _getMap() => __codec9.decode(asJsObject(this).callMethod('getMap'));
  MapPanes get panes => _getPanes();
  MapPanes _getPanes() =>
      __codec89.decode(asJsObject(this).callMethod('getPanes'));
  MapCanvasProjection get projection => _getProjection();
  MapCanvasProjection _getProjection() =>
      __codec90.decode(asJsObject(this).callMethod('getProjection'));
  set onAdd(void Function() _onAdd) {
    asJsObject(this)['onAdd'] = __codec88.encode(_onAdd);
  }

  void Function() get onAdd => __codec88.decode(asJsObject(this)['onAdd']);
  set onRemove(void Function() _onRemove) {
    asJsObject(this)['onRemove'] = __codec88.encode(_onRemove);
  }

  void Function() get onRemove =>
      __codec88.decode(asJsObject(this)['onRemove']);
  set map(dynamic /*GMap|StreetViewPanorama*/ map) => _setMap((ChainedCodec()
        ..add(JsInterfaceCodec<GMap>(
            (o) => GMap.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Map'] as JsFunction)))
        ..add(JsInterfaceCodec<StreetViewPanorama>(
            (o) => StreetViewPanorama.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']
                    as JsFunction))))
      .encode(map));
  void _setMap(dynamic /*GMap|StreetViewPanorama*/ map) {
    asJsObject(this).callMethod('setMap', [__codec9.encode(map)]);
  }
}

@GeneratedFrom(_PolyMouseEvent)
@anonymous
class PolyMouseEvent extends MouseEvent {
  PolyMouseEvent() : this.created(JsObject(context['Object']));
  PolyMouseEvent.created(JsObject o) : super.created(o);

  set edge(num _edge) {
    asJsObject(this)['edge'] = _edge;
  }

  num get edge => asJsObject(this)['edge'];
  set path(num _path) {
    asJsObject(this)['path'] = _path;
  }

  num get path => asJsObject(this)['path'];
  set vertex(num _vertex) {
    asJsObject(this)['vertex'] = _vertex;
  }

  num get vertex => asJsObject(this)['vertex'];
}

@GeneratedFrom(_Polygon)
@JsName('google.maps.Polygon')
class Polygon extends MVCObject {
  Polygon([PolygonOptions opts])
      : this.created(JsObject(
            context['google']['maps']['Polygon'], [__codec91.encode(opts)]));
  Polygon.created(JsObject o) : super.created(o);

  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  MVCArray<LatLng> get path =>
      JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
              o,
              JsInterfaceCodec<LatLng>(
                  (o) => LatLng.created(o),
                  (o) =>
                      o != null &&
                      o.instanceof(
                          context['google']['maps']['LatLng'] as JsFunction))))
          .decode(_getPath() as JsObject);
  dynamic _getPath() => __codec9.decode(asJsObject(this).callMethod('getPath'));
  MVCArray<MVCArray<LatLng>> get paths => JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
          (o) => MVCArray<MVCArray<LatLng>>.created(
              o,
              JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
                  o,
                  JsInterfaceCodec<LatLng>(
                      (o) => LatLng.created(o),
                      (o) =>
                          o != null &&
                          o.instanceof(context['google']['maps']['LatLng'] as JsFunction))))))
      .decode(_getPaths() as JsObject);
  dynamic _getPaths() =>
      __codec9.decode(asJsObject(this).callMethod('getPaths'));
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable]);
  }

  set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable]);
  }

  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }

  set options(PolygonOptions options) => _setOptions(options);
  void _setOptions(PolygonOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec91.encode(options)]);
  }

  set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) => _setPath((ChainedCodec()
        ..add(JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
            o,
            JsInterfaceCodec<LatLng>(
                (o) => LatLng.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['LatLng'] as JsFunction)))))
        ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>(
            (o) => LatLng.created(o),
            (o) =>
                o != null &&
                o.instanceof(
                    context['google']['maps']['LatLng'] as JsFunction)))))
      .encode(path));
  void _setPath(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) {
    asJsObject(this).callMethod('setPath', [__codec9.encode(path)]);
  }

  set paths(dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) =>
      _setPaths((ChainedCodec()
            ..add(JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>((o) =>
                MVCArray<MVCArray<LatLng>>.created(
                    o,
                    JsInterfaceCodec<MVCArray<LatLng>>((o) =>
                        MVCArray<LatLng>.created(
                            o,
                            JsInterfaceCodec<LatLng>(
                                (o) => LatLng.created(o),
                                (o) =>
                                    o != null &&
                                    o.instanceof(
                                        context['google']['maps']['LatLng'] as JsFunction)))))))
            ..add(JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(o, JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
            ..add(JsListCodec<List<LatLng>>(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
            ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
          .encode(paths));
  void _setPaths(
      dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) {
    asJsObject(this).callMethod('setPaths', [__codec9.encode(paths)]);
  }

  set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible]);
  }

  Stream<PolyMouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => PolyMouseEvent.created(o));
  Stream<MouseEvent> get onDrag =>
      getStream(this, 'drag', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragend =>
      getStream(this, 'dragend', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart =>
      getStream(this, 'dragstart', (JsObject o) => MouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousedown =>
      getStream(this, 'mousedown', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousemove =>
      getStream(this, 'mousemove', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseout =>
      getStream(this, 'mouseout', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseover =>
      getStream(this, 'mouseover', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseup =>
      getStream(this, 'mouseup', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onRightclick =>
      getStream(this, 'rightclick', (JsObject o) => PolyMouseEvent.created(o));
}

@GeneratedFrom(_PolygonOptions)
@anonymous
class PolygonOptions extends JsInterface {
  PolygonOptions() : this.created(JsObject(context['Object']));
  PolygonOptions.created(JsObject o) : super.created(o);

  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }

  bool get draggable => asJsObject(this)['draggable'];
  set editable(bool _editable) {
    asJsObject(this)['editable'] = _editable;
  }

  bool get editable => asJsObject(this)['editable'];
  set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }

  String get fillColor => asJsObject(this)['fillColor'];
  set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }

  num get fillOpacity => asJsObject(this)['fillOpacity'];
  set geodesic(bool _geodesic) {
    asJsObject(this)['geodesic'] = _geodesic;
  }

  bool get geodesic => asJsObject(this)['geodesic'];
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec16.encode(_map);
  }

  GMap get map => __codec16.decode(asJsObject(this)['map']);
  set _paths(dynamic __paths) {
    asJsObject(this)['paths'] = __codec9.encode(__paths);
  }

  dynamic get _paths => __codec9.decode(asJsObject(this)['paths']);
  dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ get paths => (ChainedCodec()
        ..add(JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>((o) => MVCArray<MVCArray<LatLng>>.created(
            o,
            JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
                o,
                JsInterfaceCodec<LatLng>(
                    (o) => LatLng.created(o),
                    (o) =>
                        o != null &&
                        o.instanceof(context['google']['maps']['LatLng']
                            as JsFunction)))))))
        ..add(JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
            o, JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
        ..add(JsListCodec<List<LatLng>>(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
        ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
      .decode(_paths);
  set paths(
      dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) {
    _paths = (ChainedCodec()
          ..add(JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>((o) =>
              MVCArray<MVCArray<LatLng>>.created(
                  o,
                  JsInterfaceCodec<MVCArray<LatLng>>((o) =>
                      MVCArray<LatLng>.created(
                          o,
                          JsInterfaceCodec<LatLng>(
                              (o) => LatLng.created(o),
                              (o) =>
                                  o != null &&
                                  o.instanceof(context['google']['maps']
                                      ['LatLng'] as JsFunction)))))))
          ..add(
              JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(o, JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
          ..add(JsListCodec<List<LatLng>>(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
          ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
        .encode(paths);
  }

  set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }

  String get strokeColor => asJsObject(this)['strokeColor'];
  set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }

  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  set strokePosition(StrokePosition _strokePosition) {
    asJsObject(this)['strokePosition'] = __codec78.encode(_strokePosition);
  }

  StrokePosition get strokePosition =>
      __codec78.decode(asJsObject(this)['strokePosition']);
  set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }

  num get strokeWeight => asJsObject(this)['strokeWeight'];
  set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }

  bool get visible => asJsObject(this)['visible'];
  set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }

  num get zIndex => asJsObject(this)['zIndex'];
}

@GeneratedFrom(_Polyline)
@JsName('google.maps.Polyline')
class Polyline extends MVCObject {
  Polyline([PolylineOptions opts])
      : this.created(JsObject(
            context['google']['maps']['Polyline'], [__codec92.encode(opts)]));
  Polyline.created(JsObject o) : super.created(o);

  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  MVCArray<LatLng> get path =>
      JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
              o,
              JsInterfaceCodec<LatLng>(
                  (o) => LatLng.created(o),
                  (o) =>
                      o != null &&
                      o.instanceof(
                          context['google']['maps']['LatLng'] as JsFunction))))
          .decode(_getPath() as JsObject);
  dynamic _getPath() => __codec9.decode(asJsObject(this).callMethod('getPath'));
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable]);
  }

  set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable]);
  }

  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }

  set options(PolylineOptions options) => _setOptions(options);
  void _setOptions(PolylineOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec92.encode(options)]);
  }

  set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) => _setPath((ChainedCodec()
        ..add(JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
            o,
            JsInterfaceCodec<LatLng>(
                (o) => LatLng.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['LatLng'] as JsFunction)))))
        ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>(
            (o) => LatLng.created(o),
            (o) =>
                o != null &&
                o.instanceof(
                    context['google']['maps']['LatLng'] as JsFunction)))))
      .encode(path));
  void _setPath(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) {
    asJsObject(this).callMethod('setPath', [__codec9.encode(path)]);
  }

  set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible]);
  }

  Stream<PolyMouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => PolyMouseEvent.created(o));
  Stream<MouseEvent> get onDrag =>
      getStream(this, 'drag', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragend =>
      getStream(this, 'dragend', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart =>
      getStream(this, 'dragstart', (JsObject o) => MouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousedown =>
      getStream(this, 'mousedown', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousemove =>
      getStream(this, 'mousemove', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseout =>
      getStream(this, 'mouseout', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseover =>
      getStream(this, 'mouseover', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseup =>
      getStream(this, 'mouseup', (JsObject o) => PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onRightclick =>
      getStream(this, 'rightclick', (JsObject o) => PolyMouseEvent.created(o));
}

@GeneratedFrom(_PolylineOptions)
@anonymous
class PolylineOptions extends JsInterface {
  PolylineOptions() : this.created(JsObject(context['Object']));
  PolylineOptions.created(JsObject o) : super.created(o);

  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }

  bool get draggable => asJsObject(this)['draggable'];
  set editable(bool _editable) {
    asJsObject(this)['editable'] = _editable;
  }

  bool get editable => asJsObject(this)['editable'];
  set geodesic(bool _geodesic) {
    asJsObject(this)['geodesic'] = _geodesic;
  }

  bool get geodesic => asJsObject(this)['geodesic'];
  set icons(List<IconSequence> _icons) {
    asJsObject(this)['icons'] = __codec94.encode(_icons);
  }

  List<IconSequence> get icons => __codec94.decode(asJsObject(this)['icons']);
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec16.encode(_map);
  }

  GMap get map => __codec16.decode(asJsObject(this)['map']);
  set _path(dynamic __path) {
    asJsObject(this)['path'] = __codec9.encode(__path);
  }

  dynamic get _path => __codec9.decode(asJsObject(this)['path']);
  dynamic /*MVCArray<LatLng>|List<LatLng>*/ get path => (ChainedCodec()
        ..add(JsInterfaceCodec<MVCArray<LatLng>>((o) =>
            MVCArray<LatLng>.created(
                o,
                JsInterfaceCodec<LatLng>(
                    (o) => LatLng.created(o),
                    (o) =>
                        o != null &&
                        o.instanceof(context['google']['maps']['LatLng']
                            as JsFunction)))))
        ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>(
            (o) => LatLng.created(o),
            (o) =>
                o != null &&
                o.instanceof(
                    context['google']['maps']['LatLng'] as JsFunction)))))
      .decode(_path);
  set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) {
    _path = (ChainedCodec()
          ..add(JsInterfaceCodec<MVCArray<LatLng>>((o) =>
              MVCArray<LatLng>.created(
                  o,
                  JsInterfaceCodec<LatLng>(
                      (o) => LatLng.created(o),
                      (o) =>
                          o != null &&
                          o.instanceof(context['google']['maps']['LatLng']
                              as JsFunction)))))
          ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))))
        .encode(path);
  }

  set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }

  String get strokeColor => asJsObject(this)['strokeColor'];
  set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }

  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }

  num get strokeWeight => asJsObject(this)['strokeWeight'];
  set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }

  bool get visible => asJsObject(this)['visible'];
  set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }

  num get zIndex => asJsObject(this)['zIndex'];
}

@GeneratedFrom(_Rectangle)
@JsName('google.maps.Rectangle')
class Rectangle extends MVCObject {
  Rectangle([RectangleOptions opts])
      : this.created(JsObject(
            context['google']['maps']['Rectangle'], [__codec95.encode(opts)]));
  Rectangle.created(JsObject o) : super.created(o);

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec1.decode(asJsObject(this).callMethod('getBounds'));
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('setBounds', [__codec1.encode(bounds)]);
  }

  set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable]);
  }

  set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable]);
  }

  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }

  set options(RectangleOptions options) => _setOptions(options);
  void _setOptions(RectangleOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec95.encode(options)]);
  }

  set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible]);
  }

  Stream get onBoundsChanged => getStream(this, 'bounds_changed');
  Stream<MouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDrag =>
      getStream(this, 'drag', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragend =>
      getStream(this, 'dragend', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart =>
      getStream(this, 'dragstart', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMousedown =>
      getStream(this, 'mousedown', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMousemove =>
      getStream(this, 'mousemove', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout =>
      getStream(this, 'mouseout', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover =>
      getStream(this, 'mouseover', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup =>
      getStream(this, 'mouseup', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onRightclick =>
      getStream(this, 'rightclick', (JsObject o) => MouseEvent.created(o));
}

@GeneratedFrom(_RectangleOptions)
@anonymous
class RectangleOptions extends JsInterface {
  RectangleOptions() : this.created(JsObject(context['Object']));
  RectangleOptions.created(JsObject o) : super.created(o);

  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }

  bool get draggable => asJsObject(this)['draggable'];
  set editable(bool _editable) {
    asJsObject(this)['editable'] = _editable;
  }

  bool get editable => asJsObject(this)['editable'];
  set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }

  String get fillColor => asJsObject(this)['fillColor'];
  set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }

  num get fillOpacity => asJsObject(this)['fillOpacity'];
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec16.encode(_map);
  }

  GMap get map => __codec16.decode(asJsObject(this)['map']);
  set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }

  String get strokeColor => asJsObject(this)['strokeColor'];
  set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }

  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  set strokePosition(StrokePosition _strokePosition) {
    asJsObject(this)['strokePosition'] = __codec78.encode(_strokePosition);
  }

  StrokePosition get strokePosition =>
      __codec78.decode(asJsObject(this)['strokePosition']);
  set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }

  num get strokeWeight => asJsObject(this)['strokeWeight'];
  set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }

  bool get visible => asJsObject(this)['visible'];
  set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }

  num get zIndex => asJsObject(this)['zIndex'];
}

class StrokePosition extends JsEnum {
  static final values = <StrokePosition>[CENTER, INSIDE, OUTSIDE];
  static final CENTER = StrokePosition._(
      'CENTER', context['google']['maps']['StrokePosition']['CENTER']);
  static final INSIDE = StrokePosition._(
      'INSIDE', context['google']['maps']['StrokePosition']['INSIDE']);
  static final OUTSIDE = StrokePosition._(
      'OUTSIDE', context['google']['maps']['StrokePosition']['OUTSIDE']);
  final String _name;
  StrokePosition._(this._name, o) : super.created(o);

  @override
  String toString() => 'StrokePosition.$_name';
}

@GeneratedFrom(_GSymbol)
@anonymous
class GSymbol extends JsInterface {
  GSymbol() : this.created(JsObject(context['Object']));
  GSymbol.created(JsObject o) : super.created(o);

  set anchor(Point _anchor) {
    asJsObject(this)['anchor'] = __codec2.encode(_anchor);
  }

  Point get anchor => __codec2.decode(asJsObject(this)['anchor']);
  set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }

  String get fillColor => asJsObject(this)['fillColor'];
  set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }

  num get fillOpacity => asJsObject(this)['fillOpacity'];
  set labelOrigin(Point _labelOrigin) {
    asJsObject(this)['labelOrigin'] = __codec2.encode(_labelOrigin);
  }

  Point get labelOrigin => __codec2.decode(asJsObject(this)['labelOrigin']);
  set _path(dynamic __path) {
    asJsObject(this)['path'] = __codec9.encode(__path);
  }

  dynamic get _path => __codec9.decode(asJsObject(this)['path']);
  dynamic /*SymbolPath|String*/ get path => (ChainedCodec()
        ..add(BiMapCodec<SymbolPath, dynamic>({
          SymbolPath.BACKWARD_CLOSED_ARROW: context['google']['maps']
              ['SymbolPath']['BACKWARD_CLOSED_ARROW'],
          SymbolPath.BACKWARD_OPEN_ARROW: context['google']['maps']
              ['SymbolPath']['BACKWARD_OPEN_ARROW'],
          SymbolPath.CIRCLE: context['google']['maps']['SymbolPath']['CIRCLE'],
          SymbolPath.FORWARD_CLOSED_ARROW: context['google']['maps']
              ['SymbolPath']['FORWARD_CLOSED_ARROW'],
          SymbolPath.FORWARD_OPEN_ARROW: context['google']['maps']['SymbolPath']
              ['FORWARD_OPEN_ARROW']
        }))
        ..add(IdentityCodec<String>()))
      .decode(_path);
  set path(dynamic /*SymbolPath|String*/ path) {
    _path = (ChainedCodec()
          ..add(BiMapCodec<SymbolPath, dynamic>({
            SymbolPath.BACKWARD_CLOSED_ARROW: context['google']['maps']
                ['SymbolPath']['BACKWARD_CLOSED_ARROW'],
            SymbolPath.BACKWARD_OPEN_ARROW: context['google']['maps']
                ['SymbolPath']['BACKWARD_OPEN_ARROW'],
            SymbolPath.CIRCLE: context['google']['maps']['SymbolPath']
                ['CIRCLE'],
            SymbolPath.FORWARD_CLOSED_ARROW: context['google']['maps']
                ['SymbolPath']['FORWARD_CLOSED_ARROW'],
            SymbolPath.FORWARD_OPEN_ARROW: context['google']['maps']
                ['SymbolPath']['FORWARD_OPEN_ARROW']
          }))
          ..add(IdentityCodec<String>()))
        .encode(path);
  }

  set rotation(num _rotation) {
    asJsObject(this)['rotation'] = _rotation;
  }

  num get rotation => asJsObject(this)['rotation'];
  set scale(num _scale) {
    asJsObject(this)['scale'] = _scale;
  }

  num get scale => asJsObject(this)['scale'];
  set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }

  String get strokeColor => asJsObject(this)['strokeColor'];
  set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }

  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }

  num get strokeWeight => asJsObject(this)['strokeWeight'];
}

class SymbolPath extends JsEnum {
  static final values = <SymbolPath>[
    BACKWARD_CLOSED_ARROW,
    BACKWARD_OPEN_ARROW,
    CIRCLE,
    FORWARD_CLOSED_ARROW,
    FORWARD_OPEN_ARROW
  ];
  static final BACKWARD_CLOSED_ARROW = SymbolPath._('BACKWARD_CLOSED_ARROW',
      context['google']['maps']['SymbolPath']['BACKWARD_CLOSED_ARROW']);
  static final BACKWARD_OPEN_ARROW = SymbolPath._('BACKWARD_OPEN_ARROW',
      context['google']['maps']['SymbolPath']['BACKWARD_OPEN_ARROW']);
  static final CIRCLE =
      SymbolPath._('CIRCLE', context['google']['maps']['SymbolPath']['CIRCLE']);
  static final FORWARD_CLOSED_ARROW = SymbolPath._('FORWARD_CLOSED_ARROW',
      context['google']['maps']['SymbolPath']['FORWARD_CLOSED_ARROW']);
  static final FORWARD_OPEN_ARROW = SymbolPath._('FORWARD_OPEN_ARROW',
      context['google']['maps']['SymbolPath']['FORWARD_OPEN_ARROW']);
  final String _name;
  SymbolPath._(this._name, o) : super.created(o);

  @override
  String toString() => 'SymbolPath.$_name';
}

@GeneratedFrom(_Attribution)
@anonymous
class Attribution extends JsInterface {
  Attribution() : this.created(JsObject(context['Object']));
  Attribution.created(JsObject o) : super.created(o);

  set iosDeepLinkId(String _iosDeepLinkId) {
    asJsObject(this)['iosDeepLinkId'] = _iosDeepLinkId;
  }

  String get iosDeepLinkId => asJsObject(this)['iosDeepLinkId'];
  set source(String _source) {
    asJsObject(this)['source'] = _source;
  }

  String get source => asJsObject(this)['source'];
  set webUrl(String _webUrl) {
    asJsObject(this)['webUrl'] = _webUrl;
  }

  String get webUrl => asJsObject(this)['webUrl'];
}

@GeneratedFrom(_MarkerPlace)
@anonymous
class MarkerPlace extends JsInterface {
  MarkerPlace() : this.created(JsObject(context['Object']));
  MarkerPlace.created(JsObject o) : super.created(o);

  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec0.encode(_location);
  }

  LatLng get location => __codec0.decode(asJsObject(this)['location']);
  set placeId(String _placeId) {
    asJsObject(this)['placeId'] = _placeId;
  }

  String get placeId => asJsObject(this)['placeId'];
  set query(String _query) {
    asJsObject(this)['query'] = _query;
  }

  String get query => asJsObject(this)['query'];
}

@GeneratedFrom(_SaveWidget)
@JsName('google.maps.SaveWidget')
class SaveWidget extends MVCObject {
  SaveWidget(Node container, [SaveWidgetOptions opts])
      : this.created(JsObject(context['google']['maps']['SaveWidget'],
            [container, __codec96.encode(opts)]));
  SaveWidget.created(JsObject o) : super.created(o);

  Attribution get attribution => _getAttribution();
  Attribution _getAttribution() =>
      __codec84.decode(asJsObject(this).callMethod('getAttribution'));
  MarkerPlace get place => _getPlace();
  MarkerPlace _getPlace() =>
      __codec86.decode(asJsObject(this).callMethod('getPlace'));
  set attribution(Attribution attribution) => _setAttribution(attribution);
  void _setAttribution(Attribution attribution) {
    asJsObject(this)
        .callMethod('setAttribution', [__codec84.encode(attribution)]);
  }

  set options(SaveWidgetOptions opts) => _setOptions(opts);
  void _setOptions(SaveWidgetOptions opts) {
    asJsObject(this).callMethod('setOptions', [__codec96.encode(opts)]);
  }

  set place(MarkerPlace place) => _setPlace(place);
  void _setPlace(MarkerPlace place) {
    asJsObject(this).callMethod('setPlace', [__codec86.encode(place)]);
  }
}

@GeneratedFrom(_SaveWidgetOptions)
@anonymous
class SaveWidgetOptions extends JsInterface {
  SaveWidgetOptions() : this.created(JsObject(context['Object']));
  SaveWidgetOptions.created(JsObject o) : super.created(o);

  set attribution(Attribution _attribution) {
    asJsObject(this)['attribution'] = __codec84.encode(_attribution);
  }

  Attribution get attribution =>
      __codec84.decode(asJsObject(this)['attribution']);
  set place(MarkerPlace _place) {
    asJsObject(this)['place'] = __codec86.encode(_place);
  }

  MarkerPlace get place => __codec86.decode(asJsObject(this)['place']);
}

@GeneratedFrom(_DirectionsGeocodedWaypoint)
@anonymous
class DirectionsGeocodedWaypoint extends JsInterface {
  DirectionsGeocodedWaypoint() : this.created(JsObject(context['Object']));
  DirectionsGeocodedWaypoint.created(JsObject o) : super.created(o);

  set _partial_match(bool __partial_match) {
    asJsObject(this)['partial_match'] = __partial_match;
  }

  bool get _partial_match => asJsObject(this)['partial_match'];
  bool get partialMatch => _partial_match;
  set partialMatch(bool partialMatch) {
    _partial_match = partialMatch;
  }

  set _place_id(String __place_id) {
    asJsObject(this)['place_id'] = __place_id;
  }

  String get _place_id => asJsObject(this)['place_id'];
  String get placeId => _place_id;
  set placeId(String placeId) {
    _place_id = placeId;
  }

  set types(List<String> _types) {
    asJsObject(this)['types'] = __codec15.encode(_types);
  }

  List<String> get types => __codec15.decode(asJsObject(this)['types']);
}

@GeneratedFrom(_DirectionsLeg)
@anonymous
class DirectionsLeg extends JsInterface {
  DirectionsLeg() : this.created(JsObject(context['Object']));
  DirectionsLeg.created(JsObject o) : super.created(o);

  set _arrival_time(Time __arrival_time) {
    asJsObject(this)['arrival_time'] = __codec97.encode(__arrival_time);
  }

  Time get _arrival_time => __codec97.decode(asJsObject(this)['arrival_time']);
  Time get arrivalTime => _arrival_time;
  set arrivalTime(Time arrivalTime) {
    _arrival_time = arrivalTime;
  }

  set _departure_time(Time __departure_time) {
    asJsObject(this)['departure_time'] = __codec97.encode(__departure_time);
  }

  Time get _departure_time =>
      __codec97.decode(asJsObject(this)['departure_time']);
  Time get departureTime => _departure_time;
  set departureTime(Time departureTime) {
    _departure_time = departureTime;
  }

  set distance(Distance _distance) {
    asJsObject(this)['distance'] = __codec98.encode(_distance);
  }

  Distance get distance => __codec98.decode(asJsObject(this)['distance']);
  set duration(GDuration _duration) {
    asJsObject(this)['duration'] = __codec99.encode(_duration);
  }

  GDuration get duration => __codec99.decode(asJsObject(this)['duration']);
  set _duration_in_traffic(GDuration __duration_in_traffic) {
    asJsObject(this)['duration_in_traffic'] =
        __codec99.encode(__duration_in_traffic);
  }

  GDuration get _duration_in_traffic =>
      __codec99.decode(asJsObject(this)['duration_in_traffic']);
  GDuration get durationInTraffic => _duration_in_traffic;
  set durationInTraffic(GDuration durationInTraffic) {
    _duration_in_traffic = durationInTraffic;
  }

  set _end_address(String __end_address) {
    asJsObject(this)['end_address'] = __end_address;
  }

  String get _end_address => asJsObject(this)['end_address'];
  String get endAddress => _end_address;
  set endAddress(String endAddress) {
    _end_address = endAddress;
  }

  set _end_location(LatLng __end_location) {
    asJsObject(this)['end_location'] = __codec0.encode(__end_location);
  }

  LatLng get _end_location => __codec0.decode(asJsObject(this)['end_location']);
  LatLng get endLocation => _end_location;
  set endLocation(LatLng endLocation) {
    _end_location = endLocation;
  }

  set _start_address(String __start_address) {
    asJsObject(this)['start_address'] = __start_address;
  }

  String get _start_address => asJsObject(this)['start_address'];
  String get startAddress => _start_address;
  set startAddress(String startAddress) {
    _start_address = startAddress;
  }

  set _start_location(LatLng __start_location) {
    asJsObject(this)['start_location'] = __codec0.encode(__start_location);
  }

  LatLng get _start_location =>
      __codec0.decode(asJsObject(this)['start_location']);
  LatLng get startLocation => _start_location;
  set startLocation(LatLng startLocation) {
    _start_location = startLocation;
  }

  set steps(List<DirectionsStep> _steps) {
    asJsObject(this)['steps'] = __codec101.encode(_steps);
  }

  List<DirectionsStep> get steps =>
      __codec101.decode(asJsObject(this)['steps']);
  set _via_waypoints(List<LatLng> __via_waypoints) {
    asJsObject(this)['via_waypoints'] = __codec22.encode(__via_waypoints);
  }

  List<LatLng> get _via_waypoints =>
      __codec22.decode(asJsObject(this)['via_waypoints']);
  List<LatLng> get viaWaypoints => _via_waypoints;
  set viaWaypoints(List<LatLng> viaWaypoints) {
    _via_waypoints = viaWaypoints;
  }
}

@GeneratedFrom(_DirectionsRenderer)
@JsName('google.maps.DirectionsRenderer')
class DirectionsRenderer extends MVCObject {
  DirectionsRenderer([DirectionsRendererOptions opts])
      : this.created(JsObject(context['google']['maps']['DirectionsRenderer'],
            [__codec102.encode(opts)]));
  DirectionsRenderer.created(JsObject o) : super.created(o);

  DirectionsResult get directions => _getDirections();
  DirectionsResult _getDirections() =>
      __codec103.decode(asJsObject(this).callMethod('getDirections'));
  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  Node get panel => _getPanel();
  Node _getPanel() => asJsObject(this).callMethod('getPanel');
  num get routeIndex => _getRouteIndex();
  num _getRouteIndex() => asJsObject(this).callMethod('getRouteIndex');
  set directions(DirectionsResult directions) => _setDirections(directions);
  void _setDirections(DirectionsResult directions) {
    asJsObject(this)
        .callMethod('setDirections', [__codec103.encode(directions)]);
  }

  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }

  set options(DirectionsRendererOptions options) => _setOptions(options);
  void _setOptions(DirectionsRendererOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec102.encode(options)]);
  }

  set panel(Node panel) => _setPanel(panel);
  void _setPanel(Node panel) {
    asJsObject(this).callMethod('setPanel', [panel]);
  }

  set routeIndex(num routeIndex) => _setRouteIndex(routeIndex);
  void _setRouteIndex(num routeIndex) {
    asJsObject(this).callMethod('setRouteIndex', [routeIndex]);
  }

  Stream get onDirectionsChanged => getStream(this, 'directions_changed');
}

@GeneratedFrom(_DirectionsRendererOptions)
@anonymous
class DirectionsRendererOptions extends JsInterface {
  DirectionsRendererOptions() : this.created(JsObject(context['Object']));
  DirectionsRendererOptions.created(JsObject o) : super.created(o);

  set directions(DirectionsResult _directions) {
    asJsObject(this)['directions'] = __codec103.encode(_directions);
  }

  DirectionsResult get directions =>
      __codec103.decode(asJsObject(this)['directions']);
  set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }

  bool get draggable => asJsObject(this)['draggable'];
  set hideRouteList(bool _hideRouteList) {
    asJsObject(this)['hideRouteList'] = _hideRouteList;
  }

  bool get hideRouteList => asJsObject(this)['hideRouteList'];
  set infoWindow(InfoWindow _infoWindow) {
    asJsObject(this)['infoWindow'] = __codec104.encode(_infoWindow);
  }

  InfoWindow get infoWindow =>
      __codec104.decode(asJsObject(this)['infoWindow']);
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec16.encode(_map);
  }

  GMap get map => __codec16.decode(asJsObject(this)['map']);
  set markerOptions(MarkerOptions _markerOptions) {
    asJsObject(this)['markerOptions'] = __codec82.encode(_markerOptions);
  }

  MarkerOptions get markerOptions =>
      __codec82.decode(asJsObject(this)['markerOptions']);
  set panel(Node _panel) {
    asJsObject(this)['panel'] = _panel;
  }

  Node get panel => asJsObject(this)['panel'];
  set polylineOptions(PolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] = __codec92.encode(_polylineOptions);
  }

  PolylineOptions get polylineOptions =>
      __codec92.decode(asJsObject(this)['polylineOptions']);
  set preserveViewport(bool _preserveViewport) {
    asJsObject(this)['preserveViewport'] = _preserveViewport;
  }

  bool get preserveViewport => asJsObject(this)['preserveViewport'];
  set routeIndex(num _routeIndex) {
    asJsObject(this)['routeIndex'] = _routeIndex;
  }

  num get routeIndex => asJsObject(this)['routeIndex'];
  set suppressBicyclingLayer(bool _suppressBicyclingLayer) {
    asJsObject(this)['suppressBicyclingLayer'] = _suppressBicyclingLayer;
  }

  bool get suppressBicyclingLayer => asJsObject(this)['suppressBicyclingLayer'];
  set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }

  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  set suppressMarkers(bool _suppressMarkers) {
    asJsObject(this)['suppressMarkers'] = _suppressMarkers;
  }

  bool get suppressMarkers => asJsObject(this)['suppressMarkers'];
  set suppressPolylines(bool _suppressPolylines) {
    asJsObject(this)['suppressPolylines'] = _suppressPolylines;
  }

  bool get suppressPolylines => asJsObject(this)['suppressPolylines'];
}

@GeneratedFrom(_DirectionsRequest)
@anonymous
class DirectionsRequest extends JsInterface {
  DirectionsRequest() : this.created(JsObject(context['Object']));
  DirectionsRequest.created(JsObject o) : super.created(o);

  set avoidFerries(bool _avoidFerries) {
    asJsObject(this)['avoidFerries'] = _avoidFerries;
  }

  bool get avoidFerries => asJsObject(this)['avoidFerries'];
  set avoidHighways(bool _avoidHighways) {
    asJsObject(this)['avoidHighways'] = _avoidHighways;
  }

  bool get avoidHighways => asJsObject(this)['avoidHighways'];
  set avoidTolls(bool _avoidTolls) {
    asJsObject(this)['avoidTolls'] = _avoidTolls;
  }

  bool get avoidTolls => asJsObject(this)['avoidTolls'];
  set _destination(dynamic __destination) {
    asJsObject(this)['destination'] = __codec9.encode(__destination);
  }

  dynamic get _destination => __codec9.decode(asJsObject(this)['destination']);
  dynamic /*LatLng|Place|String*/ get destination => (ChainedCodec()
        ..add(JsInterfaceCodec<LatLng>(
            (o) => LatLng.created(o),
            (o) =>
                o != null &&
                o.instanceof(
                    context['google']['maps']['LatLng'] as JsFunction)))
        ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
        ..add(IdentityCodec<String>()))
      .decode(_destination);
  set destination(dynamic /*LatLng|Place|String*/ destination) {
    _destination = (ChainedCodec()
          ..add(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))
          ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
          ..add(IdentityCodec<String>()))
        .encode(destination);
  }

  set drivingOptions(DrivingOptions _drivingOptions) {
    asJsObject(this)['drivingOptions'] = __codec105.encode(_drivingOptions);
  }

  DrivingOptions get drivingOptions =>
      __codec105.decode(asJsObject(this)['drivingOptions']);
  set optimizeWaypoints(bool _optimizeWaypoints) {
    asJsObject(this)['optimizeWaypoints'] = _optimizeWaypoints;
  }

  bool get optimizeWaypoints => asJsObject(this)['optimizeWaypoints'];
  set _origin(dynamic __origin) {
    asJsObject(this)['origin'] = __codec9.encode(__origin);
  }

  dynamic get _origin => __codec9.decode(asJsObject(this)['origin']);
  dynamic /*LatLng|Place|String*/ get origin => (ChainedCodec()
        ..add(JsInterfaceCodec<LatLng>(
            (o) => LatLng.created(o),
            (o) =>
                o != null &&
                o.instanceof(
                    context['google']['maps']['LatLng'] as JsFunction)))
        ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
        ..add(IdentityCodec<String>()))
      .decode(_origin);
  set origin(dynamic /*LatLng|Place|String*/ origin) {
    _origin = (ChainedCodec()
          ..add(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))
          ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
          ..add(IdentityCodec<String>()))
        .encode(origin);
  }

  set provideRouteAlternatives(bool _provideRouteAlternatives) {
    asJsObject(this)['provideRouteAlternatives'] = _provideRouteAlternatives;
  }

  bool get provideRouteAlternatives =>
      asJsObject(this)['provideRouteAlternatives'];
  set region(String _region) {
    asJsObject(this)['region'] = _region;
  }

  String get region => asJsObject(this)['region'];
  set transitOptions(TransitOptions _transitOptions) {
    asJsObject(this)['transitOptions'] = __codec106.encode(_transitOptions);
  }

  TransitOptions get transitOptions =>
      __codec106.decode(asJsObject(this)['transitOptions']);
  set travelMode(TravelMode _travelMode) {
    asJsObject(this)['travelMode'] = __codec107.encode(_travelMode);
  }

  TravelMode get travelMode =>
      __codec107.decode(asJsObject(this)['travelMode']);
  set unitSystem(UnitSystem _unitSystem) {
    asJsObject(this)['unitSystem'] = __codec108.encode(_unitSystem);
  }

  UnitSystem get unitSystem =>
      __codec108.decode(asJsObject(this)['unitSystem']);
  set waypoints(List<DirectionsWaypoint> _waypoints) {
    asJsObject(this)['waypoints'] = __codec110.encode(_waypoints);
  }

  List<DirectionsWaypoint> get waypoints =>
      __codec110.decode(asJsObject(this)['waypoints']);
}

@GeneratedFrom(_DirectionsResult)
@anonymous
class DirectionsResult extends JsInterface {
  DirectionsResult() : this.created(JsObject(context['Object']));
  DirectionsResult.created(JsObject o) : super.created(o);

  set _geocoded_waypoints(
      List<DirectionsGeocodedWaypoint> __geocoded_waypoints) {
    asJsObject(this)['geocoded_waypoints'] =
        __codec112.encode(__geocoded_waypoints);
  }

  List<DirectionsGeocodedWaypoint> get _geocoded_waypoints =>
      __codec112.decode(asJsObject(this)['geocoded_waypoints']);
  List<DirectionsGeocodedWaypoint> get geocodedWaypoints => _geocoded_waypoints;
  set geocodedWaypoints(List<DirectionsGeocodedWaypoint> geocodedWaypoints) {
    _geocoded_waypoints = geocodedWaypoints;
  }

  set routes(List<DirectionsRoute> _routes) {
    asJsObject(this)['routes'] = __codec114.encode(_routes);
  }

  List<DirectionsRoute> get routes =>
      __codec114.decode(asJsObject(this)['routes']);
}

@GeneratedFrom(_DirectionsRoute)
@anonymous
class DirectionsRoute extends JsInterface {
  DirectionsRoute() : this.created(JsObject(context['Object']));
  DirectionsRoute.created(JsObject o) : super.created(o);

  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
  set copyrights(String _copyrights) {
    asJsObject(this)['copyrights'] = _copyrights;
  }

  String get copyrights => asJsObject(this)['copyrights'];
  set fare(TransitFare _fare) {
    asJsObject(this)['fare'] = __codec115.encode(_fare);
  }

  TransitFare get fare => __codec115.decode(asJsObject(this)['fare']);
  set legs(List<DirectionsLeg> _legs) {
    asJsObject(this)['legs'] = __codec117.encode(_legs);
  }

  List<DirectionsLeg> get legs => __codec117.decode(asJsObject(this)['legs']);
  set _overview_path(List<LatLng> __overview_path) {
    asJsObject(this)['overview_path'] = __codec22.encode(__overview_path);
  }

  List<LatLng> get _overview_path =>
      __codec22.decode(asJsObject(this)['overview_path']);
  List<LatLng> get overviewPath => _overview_path;
  set overviewPath(List<LatLng> overviewPath) {
    _overview_path = overviewPath;
  }

  set _overview_polyline(String __overview_polyline) {
    asJsObject(this)['overview_polyline'] = __overview_polyline;
  }

  String get _overview_polyline => asJsObject(this)['overview_polyline'];
  String get overviewPolyline => _overview_polyline;
  set overviewPolyline(String overviewPolyline) {
    _overview_polyline = overviewPolyline;
  }

  set warnings(List<String> _warnings) {
    asJsObject(this)['warnings'] = __codec15.encode(_warnings);
  }

  List<String> get warnings => __codec15.decode(asJsObject(this)['warnings']);
  set _waypoint_order(List<num> __waypoint_order) {
    asJsObject(this)['waypoint_order'] = __codec87.encode(__waypoint_order);
  }

  List<num> get _waypoint_order =>
      __codec87.decode(asJsObject(this)['waypoint_order']);
  List<num> get waypointOrder => _waypoint_order;
  set waypointOrder(List<num> waypointOrder) {
    _waypoint_order = waypointOrder;
  }
}

@GeneratedFrom(_DirectionsService)
@JsName('google.maps.DirectionsService')
class DirectionsService extends JsInterface {
  DirectionsService()
      : this.created(JsObject(context['google']['maps']['DirectionsService']));
  DirectionsService.created(JsObject o) : super.created(o);

  void route(DirectionsRequest request,
      callback(DirectionsResult p1, DirectionsStatus p2)) {
    asJsObject(this).callMethod(
        'route', [__codec118.encode(request), __codec120.encode(callback)]);
  }
}

class DirectionsStatus extends JsEnum {
  static final values = <DirectionsStatus>[
    INVALID_REQUEST,
    MAX_WAYPOINTS_EXCEEDED,
    NOT_FOUND,
    OK,
    OVER_QUERY_LIMIT,
    REQUEST_DENIED,
    UNKNOWN_ERROR,
    ZERO_RESULTS
  ];
  static final INVALID_REQUEST = DirectionsStatus._('INVALID_REQUEST',
      context['google']['maps']['DirectionsStatus']['INVALID_REQUEST']);
  static final MAX_WAYPOINTS_EXCEEDED = DirectionsStatus._(
      'MAX_WAYPOINTS_EXCEEDED',
      context['google']['maps']['DirectionsStatus']['MAX_WAYPOINTS_EXCEEDED']);
  static final NOT_FOUND = DirectionsStatus._(
      'NOT_FOUND', context['google']['maps']['DirectionsStatus']['NOT_FOUND']);
  static final OK = DirectionsStatus._(
      'OK', context['google']['maps']['DirectionsStatus']['OK']);
  static final OVER_QUERY_LIMIT = DirectionsStatus._('OVER_QUERY_LIMIT',
      context['google']['maps']['DirectionsStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = DirectionsStatus._('REQUEST_DENIED',
      context['google']['maps']['DirectionsStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = DirectionsStatus._('UNKNOWN_ERROR',
      context['google']['maps']['DirectionsStatus']['UNKNOWN_ERROR']);
  static final ZERO_RESULTS = DirectionsStatus._('ZERO_RESULTS',
      context['google']['maps']['DirectionsStatus']['ZERO_RESULTS']);
  final String _name;
  DirectionsStatus._(this._name, o) : super.created(o);

  @override
  String toString() => 'DirectionsStatus.$_name';
}

@GeneratedFrom(_DirectionsStep)
@anonymous
class DirectionsStep extends JsInterface {
  DirectionsStep() : this.created(JsObject(context['Object']));
  DirectionsStep.created(JsObject o) : super.created(o);

  set distance(Distance _distance) {
    asJsObject(this)['distance'] = __codec98.encode(_distance);
  }

  Distance get distance => __codec98.decode(asJsObject(this)['distance']);
  set duration(GDuration _duration) {
    asJsObject(this)['duration'] = __codec99.encode(_duration);
  }

  GDuration get duration => __codec99.decode(asJsObject(this)['duration']);
  set _end_location(LatLng __end_location) {
    asJsObject(this)['end_location'] = __codec0.encode(__end_location);
  }

  LatLng get _end_location => __codec0.decode(asJsObject(this)['end_location']);
  LatLng get endLocation => _end_location;
  set endLocation(LatLng endLocation) {
    _end_location = endLocation;
  }

  set instructions(String _instructions) {
    asJsObject(this)['instructions'] = _instructions;
  }

  String get instructions => asJsObject(this)['instructions'];
  set path(List<LatLng> _path) {
    asJsObject(this)['path'] = __codec22.encode(_path);
  }

  List<LatLng> get path => __codec22.decode(asJsObject(this)['path']);
  set _start_location(LatLng __start_location) {
    asJsObject(this)['start_location'] = __codec0.encode(__start_location);
  }

  LatLng get _start_location =>
      __codec0.decode(asJsObject(this)['start_location']);
  LatLng get startLocation => _start_location;
  set startLocation(LatLng startLocation) {
    _start_location = startLocation;
  }

  set steps(List<DirectionsStep> _steps) {
    asJsObject(this)['steps'] = __codec101.encode(_steps);
  }

  List<DirectionsStep> get steps =>
      __codec101.decode(asJsObject(this)['steps']);
  set transit(TransitDetails _transit) {
    asJsObject(this)['transit'] = __codec121.encode(_transit);
  }

  TransitDetails get transit => __codec121.decode(asJsObject(this)['transit']);
  set _travel_mode(TravelMode __travel_mode) {
    asJsObject(this)['travel_mode'] = __codec107.encode(__travel_mode);
  }

  TravelMode get _travel_mode =>
      __codec107.decode(asJsObject(this)['travel_mode']);
  TravelMode get travelMode => _travel_mode;
  set travelMode(TravelMode travelMode) {
    _travel_mode = travelMode;
  }
}

@GeneratedFrom(_DirectionsWaypoint)
@anonymous
class DirectionsWaypoint extends JsInterface {
  DirectionsWaypoint() : this.created(JsObject(context['Object']));
  DirectionsWaypoint.created(JsObject o) : super.created(o);

  set _location(dynamic __location) {
    asJsObject(this)['location'] = __codec9.encode(__location);
  }

  dynamic get _location => __codec9.decode(asJsObject(this)['location']);
  dynamic /*LatLng|Place|String*/ get location => (ChainedCodec()
        ..add(JsInterfaceCodec<LatLng>(
            (o) => LatLng.created(o),
            (o) =>
                o != null &&
                o.instanceof(
                    context['google']['maps']['LatLng'] as JsFunction)))
        ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
        ..add(IdentityCodec<String>()))
      .decode(_location);
  set location(dynamic /*LatLng|Place|String*/ location) {
    _location = (ChainedCodec()
          ..add(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))
          ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
          ..add(IdentityCodec<String>()))
        .encode(location);
  }

  set stopover(bool _stopover) {
    asJsObject(this)['stopover'] = _stopover;
  }

  bool get stopover => asJsObject(this)['stopover'];
}

@GeneratedFrom(_Distance)
@anonymous
class Distance extends JsInterface {
  Distance() : this.created(JsObject(context['Object']));
  Distance.created(JsObject o) : super.created(o);

  set text(String _text) {
    asJsObject(this)['text'] = _text;
  }

  String get text => asJsObject(this)['text'];
  set value(num _value) {
    asJsObject(this)['value'] = _value;
  }

  num get value => asJsObject(this)['value'];
}

class DistanceMatrixElementStatus extends JsEnum {
  static final values = <DistanceMatrixElementStatus>[
    NOT_FOUND,
    OK,
    ZERO_RESULTS
  ];
  static final NOT_FOUND = DistanceMatrixElementStatus._('NOT_FOUND',
      context['google']['maps']['DistanceMatrixElementStatus']['NOT_FOUND']);
  static final OK = DistanceMatrixElementStatus._(
      'OK', context['google']['maps']['DistanceMatrixElementStatus']['OK']);
  static final ZERO_RESULTS = DistanceMatrixElementStatus._('ZERO_RESULTS',
      context['google']['maps']['DistanceMatrixElementStatus']['ZERO_RESULTS']);
  final String _name;
  DistanceMatrixElementStatus._(this._name, o) : super.created(o);

  @override
  String toString() => 'DistanceMatrixElementStatus.$_name';
}

@GeneratedFrom(_DistanceMatrixRequest)
@anonymous
class DistanceMatrixRequest extends JsInterface {
  DistanceMatrixRequest() : this.created(JsObject(context['Object']));
  DistanceMatrixRequest.created(JsObject o) : super.created(o);

  set avoidFerries(bool _avoidFerries) {
    asJsObject(this)['avoidFerries'] = _avoidFerries;
  }

  bool get avoidFerries => asJsObject(this)['avoidFerries'];
  set avoidHighways(bool _avoidHighways) {
    asJsObject(this)['avoidHighways'] = _avoidHighways;
  }

  bool get avoidHighways => asJsObject(this)['avoidHighways'];
  set avoidTolls(bool _avoidTolls) {
    asJsObject(this)['avoidTolls'] = _avoidTolls;
  }

  bool get avoidTolls => asJsObject(this)['avoidTolls'];
  set _destinations(dynamic __destinations) {
    asJsObject(this)['destinations'] = __codec9.encode(__destinations);
  }

  dynamic get _destinations =>
      __codec9.decode(asJsObject(this)['destinations']);
  List<dynamic /*LatLng|String*/ > get destinations =>
      JsListCodec<dynamic /*LatLng|String*/ >(ChainedCodec()
            ..add(JsInterfaceCodec<LatLng>(
                (o) => LatLng.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['LatLng'] as JsFunction)))
            ..add(IdentityCodec<String>()))
          .decode(_destinations as JsArray);
  set destinations(List<dynamic /*LatLng|String*/ > destinations) {
    _destinations = JsListCodec<dynamic /*LatLng|String*/ >(ChainedCodec()
          ..add(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))
          ..add(IdentityCodec<String>()))
        .encode(destinations);
  }

  set drivingOptions(DrivingOptions _drivingOptions) {
    asJsObject(this)['drivingOptions'] = __codec105.encode(_drivingOptions);
  }

  DrivingOptions get drivingOptions =>
      __codec105.decode(asJsObject(this)['drivingOptions']);
  set _origins(dynamic __origins) {
    asJsObject(this)['origins'] = __codec9.encode(__origins);
  }

  dynamic get _origins => __codec9.decode(asJsObject(this)['origins']);
  List<dynamic /*LatLng|String*/ > get origins =>
      JsListCodec<dynamic /*LatLng|String*/ >(ChainedCodec()
            ..add(JsInterfaceCodec<LatLng>(
                (o) => LatLng.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['LatLng'] as JsFunction)))
            ..add(IdentityCodec<String>()))
          .decode(_origins as JsArray);
  set origins(List<dynamic /*LatLng|String*/ > origins) {
    _origins = JsListCodec<dynamic /*LatLng|String*/ >(ChainedCodec()
          ..add(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))
          ..add(IdentityCodec<String>()))
        .encode(origins);
  }

  set region(String _region) {
    asJsObject(this)['region'] = _region;
  }

  String get region => asJsObject(this)['region'];
  set transitOptions(TransitOptions _transitOptions) {
    asJsObject(this)['transitOptions'] = __codec106.encode(_transitOptions);
  }

  TransitOptions get transitOptions =>
      __codec106.decode(asJsObject(this)['transitOptions']);
  set travelMode(TravelMode _travelMode) {
    asJsObject(this)['travelMode'] = __codec107.encode(_travelMode);
  }

  TravelMode get travelMode =>
      __codec107.decode(asJsObject(this)['travelMode']);
  set unitSystem(UnitSystem _unitSystem) {
    asJsObject(this)['unitSystem'] = __codec108.encode(_unitSystem);
  }

  UnitSystem get unitSystem =>
      __codec108.decode(asJsObject(this)['unitSystem']);
}

@GeneratedFrom(_DistanceMatrixResponse)
@anonymous
class DistanceMatrixResponse extends JsInterface {
  DistanceMatrixResponse() : this.created(JsObject(context['Object']));
  DistanceMatrixResponse.created(JsObject o) : super.created(o);

  set destinationAddresses(List<String> _destinationAddresses) {
    asJsObject(this)['destinationAddresses'] =
        __codec15.encode(_destinationAddresses);
  }

  List<String> get destinationAddresses =>
      __codec15.decode(asJsObject(this)['destinationAddresses']);
  set originAddresses(List<String> _originAddresses) {
    asJsObject(this)['originAddresses'] = __codec15.encode(_originAddresses);
  }

  List<String> get originAddresses =>
      __codec15.decode(asJsObject(this)['originAddresses']);
  set rows(List<DistanceMatrixResponseRow> _rows) {
    asJsObject(this)['rows'] = __codec123.encode(_rows);
  }

  List<DistanceMatrixResponseRow> get rows =>
      __codec123.decode(asJsObject(this)['rows']);
}

@GeneratedFrom(_DistanceMatrixResponseElement)
@anonymous
class DistanceMatrixResponseElement extends JsInterface {
  DistanceMatrixResponseElement() : this.created(JsObject(context['Object']));
  DistanceMatrixResponseElement.created(JsObject o) : super.created(o);

  set distance(Distance _distance) {
    asJsObject(this)['distance'] = __codec98.encode(_distance);
  }

  Distance get distance => __codec98.decode(asJsObject(this)['distance']);
  set duration(GDuration _duration) {
    asJsObject(this)['duration'] = __codec99.encode(_duration);
  }

  GDuration get duration => __codec99.decode(asJsObject(this)['duration']);
  set _duration_in_traffic(GDuration __duration_in_traffic) {
    asJsObject(this)['duration_in_traffic'] =
        __codec99.encode(__duration_in_traffic);
  }

  GDuration get _duration_in_traffic =>
      __codec99.decode(asJsObject(this)['duration_in_traffic']);
  GDuration get durationInTraffic => _duration_in_traffic;
  set durationInTraffic(GDuration durationInTraffic) {
    _duration_in_traffic = durationInTraffic;
  }

  set fare(TransitFare _fare) {
    asJsObject(this)['fare'] = __codec115.encode(_fare);
  }

  TransitFare get fare => __codec115.decode(asJsObject(this)['fare']);
  set status(DistanceMatrixElementStatus _status) {
    asJsObject(this)['status'] = __codec124.encode(_status);
  }

  DistanceMatrixElementStatus get status =>
      __codec124.decode(asJsObject(this)['status']);
}

@GeneratedFrom(_DistanceMatrixResponseRow)
@anonymous
class DistanceMatrixResponseRow extends JsInterface {
  DistanceMatrixResponseRow() : this.created(JsObject(context['Object']));
  DistanceMatrixResponseRow.created(JsObject o) : super.created(o);

  set elements(List<DistanceMatrixResponseElement> _elements) {
    asJsObject(this)['elements'] = __codec126.encode(_elements);
  }

  List<DistanceMatrixResponseElement> get elements =>
      __codec126.decode(asJsObject(this)['elements']);
}

@GeneratedFrom(_DistanceMatrixService)
@JsName('google.maps.DistanceMatrixService')
class DistanceMatrixService extends JsInterface {
  DistanceMatrixService()
      : this.created(
            JsObject(context['google']['maps']['DistanceMatrixService']));
  DistanceMatrixService.created(JsObject o) : super.created(o);

  void getDistanceMatrix(DistanceMatrixRequest request,
      callback(DistanceMatrixResponse p1, DistanceMatrixStatus p2)) {
    asJsObject(this).callMethod('getDistanceMatrix',
        [__codec127.encode(request), __codec130.encode(callback)]);
  }
}

class DistanceMatrixStatus extends JsEnum {
  static final values = <DistanceMatrixStatus>[
    INVALID_REQUEST,
    MAX_DIMENSIONS_EXCEEDED,
    MAX_ELEMENTS_EXCEEDED,
    OK,
    OVER_QUERY_LIMIT,
    REQUEST_DENIED,
    UNKNOWN_ERROR
  ];
  static final INVALID_REQUEST = DistanceMatrixStatus._('INVALID_REQUEST',
      context['google']['maps']['DistanceMatrixStatus']['INVALID_REQUEST']);
  static final MAX_DIMENSIONS_EXCEEDED = DistanceMatrixStatus._(
      'MAX_DIMENSIONS_EXCEEDED',
      context['google']['maps']['DistanceMatrixStatus']
          ['MAX_DIMENSIONS_EXCEEDED']);
  static final MAX_ELEMENTS_EXCEEDED = DistanceMatrixStatus._(
      'MAX_ELEMENTS_EXCEEDED',
      context['google']['maps']['DistanceMatrixStatus']
          ['MAX_ELEMENTS_EXCEEDED']);
  static final OK = DistanceMatrixStatus._(
      'OK', context['google']['maps']['DistanceMatrixStatus']['OK']);
  static final OVER_QUERY_LIMIT = DistanceMatrixStatus._('OVER_QUERY_LIMIT',
      context['google']['maps']['DistanceMatrixStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = DistanceMatrixStatus._('REQUEST_DENIED',
      context['google']['maps']['DistanceMatrixStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = DistanceMatrixStatus._('UNKNOWN_ERROR',
      context['google']['maps']['DistanceMatrixStatus']['UNKNOWN_ERROR']);
  final String _name;
  DistanceMatrixStatus._(this._name, o) : super.created(o);

  @override
  String toString() => 'DistanceMatrixStatus.$_name';
}

@GeneratedFrom(_DrivingOptions)
@anonymous
class DrivingOptions extends JsInterface {
  DrivingOptions() : this.created(JsObject(context['Object']));
  DrivingOptions.created(JsObject o) : super.created(o);

  set departureTime(DateTime _departureTime) {
    asJsObject(this)['departureTime'] = _departureTime;
  }

  DateTime get departureTime => asJsObject(this)['departureTime'];
  set trafficModel(TrafficModel _trafficModel) {
    asJsObject(this)['trafficModel'] = __codec131.encode(_trafficModel);
  }

  TrafficModel get trafficModel =>
      __codec131.decode(asJsObject(this)['trafficModel']);
}

@GeneratedFrom(_GDuration)
@anonymous
class GDuration extends JsInterface {
  GDuration() : this.created(JsObject(context['Object']));
  GDuration.created(JsObject o) : super.created(o);

  set text(String _text) {
    asJsObject(this)['text'] = _text;
  }

  String get text => asJsObject(this)['text'];
  set value(num _value) {
    asJsObject(this)['value'] = _value;
  }

  num get value => asJsObject(this)['value'];
}

@GeneratedFrom(_ElevationResult)
@anonymous
class ElevationResult extends JsInterface {
  ElevationResult() : this.created(JsObject(context['Object']));
  ElevationResult.created(JsObject o) : super.created(o);

  set elevation(num _elevation) {
    asJsObject(this)['elevation'] = _elevation;
  }

  num get elevation => asJsObject(this)['elevation'];
  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec0.encode(_location);
  }

  LatLng get location => __codec0.decode(asJsObject(this)['location']);
  set resolution(num _resolution) {
    asJsObject(this)['resolution'] = _resolution;
  }

  num get resolution => asJsObject(this)['resolution'];
}

@GeneratedFrom(_ElevationService)
@JsName('google.maps.ElevationService')
class ElevationService extends JsInterface {
  ElevationService()
      : this.created(JsObject(context['google']['maps']['ElevationService']));
  ElevationService.created(JsObject o) : super.created(o);

  void getElevationAlongPath(PathElevationRequest request,
      callback(List<ElevationResult> p1, ElevationStatus p2)) {
    asJsObject(this).callMethod('getElevationAlongPath',
        [__codec132.encode(request), __codec136.encode(callback)]);
  }

  void getElevationForLocations(LocationElevationRequest request,
      callback(List<ElevationResult> p1, ElevationStatus p2)) {
    asJsObject(this).callMethod('getElevationForLocations',
        [__codec137.encode(request), __codec136.encode(callback)]);
  }
}

class ElevationStatus extends JsEnum {
  static final values = <ElevationStatus>[
    INVALID_REQUEST,
    OK,
    OVER_QUERY_LIMIT,
    REQUEST_DENIED,
    UNKNOWN_ERROR
  ];
  static final INVALID_REQUEST = ElevationStatus._('INVALID_REQUEST',
      context['google']['maps']['ElevationStatus']['INVALID_REQUEST']);
  static final OK = ElevationStatus._(
      'OK', context['google']['maps']['ElevationStatus']['OK']);
  static final OVER_QUERY_LIMIT = ElevationStatus._('OVER_QUERY_LIMIT',
      context['google']['maps']['ElevationStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = ElevationStatus._('REQUEST_DENIED',
      context['google']['maps']['ElevationStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = ElevationStatus._('UNKNOWN_ERROR',
      context['google']['maps']['ElevationStatus']['UNKNOWN_ERROR']);
  final String _name;
  ElevationStatus._(this._name, o) : super.created(o);

  @override
  String toString() => 'ElevationStatus.$_name';
}

@GeneratedFrom(_Geocoder)
@JsName('google.maps.Geocoder')
class Geocoder extends JsInterface {
  Geocoder() : this.created(JsObject(context['google']['maps']['Geocoder']));
  Geocoder.created(JsObject o) : super.created(o);

  void geocode(GeocoderRequest request,
      callback(List<GeocoderResult> p1, GeocoderStatus p2)) {
    asJsObject(this).callMethod(
        'geocode', [__codec138.encode(request), __codec142.encode(callback)]);
  }
}

@GeneratedFrom(_GeocoderAddressComponent)
@anonymous
class GeocoderAddressComponent extends JsInterface {
  GeocoderAddressComponent() : this.created(JsObject(context['Object']));
  GeocoderAddressComponent.created(JsObject o) : super.created(o);

  set _long_name(String __long_name) {
    asJsObject(this)['long_name'] = __long_name;
  }

  String get _long_name => asJsObject(this)['long_name'];
  String get longName => _long_name;
  set longName(String longName) {
    _long_name = longName;
  }

  set _short_name(String __short_name) {
    asJsObject(this)['short_name'] = __short_name;
  }

  String get _short_name => asJsObject(this)['short_name'];
  String get shortName => _short_name;
  set shortName(String shortName) {
    _short_name = shortName;
  }

  set types(List<String> _types) {
    asJsObject(this)['types'] = __codec15.encode(_types);
  }

  List<String> get types => __codec15.decode(asJsObject(this)['types']);
}

@GeneratedFrom(_GeocoderComponentRestrictions)
@anonymous
class GeocoderComponentRestrictions extends JsInterface {
  GeocoderComponentRestrictions() : this.created(JsObject(context['Object']));
  GeocoderComponentRestrictions.created(JsObject o) : super.created(o);

  set administrativeArea(String _administrativeArea) {
    asJsObject(this)['administrativeArea'] = _administrativeArea;
  }

  String get administrativeArea => asJsObject(this)['administrativeArea'];
  set country(String _country) {
    asJsObject(this)['country'] = _country;
  }

  String get country => asJsObject(this)['country'];
  set locality(String _locality) {
    asJsObject(this)['locality'] = _locality;
  }

  String get locality => asJsObject(this)['locality'];
  set postalCode(String _postalCode) {
    asJsObject(this)['postalCode'] = _postalCode;
  }

  String get postalCode => asJsObject(this)['postalCode'];
  set route(String _route) {
    asJsObject(this)['route'] = _route;
  }

  String get route => asJsObject(this)['route'];
}

@GeneratedFrom(_GeocoderGeometry)
@anonymous
class GeocoderGeometry extends JsInterface {
  GeocoderGeometry() : this.created(JsObject(context['Object']));
  GeocoderGeometry.created(JsObject o) : super.created(o);

  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec0.encode(_location);
  }

  LatLng get location => __codec0.decode(asJsObject(this)['location']);
  set _location_type(GeocoderLocationType __location_type) {
    asJsObject(this)['location_type'] = __codec143.encode(__location_type);
  }

  GeocoderLocationType get _location_type =>
      __codec143.decode(asJsObject(this)['location_type']);
  GeocoderLocationType get locationType => _location_type;
  set locationType(GeocoderLocationType locationType) {
    _location_type = locationType;
  }

  set viewport(LatLngBounds _viewport) {
    asJsObject(this)['viewport'] = __codec1.encode(_viewport);
  }

  LatLngBounds get viewport => __codec1.decode(asJsObject(this)['viewport']);
}

class GeocoderLocationType extends JsEnum {
  static final values = <GeocoderLocationType>[
    APPROXIMATE,
    GEOMETRIC_CENTER,
    RANGE_INTERPOLATED,
    ROOFTOP
  ];
  static final APPROXIMATE = GeocoderLocationType._('APPROXIMATE',
      context['google']['maps']['GeocoderLocationType']['APPROXIMATE']);
  static final GEOMETRIC_CENTER = GeocoderLocationType._('GEOMETRIC_CENTER',
      context['google']['maps']['GeocoderLocationType']['GEOMETRIC_CENTER']);
  static final RANGE_INTERPOLATED = GeocoderLocationType._('RANGE_INTERPOLATED',
      context['google']['maps']['GeocoderLocationType']['RANGE_INTERPOLATED']);
  static final ROOFTOP = GeocoderLocationType._(
      'ROOFTOP', context['google']['maps']['GeocoderLocationType']['ROOFTOP']);
  final String _name;
  GeocoderLocationType._(this._name, o) : super.created(o);

  @override
  String toString() => 'GeocoderLocationType.$_name';
}

@GeneratedFrom(_GeocoderRequest)
@anonymous
class GeocoderRequest extends JsInterface {
  GeocoderRequest() : this.created(JsObject(context['Object']));
  GeocoderRequest.created(JsObject o) : super.created(o);

  set address(String _address) {
    asJsObject(this)['address'] = _address;
  }

  String get address => asJsObject(this)['address'];
  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
  set componentRestrictions(
      GeocoderComponentRestrictions _componentRestrictions) {
    asJsObject(this)['componentRestrictions'] =
        __codec144.encode(_componentRestrictions);
  }

  GeocoderComponentRestrictions get componentRestrictions =>
      __codec144.decode(asJsObject(this)['componentRestrictions']);
  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec0.encode(_location);
  }

  LatLng get location => __codec0.decode(asJsObject(this)['location']);
  set placeId(String _placeId) {
    asJsObject(this)['placeId'] = _placeId;
  }

  String get placeId => asJsObject(this)['placeId'];
  set region(String _region) {
    asJsObject(this)['region'] = _region;
  }

  String get region => asJsObject(this)['region'];
}

@GeneratedFrom(_GeocoderResult)
@anonymous
class GeocoderResult extends JsInterface {
  GeocoderResult() : this.created(JsObject(context['Object']));
  GeocoderResult.created(JsObject o) : super.created(o);

  set _address_components(List<GeocoderAddressComponent> __address_components) {
    asJsObject(this)['address_components'] =
        __codec146.encode(__address_components);
  }

  List<GeocoderAddressComponent> get _address_components =>
      __codec146.decode(asJsObject(this)['address_components']);
  List<GeocoderAddressComponent> get addressComponents => _address_components;
  set addressComponents(List<GeocoderAddressComponent> addressComponents) {
    _address_components = addressComponents;
  }

  set _formatted_address(String __formatted_address) {
    asJsObject(this)['formatted_address'] = __formatted_address;
  }

  String get _formatted_address => asJsObject(this)['formatted_address'];
  String get formattedAddress => _formatted_address;
  set formattedAddress(String formattedAddress) {
    _formatted_address = formattedAddress;
  }

  set geometry(GeocoderGeometry _geometry) {
    asJsObject(this)['geometry'] = __codec147.encode(_geometry);
  }

  GeocoderGeometry get geometry =>
      __codec147.decode(asJsObject(this)['geometry']);
  set _partial_match(bool __partial_match) {
    asJsObject(this)['partial_match'] = __partial_match;
  }

  bool get _partial_match => asJsObject(this)['partial_match'];
  bool get partialMatch => _partial_match;
  set partialMatch(bool partialMatch) {
    _partial_match = partialMatch;
  }

  set _place_id(String __place_id) {
    asJsObject(this)['place_id'] = __place_id;
  }

  String get _place_id => asJsObject(this)['place_id'];
  String get placeId => _place_id;
  set placeId(String placeId) {
    _place_id = placeId;
  }

  set _postcode_localities(List<String> __postcode_localities) {
    asJsObject(this)['postcode_localities'] =
        __codec15.encode(__postcode_localities);
  }

  List<String> get _postcode_localities =>
      __codec15.decode(asJsObject(this)['postcode_localities']);
  List<String> get postcodeLocalities => _postcode_localities;
  set postcodeLocalities(List<String> postcodeLocalities) {
    _postcode_localities = postcodeLocalities;
  }

  set types(List<String> _types) {
    asJsObject(this)['types'] = __codec15.encode(_types);
  }

  List<String> get types => __codec15.decode(asJsObject(this)['types']);
}

class GeocoderStatus extends JsEnum {
  static final values = <GeocoderStatus>[
    ERROR,
    INVALID_REQUEST,
    OK,
    OVER_QUERY_LIMIT,
    REQUEST_DENIED,
    UNKNOWN_ERROR,
    ZERO_RESULTS
  ];
  static final ERROR = GeocoderStatus._(
      'ERROR', context['google']['maps']['GeocoderStatus']['ERROR']);
  static final INVALID_REQUEST = GeocoderStatus._('INVALID_REQUEST',
      context['google']['maps']['GeocoderStatus']['INVALID_REQUEST']);
  static final OK =
      GeocoderStatus._('OK', context['google']['maps']['GeocoderStatus']['OK']);
  static final OVER_QUERY_LIMIT = GeocoderStatus._('OVER_QUERY_LIMIT',
      context['google']['maps']['GeocoderStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = GeocoderStatus._('REQUEST_DENIED',
      context['google']['maps']['GeocoderStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = GeocoderStatus._('UNKNOWN_ERROR',
      context['google']['maps']['GeocoderStatus']['UNKNOWN_ERROR']);
  static final ZERO_RESULTS = GeocoderStatus._('ZERO_RESULTS',
      context['google']['maps']['GeocoderStatus']['ZERO_RESULTS']);
  final String _name;
  GeocoderStatus._(this._name, o) : super.created(o);

  @override
  String toString() => 'GeocoderStatus.$_name';
}

@GeneratedFrom(_LocationElevationRequest)
@anonymous
class LocationElevationRequest extends JsInterface {
  LocationElevationRequest() : this.created(JsObject(context['Object']));
  LocationElevationRequest.created(JsObject o) : super.created(o);

  set locations(List<LatLng> _locations) {
    asJsObject(this)['locations'] = __codec22.encode(_locations);
  }

  List<LatLng> get locations => __codec22.decode(asJsObject(this)['locations']);
}

@GeneratedFrom(_MaxZoomResult)
@anonymous
class MaxZoomResult extends JsInterface {
  MaxZoomResult() : this.created(JsObject(context['Object']));
  MaxZoomResult.created(JsObject o) : super.created(o);

  set status(MaxZoomStatus _status) {
    asJsObject(this)['status'] = __codec148.encode(_status);
  }

  MaxZoomStatus get status => __codec148.decode(asJsObject(this)['status']);
  set zoom(num _zoom) {
    asJsObject(this)['zoom'] = _zoom;
  }

  num get zoom => asJsObject(this)['zoom'];
}

@GeneratedFrom(_MaxZoomService)
@JsName('google.maps.MaxZoomService')
class MaxZoomService extends JsInterface {
  MaxZoomService()
      : this.created(JsObject(context['google']['maps']['MaxZoomService']));
  MaxZoomService.created(JsObject o) : super.created(o);

  void getMaxZoomAtLatLng(LatLng latlng, callback(MaxZoomResult p1)) {
    asJsObject(this).callMethod('getMaxZoomAtLatLng',
        [__codec0.encode(latlng), __codec150.encode(callback)]);
  }
}

class MaxZoomStatus extends JsEnum {
  static final values = <MaxZoomStatus>[ERROR, OK];
  static final ERROR = MaxZoomStatus._(
      'ERROR', context['google']['maps']['MaxZoomStatus']['ERROR']);
  static final OK =
      MaxZoomStatus._('OK', context['google']['maps']['MaxZoomStatus']['OK']);
  final String _name;
  MaxZoomStatus._(this._name, o) : super.created(o);

  @override
  String toString() => 'MaxZoomStatus.$_name';
}

@GeneratedFrom(_PathElevationRequest)
@anonymous
class PathElevationRequest extends JsInterface {
  PathElevationRequest() : this.created(JsObject(context['Object']));
  PathElevationRequest.created(JsObject o) : super.created(o);

  set path(List<LatLng> _path) {
    asJsObject(this)['path'] = __codec22.encode(_path);
  }

  List<LatLng> get path => __codec22.decode(asJsObject(this)['path']);
  set samples(num _samples) {
    asJsObject(this)['samples'] = _samples;
  }

  num get samples => asJsObject(this)['samples'];
}

@GeneratedFrom(_Place)
@anonymous
class Place extends JsInterface {
  Place() : this.created(JsObject(context['Object']));
  Place.created(JsObject o) : super.created(o);

  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec0.encode(_location);
  }

  LatLng get location => __codec0.decode(asJsObject(this)['location']);
  set placeId(String _placeId) {
    asJsObject(this)['placeId'] = _placeId;
  }

  String get placeId => asJsObject(this)['placeId'];
  set query(String _query) {
    asJsObject(this)['query'] = _query;
  }

  String get query => asJsObject(this)['query'];
}

@GeneratedFrom(_Time)
@anonymous
class Time extends JsInterface {
  Time() : this.created(JsObject(context['Object']));
  Time.created(JsObject o) : super.created(o);

  set text(String _text) {
    asJsObject(this)['text'] = _text;
  }

  String get text => asJsObject(this)['text'];
  set _time_zone(String __time_zone) {
    asJsObject(this)['time_zone'] = __time_zone;
  }

  String get _time_zone => asJsObject(this)['time_zone'];
  String get timeZone => _time_zone;
  set timeZone(String timeZone) {
    _time_zone = timeZone;
  }

  set value(DateTime _value) {
    asJsObject(this)['value'] = _value;
  }

  DateTime get value => asJsObject(this)['value'];
}

class TrafficModel extends JsEnum {
  static final values = <TrafficModel>[BEST_GUESS, OPTIMISTIC, PESSIMISTIC];
  static final BEST_GUESS = TrafficModel._(
      'BEST_GUESS', context['google']['maps']['TrafficModel']['BEST_GUESS']);
  static final OPTIMISTIC = TrafficModel._(
      'OPTIMISTIC', context['google']['maps']['TrafficModel']['OPTIMISTIC']);
  static final PESSIMISTIC = TrafficModel._(
      'PESSIMISTIC', context['google']['maps']['TrafficModel']['PESSIMISTIC']);
  final String _name;
  TrafficModel._(this._name, o) : super.created(o);

  @override
  String toString() => 'TrafficModel.$_name';
}

@GeneratedFrom(_TransitAgency)
@anonymous
class TransitAgency extends JsInterface {
  TransitAgency() : this.created(JsObject(context['Object']));
  TransitAgency.created(JsObject o) : super.created(o);

  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set phone(String _phone) {
    asJsObject(this)['phone'] = _phone;
  }

  String get phone => asJsObject(this)['phone'];
  set url(String _url) {
    asJsObject(this)['url'] = _url;
  }

  String get url => asJsObject(this)['url'];
}

@GeneratedFrom(_TransitDetails)
@anonymous
class TransitDetails extends JsInterface {
  TransitDetails() : this.created(JsObject(context['Object']));
  TransitDetails.created(JsObject o) : super.created(o);

  set _arrival_stop(TransitStop __arrival_stop) {
    asJsObject(this)['arrival_stop'] = __codec151.encode(__arrival_stop);
  }

  TransitStop get _arrival_stop =>
      __codec151.decode(asJsObject(this)['arrival_stop']);
  TransitStop get arrivalStop => _arrival_stop;
  set arrivalStop(TransitStop arrivalStop) {
    _arrival_stop = arrivalStop;
  }

  set _arrival_time(Time __arrival_time) {
    asJsObject(this)['arrival_time'] = __codec97.encode(__arrival_time);
  }

  Time get _arrival_time => __codec97.decode(asJsObject(this)['arrival_time']);
  Time get arrivalTime => _arrival_time;
  set arrivalTime(Time arrivalTime) {
    _arrival_time = arrivalTime;
  }

  set _departure_stop(TransitStop __departure_stop) {
    asJsObject(this)['departure_stop'] = __codec151.encode(__departure_stop);
  }

  TransitStop get _departure_stop =>
      __codec151.decode(asJsObject(this)['departure_stop']);
  TransitStop get departureStop => _departure_stop;
  set departureStop(TransitStop departureStop) {
    _departure_stop = departureStop;
  }

  set _departure_time(Time __departure_time) {
    asJsObject(this)['departure_time'] = __codec97.encode(__departure_time);
  }

  Time get _departure_time =>
      __codec97.decode(asJsObject(this)['departure_time']);
  Time get departureTime => _departure_time;
  set departureTime(Time departureTime) {
    _departure_time = departureTime;
  }

  set headsign(String _headsign) {
    asJsObject(this)['headsign'] = _headsign;
  }

  String get headsign => asJsObject(this)['headsign'];
  set headway(num _headway) {
    asJsObject(this)['headway'] = _headway;
  }

  num get headway => asJsObject(this)['headway'];
  set line(TransitLine _line) {
    asJsObject(this)['line'] = __codec152.encode(_line);
  }

  TransitLine get line => __codec152.decode(asJsObject(this)['line']);
  set _num_stops(num __num_stops) {
    asJsObject(this)['num_stops'] = __num_stops;
  }

  num get _num_stops => asJsObject(this)['num_stops'];
  num get numStops => _num_stops;
  set numStops(num numStops) {
    _num_stops = numStops;
  }
}

@GeneratedFrom(_TransitFare)
@anonymous
class TransitFare extends JsInterface {
  TransitFare() : this.created(JsObject(context['Object']));
  TransitFare.created(JsObject o) : super.created(o);
}

@GeneratedFrom(_TransitLine)
@anonymous
class TransitLine extends JsInterface {
  TransitLine() : this.created(JsObject(context['Object']));
  TransitLine.created(JsObject o) : super.created(o);

  set agencies(List<TransitAgency> _agencies) {
    asJsObject(this)['agencies'] = __codec154.encode(_agencies);
  }

  List<TransitAgency> get agencies =>
      __codec154.decode(asJsObject(this)['agencies']);
  set color(String _color) {
    asJsObject(this)['color'] = _color;
  }

  String get color => asJsObject(this)['color'];
  set icon(String _icon) {
    asJsObject(this)['icon'] = _icon;
  }

  String get icon => asJsObject(this)['icon'];
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set _short_name(String __short_name) {
    asJsObject(this)['short_name'] = __short_name;
  }

  String get _short_name => asJsObject(this)['short_name'];
  String get shortName => _short_name;
  set shortName(String shortName) {
    _short_name = shortName;
  }

  set _text_color(String __text_color) {
    asJsObject(this)['text_color'] = __text_color;
  }

  String get _text_color => asJsObject(this)['text_color'];
  String get textColor => _text_color;
  set textColor(String textColor) {
    _text_color = textColor;
  }

  set url(String _url) {
    asJsObject(this)['url'] = _url;
  }

  String get url => asJsObject(this)['url'];
  set vehicle(TransitVehicle _vehicle) {
    asJsObject(this)['vehicle'] = __codec155.encode(_vehicle);
  }

  TransitVehicle get vehicle => __codec155.decode(asJsObject(this)['vehicle']);
}

class TransitMode extends JsEnum {
  static final values = <TransitMode>[BUS, RAIL, SUBWAY, TRAIN, TRAM];
  static final BUS =
      TransitMode._('BUS', context['google']['maps']['TransitMode']['BUS']);
  static final RAIL =
      TransitMode._('RAIL', context['google']['maps']['TransitMode']['RAIL']);
  static final SUBWAY = TransitMode._(
      'SUBWAY', context['google']['maps']['TransitMode']['SUBWAY']);
  static final TRAIN =
      TransitMode._('TRAIN', context['google']['maps']['TransitMode']['TRAIN']);
  static final TRAM =
      TransitMode._('TRAM', context['google']['maps']['TransitMode']['TRAM']);
  final String _name;
  TransitMode._(this._name, o) : super.created(o);

  @override
  String toString() => 'TransitMode.$_name';
}

@GeneratedFrom(_TransitOptions)
@anonymous
class TransitOptions extends JsInterface {
  TransitOptions() : this.created(JsObject(context['Object']));
  TransitOptions.created(JsObject o) : super.created(o);

  set arrivalTime(DateTime _arrivalTime) {
    asJsObject(this)['arrivalTime'] = _arrivalTime;
  }

  DateTime get arrivalTime => asJsObject(this)['arrivalTime'];
  set departureTime(DateTime _departureTime) {
    asJsObject(this)['departureTime'] = _departureTime;
  }

  DateTime get departureTime => asJsObject(this)['departureTime'];
  set modes(List<TransitMode> _modes) {
    asJsObject(this)['modes'] = __codec157.encode(_modes);
  }

  List<TransitMode> get modes => __codec157.decode(asJsObject(this)['modes']);
  set routingPreference(TransitRoutePreference _routingPreference) {
    asJsObject(this)['routingPreference'] =
        __codec158.encode(_routingPreference);
  }

  TransitRoutePreference get routingPreference =>
      __codec158.decode(asJsObject(this)['routingPreference']);
}

class TransitRoutePreference extends JsEnum {
  static final values = <TransitRoutePreference>[FEWER_TRANSFERS, LESS_WALKING];
  static final FEWER_TRANSFERS = TransitRoutePreference._('FEWER_TRANSFERS',
      context['google']['maps']['TransitRoutePreference']['FEWER_TRANSFERS']);
  static final LESS_WALKING = TransitRoutePreference._('LESS_WALKING',
      context['google']['maps']['TransitRoutePreference']['LESS_WALKING']);
  final String _name;
  TransitRoutePreference._(this._name, o) : super.created(o);

  @override
  String toString() => 'TransitRoutePreference.$_name';
}

@GeneratedFrom(_TransitStop)
@anonymous
class TransitStop extends JsInterface {
  TransitStop() : this.created(JsObject(context['Object']));
  TransitStop.created(JsObject o) : super.created(o);

  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec0.encode(_location);
  }

  LatLng get location => __codec0.decode(asJsObject(this)['location']);
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
}

@GeneratedFrom(_TransitVehicle)
@anonymous
class TransitVehicle extends JsInterface {
  TransitVehicle() : this.created(JsObject(context['Object']));
  TransitVehicle.created(JsObject o) : super.created(o);

  set icon(String _icon) {
    asJsObject(this)['icon'] = _icon;
  }

  String get icon => asJsObject(this)['icon'];
  set _local_icon(String __local_icon) {
    asJsObject(this)['local_icon'] = __local_icon;
  }

  String get _local_icon => asJsObject(this)['local_icon'];
  String get localIcon => _local_icon;
  set localIcon(String localIcon) {
    _local_icon = localIcon;
  }

  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set type(VehicleType _type) {
    asJsObject(this)['type'] = __codec159.encode(_type);
  }

  VehicleType get type => __codec159.decode(asJsObject(this)['type']);
}

class TravelMode extends JsEnum {
  static final values = <TravelMode>[BICYCLING, DRIVING, TRANSIT, WALKING];
  static final BICYCLING = TravelMode._(
      'BICYCLING', context['google']['maps']['TravelMode']['BICYCLING']);
  static final DRIVING = TravelMode._(
      'DRIVING', context['google']['maps']['TravelMode']['DRIVING']);
  static final TRANSIT = TravelMode._(
      'TRANSIT', context['google']['maps']['TravelMode']['TRANSIT']);
  static final WALKING = TravelMode._(
      'WALKING', context['google']['maps']['TravelMode']['WALKING']);
  final String _name;
  TravelMode._(this._name, o) : super.created(o);

  @override
  String toString() => 'TravelMode.$_name';
}

class UnitSystem extends JsEnum {
  static final values = <UnitSystem>[IMPERIAL, METRIC];
  static final IMPERIAL = UnitSystem._(
      'IMPERIAL', context['google']['maps']['UnitSystem']['IMPERIAL']);
  static final METRIC =
      UnitSystem._('METRIC', context['google']['maps']['UnitSystem']['METRIC']);
  final String _name;
  UnitSystem._(this._name, o) : super.created(o);

  @override
  String toString() => 'UnitSystem.$_name';
}

@GeneratedFrom(_PanoProviderOptions)
@anonymous
class PanoProviderOptions extends JsInterface {
  PanoProviderOptions() : this.created(JsObject(context['Object']));
  PanoProviderOptions.created(JsObject o) : super.created(o);

  set cors(bool _cors) {
    asJsObject(this)['cors'] = _cors;
  }

  bool get cors => asJsObject(this)['cors'];
}

@GeneratedFrom(_StreetViewAddressControlOptions)
@anonymous
class StreetViewAddressControlOptions extends JsInterface {
  StreetViewAddressControlOptions() : this.created(JsObject(context['Object']));
  StreetViewAddressControlOptions.created(JsObject o) : super.created(o);

  set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec4.encode(_position);
  }

  ControlPosition get position => __codec4.decode(asJsObject(this)['position']);
}

@GeneratedFrom(_StreetViewCoverageLayer)
@JsName('google.maps.StreetViewCoverageLayer')
class StreetViewCoverageLayer extends MVCObject {
  StreetViewCoverageLayer()
      : this.created(
            JsObject(context['google']['maps']['StreetViewCoverageLayer']));
  StreetViewCoverageLayer.created(JsObject o) : super.created(o);

  GMap get map => _getMap();
  GMap _getMap() => __codec16.decode(asJsObject(this).callMethod('getMap'));
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec16.encode(map)]);
  }
}

@GeneratedFrom(_StreetViewLink)
@anonymous
class StreetViewLink extends JsInterface {
  StreetViewLink() : this.created(JsObject(context['Object']));
  StreetViewLink.created(JsObject o) : super.created(o);

  set description(String _description) {
    asJsObject(this)['description'] = _description;
  }

  String get description => asJsObject(this)['description'];
  set heading(num _heading) {
    asJsObject(this)['heading'] = _heading;
  }

  num get heading => asJsObject(this)['heading'];
  set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }

  String get pano => asJsObject(this)['pano'];
}

@GeneratedFrom(_StreetViewLocation)
@anonymous
class StreetViewLocation extends JsInterface {
  StreetViewLocation() : this.created(JsObject(context['Object']));
  StreetViewLocation.created(JsObject o) : super.created(o);

  set description(String _description) {
    asJsObject(this)['description'] = _description;
  }

  String get description => asJsObject(this)['description'];
  set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec0.encode(_latLng);
  }

  LatLng get latLng => __codec0.decode(asJsObject(this)['latLng']);
  set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }

  String get pano => asJsObject(this)['pano'];
  set shortDescription(String _shortDescription) {
    asJsObject(this)['shortDescription'] = _shortDescription;
  }

  String get shortDescription => asJsObject(this)['shortDescription'];
}

@GeneratedFrom(_StreetViewLocationRequest)
@anonymous
class StreetViewLocationRequest extends JsInterface {
  StreetViewLocationRequest() : this.created(JsObject(context['Object']));
  StreetViewLocationRequest.created(JsObject o) : super.created(o);

  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec0.encode(_location);
  }

  LatLng get location => __codec0.decode(asJsObject(this)['location']);
  set preference(StreetViewPreference _preference) {
    asJsObject(this)['preference'] = __codec160.encode(_preference);
  }

  StreetViewPreference get preference =>
      __codec160.decode(asJsObject(this)['preference']);
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
  set source(StreetViewSource _source) {
    asJsObject(this)['source'] = __codec161.encode(_source);
  }

  StreetViewSource get source => __codec161.decode(asJsObject(this)['source']);
}

@GeneratedFrom(_StreetViewPanoRequest)
@anonymous
class StreetViewPanoRequest extends JsInterface {
  StreetViewPanoRequest() : this.created(JsObject(context['Object']));
  StreetViewPanoRequest.created(JsObject o) : super.created(o);

  set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }

  String get pano => asJsObject(this)['pano'];
}

@GeneratedFrom(_StreetViewPanorama)
@JsName('google.maps.StreetViewPanorama')
class StreetViewPanorama extends MVCObject {
  StreetViewPanorama(Node container, [StreetViewPanoramaOptions opts])
      : this.created(JsObject(context['google']['maps']['StreetViewPanorama'],
            [container, __codec162.encode(opts)]));
  StreetViewPanorama.created(JsObject o) : super.created(o);

  List<StreetViewLink> get links => _getLinks();
  List<StreetViewLink> _getLinks() =>
      __codec164.decode(asJsObject(this).callMethod('getLinks'));
  StreetViewLocation get location => _getLocation();
  StreetViewLocation _getLocation() =>
      __codec165.decode(asJsObject(this).callMethod('getLocation'));
  String get pano => _getPano();
  String _getPano() => asJsObject(this).callMethod('getPano');
  StreetViewPov get photographerPov => _getPhotographerPov();
  StreetViewPov _getPhotographerPov() =>
      __codec166.decode(asJsObject(this).callMethod('getPhotographerPov'));
  LatLng get position => _getPosition();
  LatLng _getPosition() =>
      __codec0.decode(asJsObject(this).callMethod('getPosition'));
  StreetViewPov get pov => _getPov();
  StreetViewPov _getPov() =>
      __codec166.decode(asJsObject(this).callMethod('getPov'));
  StreetViewStatus get status => _getStatus();
  StreetViewStatus _getStatus() =>
      __codec167.decode(asJsObject(this).callMethod('getStatus'));
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  num get zoom => _getZoom();
  num _getZoom() => asJsObject(this).callMethod('getZoom');
  void registerPanoProvider(
      StreetViewPanoramaData provider(String p1,
          [PanoProviderOptions options])) {
    asJsObject(this)
        .callMethod('registerPanoProvider', [__codec170.encode(provider)]);
  }

  set links(List<StreetViewLink> links) => _setLinks(links);
  void _setLinks(List<StreetViewLink> links) {
    asJsObject(this).callMethod('setLinks', [__codec164.encode(links)]);
  }

  set options(StreetViewPanoramaOptions options) => _setOptions(options);
  void _setOptions(StreetViewPanoramaOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec162.encode(options)]);
  }

  set pano(String pano) => _setPano(pano);
  void _setPano(String pano) {
    asJsObject(this).callMethod('setPano', [pano]);
  }

  set position(LatLng latLng) => _setPosition(latLng);
  void _setPosition(LatLng latLng) {
    asJsObject(this).callMethod('setPosition', [__codec0.encode(latLng)]);
  }

  set pov(StreetViewPov pov) => _setPov(pov);
  void _setPov(StreetViewPov pov) {
    asJsObject(this).callMethod('setPov', [__codec166.encode(pov)]);
  }

  set visible(bool flag) => _setVisible(flag);
  void _setVisible(bool flag) {
    asJsObject(this).callMethod('setVisible', [flag]);
  }

  set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom) {
    asJsObject(this).callMethod('setZoom', [zoom]);
  }

  set controls(Controls _controls) {
    asJsObject(this)['controls'] = __codec49.encode(_controls);
  }

  Controls get controls => __codec49.decode(asJsObject(this)['controls']);

  Stream get onClicktogoChanged => getStream(this, 'clicktogo_changed');
  Stream<JsObject> get onCloseclick => getStream(this, 'closeclick');
  Stream get onLinksChanged => getStream(this, 'links_changed');
  Stream get onPanoChanged => getStream(this, 'pano_changed');
  Stream get onPositionChanged => getStream(this, 'position_changed');
  Stream get onPovChanged => getStream(this, 'pov_changed');
  Stream get onResize => getStream(this, 'resize');
  Stream get onScrollwheelChanged => getStream(this, 'scrollwheel_changed');
  Stream get onStatusChanged => getStream(this, 'status_changed');
  Stream get onVisibleChanged => getStream(this, 'visible_changed');
  Stream get onZoomChanged => getStream(this, 'zoom_changed');
}

@GeneratedFrom(_StreetViewPanoramaData)
@anonymous
class StreetViewPanoramaData extends JsInterface {
  StreetViewPanoramaData() : this.created(JsObject(context['Object']));
  StreetViewPanoramaData.created(JsObject o) : super.created(o);

  set copyright(String _copyright) {
    asJsObject(this)['copyright'] = _copyright;
  }

  String get copyright => asJsObject(this)['copyright'];
  set imageDate(String _imageDate) {
    asJsObject(this)['imageDate'] = _imageDate;
  }

  String get imageDate => asJsObject(this)['imageDate'];
  set links(List<StreetViewLink> _links) {
    asJsObject(this)['links'] = __codec164.encode(_links);
  }

  List<StreetViewLink> get links =>
      __codec164.decode(asJsObject(this)['links']);
  set location(StreetViewLocation _location) {
    asJsObject(this)['location'] = __codec165.encode(_location);
  }

  StreetViewLocation get location =>
      __codec165.decode(asJsObject(this)['location']);
  set tiles(StreetViewTileData _tiles) {
    asJsObject(this)['tiles'] = __codec171.encode(_tiles);
  }

  StreetViewTileData get tiles => __codec171.decode(asJsObject(this)['tiles']);
}

@GeneratedFrom(_StreetViewPanoramaOptions)
@anonymous
class StreetViewPanoramaOptions extends JsInterface {
  StreetViewPanoramaOptions() : this.created(JsObject(context['Object']));
  StreetViewPanoramaOptions.created(JsObject o) : super.created(o);

  set addressControl(bool _addressControl) {
    asJsObject(this)['addressControl'] = _addressControl;
  }

  bool get addressControl => asJsObject(this)['addressControl'];
  set addressControlOptions(
      StreetViewAddressControlOptions _addressControlOptions) {
    asJsObject(this)['addressControlOptions'] =
        __codec172.encode(_addressControlOptions);
  }

  StreetViewAddressControlOptions get addressControlOptions =>
      __codec172.decode(asJsObject(this)['addressControlOptions']);
  set clickToGo(bool _clickToGo) {
    asJsObject(this)['clickToGo'] = _clickToGo;
  }

  bool get clickToGo => asJsObject(this)['clickToGo'];
  set disableDefaultUI(bool _disableDefaultUI) {
    asJsObject(this)['disableDefaultUI'] = _disableDefaultUI;
  }

  bool get disableDefaultUI => asJsObject(this)['disableDefaultUI'];
  set disableDoubleClickZoom(bool _disableDoubleClickZoom) {
    asJsObject(this)['disableDoubleClickZoom'] = _disableDoubleClickZoom;
  }

  bool get disableDoubleClickZoom => asJsObject(this)['disableDoubleClickZoom'];
  set enableCloseButton(bool _enableCloseButton) {
    asJsObject(this)['enableCloseButton'] = _enableCloseButton;
  }

  bool get enableCloseButton => asJsObject(this)['enableCloseButton'];
  set imageDateControl(bool _imageDateControl) {
    asJsObject(this)['imageDateControl'] = _imageDateControl;
  }

  bool get imageDateControl => asJsObject(this)['imageDateControl'];
  set linksControl(bool _linksControl) {
    asJsObject(this)['linksControl'] = _linksControl;
  }

  bool get linksControl => asJsObject(this)['linksControl'];
  set panControl(bool _panControl) {
    asJsObject(this)['panControl'] = _panControl;
  }

  bool get panControl => asJsObject(this)['panControl'];
  set panControlOptions(PanControlOptions _panControlOptions) {
    asJsObject(this)['panControlOptions'] =
        __codec57.encode(_panControlOptions);
  }

  PanControlOptions get panControlOptions =>
      __codec57.decode(asJsObject(this)['panControlOptions']);
  set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }

  String get pano => asJsObject(this)['pano'];
  set position(LatLng _position) {
    asJsObject(this)['position'] = __codec0.encode(_position);
  }

  LatLng get position => __codec0.decode(asJsObject(this)['position']);
  set pov(StreetViewPov _pov) {
    asJsObject(this)['pov'] = __codec166.encode(_pov);
  }

  StreetViewPov get pov => __codec166.decode(asJsObject(this)['pov']);
  set scrollwheel(bool _scrollwheel) {
    asJsObject(this)['scrollwheel'] = _scrollwheel;
  }

  bool get scrollwheel => asJsObject(this)['scrollwheel'];
  set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }

  bool get visible => asJsObject(this)['visible'];
  set zoom(num _zoom) {
    asJsObject(this)['zoom'] = _zoom;
  }

  num get zoom => asJsObject(this)['zoom'];
  set zoomControl(bool _zoomControl) {
    asJsObject(this)['zoomControl'] = _zoomControl;
  }

  bool get zoomControl => asJsObject(this)['zoomControl'];
  set zoomControlOptions(ZoomControlOptions _zoomControlOptions) {
    asJsObject(this)['zoomControlOptions'] =
        __codec63.encode(_zoomControlOptions);
  }

  ZoomControlOptions get zoomControlOptions =>
      __codec63.decode(asJsObject(this)['zoomControlOptions']);
}

@GeneratedFrom(_StreetViewPov)
@anonymous
class StreetViewPov extends JsInterface {
  StreetViewPov() : this.created(JsObject(context['Object']));
  StreetViewPov.created(JsObject o) : super.created(o);

  set heading(num _heading) {
    asJsObject(this)['heading'] = _heading;
  }

  num get heading => asJsObject(this)['heading'];
  set pitch(num _pitch) {
    asJsObject(this)['pitch'] = _pitch;
  }

  num get pitch => asJsObject(this)['pitch'];
}

class StreetViewPreference extends JsEnum {
  static final values = <StreetViewPreference>[BEST, NEAREST];
  static final BEST = StreetViewPreference._(
      'BEST', context['google']['maps']['StreetViewPreference']['BEST']);
  static final NEAREST = StreetViewPreference._(
      'NEAREST', context['google']['maps']['StreetViewPreference']['NEAREST']);
  final String _name;
  StreetViewPreference._(this._name, o) : super.created(o);

  @override
  String toString() => 'StreetViewPreference.$_name';
}

@GeneratedFrom(_StreetViewService)
@JsName('google.maps.StreetViewService')
class StreetViewService extends JsInterface {
  StreetViewService()
      : this.created(JsObject(context['google']['maps']['StreetViewService']));
  StreetViewService.created(JsObject o) : super.created(o);

  void getPanoramaById(
      String pano, callback(StreetViewPanoramaData p1, StreetViewStatus p2)) {
    asJsObject(this)
        .callMethod('getPanoramaById', [pano, __codec173.encode(callback)]);
  }

  void getPanoramaByLocation(LatLng latlng, num radius,
      callback(StreetViewPanoramaData p1, StreetViewStatus p2)) {
    asJsObject(this).callMethod('getPanoramaByLocation',
        [__codec0.encode(latlng), radius, __codec173.encode(callback)]);
  }

  void getPanorama(
      dynamic /*StreetViewLocationRequest|StreetViewPanoRequest*/ request,
      void callback(StreetViewPanoramaData datas, StreetViewStatus status)) {
    _getPanorama(
        (ChainedCodec()
              ..add(JsInterfaceCodec<StreetViewLocationRequest>(
                  (o) => StreetViewLocationRequest.created(o),
                  (o) => o is JsObject && o.hasProperty('location')))
              ..add(JsInterfaceCodec<StreetViewPanoRequest>(
                  (o) => StreetViewPanoRequest.created(o),
                  (o) => o is JsObject && o.hasProperty('pano'))))
            .encode(request),
        callback);
  }

  void _getPanorama(dynamic request,
      void callback(StreetViewPanoramaData datas, StreetViewStatus status)) {
    asJsObject(this).callMethod(
        'getPanorama', [__codec9.encode(request), __codec174.encode(callback)]);
  }
}

class StreetViewSource extends JsEnum {
  static final values = <StreetViewSource>[DEFAULT, OUTDOOR];
  static final DEFAULT = StreetViewSource._(
      'DEFAULT', context['google']['maps']['StreetViewSource']['DEFAULT']);
  static final OUTDOOR = StreetViewSource._(
      'OUTDOOR', context['google']['maps']['StreetViewSource']['OUTDOOR']);
  final String _name;
  StreetViewSource._(this._name, o) : super.created(o);

  @override
  String toString() => 'StreetViewSource.$_name';
}

class StreetViewStatus extends JsEnum {
  static final values = <StreetViewStatus>[OK, UNKNOWN_ERROR, ZERO_RESULTS];
  static final OK = StreetViewStatus._(
      'OK', context['google']['maps']['StreetViewStatus']['OK']);
  static final UNKNOWN_ERROR = StreetViewStatus._('UNKNOWN_ERROR',
      context['google']['maps']['StreetViewStatus']['UNKNOWN_ERROR']);
  static final ZERO_RESULTS = StreetViewStatus._('ZERO_RESULTS',
      context['google']['maps']['StreetViewStatus']['ZERO_RESULTS']);
  final String _name;
  StreetViewStatus._(this._name, o) : super.created(o);

  @override
  String toString() => 'StreetViewStatus.$_name';
}

@GeneratedFrom(_StreetViewTileData)
@anonymous
class StreetViewTileData extends JsInterface {
  StreetViewTileData() : this.created(JsObject(context['Object']));
  StreetViewTileData.created(JsObject o) : super.created(o);

  set getTileUrl(
      String Function(String pano, num tileZoom, num tileX, num tileY)
          _getTileUrl) {
    asJsObject(this)['getTileUrl'] = __codec175.encode(_getTileUrl);
  }

  String Function(String pano, num tileZoom, num tileX, num tileY)
      get getTileUrl => __codec175.decode(asJsObject(this)['getTileUrl']);
  set centerHeading(num _centerHeading) {
    asJsObject(this)['centerHeading'] = _centerHeading;
  }

  num get centerHeading => asJsObject(this)['centerHeading'];
  set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec3.encode(_tileSize);
  }

  Size get tileSize => __codec3.decode(asJsObject(this)['tileSize']);
  set worldSize(Size _worldSize) {
    asJsObject(this)['worldSize'] = __codec3.encode(_worldSize);
  }

  Size get worldSize => __codec3.decode(asJsObject(this)['worldSize']);
}

/// codec for google_maps.src.LatLng
final __codec0 = JsInterfaceCodec<LatLng>((o) => LatLng.created(o));

/// codec for google_maps.src.LatLngBounds
final __codec1 = JsInterfaceCodec<LatLngBounds>((o) => LatLngBounds.created(o));

/// codec for google_maps.src.Point
final __codec2 = JsInterfaceCodec<Point>((o) => Point.created(o));

/// codec for google_maps.src.Size
final __codec3 = JsInterfaceCodec<Size>((o) => Size.created(o));

/// codec for google_maps.src.ControlPosition
final __codec4 = BiMapCodec<ControlPosition, dynamic>(
    Map<ControlPosition, dynamic>.fromIterable(ControlPosition.values,
        value: asJs));

/// codec for google_maps.src.MapTypeControlStyle
final __codec5 = BiMapCodec<MapTypeControlStyle, dynamic>(
    Map<MapTypeControlStyle, dynamic>.fromIterable(MapTypeControlStyle.values,
        value: asJs));

/// codec for google_maps.src.ScaleControlStyle
final __codec6 = BiMapCodec<ScaleControlStyle, dynamic>(
    Map<ScaleControlStyle, dynamic>.fromIterable(ScaleControlStyle.values,
        value: asJs));

/// codec for google_maps.src.ZoomControlStyle
final __codec7 = BiMapCodec<ZoomControlStyle, dynamic>(
    Map<ZoomControlStyle, dynamic>.fromIterable(ZoomControlStyle.values,
        value: asJs));

/// codec for google_maps.src.DataDataOptions
final __codec8 =
    JsInterfaceCodec<DataDataOptions>((o) => DataDataOptions.created(o));

/// codec for dart.core.dynamic
final __codec9 = DynamicCodec();

/// codec for dart.core.Object
final __codec10 = DynamicCodec();

/// codec for google_maps.src.DataGeoJsonOptions
final __codec11 =
    JsInterfaceCodec<DataGeoJsonOptions>((o) => DataGeoJsonOptions.created(o));

/// codec for google_maps.src.DataFeature
final __codec12 = JsInterfaceCodec<DataFeature>((o) => DataFeature.created(o));

/// codec for dart.core.List<DataFeature>
final __codec13 = JsListCodec<DataFeature>(__codec12);

/// codec for google_maps.src.(DataFeature) → dynamic
final __codec14 = FunctionCodec<Function> /*<(DataFeature) → dynamic>*/(
  (f) => (p$p1) => __codec9.encode(f(__codec12.decode(p$p1))),
  (f) => (p$p1) => __codec9.decode(f is JsFunction
      ? f.apply([__codec12.encode(p$p1)])
      : Function.apply(f, [__codec12.encode(p$p1)])),
);

/// codec for dart.core.List<String>
final __codec15 = JsListCodec<String>(null);

/// codec for google_maps.src.GMap
final __codec16 = JsInterfaceCodec<GMap>((o) => GMap.created(o));

/// codec for google_maps.src.(List<DataFeature>) → dynamic
final __codec17 = FunctionCodec<Function> /*<(List<DataFeature>) → dynamic>*/(
  (f) => (p$p1) => __codec9.encode(f(__codec13.decode(p$p1))),
  (f) => (p$p1) => __codec9.decode(f is JsFunction
      ? f.apply([__codec13.encode(p$p1)])
      : Function.apply(f, [__codec13.encode(p$p1)])),
);

/// codec for google_maps.src.DataStyleOptions
final __codec18 =
    JsInterfaceCodec<DataStyleOptions>((o) => DataStyleOptions.created(o));

/// codec for google_maps.src.(Object) → dynamic
final __codec19 = FunctionCodec<Function> /*<(Object) → dynamic>*/(
  (f) => (p$p1) => __codec9.encode(f(__codec10.decode(p$p1))),
  (f) => (p$p1) => __codec9.decode(f is JsFunction
      ? f.apply([__codec10.encode(p$p1)])
      : Function.apply(f, [__codec10.encode(p$p1)])),
);

/// codec for google_maps.src.DataFeatureOptions
final __codec20 =
    JsInterfaceCodec<DataFeatureOptions>((o) => DataFeatureOptions.created(o));

/// codec for google_maps.src.(dynamic, String) → dynamic
final __codec21 = FunctionCodec<Function> /*<(dynamic, String) → dynamic>*/(
  (f) => (p$p1, p$p2) => __codec9.encode(f(__codec9.decode(p$p1), p$p2)),
  (f) => (p$p1, p$p2) => __codec9.decode(f is JsFunction
      ? f.apply([__codec9.encode(p$p1), p$p2])
      : Function.apply(f, [__codec9.encode(p$p1), p$p2])),
);

/// codec for dart.core.List<LatLng>
final __codec22 = JsListCodec<LatLng>(__codec0);

/// codec for google_maps.src.DataLineString
final __codec23 =
    JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o));

/// codec for dart.core.List<DataLineString>
final __codec24 = JsListCodec<DataLineString>(__codec23);

/// codec for google_maps.src.DataPolygon
final __codec25 = JsInterfaceCodec<DataPolygon>((o) => DataPolygon.created(o));

/// codec for dart.core.List<DataPolygon>
final __codec26 = JsListCodec<DataPolygon>(__codec25);

/// codec for google_maps.src.DataLinearRing
final __codec27 =
    JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o));

/// codec for dart.core.List<DataLinearRing>
final __codec28 = JsListCodec<DataLinearRing>(__codec27);

/// codec for google_maps.src.MarkerShape
final __codec29 = JsInterfaceCodec<MarkerShape>((o) => MarkerShape.created(o));

/// codec for google_maps.src.(dynamic) → dynamic
final __codec30 = FunctionCodec<Function> /*<(dynamic) → dynamic>*/(
  (f) => (p$p1) => __codec9.encode(f(__codec9.decode(p$p1))),
  (f) => (p$p1) => __codec9.decode(f is JsFunction
      ? f.apply([__codec9.encode(p$p1)])
      : Function.apply(f, [__codec9.encode(p$p1)])),
);

/// codec for google_maps.src.MapsEventListener
final __codec31 =
    JsInterfaceCodec<MapsEventListener>((o) => MapsEventListener.created(o));

/// codec for google_maps.src.([dynamic, dynamic, dynamic, dynamic, dynamic]) → dynamic
final __codec32 = FunctionCodec<
    Function> /*<([dynamic, dynamic, dynamic, dynamic, dynamic]) → dynamic>*/(
  (f) => ([p$p1, p$p2, p$p3, p$p4, p$p5]) => __codec9.encode(f(
      __codec9.decode(p$p1),
      __codec9.decode(p$p2),
      __codec9.decode(p$p3),
      __codec9.decode(p$p4),
      __codec9.decode(p$p5))),
  (f) => ([p$p1, p$p2, p$p3, p$p4, p$p5]) => __codec9.decode(f is JsFunction
      ? f.apply([
          __codec9.encode(p$p1),
          __codec9.encode(p$p2),
          __codec9.encode(p$p3),
          __codec9.encode(p$p4),
          __codec9.encode(p$p5)
        ])
      : Function.apply(f, [
          __codec9.encode(p$p1),
          __codec9.encode(p$p2),
          __codec9.encode(p$p3),
          __codec9.encode(p$p4),
          __codec9.encode(p$p5)
        ])),
);

/// codec for google_maps.src.FusionTablesLayerOptions
final __codec33 = JsInterfaceCodec<FusionTablesLayerOptions>(
    (o) => FusionTablesLayerOptions.created(o));

/// codec for google_maps.src.FusionTablesHeatmap
final __codec34 = JsInterfaceCodec<FusionTablesHeatmap>(
    (o) => FusionTablesHeatmap.created(o));

/// codec for google_maps.src.FusionTablesQuery
final __codec35 =
    JsInterfaceCodec<FusionTablesQuery>((o) => FusionTablesQuery.created(o));

/// codec for google_maps.src.FusionTablesStyle
final __codec36 =
    JsInterfaceCodec<FusionTablesStyle>((o) => FusionTablesStyle.created(o));

/// codec for dart.core.List<FusionTablesStyle>
final __codec37 = JsListCodec<FusionTablesStyle>(__codec36);

/// codec for google_maps.src.FusionTablesCell
final __codec38 =
    JsInterfaceCodec<FusionTablesCell>((o) => FusionTablesCell.created(o));

/// codec for dart.core.Map<String, FusionTablesCell>
final __codec39 = JsObjectAsMapCodec<FusionTablesCell>(__codec38);

/// codec for google_maps.src.FusionTablesMarkerOptions
final __codec40 = JsInterfaceCodec<FusionTablesMarkerOptions>(
    (o) => FusionTablesMarkerOptions.created(o));

/// codec for google_maps.src.FusionTablesPolygonOptions
final __codec41 = JsInterfaceCodec<FusionTablesPolygonOptions>(
    (o) => FusionTablesPolygonOptions.created(o));

/// codec for google_maps.src.FusionTablesPolylineOptions
final __codec42 = JsInterfaceCodec<FusionTablesPolylineOptions>(
    (o) => FusionTablesPolylineOptions.created(o));

/// codec for google_maps.src.KmlAuthor
final __codec43 = JsInterfaceCodec<KmlAuthor>((o) => KmlAuthor.created(o));

/// codec for google_maps.src.KmlLayerOptions
final __codec44 =
    JsInterfaceCodec<KmlLayerOptions>((o) => KmlLayerOptions.created(o));

/// codec for google_maps.src.KmlLayerMetadata
final __codec45 =
    JsInterfaceCodec<KmlLayerMetadata>((o) => KmlLayerMetadata.created(o));

/// codec for google_maps.src.KmlLayerStatus
final __codec46 = BiMapCodec<KmlLayerStatus, dynamic>(
    Map<KmlLayerStatus, dynamic>.fromIterable(KmlLayerStatus.values,
        value: asJs));

/// codec for google_maps.src.KmlFeatureData
final __codec47 =
    JsInterfaceCodec<KmlFeatureData>((o) => KmlFeatureData.created(o));

/// codec for google_maps.src.MapOptions
final __codec48 = JsInterfaceCodec<MapOptions>((o) => MapOptions.created(o));

/// codec for google_maps.src.Controls
final __codec49 = JsInterfaceCodec<Controls>((o) => Controls.created(o));

/// codec for google_maps.src.Data
final __codec50 = JsInterfaceCodec<Data>((o) => Data.created(o));

/// codec for google_maps.src.MapTypeRegistry
final __codec51 =
    JsInterfaceCodec<MapTypeRegistry>((o) => MapTypeRegistry.created(o));

/// codec for google_maps.src.Projection
final __codec52 = JsInterfaceCodec<Projection>((o) => Projection.created(o));

/// codec for google_maps.src.StreetViewPanorama
final __codec53 =
    JsInterfaceCodec<StreetViewPanorama>((o) => StreetViewPanorama.created(o));

/// codec for google_maps.src.FullscreenControlOptions
final __codec54 = JsInterfaceCodec<FullscreenControlOptions>(
    (o) => FullscreenControlOptions.created(o));

/// codec for google_maps.src.MapTypeControlOptions
final __codec55 = JsInterfaceCodec<MapTypeControlOptions>(
    (o) => MapTypeControlOptions.created(o));

/// codec for google_maps.src.OverviewMapControlOptions
final __codec56 = JsInterfaceCodec<OverviewMapControlOptions>(
    (o) => OverviewMapControlOptions.created(o));

/// codec for google_maps.src.PanControlOptions
final __codec57 =
    JsInterfaceCodec<PanControlOptions>((o) => PanControlOptions.created(o));

/// codec for google_maps.src.RotateControlOptions
final __codec58 = JsInterfaceCodec<RotateControlOptions>(
    (o) => RotateControlOptions.created(o));

/// codec for google_maps.src.ScaleControlOptions
final __codec59 = JsInterfaceCodec<ScaleControlOptions>(
    (o) => ScaleControlOptions.created(o));

/// codec for google_maps.src.StreetViewControlOptions
final __codec60 = JsInterfaceCodec<StreetViewControlOptions>(
    (o) => StreetViewControlOptions.created(o));

/// codec for google_maps.src.MapTypeStyle
final __codec61 =
    JsInterfaceCodec<MapTypeStyle>((o) => MapTypeStyle.created(o));

/// codec for dart.core.List<MapTypeStyle>
final __codec62 = JsListCodec<MapTypeStyle>(__codec61);

/// codec for google_maps.src.ZoomControlOptions
final __codec63 =
    JsInterfaceCodec<ZoomControlOptions>((o) => ZoomControlOptions.created(o));

/// codec for google_maps.src.ImageMapTypeOptions
final __codec64 = JsInterfaceCodec<ImageMapTypeOptions>(
    (o) => ImageMapTypeOptions.created(o));

/// codec for google_maps.src.(Point, num, Document) → Node
final __codec65 = FunctionCodec<Function> /*<(Point, num, Document) → Node>*/(
  (f) => (p$tileCoord, p$zoom, p$ownerDocument) =>
      f(__codec2.decode(p$tileCoord), p$zoom, p$ownerDocument),
  (f) => (p$tileCoord, p$zoom, p$ownerDocument) => f is JsFunction
      ? f.apply([__codec2.encode(p$tileCoord), p$zoom, p$ownerDocument])
      : Function.apply(
          f, [__codec2.encode(p$tileCoord), p$zoom, p$ownerDocument]),
);

/// codec for google_maps.src.(Point, num) → String
final __codec66 = FunctionCodec<Function> /*<(Point, num) → String>*/(
  (f) => (p$point, p$zoom) => f(__codec2.decode(p$point), p$zoom),
  (f) => (p$point, p$zoom) => f is JsFunction
      ? f.apply([__codec2.encode(p$point), p$zoom])
      : Function.apply(f, [__codec2.encode(p$point), p$zoom]),
);

/// codec for google_maps.src.MapType
final __codec67 = JsInterfaceCodec<MapType>((o) => MapType.created(o));

/// codec for google_maps.src.MapTypeStyleElementType
final __codec68 = BiMapCodec<MapTypeStyleElementType, dynamic>(
    Map<MapTypeStyleElementType, dynamic>.fromIterable(
        MapTypeStyleElementType.values,
        value: asJs));

/// codec for google_maps.src.MapTypeStyleFeatureType
final __codec69 = BiMapCodec<MapTypeStyleFeatureType, dynamic>(
    Map<MapTypeStyleFeatureType, dynamic>.fromIterable(
        MapTypeStyleFeatureType.values,
        value: asJs));

/// codec for google_maps.src.MapTypeStyler
final __codec70 =
    JsInterfaceCodec<MapTypeStyler>((o) => MapTypeStyler.created(o));

/// codec for dart.core.List<MapTypeStyler>
final __codec71 = JsListCodec<MapTypeStyler>(__codec70);

/// codec for google_maps.src.(LatLng, [Point]) → Point
final __codec72 = FunctionCodec<Function> /*<(LatLng, [Point]) → Point>*/(
  (f) => (p$latLng, [p$point]) =>
      __codec2.encode(f(__codec0.decode(p$latLng), __codec2.decode(p$point))),
  (f) => (p$this, p$latLng, [p$point]) => __codec2.decode(f is JsFunction
      ? f.apply([
          __codec0.encode(p$latLng),
          if (p$point != null) __codec2.encode(p$point),
        ], thisArg: p$this)
      : Function.apply(
          f, [__codec0.encode(p$latLng), __codec2.encode(p$point)])),
);

/// codec for google_maps.src.(Point, [bool]) → LatLng
final __codec73 = FunctionCodec<Function> /*<(Point, [bool]) → LatLng>*/(
  (f) => (p$pixel, [p$nowrap]) =>
      __codec0.encode(f(__codec2.decode(p$pixel), p$nowrap)),
  (f) => (p$pixel, [p$nowrap]) => __codec0.decode(f is JsFunction
      ? f.apply([__codec2.encode(p$pixel), p$nowrap])
      : Function.apply(f, [__codec2.encode(p$pixel), p$nowrap])),
);

/// codec for google_maps.src.StyledMapTypeOptions
final __codec74 = JsInterfaceCodec<StyledMapTypeOptions>(
    (o) => StyledMapTypeOptions.created(o));

/// codec for google_maps.src.(dynamic, num) → void
final __codec75 = FunctionCodec<Function> /*<(dynamic, num) → void>*/(
  (f) => (p$o, p$index) {
    f(__codec9.decode(p$o), p$index);
  },
  (f) => (p$o, p$index) {
    f is JsFunction
        ? f.apply([__codec9.encode(p$o), p$index])
        : Function.apply(f, [__codec9.encode(p$o), p$index]);
  },
);

/// codec for google_maps.src.MVCObject
final __codec76 = JsInterfaceCodec<MVCObject>((o) => MVCObject.created(o));

/// codec for google_maps.src.CircleOptions
final __codec77 =
    JsInterfaceCodec<CircleOptions>((o) => CircleOptions.created(o));

/// codec for google_maps.src.StrokePosition
final __codec78 = BiMapCodec<StrokePosition, dynamic>(
    Map<StrokePosition, dynamic>.fromIterable(StrokePosition.values,
        value: asJs));

/// codec for google_maps.src.GroundOverlayOptions
final __codec79 = JsInterfaceCodec<GroundOverlayOptions>(
    (o) => GroundOverlayOptions.created(o));

/// codec for google_maps.src.GSymbol
final __codec80 = JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o));

/// codec for google_maps.src.InfoWindowOptions
final __codec81 =
    JsInterfaceCodec<InfoWindowOptions>((o) => InfoWindowOptions.created(o));

/// codec for google_maps.src.MarkerOptions
final __codec82 =
    JsInterfaceCodec<MarkerOptions>((o) => MarkerOptions.created(o));

/// codec for google_maps.src.Animation
final __codec83 = BiMapCodec<Animation, dynamic>(
    Map<Animation, dynamic>.fromIterable(Animation.values, value: asJs));

/// codec for google_maps.src.Attribution
final __codec84 = JsInterfaceCodec<Attribution>((o) => Attribution.created(o));

/// codec for google_maps.src.MarkerLabel
final __codec85 = JsInterfaceCodec<MarkerLabel>((o) => MarkerLabel.created(o));

/// codec for google_maps.src.MarkerPlace
final __codec86 = JsInterfaceCodec<MarkerPlace>((o) => MarkerPlace.created(o));

/// codec for dart.core.List<num>
final __codec87 = JsListCodec<num>(null);

/// codec for google_maps.src.() → void
final __codec88 = FunctionCodec<Function> /*<() → void>*/(
  (f) => f,
  (f) => () {
    f is JsFunction ? f.apply([]) : Function.apply(f, []);
  },
);

/// codec for google_maps.src.MapPanes
final __codec89 = JsInterfaceCodec<MapPanes>((o) => MapPanes.created(o));

/// codec for google_maps.src.MapCanvasProjection
final __codec90 = JsInterfaceCodec<MapCanvasProjection>(
    (o) => MapCanvasProjection.created(o));

/// codec for google_maps.src.PolygonOptions
final __codec91 =
    JsInterfaceCodec<PolygonOptions>((o) => PolygonOptions.created(o));

/// codec for google_maps.src.PolylineOptions
final __codec92 =
    JsInterfaceCodec<PolylineOptions>((o) => PolylineOptions.created(o));

/// codec for google_maps.src.IconSequence
final __codec93 =
    JsInterfaceCodec<IconSequence>((o) => IconSequence.created(o));

/// codec for dart.core.List<IconSequence>
final __codec94 = JsListCodec<IconSequence>(__codec93);

/// codec for google_maps.src.RectangleOptions
final __codec95 =
    JsInterfaceCodec<RectangleOptions>((o) => RectangleOptions.created(o));

/// codec for google_maps.src.SaveWidgetOptions
final __codec96 =
    JsInterfaceCodec<SaveWidgetOptions>((o) => SaveWidgetOptions.created(o));

/// codec for google_maps.src.Time
final __codec97 = JsInterfaceCodec<Time>((o) => Time.created(o));

/// codec for google_maps.src.Distance
final __codec98 = JsInterfaceCodec<Distance>((o) => Distance.created(o));

/// codec for google_maps.src.GDuration
final __codec99 = JsInterfaceCodec<GDuration>((o) => GDuration.created(o));

/// codec for google_maps.src.DirectionsStep
final __codec100 =
    JsInterfaceCodec<DirectionsStep>((o) => DirectionsStep.created(o));

/// codec for dart.core.List<DirectionsStep>
final __codec101 = JsListCodec<DirectionsStep>(__codec100);

/// codec for google_maps.src.DirectionsRendererOptions
final __codec102 = JsInterfaceCodec<DirectionsRendererOptions>(
    (o) => DirectionsRendererOptions.created(o));

/// codec for google_maps.src.DirectionsResult
final __codec103 =
    JsInterfaceCodec<DirectionsResult>((o) => DirectionsResult.created(o));

/// codec for google_maps.src.InfoWindow
final __codec104 = JsInterfaceCodec<InfoWindow>((o) => InfoWindow.created(o));

/// codec for google_maps.src.DrivingOptions
final __codec105 =
    JsInterfaceCodec<DrivingOptions>((o) => DrivingOptions.created(o));

/// codec for google_maps.src.TransitOptions
final __codec106 =
    JsInterfaceCodec<TransitOptions>((o) => TransitOptions.created(o));

/// codec for google_maps.src.TravelMode
final __codec107 = BiMapCodec<TravelMode, dynamic>(
    Map<TravelMode, dynamic>.fromIterable(TravelMode.values, value: asJs));

/// codec for google_maps.src.UnitSystem
final __codec108 = BiMapCodec<UnitSystem, dynamic>(
    Map<UnitSystem, dynamic>.fromIterable(UnitSystem.values, value: asJs));

/// codec for google_maps.src.DirectionsWaypoint
final __codec109 =
    JsInterfaceCodec<DirectionsWaypoint>((o) => DirectionsWaypoint.created(o));

/// codec for dart.core.List<DirectionsWaypoint>
final __codec110 = JsListCodec<DirectionsWaypoint>(__codec109);

/// codec for google_maps.src.DirectionsGeocodedWaypoint
final __codec111 = JsInterfaceCodec<DirectionsGeocodedWaypoint>(
    (o) => DirectionsGeocodedWaypoint.created(o));

/// codec for dart.core.List<DirectionsGeocodedWaypoint>
final __codec112 = JsListCodec<DirectionsGeocodedWaypoint>(__codec111);

/// codec for google_maps.src.DirectionsRoute
final __codec113 =
    JsInterfaceCodec<DirectionsRoute>((o) => DirectionsRoute.created(o));

/// codec for dart.core.List<DirectionsRoute>
final __codec114 = JsListCodec<DirectionsRoute>(__codec113);

/// codec for google_maps.src.TransitFare
final __codec115 = JsInterfaceCodec<TransitFare>((o) => TransitFare.created(o));

/// codec for google_maps.src.DirectionsLeg
final __codec116 =
    JsInterfaceCodec<DirectionsLeg>((o) => DirectionsLeg.created(o));

/// codec for dart.core.List<DirectionsLeg>
final __codec117 = JsListCodec<DirectionsLeg>(__codec116);

/// codec for google_maps.src.DirectionsRequest
final __codec118 =
    JsInterfaceCodec<DirectionsRequest>((o) => DirectionsRequest.created(o));

/// codec for google_maps.src.DirectionsStatus
final __codec119 = BiMapCodec<DirectionsStatus, dynamic>(
    Map<DirectionsStatus, dynamic>.fromIterable(DirectionsStatus.values,
        value: asJs));

/// codec for google_maps.src.(DirectionsResult, DirectionsStatus) → dynamic
final __codec120 = FunctionCodec<
    Function> /*<(DirectionsResult, DirectionsStatus) → dynamic>*/(
  (f) => (p$p1, p$p2) =>
      __codec9.encode(f(__codec103.decode(p$p1), __codec119.decode(p$p2))),
  (f) => (p$p1, p$p2) => __codec9.decode(f is JsFunction
      ? f.apply([__codec103.encode(p$p1), __codec119.encode(p$p2)])
      : Function.apply(f, [__codec103.encode(p$p1), __codec119.encode(p$p2)])),
);

/// codec for google_maps.src.TransitDetails
final __codec121 =
    JsInterfaceCodec<TransitDetails>((o) => TransitDetails.created(o));

/// codec for google_maps.src.DistanceMatrixResponseRow
final __codec122 = JsInterfaceCodec<DistanceMatrixResponseRow>(
    (o) => DistanceMatrixResponseRow.created(o));

/// codec for dart.core.List<DistanceMatrixResponseRow>
final __codec123 = JsListCodec<DistanceMatrixResponseRow>(__codec122);

/// codec for google_maps.src.DistanceMatrixElementStatus
final __codec124 = BiMapCodec<DistanceMatrixElementStatus, dynamic>(
    Map<DistanceMatrixElementStatus, dynamic>.fromIterable(
        DistanceMatrixElementStatus.values,
        value: asJs));

/// codec for google_maps.src.DistanceMatrixResponseElement
final __codec125 = JsInterfaceCodec<DistanceMatrixResponseElement>(
    (o) => DistanceMatrixResponseElement.created(o));

/// codec for dart.core.List<DistanceMatrixResponseElement>
final __codec126 = JsListCodec<DistanceMatrixResponseElement>(__codec125);

/// codec for google_maps.src.DistanceMatrixRequest
final __codec127 = JsInterfaceCodec<DistanceMatrixRequest>(
    (o) => DistanceMatrixRequest.created(o));

/// codec for google_maps.src.DistanceMatrixResponse
final __codec128 = JsInterfaceCodec<DistanceMatrixResponse>(
    (o) => DistanceMatrixResponse.created(o));

/// codec for google_maps.src.DistanceMatrixStatus
final __codec129 = BiMapCodec<DistanceMatrixStatus, dynamic>(
    Map<DistanceMatrixStatus, dynamic>.fromIterable(DistanceMatrixStatus.values,
        value: asJs));

/// codec for google_maps.src.(DistanceMatrixResponse, DistanceMatrixStatus) → dynamic
final __codec130 = FunctionCodec<
    Function> /*<(DistanceMatrixResponse, DistanceMatrixStatus) → dynamic>*/(
  (f) => (p$p1, p$p2) =>
      __codec9.encode(f(__codec128.decode(p$p1), __codec129.decode(p$p2))),
  (f) => (p$p1, p$p2) => __codec9.decode(f is JsFunction
      ? f.apply([__codec128.encode(p$p1), __codec129.encode(p$p2)])
      : Function.apply(f, [__codec128.encode(p$p1), __codec129.encode(p$p2)])),
);

/// codec for google_maps.src.TrafficModel
final __codec131 = BiMapCodec<TrafficModel, dynamic>(
    Map<TrafficModel, dynamic>.fromIterable(TrafficModel.values, value: asJs));

/// codec for google_maps.src.PathElevationRequest
final __codec132 = JsInterfaceCodec<PathElevationRequest>(
    (o) => PathElevationRequest.created(o));

/// codec for google_maps.src.ElevationResult
final __codec133 =
    JsInterfaceCodec<ElevationResult>((o) => ElevationResult.created(o));

/// codec for dart.core.List<ElevationResult>
final __codec134 = JsListCodec<ElevationResult>(__codec133);

/// codec for google_maps.src.ElevationStatus
final __codec135 = BiMapCodec<ElevationStatus, dynamic>(
    Map<ElevationStatus, dynamic>.fromIterable(ElevationStatus.values,
        value: asJs));

/// codec for google_maps.src.(List<ElevationResult>, ElevationStatus) → dynamic
final __codec136 = FunctionCodec<
    Function> /*<(List<ElevationResult>, ElevationStatus) → dynamic>*/(
  (f) => (p$p1, p$p2) =>
      __codec9.encode(f(__codec134.decode(p$p1), __codec135.decode(p$p2))),
  (f) => (p$p1, p$p2) => __codec9.decode(f is JsFunction
      ? f.apply([__codec134.encode(p$p1), __codec135.encode(p$p2)])
      : Function.apply(f, [__codec134.encode(p$p1), __codec135.encode(p$p2)])),
);

/// codec for google_maps.src.LocationElevationRequest
final __codec137 = JsInterfaceCodec<LocationElevationRequest>(
    (o) => LocationElevationRequest.created(o));

/// codec for google_maps.src.GeocoderRequest
final __codec138 =
    JsInterfaceCodec<GeocoderRequest>((o) => GeocoderRequest.created(o));

/// codec for google_maps.src.GeocoderResult
final __codec139 =
    JsInterfaceCodec<GeocoderResult>((o) => GeocoderResult.created(o));

/// codec for dart.core.List<GeocoderResult>
final __codec140 = JsListCodec<GeocoderResult>(__codec139);

/// codec for google_maps.src.GeocoderStatus
final __codec141 = BiMapCodec<GeocoderStatus, dynamic>(
    Map<GeocoderStatus, dynamic>.fromIterable(GeocoderStatus.values,
        value: asJs));

/// codec for google_maps.src.(List<GeocoderResult>, GeocoderStatus) → dynamic
final __codec142 = FunctionCodec<
    Function> /*<(List<GeocoderResult>, GeocoderStatus) → dynamic>*/(
  (f) => (p$p1, p$p2) =>
      __codec9.encode(f(__codec140.decode(p$p1), __codec141.decode(p$p2))),
  (f) => (p$p1, p$p2) => __codec9.decode(f is JsFunction
      ? f.apply([__codec140.encode(p$p1), __codec141.encode(p$p2)])
      : Function.apply(f, [__codec140.encode(p$p1), __codec141.encode(p$p2)])),
);

/// codec for google_maps.src.GeocoderLocationType
final __codec143 = BiMapCodec<GeocoderLocationType, dynamic>(
    Map<GeocoderLocationType, dynamic>.fromIterable(GeocoderLocationType.values,
        value: asJs));

/// codec for google_maps.src.GeocoderComponentRestrictions
final __codec144 = JsInterfaceCodec<GeocoderComponentRestrictions>(
    (o) => GeocoderComponentRestrictions.created(o));

/// codec for google_maps.src.GeocoderAddressComponent
final __codec145 = JsInterfaceCodec<GeocoderAddressComponent>(
    (o) => GeocoderAddressComponent.created(o));

/// codec for dart.core.List<GeocoderAddressComponent>
final __codec146 = JsListCodec<GeocoderAddressComponent>(__codec145);

/// codec for google_maps.src.GeocoderGeometry
final __codec147 =
    JsInterfaceCodec<GeocoderGeometry>((o) => GeocoderGeometry.created(o));

/// codec for google_maps.src.MaxZoomStatus
final __codec148 = BiMapCodec<MaxZoomStatus, dynamic>(
    Map<MaxZoomStatus, dynamic>.fromIterable(MaxZoomStatus.values,
        value: asJs));

/// codec for google_maps.src.MaxZoomResult
final __codec149 =
    JsInterfaceCodec<MaxZoomResult>((o) => MaxZoomResult.created(o));

/// codec for google_maps.src.(MaxZoomResult) → dynamic
final __codec150 = FunctionCodec<Function> /*<(MaxZoomResult) → dynamic>*/(
  (f) => (p$p1) => __codec9.encode(f(__codec149.decode(p$p1))),
  (f) => (p$p1) => __codec9.decode(f is JsFunction
      ? f.apply([__codec149.encode(p$p1)])
      : Function.apply(f, [__codec149.encode(p$p1)])),
);

/// codec for google_maps.src.TransitStop
final __codec151 = JsInterfaceCodec<TransitStop>((o) => TransitStop.created(o));

/// codec for google_maps.src.TransitLine
final __codec152 = JsInterfaceCodec<TransitLine>((o) => TransitLine.created(o));

/// codec for google_maps.src.TransitAgency
final __codec153 =
    JsInterfaceCodec<TransitAgency>((o) => TransitAgency.created(o));

/// codec for dart.core.List<TransitAgency>
final __codec154 = JsListCodec<TransitAgency>(__codec153);

/// codec for google_maps.src.TransitVehicle
final __codec155 =
    JsInterfaceCodec<TransitVehicle>((o) => TransitVehicle.created(o));

/// codec for google_maps.src.TransitMode
final __codec156 = BiMapCodec<TransitMode, dynamic>(
    Map<TransitMode, dynamic>.fromIterable(TransitMode.values, value: asJs));

/// codec for dart.core.List<TransitMode>
final __codec157 = JsListCodec<TransitMode>(__codec156);

/// codec for google_maps.src.TransitRoutePreference
final __codec158 = BiMapCodec<TransitRoutePreference, dynamic>(
    Map<TransitRoutePreference, dynamic>.fromIterable(
        TransitRoutePreference.values,
        value: asJs));

/// codec for google_maps.src.VehicleType
final __codec159 = BiMapCodec<VehicleType, dynamic>(
    Map<VehicleType, dynamic>.fromIterable(VehicleType.values, value: asJs));

/// codec for google_maps.src.StreetViewPreference
final __codec160 = BiMapCodec<StreetViewPreference, dynamic>(
    Map<StreetViewPreference, dynamic>.fromIterable(StreetViewPreference.values,
        value: asJs));

/// codec for google_maps.src.StreetViewSource
final __codec161 = BiMapCodec<StreetViewSource, dynamic>(
    Map<StreetViewSource, dynamic>.fromIterable(StreetViewSource.values,
        value: asJs));

/// codec for google_maps.src.StreetViewPanoramaOptions
final __codec162 = JsInterfaceCodec<StreetViewPanoramaOptions>(
    (o) => StreetViewPanoramaOptions.created(o));

/// codec for google_maps.src.StreetViewLink
final __codec163 =
    JsInterfaceCodec<StreetViewLink>((o) => StreetViewLink.created(o));

/// codec for dart.core.List<StreetViewLink>
final __codec164 = JsListCodec<StreetViewLink>(__codec163);

/// codec for google_maps.src.StreetViewLocation
final __codec165 =
    JsInterfaceCodec<StreetViewLocation>((o) => StreetViewLocation.created(o));

/// codec for google_maps.src.StreetViewPov
final __codec166 =
    JsInterfaceCodec<StreetViewPov>((o) => StreetViewPov.created(o));

/// codec for google_maps.src.StreetViewStatus
final __codec167 = BiMapCodec<StreetViewStatus, dynamic>(
    Map<StreetViewStatus, dynamic>.fromIterable(StreetViewStatus.values,
        value: asJs));

/// codec for google_maps.src.StreetViewPanoramaData
final __codec168 = JsInterfaceCodec<StreetViewPanoramaData>(
    (o) => StreetViewPanoramaData.created(o));

/// codec for google_maps.src.PanoProviderOptions
final __codec169 = JsInterfaceCodec<PanoProviderOptions>(
    (o) => PanoProviderOptions.created(o));

/// codec for google_maps.src.(String, [PanoProviderOptions]) → StreetViewPanoramaData
final __codec170 = FunctionCodec<
    Function> /*<(String, [PanoProviderOptions]) → StreetViewPanoramaData>*/(
  (f) => (p$p1, [p$options]) =>
      __codec168.encode(f(p$p1, __codec169.decode(p$options))),
  (f) => (p$p1, [p$options]) => __codec168.decode(f is JsFunction
      ? f.apply([p$p1, __codec169.encode(p$options)])
      : Function.apply(f, [p$p1, __codec169.encode(p$options)])),
);

/// codec for google_maps.src.StreetViewTileData
final __codec171 =
    JsInterfaceCodec<StreetViewTileData>((o) => StreetViewTileData.created(o));

/// codec for google_maps.src.StreetViewAddressControlOptions
final __codec172 = JsInterfaceCodec<StreetViewAddressControlOptions>(
    (o) => StreetViewAddressControlOptions.created(o));

/// codec for google_maps.src.(StreetViewPanoramaData, StreetViewStatus) → dynamic
final __codec173 = FunctionCodec<
    Function> /*<(StreetViewPanoramaData, StreetViewStatus) → dynamic>*/(
  (f) => (p$p1, p$p2) =>
      __codec9.encode(f(__codec168.decode(p$p1), __codec167.decode(p$p2))),
  (f) => (p$p1, p$p2) => __codec9.decode(f is JsFunction
      ? f.apply([__codec168.encode(p$p1), __codec167.encode(p$p2)])
      : Function.apply(f, [__codec168.encode(p$p1), __codec167.encode(p$p2)])),
);

/// codec for google_maps.src.(StreetViewPanoramaData, StreetViewStatus) → void
final __codec174 = FunctionCodec<
    Function> /*<(StreetViewPanoramaData, StreetViewStatus) → void>*/(
  (f) => (p$datas, p$status) {
    f(__codec168.decode(p$datas), __codec167.decode(p$status));
  },
  (f) => (p$datas, p$status) {
    f is JsFunction
        ? f.apply([__codec168.encode(p$datas), __codec167.encode(p$status)])
        : Function.apply(
            f, [__codec168.encode(p$datas), __codec167.encode(p$status)]);
  },
);

/// codec for google_maps.src.(String, num, num, num) → String
final __codec175 =
    FunctionCodec<Function> /*<(String, num, num, num) → String>*/(
  (f) => f,
  (f) => (p$pano, p$tileZoom, p$tileX, p$tileY) => f is JsFunction
      ? f.apply([p$pano, p$tileZoom, p$tileX, p$tileY])
      : Function.apply(f, [p$pano, p$tileZoom, p$tileX, p$tileY]),
);

/// codec for google_maps.src.Padding
final __codec176 = JsInterfaceCodec<Padding>((o) => Padding.created(o));
