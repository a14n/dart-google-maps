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
  factory _OverlayCompleteEvent() => null;

  dynamic _overlay;
  dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ get overlay =>
      (ChainedCodec()
            ..add(JsInterfaceCodec<Marker>(
                (o) => Marker.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Marker'] as JsFunction)))
            ..add(JsInterfaceCodec<Polygon>(
                (o) => Polygon.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Polygon'] as JsFunction)))
            ..add(JsInterfaceCodec<Polyline>(
                (o) => Polyline.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Polyline'] as JsFunction)))
            ..add(JsInterfaceCodec<Rectangle>(
                (o) => Rectangle.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Rectangle'] as JsFunction)))
            ..add(JsInterfaceCodec<Circle>(
                (o) => Circle.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Circle'] as JsFunction))))
          .decode(_overlay);
  void set overlay(
      dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ overlay) {
    _overlay = (ChainedCodec()
          ..add(JsInterfaceCodec<Marker>(
              (o) => Marker.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Marker'] as JsFunction)))
          ..add(JsInterfaceCodec<Polygon>(
              (o) => Polygon.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Polygon'] as JsFunction)))
          ..add(JsInterfaceCodec<Polyline>(
              (o) => Polyline.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Polyline'] as JsFunction)))
          ..add(JsInterfaceCodec<Rectangle>(
              (o) => Rectangle.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Rectangle'] as JsFunction)))
          ..add(JsInterfaceCodec<Circle>(
              (o) => Circle.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Circle'] as JsFunction))))
        .encode(overlay);
  }

  OverlayType type;
}
