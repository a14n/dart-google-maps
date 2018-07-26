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

@JsName('google.maps.Data.MultiPolygon')
abstract class _DataMultiPolygon extends DataGeometry {
  _DataMultiPolygon.created(JsObject o) : super.created(o);
  _DataMultiPolygon(
      List<dynamic /*DataPolygon|List<dynamic/*DataLinearRing|List<LatLng>*/>*/ >
          elements)
      : this.created(JsObject(
            context['google']['maps']['Data']['MultiPolygon'] as JsFunction, [
          (JsListCodec<dynamic /*DataPolygon|List<dynamic/*DataLinearRing|List<LatLng>*/>*/ >(
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
                          ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction))))))))
              .encode(elements)
        ]));
  List<DataPolygon> get array => _getArray();
  List<DataPolygon> _getArray();
  DataPolygon getAt(num n);
  num get length => _getLength();
  num _getLength();
  String get type => _getType();
  String _getType();
}
