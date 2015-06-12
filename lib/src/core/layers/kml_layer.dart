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

@JsName('google.maps.KmlLayer')
abstract class _KmlLayer extends MVCObject {
  external factory _KmlLayer([KmlLayerOptions opts]);

  LatLngBounds get defaultViewport => _getDefaultViewport();
  LatLngBounds _getDefaultViewport();
  GMap get map => _getMap();
  GMap _getMap();
  KmlLayerMetadata get metadata => _getMetadata();
  KmlLayerMetadata _getMetadata();
  KmlLayerStatus get status => _getStatus();
  KmlLayerStatus _getStatus();
  String get url => _getUrl();
  String _getUrl();
  num get zIndex => _getZIndex();
  num _getZIndex();
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  void set url(String url) => _setUrl(url);
  void _setUrl(String url);
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex);

  Stream<KmlMouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new KmlMouseEvent.created(o));
  Stream get onDefaultviewportChanged =>
      getStream(this, #onDefaultviewportChanged, "defaultviewport_changed");
  Stream get onStatusChanged =>
      getStream(this, #onStatusChanged, "status_changed");
}
