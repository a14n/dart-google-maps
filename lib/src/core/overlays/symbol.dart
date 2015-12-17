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
abstract class _GSymbol implements JsInterface {
  external factory _GSymbol();

  Point anchor;
  String fillColor;
  num fillOpacity;
  Point labelOrigin;
  dynamic _path;
  dynamic /*SymbolPath|String*/ get path => (new ChainedCodec()
    ..add(new BiMapCodec<SymbolPath, dynamic>({
      SymbolPath.BACKWARD_CLOSED_ARROW:
          context['google']['maps']['SymbolPath']['BACKWARD_CLOSED_ARROW'],
      SymbolPath.BACKWARD_OPEN_ARROW:
          context['google']['maps']['SymbolPath']['BACKWARD_OPEN_ARROW'],
      SymbolPath.CIRCLE: context['google']['maps']['SymbolPath']['CIRCLE'],
      SymbolPath.FORWARD_CLOSED_ARROW:
          context['google']['maps']['SymbolPath']['FORWARD_CLOSED_ARROW'],
      SymbolPath.FORWARD_OPEN_ARROW:
          context['google']['maps']['SymbolPath']['FORWARD_OPEN_ARROW']
    }))
    ..add(new IdentityCodec<String>())).decode(_path);
  void set path(dynamic /*SymbolPath|String*/ path) {
    _path = (new ChainedCodec()
      ..add(new BiMapCodec<SymbolPath, dynamic>({
        SymbolPath.BACKWARD_CLOSED_ARROW:
            context['google']['maps']['SymbolPath']['BACKWARD_CLOSED_ARROW'],
        SymbolPath.BACKWARD_OPEN_ARROW:
            context['google']['maps']['SymbolPath']['BACKWARD_OPEN_ARROW'],
        SymbolPath.CIRCLE: context['google']['maps']['SymbolPath']['CIRCLE'],
        SymbolPath.FORWARD_CLOSED_ARROW:
            context['google']['maps']['SymbolPath']['FORWARD_CLOSED_ARROW'],
        SymbolPath.FORWARD_OPEN_ARROW:
            context['google']['maps']['SymbolPath']['FORWARD_OPEN_ARROW']
      }))
      ..add(new IdentityCodec<String>())).encode(path);
  }
  num rotation;
  num scale;
  String strokeColor;
  num strokeOpacity;
  num strokeWeight;
}
