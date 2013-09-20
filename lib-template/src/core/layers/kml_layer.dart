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

@wrapper @forMethods @skipConstructor abstract class KmlLayer extends MVCObject {
  SubscribeStreamProvider<KmlMouseEvent> _onClick;
  SubscribeStreamProvider _onDefaultviewportChanged;
  SubscribeStreamProvider _onStatusChanged;

  KmlLayer([KmlLayerOptions options]) : super(maps['KmlLayer'], [options]) { _initStreams(); }
  KmlLayer.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", KmlMouseEvent.cast);
    _onDefaultviewportChanged = event.getStreamProviderFor(this, "defaultviewport_changed");
    _onStatusChanged = event.getStreamProviderFor(this, "status_changed");
  }

  Stream<KmlMouseEvent> get onClick => _onClick.stream;
  Stream get onDefaultviewportChanged => _onDefaultviewportChanged.stream;
  Stream get onStatusChanged => _onStatusChanged.stream;

  LatLngBounds get defaultViewport;
  GMap get map;
  KmlLayerMetadata get metadata;
  KmlLayerStatus get status => KmlLayerStatus.find($unsafe.callMethod('getStatus'));
  String get url;
  set map(GMap map);
  set url(String url);
}
