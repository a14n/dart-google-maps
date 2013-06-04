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

class MarkerOptions extends jsw.TypedProxy {
  static MarkerOptions cast(js.Proxy proxy) => proxy == null ? null : new MarkerOptions.fromProxy(proxy);

  MarkerOptions() : super();
  MarkerOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  Point get anchorPoint => Point.cast($unsafe['anchorPoint']);
  Animation get animation => Animation.find($unsafe['animation']);
  bool get clickable => $unsafe['clickable'];
  String get cursor => $unsafe['cursor'];
  bool get draggable => $unsafe['draggable'];
  bool get flat => $unsafe['flat'];
  dynamic/*string|Icon|Symbol*/ get icon {
    final result = $unsafe['icon'];
    if (result is String) {
      return result;
    } else if (result is js.Proxy) {
      final type = Marker._isSymbolOrIcon(result);
      if (type == "Symbol") {
        return GSymbol.cast(result);
      } else if (type == "Icon") {
        return Icon.cast(result);
      }
    }
    return result;
  }
  dynamic/*Map|StreetViewPanorama*/ get map {
    final result = $unsafe['map'];
    if (GMap.isInstance(result)) {
      return GMap.cast(result);
    } else if (StreetViewPanorama.isInstance(result)) {
      return StreetViewPanorama.cast(result);
    }
    return result;
  }
  bool get optimized => $unsafe['optimized'];
  LatLng get position => LatLng.cast($unsafe['position']);
  bool get raiseOnDrag => $unsafe['raiseOnDrag'];
  bool get crossOnDrag => $unsafe['crossOnDrag'];
  dynamic/*string|Icon|Symbol*/ get shadow {
    final result = $unsafe['shadow'];
    if (result is String) {
      return result;
    } else if (result is js.Proxy) {
      final type = Marker._isSymbolOrIcon(result);
      if (type == "Symbol") {
        return GSymbol.cast(result);
      } else if (type == "Icon") {
        return Icon.cast(result);
      }
    }
    return result;
  }
  MarkerShape get shape => MarkerShape.cast($unsafe['shape']);
  String get title => $unsafe['title'];
  bool get visible => $unsafe['visible'];
  num get zIndex => $unsafe['zIndex'];
  set anchorPoint(Point anchorPoint) => $unsafe['anchorPoint'] = anchorPoint;
  set animation(Animation animation) => $unsafe['animation'] = animation;
  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  set cursor(String cursor) => $unsafe['cursor'] = cursor;
  set draggable(bool draggable) => $unsafe['draggable'] = draggable;
  set flat(bool flat) => $unsafe['flat'] = flat;
  set icon(dynamic/*string|Icon|Symbol*/ icon) => $unsafe['icon'] = icon;
  set map(dynamic/*Map|StreetViewPanorama*/ map) => $unsafe['map'] = map;
  set optimized(bool optimized) => $unsafe['optimized'] = optimized;
  set position(LatLng position) => $unsafe['position'] = position;
  set raiseOnDrag(bool raiseOnDrag) => $unsafe['raiseOnDrag'] = raiseOnDrag;
  set crossOnDrag(bool crossOnDrag) => $unsafe['crossOnDrag'] = crossOnDrag;
  set shadow(dynamic/*string|Icon|Symbol*/ shadow) => $unsafe['shadow'] = shadow;
  set shape(MarkerShape shape) => $unsafe['shape'] = shape;
  set title(String title) => $unsafe['title'] = title;
  set visible(bool visible) => $unsafe['visible'] = visible;
  set zIndex(num zIndex) => $unsafe['zIndex'] = zIndex;
}