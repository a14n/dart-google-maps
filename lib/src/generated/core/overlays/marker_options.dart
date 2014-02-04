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
  static MarkerOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new MarkerOptions.fromJsObject(jsObject);
  MarkerOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  MarkerOptions();

  set anchorPoint(Point anchorPoint) => $unsafe['anchorPoint'] = anchorPoint == null ? null : anchorPoint.$unsafe;
  Point get anchorPoint => Point.$wrap($unsafe['anchorPoint']);
  set animation(Animation animation) => $unsafe['animation'] = animation == null ? null : animation.$unsafe;
  Animation get animation => Animation.$wrap($unsafe['animation']);
  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  bool get clickable => $unsafe['clickable'];
  set cursor(String cursor) => $unsafe['cursor'] = cursor;
  String get cursor => $unsafe['cursor'];
  set draggable(bool draggable) => $unsafe['draggable'] = draggable;
  bool get draggable => $unsafe['draggable'];
  set flat(bool flat) => $unsafe['flat'] = flat;
  bool get flat => $unsafe['flat'];
  set icon(dynamic icon) => $unsafe['icon'] = icon is String ? icon : icon is Icon ? icon.$unsafe : icon is GSymbol ? icon.$unsafe : icon == null ? null : throw "bad type";
  dynamic get icon => ((v3) => v3 is String ? v3 : ((v2) => Icon.isInstance(v2) ? Icon.$wrap(v2) : ((v1) => GSymbol.isInstance(v1) ? GSymbol.$wrap(v1) : ((v0) => v0)(v1))(v2))(v3))($unsafe['icon']);
  set map(dynamic map) => $unsafe['map'] = map is GMap ? map.$unsafe : map is StreetViewPanorama ? map.$unsafe : map == null ? null : throw "bad type";
  dynamic get map => ((v2) => GMap.isInstance(v2) ? GMap.$wrap(v2) : ((v1) => StreetViewPanorama.isInstance(v1) ? StreetViewPanorama.$wrap(v1) : ((v0) => v0)(v1))(v2))($unsafe['map']);
  set optimized(bool optimized) => $unsafe['optimized'] = optimized;
  bool get optimized => $unsafe['optimized'];
  set position(LatLng position) => $unsafe['position'] = position == null ? null : position.$unsafe;
  LatLng get position => LatLng.$wrap($unsafe['position']);
  set raiseOnDrag(bool raiseOnDrag) => $unsafe['raiseOnDrag'] = raiseOnDrag;
  bool get raiseOnDrag => $unsafe['raiseOnDrag'];
  set crossOnDrag(bool crossOnDrag) => $unsafe['crossOnDrag'] = crossOnDrag;
  bool get crossOnDrag => $unsafe['crossOnDrag'];
  set shadow(dynamic shadow) => $unsafe['shadow'] = shadow is String ? shadow : shadow is Icon ? shadow.$unsafe : shadow is GSymbol ? shadow.$unsafe : shadow == null ? null : throw "bad type";
  dynamic get shadow => ((v3) => v3 is String ? v3 : ((v2) => Icon.isInstance(v2) ? Icon.$wrap(v2) : ((v1) => GSymbol.isInstance(v1) ? GSymbol.$wrap(v1) : ((v0) => v0)(v1))(v2))(v3))($unsafe['shadow']);
  set shape(MarkerShape shape) => $unsafe['shape'] = shape == null ? null : shape.$unsafe;
  MarkerShape get shape => MarkerShape.$wrap($unsafe['shape']);
  set title(String title) => $unsafe['title'] = title;
  String get title => $unsafe['title'];
  set visible(bool visible) => $unsafe['visible'] = visible;
  bool get visible => $unsafe['visible'];
  set zIndex(num zIndex) => $unsafe['zIndex'] = zIndex;
  num get zIndex => $unsafe['zIndex'];
}
