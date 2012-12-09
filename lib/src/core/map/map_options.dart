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

class MapOptions extends jsw.IsJsProxy {
  set backgroundColor(String backgroundColor) => $.backgroundColor = backgroundColor;
  set center(LatLng center) => $.center = center;
  set disableDefaultUI(bool disableDefaultUI) => $.disableDefaultUI = disableDefaultUI;
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => $.disableDoubleClickZoom = disableDoubleClickZoom;
  set draggable(bool draggable) => $.draggable = draggable;
  set draggableCursor(String draggableCursor) => $.draggableCursor = draggableCursor;
  set draggingCursor(String draggingCursor) => $.draggingCursor = draggingCursor;
  set heading(num heading) => $.heading = heading;
  set keyboardShortcuts(bool keyboardShortcuts) => $.keyboardShortcuts = keyboardShortcuts;
  set mapMaker(bool mapMaker) => $.mapMaker = mapMaker;
  set mapTypeControl(bool mapTypeControl) => $.mapTypeControl = mapTypeControl;
  set mapTypeControlOptions(MapTypeControlOptions mapTypeControlOptions) => $.mapTypeControlOptions = mapTypeControlOptions;
  // TODO bad online doc
  set mapTypeId(Object mapTypeId) {
    if (mapTypeId is String || mapTypeId is MapTypeId) {
      $.mapTypeId = mapTypeId;
    } else {
      throw new UnsupportedError("Parameter must be of type String or MapTypeId");
    }
  }
  set maxZoom(num maxZoom) => $.maxZoom = maxZoom;
  set minZoom(num minZoom) => $.minZoom = minZoom;
  set noClear(bool noClear) => $.noClear = noClear;
  set overviewMapControl(bool overviewMapControl) => $.overviewMapControl = overviewMapControl;
  set overviewMapControlOptions(OverviewMapControlOptions overviewMapControlOptions) => $.overviewMapControlOptions = overviewMapControlOptions;
  set panControl(bool panControl) => $.panControl = panControl;
  set panControlOptions(PanControlOptions panControlOptions) => $.panControlOptions = panControlOptions;
  set rotateControl(bool rotateControl) => $.rotateControl = rotateControl;
  set rotateControlOptions(RotateControlOptions rotateControlOptions) => $.rotateControlOptions = rotateControlOptions;
  set scaleControl(bool scaleControl) => $.scaleControl = scaleControl;
  set scaleControlOptions(ScaleControlOptions scaleControlOptions) => $.scaleControlOptions = scaleControlOptions;
  set scrollwheel(bool scrollwheel) => $.scrollwheel = scrollwheel;
  set streetView(StreetViewPanorama streetView) => $.streetView = streetView;
  set streetViewControl(bool streetViewControl) => $.streetViewControl = streetViewControl;
  set streetViewControlOptions(StreetViewControlOptions streetViewControlOptions) => $.streetViewControlOptions = streetViewControlOptions;
  set styles(List<MapTypeStyle> styles) => $.styles = styles;
  set tilt(num tilt) => $.tilt = tilt;
  set zoom(num zoom) => $.zoom = zoom;
  set zoomControl(bool zoomControl) => $.zoomControl = zoomControl;
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => $.zoomControlOptions = zoomControlOptions;
}