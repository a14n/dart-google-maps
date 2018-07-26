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

part of google_maps.src.visualization;

@JsName('google.maps.visualization.HeatmapLayer')
abstract class _HeatmapLayer extends MVCObject {
  factory _HeatmapLayer([HeatmapLayerOptions opts]) => null;

  MVCArray<dynamic /*LatLng|WeightedLocation*/ > get data =>
      (JsInterfaceCodec<MVCArray<dynamic /*LatLng|WeightedLocation*/ >>((o) =>
              MVCArray<dynamic /*LatLng|WeightedLocation*/ >.created(
                  o,
                  ChainedCodec()
                    ..add(JsInterfaceCodec<LatLng>(
                        (o) => LatLng.created(o),
                        (o) =>
                            o != null &&
                            o.instanceof(context['google']['maps']['LatLng']
                                as JsFunction)))
                    ..add(JsInterfaceCodec<WeightedLocation>(
                        (o) => WeightedLocation.created(o))))))
          .decode(_getData() as JsObject);
  _getData();
  GMap get map => _getMap();
  GMap _getMap();
  void set data(
          dynamic /*MVCArray<dynamic/*LatLng|WeightedLocation*/>|List<dynamic/*LatLng|WeightedLocation*/>*/ data) =>
      _setData((ChainedCodec()
            ..add(JsInterfaceCodec<MVCArray<dynamic /*LatLng|WeightedLocation*/ >>(
                (o) => MVCArray<dynamic /*LatLng|WeightedLocation*/ >.created(
                    o,
                    ChainedCodec()
                      ..add(JsInterfaceCodec<LatLng>(
                          (o) => LatLng.created(o),
                          (o) =>
                              o != null &&
                              o.instanceof(context['google']['maps']['LatLng']
                                  as JsFunction)))
                      ..add(JsInterfaceCodec<WeightedLocation>((o) => WeightedLocation.created(o))))))
            ..add(JsListCodec<dynamic /*LatLng|WeightedLocation*/ >(ChainedCodec()..add(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))..add(JsInterfaceCodec<WeightedLocation>((o) => WeightedLocation.created(o))))))
          .encode(data));
  void _setData(
      dynamic /*MVCArray<dynamic/*LatLng|WeightedLocation*/>|List<dynamic/*LatLng|WeightedLocation*/>*/ data);
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  void set options(HeatmapLayerOptions options) => _setOptions(options);
  void _setOptions(HeatmapLayerOptions options);
}
