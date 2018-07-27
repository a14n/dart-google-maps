import 'dart:async';
import 'dart:io';

import 'package:dart_style/src/dart_formatter.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

const licence = '''
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
  'DirectionsWaypoint': {
    'location': 'LatLng|Place|string',
  },
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
  factory _ImageMapType(ImageMapTypeOptions opts) => null;

  num get opacity => _getOpacity();
  num _getOpacity();
  Node getTile(Point tileCoord, num zoom, Document ownerDocument);
  void releaseTile(Node tile);
  set opacity(num opacity) => _setOpacity(opacity);
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
  factory _StyledMapType(List<MapTypeStyle> styles,
      [StyledMapTypeOptions options]) => null;

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
  factory _StreetViewService() => null;

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
    'GMap': {
      'controls': 'Controls controls;',
    },
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
  set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
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
  set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
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
  set _mapTypeIds(dynamic mapTypeIds) {
    asJsObject(this)['mapTypeIds'] = mapTypeIds;
  }
  set mapTypeIds(List<dynamic /*MapTypeId|String*/ > mapTypeIds) {
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
  set mapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) {
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
  set geometry(
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
  set geometry(
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
  set newGeometry(
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
  set oldGeometry(
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
  set destinations(List<dynamic /*LatLng|String*/ > destinations) {
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
  set origins(List<dynamic /*LatLng|String*/ > origins) {
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

Future main() async {
  const genFolder = 'lib/src';
  // final request = await new HttpClient().getUrl(Uri.parse(
  //     'https://developers.google.com/maps/documentation/javascript/reference'));
  // final response = await request.close();
  // final content = await UTF8.decodeStream(response);
  // new File('api/api.html').writeAsStringSync(content);
  final content = File('api/api.html').readAsStringSync();
  final document = parse(content);
  final libraries = <String, List<JsElement>>{};
  for (final ul in document.querySelectorAll('.toc>ul')) {
    var folder = underscores(ul.previousElementSibling.attributes['id']);

    var libraryName = 'google_maps.src';
    if (folder.endsWith('_library')) {
      final lib = folder.substring(0, folder.length - '_library'.length);
      folder = 'library/$lib';
      libraryName += '.$lib';
    } else {
      folder = 'core/$folder';
    }

    for (final li in ul.children) {
      final h2id = li.firstChild.attributes['href'].substring(1);
      final fileName = '${underscores(h2id)}.dart';
      final file = File('$genFolder/$folder/$fileName')
        ..createSync(recursive: true);

      final title =
          document.querySelectorAll('[id]').firstWhere((e) => e.id == h2id);

      libraries
          .putIfAbsent(libraryName, () => <JsElement>[])
          .add(JsElement(h2id, file, title.parent));
    }
  }

  // generate contents
  for (final libraryName in libraries.keys) {
    final imports = importsByLib[libraryName];
    if (imports == null) throw StateError('$libraryName has no import');
    var libContents = '''
