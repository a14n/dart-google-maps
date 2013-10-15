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

class MarkerOptions extends jsw.TypedJsObject {
  static MarkerOptions cast(js.JsObject jsObject) => jsObject == null ? null : new MarkerOptions.fromJsObject(jsObject);
  MarkerOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  MarkerOptions()
      : super();

  set anchorPoint(Point anchorPoint) => $unsafe['anchorPoint'] = anchorPoint;
  Point get anchorPoint => Point.cast($unsafe['anchorPoint']);
  set animation(Animation animation) => $unsafe['animation'] = animation;
  Animation get animation => Animation.find($unsafe['animation']);
  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  bool get clickable => $unsafe['clickable'];
  set cursor(String cursor) => $unsafe['cursor'] = cursor;
  String get cursor => $unsafe['cursor'];
  set draggable(bool draggable) => $unsafe['draggable'] = draggable;
  bool get draggable => $unsafe['draggable'];
  set flat(bool flat) => $unsafe['flat'] = flat;
  bool get flat => $unsafe['flat'];
  dynamic /*string|Icon|Symbol*/ get icon {
    final result = $unsafe['icon'];
    if (result is String) {
      return result;
    } else {
      if (result is js.JsObject) {
        final type = Marker._isSymbolOrIcon(result);
        if (type == "Symbol") {
          return GSymbol.cast(result);
        } else {
          if (type == "Icon") {
            return Icon.cast(result);
          }
        }
      }
    }
    return result;
  }
  set icon(dynamic icon) => $unsafe['icon'] = icon;
  dynamic /*Map|StreetViewPanorama*/ get map {
    final result = $unsafe['map'];
    if (GMap.isInstance(result)) {
      return GMap.cast(result);
    } else {
      if (StreetViewPanorama.isInstance(result)) {
        return StreetViewPanorama.cast(result);
      }
    }
    return result;
  }
  set map(dynamic map) => $unsafe['map'] = map;
  set optimized(bool optimized) => $unsafe['optimized'] = optimized;
  bool get optimized => $unsafe['optimized'];
  set position(LatLng position) => $unsafe['position'] = position;
  LatLng get position => LatLng.cast($unsafe['position']);
  set raiseOnDrag(bool raiseOnDrag) => $unsafe['raiseOnDrag'] = raiseOnDrag;
  bool get raiseOnDrag => $unsafe['raiseOnDrag'];
  set crossOnDrag(bool crossOnDrag) => $unsafe['crossOnDrag'] = crossOnDrag;
  bool get crossOnDrag => $unsafe['crossOnDrag'];
  dynamic /*string|Icon|Symbol*/ get shadow {
    final result = $unsafe['shadow'];
    if (result is String) {
      return result;
    } else {
      if (result is js.JsObject) {
        final type = Marker._isSymbolOrIcon(result);
        if (type == "Symbol") {
          return GSymbol.cast(result);
        } else {
          if (type == "Icon") {
            return Icon.cast(result);
          }
        }
      }
    }
    return result;
  }
  set shadow(dynamic shadow) => $unsafe['shadow'] = shadow;
  set shape(MarkerShape shape) => $unsafe['shape'] = shape;
  MarkerShape get shape => MarkerShape.cast($unsafe['shape']);
  set title(String title) => $unsafe['title'] = title;
  String get title => $unsafe['title'];
  set visible(bool visible) => $unsafe['visible'] = visible;
  bool get visible => $unsafe['visible'];
  set zIndex(num zIndex) => $unsafe['zIndex'] = zIndex;
  num get zIndex => $unsafe['zIndex'];
}
