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

class CircleOptions extends jsw.TypedProxy {
  static CircleOptions cast(js.Proxy proxy) => proxy == null ? null : new CircleOptions.fromProxy(proxy);

  CircleOptions() : super();
  CircleOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  LatLng get center => LatLng.cast($unsafe.center);
  bool get clickable => $unsafe.clickable;
  bool get draggable => $unsafe.draggable;
  bool get editable => $unsafe.editable;
  String get fillColor => $unsafe.fillColor;
  num get fillOpacity => $unsafe.fillOpacity;
  GMap get map => GMap.cast($unsafe.map);
  num get radius => $unsafe.radius;
  String get strokeColor => $unsafe.strokeColor;
  num get strokeOpacity => $unsafe.strokeOpacity;
  StrokePosition get strokePosition => StrokePosition.find($unsafe.strokePosition);
  num get strokeWeight => $unsafe.strokeWeight;
  bool get visible => $unsafe.visible;
  num get zIndex => $unsafe.zIndex;
  set center(LatLng center) => $unsafe.center = center;
  set clickable(bool clickable) => $unsafe.clickable = clickable;
  set draggable(bool draggable) => $unsafe.draggable = draggable;
  set editable(bool editable) => $unsafe.editable = editable;
  set fillColor(String fillColor) => $unsafe.fillColor = fillColor;
  set fillOpacity(num fillOpacity) => $unsafe.fillOpacity = fillOpacity;
  set map(GMap map) => $unsafe.map = map;
  set radius(num radius) => $unsafe.radius = radius;
  set strokeColor(String strokeColor) => $unsafe.strokeColor = strokeColor;
  set strokeOpacity(num strokeOpacity) => $unsafe.strokeOpacity = strokeOpacity;
  set strokePosition(StrokePosition strokePosition) => $unsafe.strokePosition = strokePosition;
  set strokeWeight(num strokeWeight) => $unsafe.strokeWeight = strokeWeight;
  set visible(bool visible) => $unsafe.visible = visible;
  set zIndex(num zIndex) => $unsafe.zIndex = zIndex;
}