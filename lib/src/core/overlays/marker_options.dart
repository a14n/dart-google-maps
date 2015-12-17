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
  external factory _MarkerOptions();

  Point anchorPoint;
  Animation animation;
  Attribution attribution;
  bool clickable;
  bool crossOnDrag;
  String cursor;
  bool draggable;
  dynamic _icon;
  dynamic /*String|Icon|GSymbol*/ get icon => (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<Icon>((o) => new Icon.created(o)))
    ..add(new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o))))
      .decode(_icon);
  void set icon(dynamic /*String|Icon|GSymbol*/ icon) {
    _icon = (new ChainedCodec()
      ..add(new IdentityCodec<String>())
      ..add(new JsInterfaceCodec<Icon>((o) => new Icon.created(o)))
      ..add(new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o))))
        .encode(icon);
  }
  dynamic _label;
  dynamic /*String|MarkerLabel*/ get label => (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<MarkerLabel>((o) => new MarkerLabel.created(o))))
      .decode(_label);
  void set label(dynamic /*String|MarkerLabel*/ label) {
    _label = (new ChainedCodec()
      ..add(new IdentityCodec<String>())
      ..add(
          new JsInterfaceCodec<MarkerLabel>((o) => new MarkerLabel.created(o))))
        .encode(label);
  }
  dynamic _map;
  dynamic /*GMap|StreetViewPanorama*/ get map => (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
            (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']))))
      .decode(_map);
  void set map(dynamic /*GMap|StreetViewPanorama*/ map) {
    _map = (new ChainedCodec()
      ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
          (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
      ..add(new JsInterfaceCodec<StreetViewPanorama>(
              (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                  o.instanceof(
                      context['google']['maps']['StreetViewPanorama']))))
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