$licence

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

    libContents = DartFormatter().format(libContents);
    File('$genFolder/${libraryName.replaceAll('.', '_')}.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync(libContents);

    final jsElements = libraries.values.expand((e) => e).toList();

    for (final jsElmt in libraries[libraryName]
        .where((e) => !ignoredClasses.contains(e.name))) {
      print(jsElmt.fullName);
      final partContents = StringBuffer()..write('''
$licence

part of $libraryName;

''');

      if (customContent.containsKey(jsElmt.id)) {
        partContents.write(customContent[jsElmt.id]);
      } else if (jsElmt.isEnum) {
        final constants = jsElmt.constants
            .map((tr) => tr.getElementsByTagName('td')[0].text.trim());

        String toEnumValue(String v) => v.replaceAll('.', '_').toUpperCase();

        if (jsElmt.isAnonymousObject) {
          partContents
            ..writeln('@jsEnum ')
            ..writeln('class ${jsElmt.name} extends JsEnum {')
            ..writeln('  static final values = '
                '<${jsElmt.name}>[${constants.map(toEnumValue).join(',')}];');
          for (final value in constants) {
            partContents.writeln('  static final ${toEnumValue(value)} = '
                "${jsElmt.name}._('$value');");
          }
          partContents
            ..writeln('  ${jsElmt.name}._(o) : super.created(o);')
            ..writeln('}');
        } else {
          partContents
            ..writeln("@jsEnum @JsName('${jsElmt.fullName}') ")
            ..writeln('enum _${jsElmt.name}{${constants.join(',')}}')
            ..writeln();
        }
      } else if (jsElmt.isNamespace ||
          jsElmt.isAnonymousObject ||
          jsElmt.isClass) {
        final className = jsElmt.isNamespace
            ? jsElmt.name[0].toUpperCase() + jsElmt.name.substring(1)
            : jsElmt.name;

        // constructor
        var needExtends = false;
        var constructorSection = '';
        final constr = jsElmt.constructor;
        if (constr != null) {
          final decl = constr.getElementsByTagName('td')[0].text.trim();
          final parameters =
              decl.substring(decl.indexOf('(') + 1, decl.lastIndexOf(')'));
          final params = splitParameters(parameters);
          final allParams = <String, String>{}
            ..addAll(params.mandatory)
            ..addAll(params.optional);
          final paramsCodecs = Map.fromIterable(allParams.keys,
              value: (k) => getCodec(allParams[k], jsElements));
          if (paramsCodecs.values.every((p) => p.canBeNativelyHandled)) {
            constructorSection += '  factory '
                '_$className(${params.toSignature(jsElements)}) => null;\n';
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
          constructorSection += '  factory _$className() => null;\n';
        }
        constructorSection += '\n';

        // class def
        final inherit = getExtends(jsElmt.element.querySelector('h2'));
        if (jsElmt.isAnonymousObject) partContents.writeln('@anonymous');
        if (jsElmt.isClass)
          partContents.writeln("@JsName('${jsElmt.fullName}')");
        if (jsElmt.isNamespace) {
          partContents.writeln('final ${jsElmt.name} = '
              'new $className.created(${getPath(jsElmt.fullName)});');
        }
        final extendsPart = inherit != null
            ? 'extends ${inherit.replaceAll('.', '')}'
            : '${needExtends ? 'extends' : 'implements'} JsInterface';
        partContents.writeln('abstract class _$className $extendsPart {');

        // add constants
        for (final constantTr in jsElmt.constants) {
          final name = constantTr.getElementsByTagName('td')[0].text.trim();
          if (declarationSubstitutions.containsKey(libraryName) &&
              declarationSubstitutions[libraryName].containsKey(jsElmt.name) &&
              declarationSubstitutions[libraryName][jsElmt.name]
                  .containsKey(name)) {
            partContents.writeln(
                declarationSubstitutions[libraryName][jsElmt.name][name]);
          } else {
            partContents.writeln('static get $name => null;');
          }
        }
        partContents
          ..writeln()
          // add constructors
          ..writeln(constructorSection);

        // add methods
        for (final methodTr in jsElmt.methods) {
          final decl = methodTr.getElementsByTagName('td')[0].text.trim();
          final returnType = methodTr.querySelector('td>div>code').text.trim();
          final methodName = decl.substring(0, decl.indexOf('('));

          if (declarationSubstitutions.containsKey(libraryName) &&
              declarationSubstitutions[libraryName].containsKey(jsElmt.name) &&
              declarationSubstitutions[libraryName][jsElmt.name]
                  .containsKey(methodName)) {
            partContents.writeln(
                declarationSubstitutions[libraryName][jsElmt.name][methodName]);
            return;
          }

          final parameters =
              decl.substring(decl.indexOf('(') + 1, decl.lastIndexOf(')'));
          final params = splitParameters(parameters);
          final allParams = <String, String>{}
            ..addAll(params.mandatory)
            ..addAll(params.optional);
          final paramsCodecs = Map.fromIterable(allParams.keys,
              value: (k) => getCodec(allParams[k], jsElements));
          final returnCodec = getCodec(returnType, jsElements);
          final convertedReturnType = convertType(returnType, jsElements);
          if (methodName.startsWith(RegExp('get[A-Z]')) &&
              params.mandatory.isEmpty &&
              params.optional.isEmpty) {
            final name = methodName[3].toLowerCase() + methodName.substring(4);
            partContents.write('  $convertedReturnType get $name => ');
            if (returnCodec.canBeNativelyHandled) {
              partContents
                ..writeln('_$methodName();')
                ..writeln('  $convertedReturnType _$methodName();');
            } else {
              partContents
                ..writeln('(${returnCodec.codec}).decode(_$methodName());')
                ..writeln('  _$methodName();');
            }
          } else if (methodName.startsWith(RegExp('set[A-Z]')) &&
              params.mandatory.length == 1 &&
              params.optional.isEmpty) {
            final name = methodName[3].toLowerCase() + methodName.substring(4);
            final p = params.mandatory.keys.first;
            partContents
                .write('  set $name(${params.toSignature(jsElements)}) => ');
            if (paramsCodecs.values.first.canBeNativelyHandled) {
              partContents.writeln('_$methodName($p);');
            } else {
              partContents
                  .writeln('_$methodName((${paramsCodecs.values.first.codec})'
                      '.encode($p));');
            }
            partContents.writeln(
                '  void _$methodName(${params.toSignature(jsElements)});');
          } else {
            if (paramsCodecs.values.every((p) => p.canBeNativelyHandled) &&
                returnCodec.canBeNativelyHandled) {
              partContents.writeln('  $convertedReturnType $methodName'
                  '(${params.toSignature(jsElements)});');
            } else {
              final returnVoid = convertedReturnType == 'void';
              partContents
                ..writeln('  $convertedReturnType $methodName'
                    '(${params.toSignature(jsElements)})')
                ..write(returnVoid ? '{' : ' => ');
              if (!returnCodec.canBeNativelyHandled) {
                partContents.write('(${returnCodec.codec}).decode(');
              }
              final methodParams = paramsCodecs.keys
                  .map((p) => paramsCodecs[p].canBeNativelyHandled
                      ? p
                      : '(${paramsCodecs[p].codec}).encode($p)')
                  .join(',');
              partContents.write('_$methodName($methodParams)');
              if (!returnCodec.canBeNativelyHandled) {
                partContents.write(')');
              }
              partContents.write(';');
              if (returnVoid) partContents.write('}');
              partContents.writeln(
                  '  _$methodName(${params.toSignature(jsElements)});');
            }
          }
        }
        partContents.writeln();

        // add properties
        for (final propertyTr in jsElmt.properties) {
          final name = propertyTr.getElementsByTagName('td')[0].text.trim();
          final type = (overridenPropertyTypes[jsElmt.name] ?? {})[name] ??
              propertyTr.querySelector('td>div>code').text.trim();
          if (declarationSubstitutions.containsKey(libraryName) &&
              declarationSubstitutions[libraryName].containsKey(jsElmt.name) &&
              declarationSubstitutions[libraryName][jsElmt.name]
                  .containsKey(name)) {
            partContents.writeln(
                declarationSubstitutions[libraryName][jsElmt.name][name]);
          } else {
            final typeCodec = getCodec(type, jsElements);
            final convertedType = convertType(type, jsElements);
            final dartName = !name.contains('_')
                ? name
                : name.replaceAllMapped(
                    RegExp('_([a-z])'), (m) => m[1].toUpperCase());
            if (typeCodec.canBeNativelyHandled) {
              if (dartName == name) {
                partContents.writeln('  $convertedType $name;');
              } else {
                partContents
                  ..writeln('  $convertedType _$name;')
                  ..writeln('  $convertedType get $dartName => _$name;')
                  ..writeln('  set $dartName($convertedType $dartName) '
                      '{ _$name = $dartName; }');
              }
            } else {
              partContents.write('''
  dynamic _$name;
  $convertedType get $dartName => (${typeCodec.codec}).decode(_$name);
  set $dartName($convertedType $dartName) {
    _$name = (${typeCodec.codec}).encode($dartName);
  }''');
            }
          }
        }
        partContents.writeln();

        // add events
        for (final eventsTr in jsElmt.events) {
          final name = eventsTr.getElementsByTagName('td')[0].text.trim();
          var type = eventsTr.querySelector('td>div>code').text.trim();
          if (type.contains(','))
            throw StateError('multiple args on event not supported');
          type = convertType(type, jsElements);

          final streamName =
              'on${name[0].toUpperCase() + name.substring(1).replaceAllMapped(RegExp('_[a-z]'), (m) => m[0][1].toUpperCase())}';
          if (type == 'void') {
            partContents.write('''
Stream get $streamName => getStream(this, #$streamName, "$name");
''');
          } else if (<String>['num', 'JsObject', 'String', 'bool']
              .contains(type)) {
            partContents.write('''
Stream<$type> get $streamName => getStream(this, #$streamName, "$name");
''');
          } else {
            partContents.write('''
Stream<$type> get $streamName => getStream(
  this, #$streamName, "$name", (JsObject o) => new $type.created(o));
''');
          }
        }

        partContents.writeln('}');
      }
      print('---------------------------------------------------------');
      print(partContents);
      jsElmt.file
          .writeAsStringSync(DartFormatter().format(partContents.toString()));
    }
  }
}

