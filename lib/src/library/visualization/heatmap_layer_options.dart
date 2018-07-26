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

@anonymous
abstract class _HeatmapLayerOptions implements JsInterface {
  factory _HeatmapLayerOptions() => null;

  dynamic _data;
  MVCArray<LatLng> get data =>
      (JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
              o,
              JsInterfaceCodec<LatLng>(
                  (o) => LatLng.created(o),
                  (o) =>
                      o != null &&
                      o.instanceof(
                          context['google']['maps']['LatLng'] as JsFunction)))))
          .decode(_data as JsObject);
  void set data(MVCArray<LatLng> data) {
    _data = (JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
            o,
            JsInterfaceCodec<LatLng>(
                (o) => LatLng.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['LatLng'] as JsFunction)))))
        .encode(data);
  }

  bool dissipating;
  List<String> gradient;
  GMap map;
  num maxIntensity;
  num opacity;
  num radius;
}
