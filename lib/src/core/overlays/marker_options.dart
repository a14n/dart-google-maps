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
abstract class _MarkerOptions implements JsInterface {
  factory _MarkerOptions() => null;

  Point anchorPoint;
  Animation animation;
  Attribution attribution;
  bool clickable;
  bool crossOnDrag;
  String cursor;
  bool draggable;
  dynamic _icon;
  dynamic /*String|Icon|GSymbol*/ get icon => (ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<Icon>((o) => Icon.created(o)))
        ..add(JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o))))
      .decode(_icon);
  void set icon(dynamic /*String|Icon|GSymbol*/ icon) {
    _icon = (ChainedCodec()
          ..add(IdentityCodec<String>())
          ..add(JsInterfaceCodec<Icon>((o) => Icon.created(o)))
          ..add(JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o))))
        .encode(icon);
  }

  dynamic _label;
  dynamic /*String|MarkerLabel*/ get label => (ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<MarkerLabel>((o) => MarkerLabel.created(o))))
      .decode(_label);
  void set label(dynamic /*String|MarkerLabel*/ label) {
    _label = (ChainedCodec()
          ..add(IdentityCodec<String>())
          ..add(JsInterfaceCodec<MarkerLabel>((o) => MarkerLabel.created(o))))
        .encode(label);
  }

  dynamic _map;
  dynamic /*GMap|StreetViewPanorama*/ get map => (ChainedCodec()
        ..add(JsInterfaceCodec<GMap>(
            (o) => GMap.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Map'] as JsFunction)))
        ..add(JsInterfaceCodec<StreetViewPanorama>(
            (o) => StreetViewPanorama.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']
                    as JsFunction))))
      .decode(_map);
  void set map(dynamic /*GMap|StreetViewPanorama*/ map) {
    _map = (ChainedCodec()
          ..add(JsInterfaceCodec<GMap>(
              (o) => GMap.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(context['google']['maps']['Map'] as JsFunction)))
          ..add(JsInterfaceCodec<StreetViewPanorama>(
              (o) => StreetViewPanorama.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(context['google']['maps']['StreetViewPanorama']
                      as JsFunction))))
        .encode(map);
  }

  num opacity;
  bool optimized;
  MarkerPlace place;
  LatLng position;
  MarkerShape shape;
  String title;
  bool visible;
  num zIndex;
}
