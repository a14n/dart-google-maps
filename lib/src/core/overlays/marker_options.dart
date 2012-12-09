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

class MarkerOptions extends jsw.IsJsProxy {
  set anchorPoint(Point anchorPoint) => $.anchorPoint = anchorPoint;
  set animation(Animation animation) => $.animation = animation;
  set clickable(bool clickable) => $.clickable = clickable;
  set cursor(String cursor) => $.cursor = cursor;
  set draggable(bool draggable) => $.draggable = draggable;
  set flat(bool flat) => $.flat = flat;
  set icon(Object icon) {
    if (icon == null || icon is String || icon is Icon || icon is Symbol) {
      $.icon = icon;
    } else {
      throw new UnsupportedError("Parameter must be of type String, Icon or Symbol");
    }
  }
  set map(Object map) {
    if (map is GMap || map is StreetViewPanorama) {
      $.map = map;
    } else {
      throw new UnsupportedError("Parameter must be of type GMap or StreetViewPanorama");
    }
  }
  set optimized(bool optimized) => $.optimized = optimized;
  set position(LatLng position) => $.position = position;
  set raiseOnDrag(bool raiseOnDrag) => $.raiseOnDrag = raiseOnDrag;
  set shadow(Object shadow) {
    if (shadow == null || shadow is String || shadow is Icon || shadow is Symbol) {
      $.shadow = shadow;
    } else {
      throw new UnsupportedError("Parameter must be of type String, Icon or Symbol");
    }
  }
  set shape(MarkerShape shape) => $.shape = shape;
  set title(String title) => $.title = title;
  set visible(bool visible) => $.visible = visible;
  set zIndex(num zIndex) => $.zIndex = zIndex;
}