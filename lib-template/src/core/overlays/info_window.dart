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

@wrapper @forMethods @skipConstructor abstract class InfoWindow extends MVCObject {
  jsw.SubscribeStreamProvider _onCloseclick;
  jsw.SubscribeStreamProvider _onContentChanged;
  jsw.SubscribeStreamProvider _onDomready;
  jsw.SubscribeStreamProvider _onPositionChanged;
  jsw.SubscribeStreamProvider _onZindexChanged;

  @generate InfoWindow([InfoWindowOptions opts]) { _initStreams(); }
  InfoWindow.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onCloseclick = event.getStreamProviderFor(this, "closeclick");
    _onContentChanged = event.getStreamProviderFor(this, "content_changed");
    _onDomready = event.getStreamProviderFor(this, "domready");
    _onPositionChanged = event.getStreamProviderFor(this, "position_changed");
    _onZindexChanged = event.getStreamProviderFor(this, "zindex_changed");
  }

  Stream get onCloseclick => _onCloseclick.stream;
  Stream get onContentChanged => _onContentChanged.stream;
  Stream get onDomready => _onDomready.stream;
  Stream get onPositionChanged => _onPositionChanged.stream;
  Stream get onZindexChanged => _onZindexChanged.stream;

  void close();
  @Types(const [String, html.Node]) dynamic get content;
  LatLng get position;
  num get zIndex;
  void open([@Types(const [GMap, StreetViewPanorama]) dynamic map, MVCObject anchor]);
  set content(@Types(const [String, html.Node])dynamic content);
  set options(InfoWindowOptions options);
  set position(LatLng position);
  set zIndex(num zIndex);
}
