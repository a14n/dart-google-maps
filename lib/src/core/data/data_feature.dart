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

@JsName('google.maps.Data.Feature')
abstract class _DataFeature implements JsInterface {
  external factory _DataFeature([DataFeatureOptions options]);

  void forEachProperty(callback(dynamic p1, String p2));
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ get geometry =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'])))
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
      .decode(_getGeometry());
  _getGeometry();

  dynamic /*num|String*/ get id => _getId();
  dynamic /*num|String*/ _getId();
  dynamic getProperty(String name);
  void removeProperty(String name);
  void set geometry(
          dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ newGeometry) =>
      _setGeometry((new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'])))
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
            o.instanceof(context['google']['maps']['Data']['Point'])))
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng']))))
          .encode(newGeometry));
  void _setGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ newGeometry);

  void setProperty(String name, dynamic newValue);
  void toGeoJson(callback(Object p1));

  Stream<DataRemovePropertyEvent> get onRemoveproperty => getStream(this,
      #onRemoveproperty, "removeproperty",
      (JsObject o) => new DataRemovePropertyEvent.created(o));
  Stream<DataSetGeometryEvent> get onSetgeometry => getStream(this,
      #onSetgeometry, "setgeometry",
      (JsObject o) => new DataSetGeometryEvent.created(o));
  Stream<DataSetPropertyEvent> get onSetproperty => getStream(this,
      #onSetproperty, "setproperty",
      (JsObject o) => new DataSetPropertyEvent.created(o));
}
