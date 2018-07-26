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

@JsName('google.maps.Data.MultiLineString')
abstract class _DataMultiLineString extends DataGeometry {
  _DataMultiLineString.created(JsObject o) : super.created(o);
  _DataMultiLineString(List<dynamic /*DataLineString|List<LatLng>*/ > elements)
      : this.created(JsObject(
            context['google']['maps']['Data']['MultiLineString'] as JsFunction,
            [
              (JsListCodec<dynamic /*DataLineString|List<LatLng>*/ >(
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
                                    as JsFunction))))))
                  .encode(elements)
            ]));
  List<DataLineString> get array => _getArray();
  List<DataLineString> _getArray();
  DataLineString getAt(num n);
  num get length => _getLength();
  num _getLength();
  String get type => _getType();
  String _getType();
}