String getCodecName(JsElement jsElmt) =>
    '${jsElmt.name[0].toLowerCase() + jsElmt.name.substring(1)}Codec';

class Parameters {
  final mandatory = <String, String>{};
  final optional = <String, String>{};

  void add(String name, String type) {
    if (name.endsWith('?')) {
      optional[name.substring(0, name.length - 1)] = type;
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
      final optionalParams = optional.keys
          .map((name) => convertParam(optional[name], jsElements, name))
          .join(',');
      result += '[$optionalParams]';
    }
    return result;
  }
}

Parameters splitParameters(String parameters) {
  final result = Parameters();

  final paramsParts = <String>[];
  var parenthesisDeepth = 0;
  final buffer = StringBuffer();
  for (var i = 0; i < parameters.length; i++) {
    final c = parameters[i];
    if (c == ',' && parenthesisDeepth == 0) {
      paramsParts.add(buffer.toString());
      buffer.clear();
      continue;
    }
    if (c == '(')
      parenthesisDeepth++;
    else if (c == ')') parenthesisDeepth--;
    buffer.write(c);
  }
  if (buffer.isNotEmpty) paramsParts.add(buffer.toString());

  for (final e in paramsParts.map((p) => p.split(':'))) {
    result.add(e[0], (e.length == 1) ? '' : e[1]);
  }

  return result;
}

