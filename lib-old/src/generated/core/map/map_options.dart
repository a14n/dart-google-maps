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

class MapOptions extends jsw.TypedJsObject {
  static MapOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new MapOptions.fromJsObject(jsObject);
  MapOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  MapOptions();

  set backgroundColor(String backgroundColor) => $unsafe['backgroundColor'] = backgroundColor;
  String get backgroundColor => $unsafe['backgroundColor'];
  set center(LatLng center) => $unsafe['center'] = center == null ? null : center.$unsafe;
  LatLng get center => LatLng.$wrap($unsafe['center']);
  set disableDefaultUI(bool disableDefaultUI) => $unsafe['disableDefaultUI'] = disableDefaultUI;
  bool get disableDefaultUI => $unsafe['disableDefaultUI'];
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => $unsafe['disableDoubleClickZoom'] = disableDoubleClickZoom;
  bool get disableDoubleClickZoom => $unsafe['disableDoubleClickZoom'];
  set draggable(bool draggable) => $unsafe['draggable'] = draggable;
  bool get draggable => $unsafe['draggable'];
  set draggableCursor(String draggableCursor) => $unsafe['draggableCursor'] = draggableCursor;
  String get draggableCursor => $unsafe['draggableCursor'];
  set draggingCursor(String draggingCursor) => $unsafe['draggingCursor'] = draggingCursor;
  String get draggingCursor => $unsafe['draggingCursor'];
  set heading(num heading) => $unsafe['heading'] = heading;
  num get heading => $unsafe['heading'];
  set keyboardShortcuts(bool keyboardShortcuts) => $unsafe['keyboardShortcuts'] = keyboardShortcuts;
  bool get keyboardShortcuts => $unsafe['keyboardShortcuts'];
  set mapMaker(bool mapMaker) => $unsafe['mapMaker'] = mapMaker;
  bool get mapMaker => $unsafe['mapMaker'];
  set mapTypeControl(bool mapTypeControl) => $unsafe['mapTypeControl'] = mapTypeControl;
  bool get mapTypeControl => $unsafe['mapTypeControl'];
  set mapTypeControlOptions(MapTypeControlOptions mapTypeControlOptions) => $unsafe['mapTypeControlOptions'] = mapTypeControlOptions == null ? null : mapTypeControlOptions.$unsafe;
  MapTypeControlOptions get mapTypeControlOptions => MapTypeControlOptions.$wrap($unsafe['mapTypeControlOptions']);
  set mapTypeId(dynamic mapTypeId) => $unsafe['mapTypeId'] = mapTypeId is MapTypeId ? mapTypeId.$unsafe : mapTypeId is String ? mapTypeId : mapTypeId == null ? null : throw "bad type";
  dynamic get mapTypeId => ((v3) => ((v2) => v2 != null ? v2 : ((v1) => v1 is String ? v1 : ((v0) => v0)(v1))(v3))(MapTypeId.$wrap(v3)))($unsafe['mapTypeId']);
  set maxZoom(num maxZoom) => $unsafe['maxZoom'] = maxZoom;
  num get maxZoom => $unsafe['maxZoom'];
  set minZoom(num minZoom) => $unsafe['minZoom'] = minZoom;
  num get minZoom => $unsafe['minZoom'];
  set noClear(bool noClear) => $unsafe['noClear'] = noClear;
  bool get noClear => $unsafe['noClear'];
  set overviewMapControl(bool overviewMapControl) => $unsafe['overviewMapControl'] = overviewMapControl;
  bool get overviewMapControl => $unsafe['overviewMapControl'];
  set overviewMapControlOptions(OverviewMapControlOptions overviewMapControlOptions) => $unsafe['overviewMapControlOptions'] = overviewMapControlOptions == null ? null : overviewMapControlOptions.$unsafe;
  OverviewMapControlOptions get overviewMapControlOptions => OverviewMapControlOptions.$wrap($unsafe['overviewMapControlOptions']);
  set panControl(bool panControl) => $unsafe['panControl'] = panControl;
  bool get panControl => $unsafe['panControl'];
  set panControlOptions(PanControlOptions panControlOptions) => $unsafe['panControlOptions'] = panControlOptions == null ? null : panControlOptions.$unsafe;
  PanControlOptions get panControlOptions => PanControlOptions.$wrap($unsafe['panControlOptions']);
  set rotateControl(bool rotateControl) => $unsafe['rotateControl'] = rotateControl;
  bool get rotateControl => $unsafe['rotateControl'];
  set rotateControlOptions(RotateControlOptions rotateControlOptions) => $unsafe['rotateControlOptions'] = rotateControlOptions == null ? null : rotateControlOptions.$unsafe;
  RotateControlOptions get rotateControlOptions => RotateControlOptions.$wrap($unsafe['rotateControlOptions']);
  set scaleControl(bool scaleControl) => $unsafe['scaleControl'] = scaleControl;
  bool get scaleControl => $unsafe['scaleControl'];
  set scaleControlOptions(ScaleControlOptions scaleControlOptions) => $unsafe['scaleControlOptions'] = scaleControlOptions == null ? null : scaleControlOptions.$unsafe;
  ScaleControlOptions get scaleControlOptions => ScaleControlOptions.$wrap($unsafe['scaleControlOptions']);
  set scrollwheel(bool scrollwheel) => $unsafe['scrollwheel'] = scrollwheel;
  bool get scrollwheel => $unsafe['scrollwheel'];
  set streetView(StreetViewPanorama streetView) => $unsafe['streetView'] = streetView == null ? null : streetView.$unsafe;
  StreetViewPanorama get streetView => StreetViewPanorama.$wrap($unsafe['streetView']);
  set streetViewControl(bool streetViewControl) => $unsafe['streetViewControl'] = streetViewControl;
  bool get streetViewControl => $unsafe['streetViewControl'];
  set streetViewControlOptions(StreetViewControlOptions streetViewControlOptions) => $unsafe['streetViewControlOptions'] = streetViewControlOptions == null ? null : streetViewControlOptions.$unsafe;
  StreetViewControlOptions get streetViewControlOptions => StreetViewControlOptions.$wrap($unsafe['streetViewControlOptions']);
  set styles(List<MapTypeStyle> styles) => $unsafe['styles'] = jsw.jsify(styles);
  List<MapTypeStyle> get styles => jsw.TypedJsArray.$wrapSerializables($unsafe['styles'], MapTypeStyle.$wrap);
  set tilt(num tilt) => $unsafe['tilt'] = tilt;
  num get tilt => $unsafe['tilt'];
  set zoom(num zoom) => $unsafe['zoom'] = zoom;
  num get zoom => $unsafe['zoom'];
  set zoomControl(bool zoomControl) => $unsafe['zoomControl'] = zoomControl;
  bool get zoomControl => $unsafe['zoomControl'];
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => $unsafe['zoomControlOptions'] = zoomControlOptions == null ? null : zoomControlOptions.$unsafe;
  ZoomControlOptions get zoomControlOptions => ZoomControlOptions.$wrap($unsafe['zoomControlOptions']);
}
