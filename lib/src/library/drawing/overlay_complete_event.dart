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

part of google_maps.src.drawing;

@anonymous
abstract class _OverlayCompleteEvent implements JsInterface {
  external factory _OverlayCompleteEvent();

  dynamic _overlay;
  dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ get overlay =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<Marker>((o) => new Marker.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Marker'])))
    ..add(new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Polygon'])))
    ..add(new JsInterfaceCodec<Polyline>((o) => new Polyline.created(o), (o) =>
        o != null && o.instanceof(context['google']['maps']['Polyline'])))
    ..add(new JsInterfaceCodec<Rectangle>((o) => new Rectangle.created(o),
        (o) =>
            o != null && o.instanceof(context['google']['maps']['Rectangle'])))
    ..add(new JsInterfaceCodec<Circle>((o) => new Circle.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Circle']))))
      .decode(_overlay);
  void set overlay(
      dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ overlay) {
    _overlay = (new ChainedCodec()
      ..add(new JsInterfaceCodec<Marker>((o) => new Marker.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['Marker'])))
      ..add(new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['Polygon'])))
      ..add(new JsInterfaceCodec<Polyline>((o) => new Polyline.created(o),
          (o) =>
              o != null && o.instanceof(context['google']['maps']['Polyline'])))
      ..add(new JsInterfaceCodec<Rectangle>((o) => new Rectangle.created(o),
          (o) => o != null &&
              o.instanceof(context['google']['maps']['Rectangle'])))
      ..add(new JsInterfaceCodec<Circle>((o) => new Circle.created(o), (o) =>
              o != null && o.instanceof(context['google']['maps']['Circle']))))
        .encode(overlay);
  }
  OverlayType type;
}
