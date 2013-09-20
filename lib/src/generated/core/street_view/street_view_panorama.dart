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

class StreetViewPanorama extends MVCObject {
  static StreetViewPanorama cast(js.JsObject jsObject) => jsObject == null ? null : new StreetViewPanorama.fromJsObject(jsObject);
  static bool isInstance(js.JsObject proxy) => proxy.instanceof(maps['StreetViewPanorama']);

  SubscribeStreamProvider<NativeEvent> _onCloseclick;
  SubscribeStreamProvider _onLinksChanged;
  SubscribeStreamProvider _onPanoChanged;
  SubscribeStreamProvider _onPositionChanged;
  SubscribeStreamProvider _onPovChanged;
  SubscribeStreamProvider _onResize;
  SubscribeStreamProvider _onVisibleChanged;
  SubscribeStreamProvider _onZoomChanged;

  StreetViewPanorama(html.Node container, [StreetViewPanoramaOptions opts]) : super(maps['StreetViewPanorama'], [convertElementToJs(container), opts]) { _initStreams(); }
  StreetViewPanorama.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onCloseclick = event.getStreamProviderFor(this, "closeclick", NativeEvent.cast);
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

  List<StreetViewLink> get links => jsw.TypedJsArray.castListOfSerializables($unsafe.callMethod('getLinks'), StreetViewLink.cast);
  String get pano => $unsafe.callMethod('getPano');
  StreetViewPov get photographerPov => StreetViewPov.cast($unsafe.callMethod('getPhotographerPov'));
  LatLng get position => LatLng.cast($unsafe.callMethod('getPosition'));
  StreetViewPov get pov => StreetViewPov.cast($unsafe.callMethod('getPov'));
  bool get visible => $unsafe.callMethod('getVisible');
  num get zoom => $unsafe.callMethod('getZoom');
  void registerPanoProvider(StreetViewPanoramaData provider(String pano)) {
    $unsafe.callMethod('registerPanoProvider', [(String pano) => provider(pano)]);
  }
  set pano(String pano) => $unsafe.callMethod('setPano', [pano]);
  set position(LatLng latLng) => $unsafe.callMethod('setPosition', [latLng]);
  set pov(StreetViewPov pov) => $unsafe.callMethod('setPov', [pov]);
  set visible(bool flag) => $unsafe.callMethod('setVisible', [flag]);
  set zoom(num zoom) => $unsafe.callMethod('setZoom', [zoom]);

  set controls(Controls controls) => $unsafe['controls'] = controls;
Controls get controls => Controls.cast($unsafe['controls']);
}
