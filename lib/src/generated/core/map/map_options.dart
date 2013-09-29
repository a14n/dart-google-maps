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
  static MapOptions cast(js.JsObject jsObject) => jsObject == null ? null : new MapOptions.fromJsObject(jsObject);
  MapOptions.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  MapOptions() : super();

  set backgroundColor(String backgroundColor) => $unsafe['backgroundColor'] = backgroundColor;
  String get backgroundColor => $unsafe['backgroundColor'];
  set center(LatLng center) => $unsafe['center'] = center;
  LatLng get center => LatLng.cast($unsafe['center']);
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
  set mapTypeControlOptions(MapTypeControlOptions mapTypeControlOptions) => $unsafe['mapTypeControlOptions'] = mapTypeControlOptions;
  MapTypeControlOptions get mapTypeControlOptions => MapTypeControlOptions.cast($unsafe['mapTypeControlOptions']);
  dynamic /*MapTypeId|string*/ get mapTypeId {
    final result = $unsafe['mapTypeId'];
    return [MapTypeId.find(result), result].firstWhere((e) => e != null, orElse: () => null);
  }
  void set mapTypeId(dynamic mapTypeId) {
    $unsafe['mapTypeId'] = mapTypeId;
  }
  set maxZoom(num maxZoom) => $unsafe['maxZoom'] = maxZoom;
  num get maxZoom => $unsafe['maxZoom'];
  set minZoom(num minZoom) => $unsafe['minZoom'] = minZoom;
  num get minZoom => $unsafe['minZoom'];
  set noClear(bool noClear) => $unsafe['noClear'] = noClear;
  bool get noClear => $unsafe['noClear'];
  set overviewMapControl(bool overviewMapControl) => $unsafe['overviewMapControl'] = overviewMapControl;
  bool get overviewMapControl => $unsafe['overviewMapControl'];
  set overviewMapControlOptions(OverviewMapControlOptions overviewMapControlOptions) => $unsafe['overviewMapControlOptions'] = overviewMapControlOptions;
  OverviewMapControlOptions get overviewMapControlOptions => OverviewMapControlOptions.cast($unsafe['overviewMapControlOptions']);
  set panControl(bool panControl) => $unsafe['panControl'] = panControl;
  bool get panControl => $unsafe['panControl'];
  set panControlOptions(PanControlOptions panControlOptions) => $unsafe['panControlOptions'] = panControlOptions;
  PanControlOptions get panControlOptions => PanControlOptions.cast($unsafe['panControlOptions']);
  set rotateControl(bool rotateControl) => $unsafe['rotateControl'] = rotateControl;
  bool get rotateControl => $unsafe['rotateControl'];
  set rotateControlOptions(RotateControlOptions rotateControlOptions) => $unsafe['rotateControlOptions'] = rotateControlOptions;
  RotateControlOptions get rotateControlOptions => RotateControlOptions.cast($unsafe['rotateControlOptions']);
  set scaleControl(bool scaleControl) => $unsafe['scaleControl'] = scaleControl;
  bool get scaleControl => $unsafe['scaleControl'];
  set scaleControlOptions(ScaleControlOptions scaleControlOptions) => $unsafe['scaleControlOptions'] = scaleControlOptions;
  ScaleControlOptions get scaleControlOptions => ScaleControlOptions.cast($unsafe['scaleControlOptions']);
  set scrollwheel(bool scrollwheel) => $unsafe['scrollwheel'] = scrollwheel;
  bool get scrollwheel => $unsafe['scrollwheel'];
  set streetView(StreetViewPanorama streetView) => $unsafe['streetView'] = streetView;
  StreetViewPanorama get streetView => StreetViewPanorama.cast($unsafe['streetView']);
  set streetViewControl(bool streetViewControl) => $unsafe['streetViewControl'] = streetViewControl;
  bool get streetViewControl => $unsafe['streetViewControl'];
  set streetViewControlOptions(StreetViewControlOptions streetViewControlOptions) => $unsafe['streetViewControlOptions'] = streetViewControlOptions;
  StreetViewControlOptions get streetViewControlOptions => StreetViewControlOptions.cast($unsafe['streetViewControlOptions']);
  set styles(List<MapTypeStyle> styles) => $unsafe['styles'] = styles == null ? null : styles is js.Serializable ? styles : js.jsify(styles);
  List<MapTypeStyle> get styles => jsw.TypedJsArray.castListOfSerializables($unsafe['styles'], MapTypeStyle.cast);
  set tilt(num tilt) => $unsafe['tilt'] = tilt;
  num get tilt => $unsafe['tilt'];
  set zoom(num zoom) => $unsafe['zoom'] = zoom;
  num get zoom => $unsafe['zoom'];
  set zoomControl(bool zoomControl) => $unsafe['zoomControl'] = zoomControl;
  bool get zoomControl => $unsafe['zoomControl'];
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => $unsafe['zoomControlOptions'] = zoomControlOptions;
  ZoomControlOptions get zoomControlOptions => ZoomControlOptions.cast($unsafe['zoomControlOptions']);
}
