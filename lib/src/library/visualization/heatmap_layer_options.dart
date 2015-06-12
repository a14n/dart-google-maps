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
  external factory _HeatmapLayerOptions();

  dynamic _data;
  MVCArray<LatLng> get data =>
      (new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) => new MVCArray<LatLng>.created(o,
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(context['google']['maps']['LatLng'])))))
          .decode(_data);
  void set data(MVCArray<LatLng> data) {
    _data =
        (new JsInterfaceCodec<MVCArray<LatLng>>((o) =>
                new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                    (o) => new LatLng.created(o), (o) => o != null &&
                        o.instanceof(context['google']['maps']['LatLng'])))))
            .encode(data);
  }
  bool dissipating;
  List<String> gradient;
  GMap map;
  num maxIntensity;
  num opacity;
  num radius;
}