String convertParam(String type, List<JsElement> jsElements, String name) {
  if (type.startsWith('function(')) {
    return convertType(type, jsElements, name: name);
  } else {
    return '${convertType(type, jsElements)} $name';
  }
}

class CodecInfo {
  final String codec;
  final bool canBeNativelyHandled;
  final bool isIdentity;
  CodecInfo(this.codec, {this.canBeNativelyHandled, this.isIdentity});
}

CodecInfo getCodec(String type, List<JsElement> jsElements) {
  final myType = type.trim();
  if (splitUnionTypes(myType).length > 1) {
    for (final ignoredClass in ignoredClasses) {
      if (myType.startsWith('$ignoredClass|')) {
        return getCodec(myType.substring('$ignoredClass|'.length), jsElements);
      }
      if (myType.endsWith('|$ignoredClass')) {
        return getCodec(
            myType.substring(0, myType.lastIndexOf('|$ignoredClass')),
            jsElements);
      }
      if (myType.contains('|$ignoredClass|')) {
        return getCodec(myType.replaceAll('|$ignoredClass|', '|'), jsElements);
      }
    }
    final typeUnion = splitUnionTypes(myType);
    final codecInfos = typeUnion.map((t) => getCodec(t, jsElements));
    if (codecInfos.any((ci) => !ci.isIdentity)) {
      final calls = codecInfos.map((ci) => '..add(${ci.codec})').join();
      return CodecInfo('new ChainedCodec()$calls',
          canBeNativelyHandled: false, isIdentity: false);
    } else {
      return CodecInfo('new IdentityCodec()',
          canBeNativelyHandled: true, isIdentity: true);
    }
  } else if (myType.startsWith('Object<') && myType.endsWith('>')) {
    return CodecInfo('FUCK', canBeNativelyHandled: true, isIdentity: true);
  } else if (myType.startsWith('Array<') && myType.endsWith('>')) {
    final innerType = myType.substring('Array<'.length, myType.length - 1);
    final convertedInnerType = convertType(innerType, jsElements);
    final innerCodecInfo = getCodec(innerType, jsElements);
    return CodecInfo(
        'new JsListCodec<$convertedInnerType>(${innerCodecInfo.codec})',
        canBeNativelyHandled: innerCodecInfo.canBeNativelyHandled,
        isIdentity: false);
  } else if (myType.startsWith('function(')) {
    return CodecInfo('PLEASE_IMPLEMENT_MANUALLY',
        canBeNativelyHandled: true, isIdentity: true);
  } else if (jsElements.any((e) => e.id == myType)) {
    final jsElmt = jsElements.firstWhere((e) => e.id == myType);
    final convertedType = convertType(myType, jsElements);
    if (jsElmt.isEnum) {
      final constants = jsElmt.constants
          .map((tr) => tr.getElementsByTagName('td')[0].text.trim());
      final params = constants
          .map((e) => "${jsElmt.name}.$e: ${getPath(jsElmt.fullName)}['$e']")
          .join(',');
      return CodecInfo('new BiMapCodec<$convertedType, dynamic>({$params})',
          canBeNativelyHandled: true, isIdentity: false);
    } else if (jsElmt.isAnonymousObject) {
      return CodecInfo(
          'new JsInterfaceCodec<$convertedType>'
          '((o) => new $convertedType.created(o))',
          canBeNativelyHandled: true,
          isIdentity: false);
    } else {
      return CodecInfo(
          'new JsInterfaceCodec<$convertedType>'
          '((o) => new $convertedType.created(o), '
          '(o) => o != null && o.instanceof(${getPath(jsElmt.fullName)}))',
          canBeNativelyHandled: true,
          isIdentity: false);
    }
  } else if (myType.startsWith('MVCArray<') && myType.endsWith('>')) {
    final innerType = myType.substring('MVCArray<'.length, myType.length - 1);
    final convertedInnerType = convertType(innerType, jsElements);
    final innerCodecInfo = getCodec(innerType, jsElements);
    return CodecInfo(
        'new JsInterfaceCodec<MVCArray<$convertedInnerType>>'
        '((o) => new MVCArray<$convertedInnerType>.created(o, ${innerCodecInfo.codec}))',
        canBeNativelyHandled: false,
        isIdentity: false);
  } else {
    final convertedType = convertType(myType, jsElements);
    return CodecInfo('new IdentityCodec<$convertedType>()',
        canBeNativelyHandled: true, isIdentity: true);
  }
}

