// Copyright (c) 2012, Alexandre Ardhuin
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

part of google_maps;

@anonymous
abstract class _MarkerOptions implements JsInterface {
  external factory _MarkerOptions();

  Point anchorPoint;
  // Animation animation
  int _animation;
  Animation get animation => animationCodec.decode(_animation);
  void set animation(Animation animation) {
    _animation = animationCodec.encode(animation);
  }
  bool clickable;
  String cursor;
  bool draggable;
  bool flat;
  /*String|Icon|GSymbol*/ dynamic _icon;
  /*String|Icon|GSymbol*/ get icon {
    final value = _icon;
    if (value == null) return null;
    if (value is String) return value;
    if (value is JsObject && value.instanceof(getPath('google.maps.Icon'))) {
      return new Icon.created(value);
    }
    if (value is JsObject && value.instanceof(getPath('google.maps.Symbol'))) {
      return new GSymbol.created(value);
    }
    throw 'bad type';
  }
  void set icon(/*String|Icon|GSymbol*/ icon) {
    _icon = toJs(icon);
  }
  /*GMap|StreetViewPanorama*/ dynamic _map;
  /*GMap|StreetViewPanorama*/ get map {
    final value = _map;
    if (value == null) return null;
    if (value is JsObject && value.instanceof(getPath('google.maps.Map'))) {
      return new GMap.created(value);
    }
    if (value is JsObject &&
        value.instanceof(getPath('google.maps.StreetViewPanorama'))) {
      return new StreetViewPanorama.created(value);
    }
    throw 'bad type';
  }
  void set map(/*GMap|StreetViewPanorama*/ map) {
    _map = toJs(map);
  }
  bool optimized;
  LatLng position;
  bool raiseOnDrag;
  bool crossOnDrag;
  /*String|Icon|GSymbol*/ dynamic _shadow;
  /*String|Icon|GSymbol*/ get shadow {
    final value = _shadow;
    if (value == null) return null;
    if (value is String) return value;
    if (value is JsObject && value.instanceof(getPath('google.maps.Icon'))) {
      return new Icon.created(value);
    }
    if (value is JsObject && value.instanceof(getPath('google.maps.Symbol'))) {
      return new GSymbol.created(value);
    }
    throw 'bad type';
  }
  void set shadow(/*String|Icon|GSymbol*/ shadow) {
    _shadow = toJs(shadow);
  }
  MarkerShape shape;
  String title;
  bool visible;
  num zIndex;
}
