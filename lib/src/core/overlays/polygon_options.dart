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

@anonymous
abstract class _PolygonOptions implements JsInterface {
  factory _PolygonOptions() => null;

  bool clickable;
  bool draggable;
  bool editable;
  String fillColor;
  num fillOpacity;
  bool geodesic;
  GMap map;
  dynamic _paths;
  dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ get paths => (ChainedCodec()
        ..add(JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>((o) =>
            MVCArray<MVCArray<LatLng>>.created(
                o,
                JsInterfaceCodec<MVCArray<LatLng>>((o) =>
                    MVCArray<LatLng>.created(
                        o,
                        JsInterfaceCodec<LatLng>(
                            (o) => LatLng.created(o),
                            (o) =>
                                o != null &&
                                o.instanceof(context['google']['maps']['LatLng']
                                    as JsFunction)))))))
        ..add(JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
            o,
            JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
        ..add(JsListCodec<List<LatLng>>(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
        ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
      .decode(_paths);
  void set paths(
      dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) {
    _paths = (ChainedCodec()
          ..add(JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>((o) =>
              MVCArray<MVCArray<LatLng>>.created(
                  o,
                  JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
                      o,
                      JsInterfaceCodec<LatLng>(
                          (o) => LatLng.created(o),
                          (o) =>
                              o != null &&
                              o.instanceof(context['google']['maps']['LatLng']
                                  as JsFunction)))))))
          ..add(JsInterfaceCodec<MVCArray<LatLng>>((o) =>
              MVCArray<LatLng>.created(o, JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
          ..add(JsListCodec<List<LatLng>>(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
          ..add(JsListCodec<LatLng>(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))))
        .encode(paths);
  }

  String strokeColor;
  num strokeOpacity;
  StrokePosition strokePosition;
  num strokeWeight;
  bool visible;
  num zIndex;
}
