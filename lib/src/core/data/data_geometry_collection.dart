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

part of google_maps.src;

@JsName('google.maps.Data.GeometryCollection')
abstract class _DataGeometryCollection extends DataGeometry {
  _DataGeometryCollection.created(JsObject o) : super.created(o);
  _DataGeometryCollection(List<dynamic /*DataGeometry|LatLng*/ > elements)
      : this.created(new JsObject(
          context['google']['maps']['Data']['GeometryCollection'] as JsFunction, [
        (new JsListCodec<dynamic /*DataGeometry|LatLng*/ >(new ChainedCodec()
          ..add(new JsInterfaceCodec<DataGeometry>(
              (o) => new DataGeometry.created(o), (o) => o != null &&
                  o.instanceof(context['google']['maps']['Data']['Geometry'] as JsFunction)))
          ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                  (o) => o != null &&
                      o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
            .encode(elements)
      ]));
  List<dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ > get array =>
      (new JsListCodec<dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ >(
          new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) => o != null &&
                o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction)))))
      .decode(_getArray() as JsArray);
  _getArray();

  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ getAt(
      num n) => (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) => o != null &&
                o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction))))
      .decode(_getAt(n));
  _getAt(num n);

  num get length => _getLength();
  num _getLength();
  String get type => _getType();
  String _getType();
}
