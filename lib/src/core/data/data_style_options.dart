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
abstract class _DataStyleOptions implements JsInterface {
  external factory _DataStyleOptions();

  bool clickable;
  String cursor;
  bool draggable;
  bool editable;
  String fillColor;
  num fillOpacity;
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
  MarkerShape shape;
  String strokeColor;
  num strokeOpacity;
  num strokeWeight;
  String title;
  bool visible;
  num zIndex;
}
