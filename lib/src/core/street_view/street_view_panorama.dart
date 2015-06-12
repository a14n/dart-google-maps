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
  external factory _StreetViewPanorama(Node container,
      [StreetViewPanoramaOptions opts]);

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
  void registerPanoProvider(provider(String p1));
  void set links(List<StreetViewLink> links) => _setLinks(links);
  void _setLinks(List<StreetViewLink> links);
  void set options(StreetViewPanoramaOptions options) => _setOptions(options);
  void _setOptions(StreetViewPanoramaOptions options);
  void set pano(String pano) => _setPano(pano);
  void _setPano(String pano);
  void set position(LatLng latLng) => _setPosition(latLng);
  void _setPosition(LatLng latLng);
  void set pov(StreetViewPov pov) => _setPov(pov);
  void _setPov(StreetViewPov pov);
  void set visible(bool flag) => _setVisible(flag);
  void _setVisible(bool flag);
  void set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom);

  dynamic _controls;
  List<MVCArray<Node>> get controls => (new JsListCodec<MVCArray<Node>>(
          new JsInterfaceCodec<MVCArray<Node>>(
              (o) => new MVCArray<Node>.created(o, new IdentityCodec<Node>()))))
      .decode(_controls);
  void set controls(List<MVCArray<Node>> controls) {
    _controls = (new JsListCodec<MVCArray<Node>>(
            new JsInterfaceCodec<MVCArray<Node>>((o) =>
                new MVCArray<Node>.created(o, new IdentityCodec<Node>()))))
        .encode(controls);
  }
  Stream get onClicktogoChanged =>
      getStream(this, #onClicktogoChanged, "clicktogo_changed");
  Stream<JsObject> get onCloseclick =>
      getStream(this, #onCloseclick, "closeclick");
  Stream get onLinksChanged =>
      getStream(this, #onLinksChanged, "links_changed");
  Stream get onPanoChanged => getStream(this, #onPanoChanged, "pano_changed");
  Stream get onPositionChanged =>
      getStream(this, #onPositionChanged, "position_changed");
  Stream get onPovChanged => getStream(this, #onPovChanged, "pov_changed");
  Stream get onResize => getStream(this, #onResize, "resize");
  Stream get onScrollwheelChanged =>
      getStream(this, #onScrollwheelChanged, "scrollwheel_changed");
  Stream get onStatusChanged =>
      getStream(this, #onStatusChanged, "status_changed");
  Stream get onVisibleChanged =>
      getStream(this, #onVisibleChanged, "visible_changed");
  Stream get onZoomChanged => getStream(this, #onZoomChanged, "zoom_changed");
}
