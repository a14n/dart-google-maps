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

class PolylineOptions extends jsw.TypedProxy {
  static PolylineOptions cast(js.Proxy proxy) => proxy == null ? null : new PolylineOptions.fromProxy(proxy);

  PolylineOptions() : super();
  PolylineOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  bool get clickable => $unsafe.clickable;
  bool get draggable => $unsafe.draggable;
  bool get editable => $unsafe.editable;
  bool get geodesic => $unsafe.geodesic;
  List<IconSequence> get icons => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.icons, IconSequence.cast);
  GMap get map => GMap.cast($unsafe.map);
  dynamic/*MVCArray.<LatLng>|Array.<LatLng>*/ get path {
    final result = $unsafe.path;
    if (MVCArray.isInstance(result)) {
      return MVCArray.castListOfSerializables(result, LatLng.cast);
    } else {
      return jsw.JsArrayToListAdapter.castListOfSerializables(result, LatLng.cast);
    }
  }
  String get strokeColor => $unsafe.strokeColor;
  num get strokeOpacity => $unsafe.strokeOpacity;
  num get strokeWeight => $unsafe.strokeWeight;
  bool get visible => $unsafe.visible;
  num get zIndex => $unsafe.zIndex;
  set clickable(bool clickable) => $unsafe.clickable = clickable;
  set draggable(bool draggable) => $unsafe.draggable = draggable;
  set editable(bool editable) => $unsafe.editable = editable;
  set geodesic(bool geodesic) => $unsafe.geodesic = geodesic;
  set icons(List<IconSequence> icons) => $unsafe.icons = jsifyList(icons);
  set map(GMap map) => $unsafe.map = map;
  set path(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      $unsafe.path = path;
    } else {
      throw new UnsupportedError("Parameter must be of type MVCArray<LatLng> or List<LatLng>");
    }
  }
  set strokeColor(String strokeColor) => $unsafe.strokeColor = strokeColor;
  set strokeOpacity(num strokeOpacity) => $unsafe.strokeOpacity = strokeOpacity;
  set strokeWeight(num strokeWeight) => $unsafe.strokeWeight = strokeWeight;
  set visible(bool visible) => $unsafe.visible = visible;
  set zIndex(num zIndex) => $unsafe.zIndex = zIndex;
}