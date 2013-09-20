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

@wrapper abstract class MarkerOptions extends jsw.TypedJsObject {
  MarkerOptions() : super();

  Point anchorPoint;
  Animation get animation => Animation.find($unsafe['animation']);
  set animation(Animation animation);
  bool clickable;
  String cursor;
  bool draggable;
  bool flat;
  dynamic/*string|Icon|Symbol*/ get icon {
    final result = $unsafe['icon'];
    if (result is String) {
      return result;
    } else if (result is js.JsObject) {
      final type = Marker._isSymbolOrIcon(result);
      if (type == "Symbol") {
        return GSymbol.cast(result);
      } else if (type == "Icon") {
        return Icon.cast(result);
      }
    }
    return result;
  }
  set icon(dynamic/*string|Icon|Symbol*/ icon);
  dynamic/*Map|StreetViewPanorama*/ get map {
    final result = $unsafe['map'];
    if (GMap.isInstance(result)) {
      return GMap.cast(result);
    } else if (StreetViewPanorama.isInstance(result)) {
      return StreetViewPanorama.cast(result);
    }
    return result;
  }
  set map(dynamic/*Map|StreetViewPanorama*/ map);
  bool optimized;
  LatLng position;
  bool raiseOnDrag;
  bool crossOnDrag;
  dynamic/*string|Icon|Symbol*/ get shadow {
    final result = $unsafe['shadow'];
    if (result is String) {
      return result;
    } else if (result is js.JsObject) {
      final type = Marker._isSymbolOrIcon(result);
      if (type == "Symbol") {
        return GSymbol.cast(result);
      } else if (type == "Icon") {
        return Icon.cast(result);
      }
    }
    return result;
  }
  set shadow(dynamic/*string|Icon|Symbol*/ shadow);
  MarkerShape shape;
  String title;
  bool visible;
  num zIndex;
}