String convertType(String type, List<JsElement> jsElements, {String name}) {
  var myType = type.trim();
  if (myType == 'boolean')
    return 'bool';
  else if (myType == 'number')
    return 'num';
  else if (myType == 'string')
    return 'String';
  else if (myType == 'Date')
    return 'DateTime';
  else if (myType == 'HTMLInputElement')
    return 'InputElement';
  else if (myType == 'HTMLDivElement')
    return 'DivElement';
  else if (myType == 'Event')
    return 'JsObject';
  else if (myType == 'Array')
    return 'List';
  else if (myType == 'None')
    return 'void';
  else if (myType == '*')
    return 'dynamic';
  else if (myType == '?')
    return 'dynamic';
  else if (splitUnionTypes(myType).length > 1) {
    for (final ignoredClass in ignoredClasses) {
      if (myType.startsWith('$ignoredClass|')) {
        return convertType(
            myType.substring('$ignoredClass|'.length), jsElements,
            name: name);
      }
      if (myType.endsWith('|$ignoredClass')) {
        return convertType(
            myType.substring(0, myType.lastIndexOf('|$ignoredClass')),
            jsElements,
            name: name);
      }
      if (myType.contains('|$ignoredClass|')) {
        return convertType(
            myType.replaceAll('|$ignoredClass|', '|'), jsElements,
            name: name);
      }
    }
    final typeUnion = splitUnionTypes(myType);
    final dartUnion =
        typeUnion.map((t) => convertType(t, jsElements)).join('|');
    return 'dynamic/*$dartUnion*/';
  } else if (myType.startsWith('Object<') && myType.endsWith('>')) {
    final innerType = convertType(
        myType.substring('Object<'.length, myType.length - 1), jsElements,
        name: name);
    return 'Map<String, $innerType>';
  } else if (myType.startsWith('Array<') && myType.endsWith('>')) {
    final innerType = convertType(
        myType.substring('Array<'.length, myType.length - 1), jsElements,
        name: name);
    return 'List<$innerType>';
  } else if (myType.startsWith('function(')) {
    final functionParams =
        myType.substring('function('.length, myType.length - 1).split(',');
    var i = 1;
    final params = functionParams
        .map((p) => convertType(p, jsElements))
        .map((p) => '$p p${i++}')
        .join(',');
    myType = '$name($params)';
    if (name == null) myType = 'dynamic/*$myType*/';
    return myType;
  } else if (jsElements.any((e) => e.id == myType)) {
    return jsElements.firstWhere((e) => e.id == myType).name;
  } else if (myType.startsWith('MVCArray<') && myType.endsWith('>')) {
    final innerType = convertType(
        myType.substring('MVCArray<'.length, myType.length - 1), jsElements,
        name: name);
    return 'MVCArray<$innerType>';
  } else {
    return myType;
  }
}

List<String> splitUnionTypes(String type) {
  final typeParts = <String>[];
  var parenthesisDeepth = 0;
  var genericDeepth = 0;
  final buffer = StringBuffer();
  for (var i = 0; i < type.length; i++) {
    final c = type[i];
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
  // ignore: literal_only_boolean_expressions
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
      name = '${path.text.trim()}.$name';
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
  bool get isEnum =>
      (isClass || isAnonymousObject) &&
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
        RegExp('([a-z])([A-Z])'), (m) => '${m[1]}_${m[2].toLowerCase()}')
    .replaceAll('-', '_')
    .replaceAll('.', '_')
    .toLowerCase();

String getPath(String path) =>
    path.split('.').fold('context', (t, p) => "$t['$p']");
