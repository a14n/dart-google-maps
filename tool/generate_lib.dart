import 'dart:io';

import 'package:dart_style/src/dart_formatter.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

final LICENCE = '''
// Copyright (c) 2015, Alexandre Ardhuin
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
''';

final customClassName = <String, String>{
  'Map': 'GMap',
  'Symbol': 'GSymbol',
  'Duration': 'GDuration',
};

final overridenPropertyTypes = {
  'DirectionsRequest': {
    'origin': 'LatLng|Place|string',
    'destination': 'LatLng|Place|string',
  },
  'DirectionsWaypoint': {'location': 'LatLng|Place|string',},
};

final customContent = <String, String>{
  'Data.StylingFunction':
      'typedef DataStyleOptions DataStylingFunction(DataFeature dataFeature);',
  'MVCArray': '''
@JsName('google.maps.MVCArray')
abstract class _MVCArray<E> extends MVCObject {
  Codec<E, dynamic> _codec = null;

  _MVCArray({List<E> elements, Codec<E, dynamic> codec}) : this.created(
          new JsObject(context['google']['maps']['MVCArray'], [
        elements == null
            ? new JsArray()
            : new JsArray.from(
                codec == null ? elements : elements.map(codec.encode))
      ]), codec);

  _MVCArray.created(JsObject o,
      [Codec<E, dynamic> codec])
      : _codec = codec != null ? codec : new IdentityCodec(),
        super.created(o);

  void clear();
  void forEach(void callback(E o, num index)) =>
      _forEach((o, num index) => callback(_codec.decode(o), index));
  void _forEach(void callback(o, num index));
  List<E> getArray() => new JsList.created(_getArray(), _codec);
  JsArray _getArray();
  E getAt(num i) => _codec.decode(_getAt(i));
  _getAt(num i);
  num get length => _getLength();
  num _getLength();
  void insertAt(num i, E elem) => _insertAt(i, _codec.encode(elem));
  void _insertAt(num i, elem);
  E pop() => _codec.decode(_pop());
  _pop();
  num push(E elem) => _push(_codec.encode(elem));
  num _push(elem);
  E removeAt(num i) => _codec.decode(_removeAt(i));
  _removeAt(num i);
  void setAt(num i, E elem) => _setAt(i, _codec.encode(elem));
  void _setAt(num i, elem);

  Stream<int> get onInsertAt => getStream(this, #onInsertAt, "insert_at");
  Stream<IndexAndElement<E>> get onRemoveAt => getStream(this, #onClick,
      "click", (int index, oldElement) =>
          new IndexAndElement<E>(index, _codec.decode(oldElement)));
  Stream<IndexAndElement<E>> get onSetAt => getStream(this, #onClick, "click",
      (int index, oldElement) =>
          new IndexAndElement<E>(index, _codec.decode(oldElement)));
}

class IndexAndElement<E> {
  final int index;
  final E element;
  IndexAndElement(this.index, this.element);
}
''',
  'ImageMapType': '''
@JsName('google.maps.ImageMapType')
abstract class _ImageMapType extends MVCObject implements MapType {
  external factory _ImageMapType(ImageMapTypeOptions opts);

  num get opacity => _getOpacity();
  num _getOpacity();
  Node getTile(Point tileCoord, num zoom, Document ownerDocument);
  void releaseTile(Node tile);
  void set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity);

  String alt;
  num maxZoom;
  num minZoom;
  String name;
  Projection projection;
  num radius;
  Size tileSize;

  Stream get onTilesloaded => getStream(this, #onTilesloaded, "tilesloaded");
}
''',
  'StyledMapType': '''
@JsName('google.maps.StyledMapType')
abstract class _StyledMapType extends MVCObject implements MapType {
  external factory _StyledMapType(List<MapTypeStyle> styles,
      [StyledMapTypeOptions options]);

  Node getTile(Point tileCoord, num zoom, Document ownerDocument);
  void releaseTile(Node tile);

  String alt;
  num maxZoom;
  num minZoom;
  String name;
  Projection projection;
  num radius;
  Size tileSize;
}
''',
  'StrokePosition': '''
@jsEnum
@JsName('google.maps.StrokePosition')
enum _StrokePosition { CENTER, INSIDE, OUTSIDE }
''',
  'MapsEngineStatus': '''
@jsEnum
@JsName('google.maps.visualization.MapsEngineStatus')
enum _MapsEngineStatus { INVALID_LAYER, OK, UNKNOWN_ERROR }
''',
  'StreetViewService': '''
@JsName('google.maps.StreetViewService')
abstract class _StreetViewService implements JsInterface {
  external factory _StreetViewService();

  void getPanoramaById(
      String pano, callback(StreetViewPanoramaData p1, StreetViewStatus p2));
  void getPanoramaByLocation(LatLng latlng, num radius,
      callback(StreetViewPanoramaData p1, StreetViewStatus p2));
}
'''
};

