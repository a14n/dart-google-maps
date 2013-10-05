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
  static GroundOverlay cast(js.JsObject jsObject) => jsObject == null ? null : new GroundOverlay.fromJsObject(jsObject);
  jsw.SubscribeStreamProvider<MouseEvent> _onClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onDblClick;

  GroundOverlay(String url, LatLngBounds bounds, [GroundOverlayOptions opts]) : super(maps['GroundOverlay'], [url, bounds, opts]) {
    _initStreams();
  }
  GroundOverlay.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", MouseEvent.cast);
    _onDblClick = event.getStreamProviderFor(this, "dblclick", MouseEvent.cast);
  }

  Stream<MouseEvent> get onClick => _onClick.stream;
  Stream<MouseEvent> get onDblClick => _onDblClick.stream;

  LatLngBounds get bounds => LatLngBounds.cast($unsafe.callMethod('getBounds'));
  GMap get map => GMap.cast($unsafe.callMethod('getMap'));
  num get opacity => $unsafe.callMethod('getOpacity');
  String get url => $unsafe.callMethod('getUrl');
  set map(GMap map) => $unsafe.callMethod('setMap', [map]);
  set opacity(num opacity) => $unsafe.callMethod('setOpacity', [opacity]);
}
