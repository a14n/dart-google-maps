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
  factory _DataFeature([DataFeatureOptions options]) => null;

  void forEachProperty(callback(dynamic p1, String p2));
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
  _getGeometry();

  dynamic /*num|String*/ get id => _getId();
  dynamic /*num|String*/ _getId();
  dynamic getProperty(String name);
  void removeProperty(String name);
  void set geometry(dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ newGeometry) => _setGeometry((ChainedCodec()
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
                o.instanceof(
                    context['google']['maps']['Data']['MultiPolygon'] as JsFunction)))
        ..add(JsInterfaceCodec<DataPolygon>((o) => DataPolygon.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Polygon'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLinearRing>((o) => DataLinearRing.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LinearRing'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiLineString>((o) => DataMultiLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiLineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataLineString>((o) => DataLineString.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['LineString'] as JsFunction)))
        ..add(JsInterfaceCodec<DataMultiPoint>((o) => DataMultiPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['MultiPoint'] as JsFunction)))
        ..add(JsInterfaceCodec<DataPoint>((o) => DataPoint.created(o), (o) => o != null && o.instanceof(context['google']['maps']['Data']['Point'] as JsFunction)))
        ..add(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction))))
      .encode(newGeometry));
  void _setGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ newGeometry);

  void setProperty(String name, dynamic newValue);
  void toGeoJson(callback(Object p1));

  Stream<DataRemovePropertyEvent> get onRemoveproperty => getStream(
      this,
      #onRemoveproperty,
      "removeproperty",
      (JsObject o) => DataRemovePropertyEvent.created(o));
  Stream<DataSetGeometryEvent> get onSetgeometry => getStream(
      this,
      #onSetgeometry,
      "setgeometry",
      (JsObject o) => DataSetGeometryEvent.created(o));
  Stream<DataSetPropertyEvent> get onSetproperty => getStream(
      this,
      #onSetproperty,
      "setproperty",
      (JsObject o) => DataSetPropertyEvent.created(o));
}