final importsByLib = <String, String>{
  'google_maps.src': '''
import 'dart:async' show Stream;
import 'dart:collection' show MapMixin;
import 'dart:html' show Node, Document;

import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/util/async.dart';
''',
  'google_maps.src.adsense': '''
import 'dart:html' show Node;

import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/google_maps.dart';
''',
  'google_maps.src.drawing': '''
import 'dart:async' show Stream;

import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/util/async.dart';
import 'package:google_maps/google_maps.dart';
''',
  'google_maps.src.geometry': '''
import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/google_maps.dart';
''',
  'google_maps.src.panoramio': '''
import 'dart:async' show Stream;

import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/util/async.dart';
import 'package:google_maps/google_maps.dart';
''',
  'google_maps.src.places': '''
import 'dart:async' show Stream;
import 'dart:html' show DivElement, InputElement;

import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/util/async.dart';
import 'package:google_maps/google_maps.dart';
''',
  'google_maps.src.visualization': '''
import 'dart:async' show Stream;

import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/util/async.dart';
import 'package:google_maps/google_maps.dart';
''',
  'google_maps.src.weather': '''
import 'dart:async' show Stream;

import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/util/async.dart';
import 'package:google_maps/google_maps.dart';
''',
};

final additionalContentByLib = <String, String>{
  'google_maps.src': '''

abstract class _Controls extends JsInterface
    with MapMixin<ControlPosition, MVCArray<Node>> {
  _Controls() : super.created(new JsArray());

  MVCArray<Node> operator [](ControlPosition controlPosition) {
    var value = asJsObject(this)[_toJsControlPosition(controlPosition)];
    if (value == null) return null;
    return new MVCArray<Node>.created(value);
  }
  void operator []=(ControlPosition controlPosition, MVCArray<Node> nodes) {
    asJsObject(this)[_toJsControlPosition(controlPosition)] = asJsObject(nodes);
  }
  Iterable<ControlPosition> get keys {
    var result = <ControlPosition>[];
    for (final control in ControlPosition.values) {
      if (this[control] != null) result.add(control);
    }
    return result;
  }
  MVCArray<Node> remove(Object key) {
    var result = this[key];
    this[key] = null;
    return result;
  }
  void clear() => (asJsObject(this) as JsArray).clear();

  _toJsControlPosition(ControlPosition controlPosition) => ((e) {
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
  })(controlPosition);
}

'''
};

final ignoredClasses = <String>[
  'LatLngLiteral',
  'LatLngBoundsLiteral',
  'undefined'
];

