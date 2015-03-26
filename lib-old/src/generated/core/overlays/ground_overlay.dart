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

class GroundOverlay extends MVCObject {
  static GroundOverlay $wrap(js.JsObject jsObject) => jsObject == null ? null : new GroundOverlay.fromJsObject(jsObject);
  jsw.SubscribeStreamProvider<MouseEvent> _onClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onDblClick;

  GroundOverlay(String url, LatLngBounds bounds, [GroundOverlayOptions opts])
      : super(maps['GroundOverlay'], [url, bounds == null ? null : bounds.$unsafe, opts == null ? null : opts.$unsafe]) {
    _initStreams();
  }
  GroundOverlay.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", MouseEvent.$wrap);
    _onDblClick = event.getStreamProviderFor(this, "dblclick", MouseEvent.$wrap);
  }

  Stream<MouseEvent> get onClick => _onClick.stream;
  Stream<MouseEvent> get onDblClick => _onDblClick.stream;

  LatLngBounds get bounds => LatLngBounds.$wrap($unsafe.callMethod('getBounds'));
  GMap get map => GMap.$wrap($unsafe.callMethod('getMap'));
  num get opacity => $unsafe.callMethod('getOpacity');
  String get url => $unsafe.callMethod('getUrl');
  set map(GMap map) => $unsafe.callMethod('setMap', [map == null ? null : map.$unsafe]);
  set opacity(num opacity) => $unsafe.callMethod('setOpacity', [opacity]);
}
