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

class MapOptions extends jsw.TypedProxy {
  static MapOptions cast(js.Proxy proxy) => proxy == null ? null : new MapOptions.fromProxy(proxy);

  MapOptions() : super();
  MapOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get backgroundColor => $unsafe.backgroundColor;
  LatLng get center => LatLng.cast($unsafe.center);
  bool get disableDefaultUI => $unsafe.disableDefaultUI;
  bool get disableDoubleClickZoom => $unsafe.disableDoubleClickZoom;
  bool get draggable => $unsafe.draggable;
  String get draggableCursor => $unsafe.draggableCursor;
  String get draggingCursor => $unsafe.draggingCursor;
  num get heading => $unsafe.heading;
  bool get keyboardShortcuts => $unsafe.keyboardShortcuts;
  bool get mapMaker => $unsafe.mapMaker;
  bool get mapTypeControl => $unsafe.mapTypeControl;
  MapTypeControlOptions get mapTypeControlOptions => MapTypeControlOptions.cast($unsafe.mapTypeControlOptions);
  // TODO bad online doc : should be MapTypeId|string
  Object get mapTypeId => $unsafe.mapTypeId;
  num get maxZoom => $unsafe.maxZoom;
  num get minZoom => $unsafe.minZoom;
  bool get noClear => $unsafe.noClear;
  bool get overviewMapControl => $unsafe.overviewMapControl;
  OverviewMapControlOptions get overviewMapControlOptions => OverviewMapControlOptions.cast($unsafe.overviewMapControlOptions);
  bool get panControl => $unsafe.panControl;
  PanControlOptions get panControlOptions => PanControlOptions.cast($unsafe.panControlOptions);
  bool get rotateControl => $unsafe.rotateControl;
  RotateControlOptions get rotateControlOptions => RotateControlOptions.cast($unsafe.rotateControlOptions);
  bool get scaleControl => $unsafe.scaleControl;
  ScaleControlOptions get scaleControlOptions => ScaleControlOptions.cast($unsafe.scaleControlOptions);
  bool get scrollwheel => $unsafe.scrollwheel;
  StreetViewPanorama get streetView => StreetViewPanorama.cast($unsafe.streetView);
  bool get streetViewControl => $unsafe.streetViewControl;
  StreetViewControlOptions get streetViewControlOptions => StreetViewControlOptions.cast($unsafe.streetViewControlOptions);
  List<MapTypeStyle> get styles => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.styles, MapTypeStyle.cast);
  num get tilt => $unsafe.tilt;
  num get zoom => $unsafe.zoom;
  bool get zoomControl => $unsafe.zoomControl;
  ZoomControlOptions get zoomControlOptions => ZoomControlOptions.cast($unsafe.zoomControlOptions);
  set backgroundColor(String backgroundColor) => $unsafe.backgroundColor = backgroundColor;
  set center(LatLng center) => $unsafe.center = center;
  set disableDefaultUI(bool disableDefaultUI) => $unsafe.disableDefaultUI = disableDefaultUI;
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => $unsafe.disableDoubleClickZoom = disableDoubleClickZoom;
  set draggable(bool draggable) => $unsafe.draggable = draggable;
  set draggableCursor(String draggableCursor) => $unsafe.draggableCursor = draggableCursor;
  set draggingCursor(String draggingCursor) => $unsafe.draggingCursor = draggingCursor;
  set heading(num heading) => $unsafe.heading = heading;
  set keyboardShortcuts(bool keyboardShortcuts) => $unsafe.keyboardShortcuts = keyboardShortcuts;
  set mapMaker(bool mapMaker) => $unsafe.mapMaker = mapMaker;
  set mapTypeControl(bool mapTypeControl) => $unsafe.mapTypeControl = mapTypeControl;
  set mapTypeControlOptions(MapTypeControlOptions mapTypeControlOptions) => $unsafe.mapTypeControlOptions = mapTypeControlOptions;
  // TODO bad online doc : should be MapTypeId|string
  set mapTypeId(Object mapTypeId) => $unsafe.mapTypeId = mapTypeId;
  set maxZoom(num maxZoom) => $unsafe.maxZoom = maxZoom;
  set minZoom(num minZoom) => $unsafe.minZoom = minZoom;
  set noClear(bool noClear) => $unsafe.noClear = noClear;
  set overviewMapControl(bool overviewMapControl) => $unsafe.overviewMapControl = overviewMapControl;
  set overviewMapControlOptions(OverviewMapControlOptions overviewMapControlOptions) => $unsafe.overviewMapControlOptions = overviewMapControlOptions;
  set panControl(bool panControl) => $unsafe.panControl = panControl;
  set panControlOptions(PanControlOptions panControlOptions) => $unsafe.panControlOptions = panControlOptions;
  set rotateControl(bool rotateControl) => $unsafe.rotateControl = rotateControl;
  set rotateControlOptions(RotateControlOptions rotateControlOptions) => $unsafe.rotateControlOptions = rotateControlOptions;
  set scaleControl(bool scaleControl) => $unsafe.scaleControl = scaleControl;
  set scaleControlOptions(ScaleControlOptions scaleControlOptions) => $unsafe.scaleControlOptions = scaleControlOptions;
  set scrollwheel(bool scrollwheel) => $unsafe.scrollwheel = scrollwheel;
  set streetView(StreetViewPanorama streetView) => $unsafe.streetView = streetView;
  set streetViewControl(bool streetViewControl) => $unsafe.streetViewControl = streetViewControl;
  set streetViewControlOptions(StreetViewControlOptions streetViewControlOptions) => $unsafe.streetViewControlOptions = streetViewControlOptions;
  set styles(List<MapTypeStyle> styles) => $unsafe.styles = jsifyList(styles);
  set tilt(num tilt) => $unsafe.tilt = tilt;
  set zoom(num zoom) => $unsafe.zoom = zoom;
  set zoomControl(bool zoomControl) => $unsafe.zoomControl = zoomControl;
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => $unsafe.zoomControlOptions = zoomControlOptions;
}