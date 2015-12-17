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
  external factory _HeatmapLayer([HeatmapLayerOptions opts]);

  MVCArray<dynamic /*LatLng|WeightedLocation*/ > get data =>
      (new JsInterfaceCodec<MVCArray<dynamic /*LatLng|WeightedLocation*/ >>(
          (o) => new MVCArray<dynamic /*LatLng|WeightedLocation*/ >.created(o,
              new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new JsInterfaceCodec<WeightedLocation>(
        (o) => new WeightedLocation.created(o)))))).decode(_getData());
  _getData();
  GMap get map => _getMap();
  GMap _getMap();
  void set data(
          dynamic /*MVCArray<dynamic/*LatLng|WeightedLocation*/>|List<dynamic/*LatLng|WeightedLocation*/>*/ data) =>
      _setData((new ChainedCodec()
    ..add(new JsInterfaceCodec<MVCArray<dynamic /*LatLng|WeightedLocation*/ >>(
        (o) => new MVCArray<dynamic /*LatLng|WeightedLocation*/ >.created(o,
            new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new JsInterfaceCodec<WeightedLocation>(
          (o) => new WeightedLocation.created(o))))))
    ..add(new JsListCodec<dynamic /*LatLng|WeightedLocation*/ >(
        new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new JsInterfaceCodec<WeightedLocation>(
          (o) => new WeightedLocation.created(o)))))).encode(data));
  void _setData(
      dynamic /*MVCArray<dynamic/*LatLng|WeightedLocation*/>|List<dynamic/*LatLng|WeightedLocation*/>*/ data);
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  void set options(HeatmapLayerOptions options) => _setOptions(options);
  void _setOptions(HeatmapLayerOptions options);
}
