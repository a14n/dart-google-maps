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

@JsName('google.maps.Data.Polygon')
abstract class _DataPolygon extends DataGeometry {
  _DataPolygon.created(JsObject o) : super.created(o);
  _DataPolygon(List<dynamic /*DataLinearRing|List<LatLng>*/ > elements)
      : this.created(new JsObject(context['google']['maps']['Data']['Polygon'],
          [
        (new JsListCodec<dynamic /*DataLinearRing|List<LatLng>*/ >(
            new ChainedCodec()
          ..add(new JsInterfaceCodec<DataLinearRing>(
              (o) => new DataLinearRing.created(o), (o) => o != null &&
                  o.instanceof(
                      context['google']['maps']['Data']['LinearRing'])))
          ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
                  (o) => new LatLng.created(o), (o) => o != null &&
                      o.instanceof(context['google']['maps']['LatLng']))))))
            .encode(elements)
      ]));
  List<DataLinearRing> get array => _getArray();
  List<DataLinearRing> _getArray();
  DataLinearRing getAt(num n);
  num get length => _getLength();
  num _getLength();
  String get type => _getType();
  String _getType();
}
