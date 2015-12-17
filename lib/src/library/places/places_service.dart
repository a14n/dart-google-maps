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

part of google_maps.src.places;

@JsName('google.maps.places.PlacesService')
abstract class _PlacesService extends JsInterface {
  _PlacesService.created(JsObject o) : super.created(o);
  _PlacesService(dynamic /*DivElement|GMap*/ attrContainer) : this.created(
          new JsObject(context['google']['maps']['places']['PlacesService'], [
        (new ChainedCodec()
          ..add(new IdentityCodec<DivElement>())
          ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o), (o) =>
                  o != null && o.instanceof(context['google']['maps']['Map']))))
            .encode(attrContainer)
      ]));
  void getDetails(PlaceDetailsRequest request,
      callback(PlaceResult p1, PlacesServiceStatus p2));
  void nearbySearch(PlaceSearchRequest request, callback(
      List<PlaceResult> p1, PlacesServiceStatus p2, PlaceSearchPagination p3));
  void _radarSearch(RadarSearchRequest request,
      callback(List<PlaceResult> p1, PlacesServiceStatus p2, [_]));
  void radarSearch(RadarSearchRequest request,
          callback(List<PlaceResult> p1, PlacesServiceStatus p2)) =>
      _radarSearch(request, (p1, p2, [_]) => callback(p1, p2));

  void textSearch(TextSearchRequest request, callback(
      List<PlaceResult> p1, PlacesServiceStatus p2, PlaceSearchPagination p3));
}