final declarationSubstitutions = <String, Map<String, Map<String, String>>>{
  'google_maps.src': {
    'GMap': {'controls': 'Controls controls;',},
    'LatLng': {
      'lat': '''
num get lat => _lat();
num _lat();''',
      'lng': '''
num get lng => _lng();
num _lng();''',
    },
    'LatLngBounds': {
      'isEmpty': '''
bool get isEmpty => _isEmpty();
bool _isEmpty();''',
    },
    'Data': {
      'getStyle': '''
  dynamic /*DataStylingFunction|DataStyleOptions*/ get style =>
      (new ChainedCodec()
    ..add(new FunctionCodec<DataStylingFunction>((o) => ((f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .decode(p_dataFeature);
        final result = f(p_dataFeature);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .encode(result);
      };
    })(o), (o) => ((JsFunction f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .encode(p_dataFeature);
        final result = f.apply([p_dataFeature]);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .decode(result);
      };
    })(o)))
    ..add(new JsInterfaceCodec<DataStyleOptions>(
        (o) => new DataStyleOptions.created(o)))).decode(_getStyle());
  _getStyle();''',
      'setStyle': '''
  void set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
      _setStyle((new ChainedCodec()
    ..add(new FunctionCodec<DataStylingFunction>((o) => ((f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .decode(p_dataFeature);
        final result = f(p_dataFeature);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .encode(result);
      };
    })(o), (o) => ((JsFunction f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .encode(p_dataFeature);
        final result = f.apply([p_dataFeature]);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .decode(result);
      };
    })(o)))
    ..add(new JsInterfaceCodec<DataStyleOptions>(
        (o) => new DataStyleOptions.created(o)))).encode(style));
  void _setStyle(dynamic /*DataStylingFunction|DataStyleOptions*/ style);''',
    },
    'DataDataOptions': {
      'style': '''
  dynamic /*DataStylingFunction|DataStyleOptions*/ get style =>
      (new ChainedCodec()
    ..add(new FunctionCodec<DataStylingFunction>((o) => ((f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .decode(p_dataFeature);
        final result = f(p_dataFeature);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .encode(result);
      };
    })(o), (o) => ((JsFunction f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .encode(p_dataFeature);
        final result = f.apply([p_dataFeature]);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .decode(result);
      };
    })(o)))
    ..add(new JsInterfaceCodec<DataStyleOptions>(
        (o) => new DataStyleOptions.created(o)))).decode(_style);
  void set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
      _style = (new ChainedCodec()
    ..add(new FunctionCodec<DataStylingFunction>((o) => ((f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .decode(p_dataFeature);
        final result = f(p_dataFeature);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .encode(result);
      };
    })(o), (o) => ((JsFunction f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .encode(p_dataFeature);
        final result = f.apply([p_dataFeature]);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .decode(result);
      };
    })(o)))
    ..add(new JsInterfaceCodec<DataStyleOptions>(
        (o) => new DataStyleOptions.created(o)))).encode(_style);
  dynamic /*DataStylingFunction|DataStyleOptions*/ _style;''',
    },

    // FIXME https://code.google.com/p/gmaps-api-issues/issues/detail?id=7910
    'MapTypeControlOptions': {
      'mapTypeIds': '''
  dynamic get _mapTypeIds => asJsObject(this)['mapTypeIds'];
  List<dynamic /*MapTypeId|String*/ > get mapTypeIds =>
      (new JsListCodec<dynamic /*MapTypeId|String*/ >(new ChainedCodec()
    ..add(new BiMapCodec<MapTypeId, dynamic>({
      MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
      MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
      MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']['SATELLITE'],
      MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
    }))
    ..add(new IdentityCodec<String>()))).decode(_mapTypeIds);
  void set _mapTypeIds(dynamic mapTypeIds) {
    asJsObject(this)['mapTypeIds'] = mapTypeIds;
  }
  void set mapTypeIds(List<dynamic /*MapTypeId|String*/ > mapTypeIds) {
    _mapTypeIds = (new JsListCodec<dynamic /*MapTypeId|String*/ >(
        new ChainedCodec()
      ..add(new BiMapCodec<MapTypeId, dynamic>({
        MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
        MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
        MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']['SATELLITE'],
        MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
      }))
      ..add(new IdentityCodec<String>()))).encode(mapTypeIds);
  }
''',
    },

    // FIXME https://code.google.com/p/gmaps-api-issues/issues/detail?id=7994
    'MapOptions': {
      'mapTypeId': '''
  dynamic _mapTypeId;
  dynamic /*MapTypeId|String*/ get mapTypeId => (new ChainedCodec()
    ..add(new BiMapCodec<MapTypeId, dynamic>({
      MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
      MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
      MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']['SATELLITE'],
      MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
    }))
    ..add(new IdentityCodec<String>())).decode(_mapTypeId);
  void set mapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) {
    _mapTypeId = (new ChainedCodec()
      ..add(new BiMapCodec<MapTypeId, dynamic>({
        MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
        MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
        MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']['SATELLITE'],
        MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
      }))
      ..add(new IdentityCodec<String>())).encode(mapTypeId);
  }
''',
    },
    'DataFeature': {
      'getGeometry': '''
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ get geometry =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) =>
                o != null && o.instanceof(context['google']['maps']['Data']['Point']))))
      .decode(_getGeometry());
  _getGeometry();
''',
      'setGeometry': '''
  void set geometry(
          dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ newGeometry) =>
      _setGeometry((new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'])))
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng']))))
          .encode(newGeometry));
  void _setGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ newGeometry);
'''
    },
    'DataFeatureOptions': {
      'geometry': '''
  dynamic _geometry;
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ get geometry =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'])))
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
            (o) => o != null && o.instanceof(context['google']['maps']['LatLng']))))
      .decode(_geometry);
  void set geometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ geometry) {
    _geometry = (new ChainedCodec()
      ..add(new JsInterfaceCodec<DataGeometryCollection>(
          (o) => new DataGeometryCollection.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['GeometryCollection'])))
      ..add(new JsInterfaceCodec<DataMultiPolygon>(
          (o) => new DataMultiPolygon.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
      ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
          (o) =>
              o != null && o.instanceof(context['google']['maps']['Data']['Polygon'])))
      ..add(new JsInterfaceCodec<DataLinearRing>(
          (o) => new DataLinearRing.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LinearRing'])))
      ..add(new JsInterfaceCodec<DataMultiLineString>(
          (o) => new DataMultiLineString.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
      ..add(new JsInterfaceCodec<DataLineString>(
          (o) => new DataLineString.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LineString'])))
      ..add(new JsInterfaceCodec<DataMultiPoint>(
          (o) => new DataMultiPoint.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
      ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
          (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'])))
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
              (o) => o != null && o.instanceof(context['google']['maps']['LatLng']))))
        .encode(geometry);
  }
'''
    },
    'DataGeometryCollection': {
      'getArray': '''
  List<dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ > get array =>
      (new JsListCodec<dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ >(
          new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) =>
                o != null && o.instanceof(context['google']['maps']['Data']['Point'])))))
      .decode(_getArray());
  _getArray();
''',
      'getAt': '''
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ getAt(
      num n) => (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) =>
                o != null && o.instanceof(context['google']['maps']['Data']['Point']))))
      .decode(_getAt(n));
  _getAt(num n);
'''
    },
    'DataSetGeometryEvent': {
      'newGeometry': '''
  dynamic _newGeometry;
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ get newGeometry =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) =>
                o != null && o.instanceof(context['google']['maps']['Data']['Point']))))
      .decode(_newGeometry);
  void set newGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ newGeometry) {
    _newGeometry = (new ChainedCodec()
      ..add(new JsInterfaceCodec<DataGeometryCollection>(
          (o) => new DataGeometryCollection.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['GeometryCollection'])))
      ..add(new JsInterfaceCodec<DataMultiPolygon>(
          (o) => new DataMultiPolygon.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
      ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
          (o) =>
              o != null && o.instanceof(context['google']['maps']['Data']['Polygon'])))
      ..add(new JsInterfaceCodec<DataLinearRing>(
          (o) => new DataLinearRing.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LinearRing'])))
      ..add(new JsInterfaceCodec<DataMultiLineString>(
          (o) => new DataMultiLineString.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
      ..add(new JsInterfaceCodec<DataLineString>(
          (o) => new DataLineString.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LineString'])))
      ..add(new JsInterfaceCodec<DataMultiPoint>(
          (o) => new DataMultiPoint.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
      ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
              (o) => o != null &&
                  o.instanceof(context['google']['maps']['Data']['Point']))))
        .encode(newGeometry);
  }
''',
      'oldGeometry': '''
  dynamic _oldGeometry;
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ get oldGeometry =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) =>
                o != null && o.instanceof(context['google']['maps']['Data']['Point']))))
      .decode(_oldGeometry);
  void set oldGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ oldGeometry) {
    _oldGeometry = (new ChainedCodec()
      ..add(new JsInterfaceCodec<DataGeometryCollection>(
          (o) => new DataGeometryCollection.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['GeometryCollection'])))
      ..add(new JsInterfaceCodec<DataMultiPolygon>(
          (o) => new DataMultiPolygon.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
      ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
          (o) =>
              o != null && o.instanceof(context['google']['maps']['Data']['Polygon'])))
      ..add(new JsInterfaceCodec<DataLinearRing>(
          (o) => new DataLinearRing.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LinearRing'])))
      ..add(new JsInterfaceCodec<DataMultiLineString>(
          (o) => new DataMultiLineString.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
      ..add(new JsInterfaceCodec<DataLineString>(
          (o) => new DataLineString.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LineString'])))
      ..add(new JsInterfaceCodec<DataMultiPoint>(
          (o) => new DataMultiPoint.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
      ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
              (o) => o != null &&
                  o.instanceof(context['google']['maps']['Data']['Point']))))
        .encode(oldGeometry);
  }
'''
    },
    'DistanceMatrixRequest': {
      'destinations': '''
  dynamic _destinations;
  List<dynamic /*LatLng|String*/ > get destinations =>
      (new JsListCodec<dynamic /*LatLng|String*/ >(new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new IdentityCodec<String>()))).decode(_destinations);
  void set destinations(List<dynamic /*LatLng|String*/ > destinations) {
    _destinations = (new JsListCodec<dynamic /*LatLng|String*/ >(
        new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new IdentityCodec<String>()))).encode(destinations);
  }
''',
      'origins': '''
  dynamic _origins;
  List<dynamic /*LatLng|String*/ > get origins =>
      (new JsListCodec<dynamic /*LatLng|String*/ >(new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new IdentityCodec<String>()))).decode(_origins);
  void set origins(List<dynamic /*LatLng|String*/ > origins) {
    _origins = (new JsListCodec<dynamic /*LatLng|String*/ >(new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new IdentityCodec<String>()))).encode(origins);
  }
''',
    }
  },
  'google_maps.src.places': {
    'PlacesService': {
      'radarSearch': '''
  void _radarSearch(RadarSearchRequest request,
      callback(List<PlaceResult> p1, PlacesServiceStatus p2, [_]));
  void radarSearch(RadarSearchRequest request,
          callback(List<PlaceResult> p1, PlacesServiceStatus p2)) =>
      _radarSearch(request, (p1, p2, [_]) => callback(p1, p2));
''',
    }
  }
};

