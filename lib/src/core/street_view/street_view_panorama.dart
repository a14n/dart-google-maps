// Copyright (c) 2015, Alexandre Ardhuin
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

part of google_maps.src;

@JsName('google.maps.StreetViewPanorama')
abstract class _StreetViewPanorama extends MVCObject {
  factory _StreetViewPanorama(Node container,
          [StreetViewPanoramaOptions opts]) =>
      null;

  List<StreetViewLink> get links => _getLinks();
  List<StreetViewLink> _getLinks();
  StreetViewLocation get location => _getLocation();
  StreetViewLocation _getLocation();
  String get pano => _getPano();
  String _getPano();
  StreetViewPov get photographerPov => _getPhotographerPov();
  StreetViewPov _getPhotographerPov();
  LatLng get position => _getPosition();
  LatLng _getPosition();
  StreetViewPov get pov => _getPov();
  StreetViewPov _getPov();
  StreetViewStatus get status => _getStatus();
  StreetViewStatus _getStatus();
  bool get visible => _getVisible();
  bool _getVisible();
  num get zoom => _getZoom();
  num _getZoom();
  void registerPanoProvider(StreetViewPanoramaData provider(String p1, [PanoProviderOptions options]));
  set links(List<StreetViewLink> links) => _setLinks(links);
  void _setLinks(List<StreetViewLink> links);
  set options(StreetViewPanoramaOptions options) => _setOptions(options);
  void _setOptions(StreetViewPanoramaOptions options);
  set pano(String pano) => _setPano(pano);
  void _setPano(String pano);
  set position(LatLng latLng) => _setPosition(latLng);
  void _setPosition(LatLng latLng);
  set pov(StreetViewPov pov) => _setPov(pov);
  void _setPov(StreetViewPov pov);
  set visible(bool flag) => _setVisible(flag);
  void _setVisible(bool flag);
  set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom);

  Controls controls;

  Stream get onClicktogoChanged => getStream(this, 'clicktogo_changed');
  Stream<JsObject> get onCloseclick => getStream(this, 'closeclick');
  Stream get onLinksChanged => getStream(this, 'links_changed');
  Stream get onPanoChanged => getStream(this, 'pano_changed');
  Stream get onPositionChanged => getStream(this, 'position_changed');
  Stream get onPovChanged => getStream(this, 'pov_changed');
  Stream get onResize => getStream(this, 'resize');
  Stream get onScrollwheelChanged => getStream(this, 'scrollwheel_changed');
  Stream get onStatusChanged => getStream(this, 'status_changed');
  Stream get onVisibleChanged => getStream(this, 'visible_changed');
  Stream get onZoomChanged => getStream(this, 'zoom_changed');
}
