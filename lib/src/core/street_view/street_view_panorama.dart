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
  static final INSTANCIATOR = (js.Proxy jsProxy) => new StreetViewPanorama.fromJsProxy(jsProxy);
  static bool isInstance(js.Proxy jsProxy) => js.instanceof(jsProxy, maps.StreetViewPanorama);

  StreetViewPanorama(html.Node container, [StreetViewPanoramaOptions opts]) : super.newInstance(maps.StreetViewPanorama, [container, opts]);
  StreetViewPanorama.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  List<StreetViewLink> get links => $.getLinks().map((js.Proxy jsProxy) => new jsw.JsList<StreetViewLink>.fromJsProxy(jsProxy, StreetViewLink.INSTANCIATOR)).value;
  String get pano => $.getPano().value;
  StreetViewPov get photographerPov => $.getPhotographerPov().map(StreetViewPov.INSTANCIATOR).value;
  LatLng get position => $.getPosition().map(LatLng.INSTANCIATOR).value;
  StreetViewPov get pov => $.getPov().map(StreetViewPov.INSTANCIATOR).value;
  bool get visible => $.getVisible().value;
  num get zoom => $.getZoom().value;
  void registerPanoProvider(StreetViewPanoramaData provider(String pano)) {
    $.registerPanoProvider(new jsw.Callback.many((Option<String> pano) => provider(pano.value)));
  }
  set pano(String pano) => $.setPano(pano);
  set position(LatLng latLng) => $.setPosition(latLng);
  set pov(StreetViewPov pov) => $.setPov(pov);
  set visible(bool flag) => $.setVisible(flag);
  set zoom(num zoom) => $.setZoom(zoom);

  Controls get controls => $.controls.map(Controls.INSTANCIATOR).value;
  set controls(Controls controls) => $.controls = controls;

  StreetViewPanoramaEvents get on => new StreetViewPanoramaEvents._(this);
}

class StreetViewPanoramaEvents {
  static final CLOSECLICK = "closeclick";
  static final LINKS_CHANGED = "links_changed";
  static final PANO_CHANGED = "pano_changed";
  static final POSITION_CHANGED = "position_changed";
  static final POV_CHANGED = "pov_changed";
  static final RESIZE = "resize";
  static final VISIBLE_CHANGED = "visible_changed";
  static final ZOOM_CHANGED = "zoom_changed";

  final StreetViewPanorama _streetViewPanorama;

  StreetViewPanoramaEvents._(this._streetViewPanorama);

  NativeEventListenerAdder get closeclick => new NativeEventListenerAdder(_streetViewPanorama, CLOSECLICK);
  NoArgsEventListenerAdder get linksChanged => new NoArgsEventListenerAdder(_streetViewPanorama, LINKS_CHANGED);
  NoArgsEventListenerAdder get panoChanged => new NoArgsEventListenerAdder(_streetViewPanorama, PANO_CHANGED);
  NoArgsEventListenerAdder get positionChanged => new NoArgsEventListenerAdder(_streetViewPanorama, POSITION_CHANGED);
  NoArgsEventListenerAdder get povChanged => new NoArgsEventListenerAdder(_streetViewPanorama, POV_CHANGED);
  NoArgsEventListenerAdder get resize => new NoArgsEventListenerAdder(_streetViewPanorama, RESIZE);
  NoArgsEventListenerAdder get visibleChanged => new NoArgsEventListenerAdder(_streetViewPanorama, VISIBLE_CHANGED);
  NoArgsEventListenerAdder get zoomChanged => new NoArgsEventListenerAdder(_streetViewPanorama, ZOOM_CHANGED);
}