main() async {
  final genFolder = 'lib/src';
  // final request = await new HttpClient().getUrl(Uri.parse(
  //     'https://developers.google.com/maps/documentation/javascript/reference'));
  // final response = await request.close();
  // final content = await UTF8.decodeStream(response);
  // new File('api/api.html').writeAsStringSync(content);
  final content = new File('api/api.html').readAsStringSync();
  final document = parse(content);
  final libraries = <String, List<JsElement>>{};
  document.querySelectorAll(".toc>ul").forEach((ul) {
    var folder = underscores(ul.previousElementSibling.attributes['id']);

    var libraryName = 'google_maps.src';
    if (folder.endsWith('_library')) {
      final lib = folder.substring(0, folder.length - '_library'.length);
      folder = 'library/$lib';
      libraryName += '.$lib';
    } else {
      folder = 'core/$folder';
    }

    ul.children.forEach((li) {
      final h2id = li.firstChild.attributes['href'].substring(1);
      final fileName = underscores(h2id) + '.dart';
      final file = new File('$genFolder/$folder/$fileName')
        ..createSync(recursive: true);

      final title =
          document.querySelectorAll('[id]').firstWhere((e) => e.id == h2id);

      libraries
          .putIfAbsent(libraryName, () => <JsElement>[])
          .add(new JsElement(h2id, file, title.parent));
    });
  });

  // generate contents
  libraries.keys.forEach((libraryName) {
    var imports = importsByLib[libraryName];
    if (imports == null) throw '$libraryName has no import';
    var libContents = '''
$LICENCE

library $libraryName;

$imports

part '${libraryName.replaceAll('.', '_')}.g.dart';

''';
    libContents += libraries[libraryName]
        .where((e) => !ignoredClasses.contains(e.name))
        .map((e) => e.file.path.substring(genFolder.length + 1))
        .map((path) => "part '$path';")
        .join('\n');

    if (additionalContentByLib.containsKey(libraryName)) {
      libContents += additionalContentByLib[libraryName];
    }

    libContents = new DartFormatter().format(libContents);
    new File('$genFolder/${libraryName.replaceAll('.', '_')}.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync(libContents);

    final jsElements = libraries.values.expand((e) => e).toList();

    libraries[libraryName]
        .where((e) => !ignoredClasses.contains(e.name))
        .forEach((jsElmt) {
      print(jsElmt.fullName);
      var partContents = '''
$LICENCE

part of $libraryName;

''';

      if (customContent.containsKey(jsElmt.id)) {
        partContents += customContent[jsElmt.id];
      } else if (jsElmt.isEnum) {
        final constants = jsElmt.constants
            .map((tr) => tr.getElementsByTagName('td')[0].text.trim());

        String toEnumValue(String v) => v.replaceAll('.', '_').toUpperCase();

        if (jsElmt.isAnonymousObject) {
          partContents += "@jsEnum ";
          partContents += 'class ${jsElmt.name} extends JsEnum {';
          partContents += '  static final values = <${jsElmt.name}>'
              '[${constants.map(toEnumValue).join(',')}];\n';
          for (final value in constants) {
            partContents += "  static final ${toEnumValue(value)} = "
                "new ${jsElmt.name}._('$value');\n";
          }
          partContents += '  ${jsElmt.name}._(o) : super.created(o);';
          partContents += '}\n\n';
        } else {
          partContents += "@jsEnum @JsName('${jsElmt.fullName}') ";
          partContents += 'enum _${jsElmt.name}{${constants.join(',')}}\n\n';
        }
      } else if (jsElmt.isNamespace ||
          jsElmt.isAnonymousObject ||
          jsElmt.isClass) {
        final className = jsElmt.isNamespace
            ? jsElmt.name[0].toUpperCase() + jsElmt.name.substring(1)
            : jsElmt.name;

        // constructor
        bool needExtends = false;
        String constructorSection = '';
        final constr = jsElmt.constructor;
        if (constr != null) {
          final decl = constr.getElementsByTagName('td')[0].text.trim();
          final parameters =
              decl.substring(decl.indexOf('(') + 1, decl.lastIndexOf(')'));
          final params = splitParameters(parameters);
          final allParams = ({}
            ..addAll(params.mandatory)
            ..addAll(params.optional));
          final paramsCodecs = new Map.fromIterable(allParams.keys,
              value: (k) => getCodec(allParams[k], jsElements));
          if (paramsCodecs.values.every((p) => p.canBeNativelyHandled)) {
            constructorSection += '  external factory '
                '_$className(${params.toSignature(jsElements)});\n';
          } else {
            needExtends = true;
            constructorSection +=
                '  _$className.created(JsObject o): super.created(o);\n';
            constructorSection +=
                '  _$className(${params.toSignature(jsElements)}) : '
                'this.created(new JsObject(${getPath(jsElmt.fullName)},[';
            constructorSection += paramsCodecs.keys
                .map((p) => paramsCodecs[p].canBeNativelyHandled
                    ? p
                    : '(${paramsCodecs[p].codec}).encode($p)')
                .join(',');
            constructorSection += ']));';
          }
        } else if (jsElmt.isAnonymousObject) {
          constructorSection += '  external factory _$className();\n';
        }
        constructorSection += '\n';

        // class def
        final inherit = getExtends(jsElmt.element.querySelector('h2'));
        if (jsElmt.isAnonymousObject) partContents += '@anonymous\n';
        if (jsElmt.isClass) partContents += "@JsName('${jsElmt.fullName}')\n";
        if (jsElmt.isNamespace) {
          partContents +=
              "final ${jsElmt.name} = new $className.created(${getPath(jsElmt.fullName)});";
        }
        partContents += 'abstract class _$className ' +
            (inherit != null
                ? 'extends ${inherit.replaceAll('.', '')}'
                : (needExtends ? 'extends' : 'implements') + ' JsInterface') +
            ' {\n';

        // add constants
        jsElmt.constants.forEach((constantTr) {
          final name = constantTr.getElementsByTagName('td')[0].text.trim();
          if (declarationSubstitutions.containsKey(libraryName) &&
              declarationSubstitutions[libraryName].containsKey(jsElmt.name) &&
              declarationSubstitutions[libraryName][jsElmt.name]
                  .containsKey(name)) {
            partContents +=
                declarationSubstitutions[libraryName][jsElmt.name][name] + '\n';
          } else {
            partContents += 'external static get $name;\n';
          }
        });
        partContents += '\n';

        // add constructors
        partContents += constructorSection;

        // add methods
        jsElmt.methods.forEach((methodTr) {
          final decl = methodTr.getElementsByTagName('td')[0].text.trim();
          final returnType = methodTr.querySelector('td>div>code').text.trim();
          final methodName = decl.substring(0, decl.indexOf('('));

          if (declarationSubstitutions.containsKey(libraryName) &&
              declarationSubstitutions[libraryName].containsKey(jsElmt.name) &&
              declarationSubstitutions[libraryName][jsElmt.name]
                  .containsKey(methodName)) {
            partContents += declarationSubstitutions[libraryName][jsElmt.name]
                    [methodName] +
                '\n';
            return;
          }

          final parameters =
              decl.substring(decl.indexOf('(') + 1, decl.lastIndexOf(')'));
          final params = splitParameters(parameters);
          final allParams = ({}
            ..addAll(params.mandatory)
            ..addAll(params.optional));
          final paramsCodecs = new Map.fromIterable(allParams.keys,
              value: (k) => getCodec(allParams[k], jsElements));
          final returnCodec = getCodec(returnType, jsElements);
          final convertedReturnType = convertType(returnType, jsElements);
          if (methodName.startsWith(new RegExp('get[A-Z]')) &&
              params.mandatory.isEmpty &&
              params.optional.isEmpty) {
            final name = methodName[3].toLowerCase() + methodName.substring(4);
            partContents += '  $convertedReturnType get $name => ';
            if (returnCodec.canBeNativelyHandled) {
              partContents += '_$methodName();\n';
              partContents += '  $convertedReturnType _$methodName();\n';
            } else {
              partContents +=
                  '(${returnCodec.codec}).decode(_$methodName());\n';
              partContents += '  _$methodName();\n';
            }
          } else if (methodName.startsWith(new RegExp('set[A-Z]')) &&
              params.mandatory.length == 1 &&
              params.optional.isEmpty) {
            final name = methodName[3].toLowerCase() + methodName.substring(4);
            final p = params.mandatory.keys.first;
            partContents +=
                '  void set $name(${params.toSignature(jsElements)}) => ';
            if (paramsCodecs.values.first.canBeNativelyHandled) {
              partContents += '_$methodName($p);\n';
            } else {
              partContents +=
                  '_$methodName((${paramsCodecs.values.first.codec}).encode($p));\n';
            }
            partContents +=
                '  void _$methodName(${params.toSignature(jsElements)});\n';
          } else {
            if (paramsCodecs.values.every((p) => p.canBeNativelyHandled) &&
                returnCodec.canBeNativelyHandled) {
              partContents +=
                  '  $convertedReturnType $methodName(${params.toSignature(jsElements)});\n';
            } else {
              final returnVoid = convertedReturnType == 'void';
              partContents +=
                  '  $convertedReturnType $methodName(${params.toSignature(jsElements)})';
              partContents += returnVoid ? '{' : ' => ';
              if (!returnCodec.canBeNativelyHandled) {
                partContents += '(${returnCodec.codec}).decode(';
              }
              partContents += '_$methodName(' +
                  paramsCodecs.keys
                      .map((p) => paramsCodecs[p].canBeNativelyHandled
                          ? p
                          : '(${paramsCodecs[p].codec}).encode($p)')
                      .join(',') +
                  ')';
              if (!returnCodec.canBeNativelyHandled) {
                partContents += ')';
              }
              partContents += ';';
              if (returnVoid) partContents += '}';
              partContents +=
                  '  _$methodName(${params.toSignature(jsElements)});\n';
            }
          }
        });
        partContents += '\n';

        // add properties
        jsElmt.properties.forEach((propertyTr) {
          final name = propertyTr.getElementsByTagName('td')[0].text.trim();
          final type = (overridenPropertyTypes[jsElmt.name] ?? {})[name] ??
              propertyTr.querySelector('td>div>code').text.trim();
          if (declarationSubstitutions.containsKey(libraryName) &&
              declarationSubstitutions[libraryName].containsKey(jsElmt.name) &&
              declarationSubstitutions[libraryName][jsElmt.name]
                  .containsKey(name)) {
            partContents +=
                declarationSubstitutions[libraryName][jsElmt.name][name] + '\n';
          } else {
            final typeCodec = getCodec(type, jsElements);
            final convertedType = convertType(type, jsElements);
            final dartName = !name.contains('_')
                ? name
                : name.replaceAllMapped(
                    new RegExp('_([a-z])'), (m) => m[1].toUpperCase());
            if (typeCodec.canBeNativelyHandled) {
              if (dartName == name) {
                partContents += '  $convertedType $name;\n';
              } else {
                partContents += '  $convertedType _$name;\n';
                partContents += '  $convertedType get $dartName => _$name;\n';
                partContents +=
                    '  void set $dartName($convertedType $dartName) { _$name = $dartName; }\n';
              }
            } else {
              partContents += '''
  dynamic _$name;
  $convertedType get $dartName => (${typeCodec.codec}).decode(_$name);
  void set $dartName($convertedType $dartName) {
    _$name = (${typeCodec.codec}).encode($dartName);
  }''';
            }
          }
        });
        partContents += '\n';

        // add events
        jsElmt.events.forEach((eventsTr) {
          String name = eventsTr.getElementsByTagName('td')[0].text.trim();
          String type = eventsTr.querySelector('td>div>code').text.trim();
          if (type.contains(',')) throw 'multiple args on event not supported';
          type = convertType(type, jsElements);

          final streamName = 'on' +
              name[0].toUpperCase() +
              name.substring(1).replaceAllMapped(
                  new RegExp('_[a-z]'), (m) => m[0][1].toUpperCase());
          if (type == 'void') {
            partContents += '''
Stream get $streamName => getStream(this, #$streamName, "$name");
''';
          } else if (<String>['num', 'JsObject', 'String', 'bool']
              .contains(type)) {
            partContents += '''
Stream<$type> get $streamName => getStream(this, #$streamName, "$name");
''';
          } else {
            partContents += '''
Stream<$type> get $streamName => getStream(
  this, #$streamName, "$name", (JsObject o) => new $type.created(o));
''';
          }
        });

        partContents += '}\n';
      }
      print('---------------------------------------------------------');
      print(partContents);
      partContents = new DartFormatter().format(partContents);
      jsElmt.file.writeAsStringSync(partContents);
    });
  });
}

String getCodecName(JsElement jsElmt) =>
    jsElmt.name[0].toLowerCase() + jsElmt.name.substring(1) + 'Codec';

class Parameters {
  final mandatory = <String, String>{};
  final optional = <String, String>{};

  void add(String name, String type) {
    if (name.endsWith('?')) {
      name = name.substring(0, name.length - 1);
      optional[name] = type;
    } else {
      mandatory[name] = type;
    }
  }

  String toSignature(List<JsElement> jsElements) {
    var result = mandatory.keys
        .map((name) => convertParam(mandatory[name], jsElements, name))
        .join(',');
    if (optional.isNotEmpty) {
      if (result.isNotEmpty) result += ',';
      result += '[' +
          optional.keys
              .map((name) => convertParam(optional[name], jsElements, name))
              .join(',') +
          ']';
    }
    return result;
  }
}

Parameters splitParameters(String parameters) {
  final result = new Parameters();

  final paramsParts = <String>[];
  var parenthesisDeepth = 0;
  final buffer = new StringBuffer();
  for (int i = 0; i < parameters.length; i++) {
    var c = parameters[i];
    if (c == ',' && parenthesisDeepth == 0) {
      paramsParts.add(buffer.toString());
      buffer.clear();
      continue;
    }
    if (c == '(') parenthesisDeepth++;
    else if (c == ')') parenthesisDeepth--;
    buffer.write(c);
  }
  if (buffer.isNotEmpty) paramsParts.add(buffer.toString());

  paramsParts.map((p) => p.split(':')).forEach((e) {
    result.add(e[0], (e.length == 1) ? '' : e[1]);
  });

  return result;
}

String convertParam(String type, List<JsElement> jsElements, String name) {
  if (type.startsWith('function(')) {
    return convertType(type, jsElements, name: name);
  } else {
    return convertType(type, jsElements) + ' $name';
  }
}

class CodecInfo {
  final String codec;
  final bool canBeNativelyHandled;
  final bool isIdentity;
  CodecInfo(this.codec, this.canBeNativelyHandled, this.isIdentity);
}

CodecInfo getCodec(String type, List<JsElement> jsElements) {
  type = type.trim();
  if (splitUnionTypes(type).length > 1) {
    for (String ignoredClass in ignoredClasses) {
      if (type.startsWith('$ignoredClass|')) {
        return getCodec(type.substring('$ignoredClass|'.length), jsElements);
      }
      if (type.endsWith('|$ignoredClass')) {
        return getCodec(
            type.substring(0, type.lastIndexOf('|$ignoredClass')), jsElements);
      }
      if (type.contains('|$ignoredClass|')) {
        return getCodec(type.replaceAll('|$ignoredClass|', '|'), jsElements);
      }
    }
    final typeUnion = splitUnionTypes(type);
    final codecInfos = typeUnion.map((t) => getCodec(t, jsElements));
    if (codecInfos.any((ci) => !ci.isIdentity)) {
      return new CodecInfo(
          'new ChainedCodec()' +
              codecInfos.map((ci) => '..add(' + ci.codec + ')').join(),
          false,
          false);
    } else {
      return new CodecInfo('new IdentityCodec()', true, true);
    }
  } else if (type.startsWith('Object<') && type.endsWith('>')) {
    return new CodecInfo('FUCK', true, true);
  } else if (type.startsWith('Array<') && type.endsWith('>')) {
    final innerType = type.substring('Array<'.length, type.length - 1);
    final convertedInnerType = convertType(innerType, jsElements);
    final innerCodecInfo = getCodec(innerType, jsElements);
    return new CodecInfo(
        'new JsListCodec<$convertedInnerType>'
        '(${innerCodecInfo.codec})',
        innerCodecInfo.canBeNativelyHandled,
        false);
  } else if (type.startsWith('function(')) {
    return new CodecInfo('PLEASE_IMPLEMENT_MANUALLY', true, true);
  } else if (jsElements.any((e) => e.id == type)) {
    final jsElmt = jsElements.firstWhere((e) => e.id == type);
    final convertedType = convertType(type, jsElements);
    if (jsElmt.isEnum) {
      final constants = jsElmt.constants
          .map((tr) => tr.getElementsByTagName('td')[0].text.trim());
      return new CodecInfo(
          'new BiMapCodec<$convertedType, dynamic>({' +
              constants
                  .map((e) =>
                      "${jsElmt.name}.$e: ${getPath(jsElmt.fullName)}['$e']")
                  .join(',') +
              '})',
          true,
          false);
    } else if (jsElmt.isAnonymousObject) {
      return new CodecInfo(
          'new JsInterfaceCodec<$convertedType>'
          '((o) => new $convertedType.created(o))',
          true,
          false);
    } else {
      return new CodecInfo(
          'new JsInterfaceCodec<$convertedType>'
          '((o) => new $convertedType.created(o), '
          '(o) => o != null && o.instanceof(${getPath(jsElmt.fullName)}))',
          true,
          false);
    }
  } else if (type.startsWith('MVCArray<') && type.endsWith('>')) {
    final innerType = type.substring('MVCArray<'.length, type.length - 1);
    final convertedInnerType = convertType(innerType, jsElements);
    final innerCodecInfo = getCodec(innerType, jsElements);
    return new CodecInfo(
        'new JsInterfaceCodec<MVCArray<$convertedInnerType>>'
        '((o) => new MVCArray<$convertedInnerType>.created(o, ${innerCodecInfo.codec}))',
        false,
        false);
  } else {
    final convertedType = convertType(type, jsElements);
    return new CodecInfo('new IdentityCodec<$convertedType>()', true, true);
  }
}

String convertType(String type, List<JsElement> jsElements, {String name}) {
  type = type.trim();
  if (type == 'boolean') return 'bool';
  else if (type == 'number') return 'num';
  else if (type == 'string') return 'String';
  else if (type == 'Date') return 'DateTime';
  else if (type == 'HTMLInputElement') return 'InputElement';
  else if (type == 'HTMLDivElement') return 'DivElement';
  else if (type == 'Event') return 'JsObject';
  else if (type == 'Array') return 'List';
  else if (type == 'None') return 'void';
  else if (type == '*') return 'dynamic';
  else if (type == '?') return 'dynamic';
  else if (splitUnionTypes(type).length > 1) {
    for (String ignoredClass in ignoredClasses) {
      if (type.startsWith('$ignoredClass|')) {
        return convertType(type.substring('$ignoredClass|'.length), jsElements,
            name: name);
      }
      if (type.endsWith('|$ignoredClass')) {
        return convertType(
            type.substring(0, type.lastIndexOf('|$ignoredClass')), jsElements,
            name: name);
      }
      if (type.contains('|$ignoredClass|')) {
        return convertType(type.replaceAll('|$ignoredClass|', '|'), jsElements,
            name: name);
      }
    }
    final typeUnion = splitUnionTypes(type);
    final dartUnion =
        typeUnion.map((t) => convertType(t, jsElements)).join('|');
    return 'dynamic/*$dartUnion*/';
  } else if (type.startsWith('Object<') && type.endsWith('>')) {
    final innerType = convertType(
        type.substring('Object<'.length, type.length - 1), jsElements,
        name: name);
    return 'Map<String, $innerType>';
  } else if (type.startsWith('Array<') && type.endsWith('>')) {
    final innerType = convertType(
        type.substring('Array<'.length, type.length - 1), jsElements,
        name: name);
    return 'List<$innerType>';
  } else if (type.startsWith('function(')) {
    final functionParams =
        type.substring('function('.length, type.length - 1).split(',');
    int i = 1;
    final params = functionParams
        .map((p) => convertType(p, jsElements))
        .map((p) => '$p p${i++}')
        .join(',');
    type = '$name($params)';
    if (name == null) type = 'dynamic/*$type*/';
    return type;
  } else if (jsElements.any((e) => e.id == type)) {
    return jsElements.firstWhere((e) => e.id == type).name;
  } else if (type.startsWith('MVCArray<') && type.endsWith('>')) {
    final innerType = convertType(
        type.substring('MVCArray<'.length, type.length - 1), jsElements,
        name: name);
    return 'MVCArray<$innerType>';
  } else {
    return type;
  }
}

List<String> splitUnionTypes(String type) {
  final typeParts = <String>[];
  var parenthesisDeepth = 0;
  var genericDeepth = 0;
  final buffer = new StringBuffer();
  for (int i = 0; i < type.length; i++) {
    var c = type[i];
    if (c == '|' && parenthesisDeepth == 0 && genericDeepth == 0) {
      typeParts.add(buffer.toString());
      buffer.clear();
      continue;
    }
    if (c == '(') parenthesisDeepth++;
    if (c == ')') parenthesisDeepth--;
    if (c == '<') genericDeepth++;
    if (c == '>') genericDeepth--;
    buffer.write(c);
  }
  if (buffer.isNotEmpty) typeParts.add(buffer.toString());
  return typeParts;
}

String getExtends(Element title) {
  var e = title;
  while (true) {
    e = e.nextElementSibling;
    if (e == null || e.localName != 'p') return null;
    if (e.text.startsWith('This class extends')) {
      return e.querySelector('a').attributes['href'].substring(1);
    }
    if (e.text.startsWith('This object extends')) {
      return e.querySelector('a').attributes['href'].substring(1);
    }
  }
}

class JsElement {
  final String id;
  final File file;
  final Element element;

  JsElement(this.id, this.file, this.element);

  String get name => customClassName.containsKey(id)
      ? customClassName[id]
      : id.replaceAll('.', '');

  String get fullName {
    final path = element.querySelector('p span[itemprop="path"]');
    var name = element.querySelector('p span[itemprop="name"]').text.trim();
    if (path != null && path.text.trim().isNotEmpty) {
      name = path.text.trim() + '.' + name;
    }
    return name;
  }

  Element get constructor =>
      element.querySelector(r"table[summary$='Constructor']>tbody>tr");

  List<Element> get methods =>
      element.querySelectorAll(r"table[summary$='Methods']>tbody>tr");

  List<Element> get properties =>
      element.querySelectorAll(r"table[summary$='Properties']>tbody>tr");

  List<Element> get constants =>
      element.querySelectorAll(r"table[summary$='Constants']>tbody>tr");

  List<Element> get events =>
      element.querySelectorAll(r"table[summary$='Events']>tbody>tr");

  bool get isNamespace =>
      element.querySelector('h2').text.trim().endsWith('namespace');
  bool get isEnum => (isClass || isAnonymousObject) &&
      element.querySelectorAll('table').length == 1 &&
      element.querySelectorAll('table.constants').length == 1;
  bool get isClass => element.querySelector('h2').text.trim().endsWith('class');
  bool get isAnonymousObject =>
      element.querySelector('h2').text.trim().endsWith('object specification');
  bool get isTypeDef =>
      element.querySelector('h2').text.trim().endsWith('typedef');
}

String underscores(String name) => name
    .replaceAllMapped(
        new RegExp('([a-z])([A-Z])'), (m) => '${m[1]}_${m[2].toLowerCase()}')
    .replaceAll('-', '_')
    .replaceAll('.', '_')
    .toLowerCase();

String getPath(String path) =>
    path.split('.').fold('context', (String t, p) => "$t['$p']");
