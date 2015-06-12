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
abstract class _PolylineOptions implements JsInterface {
  external factory _PolylineOptions();

  bool clickable;
  bool draggable;
  bool editable;
  bool geodesic;
  List<IconSequence> icons;
  GMap map;
  dynamic _path;
  dynamic /*MVCArray<LatLng>|List<LatLng>*/ get path =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
        (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
            (o) => new LatLng.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['LatLng']))))).decode(_path);
  void set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) {
    _path =
        (new ChainedCodec()
      ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
          (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
              (o) => new LatLng.created(o), (o) => o != null &&
                  o.instanceof(context['google']['maps']['LatLng'])))))
      ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
              (o) => new LatLng.created(o), (o) => o != null &&
                  o.instanceof(context['google']['maps']['LatLng'])))))
        .encode(path);
  }
  String strokeColor;
  num strokeOpacity;
  num strokeWeight;
  bool visible;
  num zIndex;
}
