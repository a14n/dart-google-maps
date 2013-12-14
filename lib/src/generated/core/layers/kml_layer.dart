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

class KmlLayer extends MVCObject {
  static KmlLayer $wrap(js.JsObject jsObject) => jsObject == null ? null : new KmlLayer.fromJsObject(jsObject);
  jsw.SubscribeStreamProvider<KmlMouseEvent> _onClick;
  jsw.SubscribeStreamProvider _onDefaultviewportChanged;
  jsw.SubscribeStreamProvider _onStatusChanged;

  KmlLayer([KmlLayerOptions options])
      : super(maps['KmlLayer'], [options == null ? null : options.$unsafe]) {
    _initStreams();
  }
  KmlLayer.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", KmlMouseEvent.$wrap);
    _onDefaultviewportChanged = event.getStreamProviderFor(this, "defaultviewport_changed");
    _onStatusChanged = event.getStreamProviderFor(this, "status_changed");
  }

  Stream<KmlMouseEvent> get onClick => _onClick.stream;
  Stream get onDefaultviewportChanged => _onDefaultviewportChanged.stream;
  Stream get onStatusChanged => _onStatusChanged.stream;

  LatLngBounds get defaultViewport => LatLngBounds.$wrap($unsafe.callMethod('getDefaultViewport'));
  GMap get map => GMap.$wrap($unsafe.callMethod('getMap'));
  KmlLayerMetadata get metadata => KmlLayerMetadata.$wrap($unsafe.callMethod('getMetadata'));
  KmlLayerStatus get status => KmlLayerStatus.$wrap($unsafe.callMethod('getStatus'));
  String get url => $unsafe.callMethod('getUrl');
  set map(GMap map) => $unsafe.callMethod('setMap', [map == null ? null : map.$unsafe]);
  set url(String url) => $unsafe.callMethod('setUrl', [url]);
}
