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

@JsName('google.maps.OverlayView')
abstract class _OverlayView implements JsInterface {
  external factory _OverlayView();

  void draw();
  dynamic /*GMap|StreetViewPanorama*/ get map => (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
            (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']))))
      .decode(_getMap());
  _getMap();
  MapPanes get panes => _getPanes();
  MapPanes _getPanes();
  MapCanvasProjection get projection => _getProjection();
  MapCanvasProjection _getProjection();
  void onAdd();
  void onRemove();
  void set map(dynamic /*GMap|StreetViewPanorama*/ map) => _setMap(
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
        (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']))))
          .encode(map));
  void _setMap(dynamic /*GMap|StreetViewPanorama*/ map);
}
