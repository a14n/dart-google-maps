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

@wrapper @skipConstructor abstract class StreetViewPanorama extends MVCObject {
  static bool isInstance(js.JsObject jsObject) => jsObject != null && jsObject.instanceof(maps['StreetViewPanorama']);

  jsw.SubscribeStreamProvider<NativeEvent> _onCloseclick;
  jsw.SubscribeStreamProvider _onLinksChanged;
  jsw.SubscribeStreamProvider _onPanoChanged;
  jsw.SubscribeStreamProvider _onPositionChanged;
  jsw.SubscribeStreamProvider _onPovChanged;
  jsw.SubscribeStreamProvider _onResize;
  jsw.SubscribeStreamProvider _onVisibleChanged;
  jsw.SubscribeStreamProvider _onZoomChanged;

  @generate StreetViewPanorama(html.Node container, [StreetViewPanoramaOptions opts]) { _initStreams(); }
  StreetViewPanorama.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onCloseclick = event.getStreamProviderFor(this, "closeclick", NativeEvent.$wrap);
    _onLinksChanged = event.getStreamProviderFor(this, "links_changed");
    _onPanoChanged = event.getStreamProviderFor(this, "pano_changed");
    _onPositionChanged = event.getStreamProviderFor(this, "position_changed");
    _onPovChanged = event.getStreamProviderFor(this, "pov_changed");
    _onResize = event.getStreamProviderFor(this, "resize");
    _onVisibleChanged = event.getStreamProviderFor(this, "visible_changed");
    _onZoomChanged = event.getStreamProviderFor(this, "zoom_changed");
  }

  Stream<NativeEvent> get onCloseclick => _onCloseclick.stream;
  Stream get onLinksChanged => _onLinksChanged.stream;
  Stream get onPanoChanged => _onPanoChanged.stream;
  Stream get onPositionChanged => _onPositionChanged.stream;
  Stream get onPovChanged => _onPovChanged.stream;
  Stream get onResize => _onResize.stream;
  Stream get onVisibleChanged => _onVisibleChanged.stream;
  Stream get onZoomChanged => _onZoomChanged.stream;

  @forMethods List<StreetViewLink> get links;
  @forMethods String get pano;
  @forMethods StreetViewPov get photographerPov;
  @forMethods LatLng get position;
  @forMethods StreetViewPov get pov;
  @forMethods bool get visible;
  @forMethods num get zoom;
  void registerPanoProvider(StreetViewPanoramaData provider(String pano)) {
    $unsafe.callMethod('registerPanoProvider', [(String pano) => jsw.Serializable.$unwrap(provider(pano))]);
  }
  @forMethods set pano(String pano);
  @forMethods set position(LatLng latLng);
  @forMethods set pov(StreetViewPov pov);
  @forMethods set visible(bool flag);
  @forMethods set zoom(num zoom);

  Controls controls;
}
