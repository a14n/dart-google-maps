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

part of google_maps.src.geometry;

final poly =
    Poly.created(context['google']['maps']['geometry']['poly'] as JsObject);

abstract class _Poly implements JsInterface {
  bool containsLocation(LatLng point, Polygon polygon);
  bool isLocationOnEdge(LatLng point, dynamic /*Polygon|Polyline*/ poly,
          [num tolerance]) =>
      _isLocationOnEdge(
          point,
          (ChainedCodec()
                ..add(JsInterfaceCodec<Polygon>(
                    (o) => Polygon.created(o),
                    (o) =>
                        o != null &&
                        o.instanceof(context['google']['maps']['Polygon']
                            as JsFunction)))
                ..add(JsInterfaceCodec<Polyline>(
                    (o) => Polyline.created(o),
                    (o) =>
                        o != null &&
                        o.instanceof(context['google']['maps']['Polyline']
                            as JsFunction))))
              .encode(poly),
          tolerance) as bool;
  dynamic _isLocationOnEdge(LatLng point, dynamic /*Polygon|Polyline*/ poly,
      [num tolerance]);
}
