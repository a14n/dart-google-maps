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

abstract class _InfoWindow extends MVCObject {
  external factory _InfoWindow([InfoWindowOptions opts]);

  Stream get onCloseclick => getStream(this, #onCloseclick, "closeclick");
  Stream get onContentChanged =>
      getStream(this, #onContentChanged, "content_changed");
  Stream get onDomready => getStream(this, #onDomready, "domready");
  Stream get onPositionChanged =>
      getStream(this, #onPositionChanged, "position_changed");
  Stream get onZindexChanged =>
      getStream(this, #onZindexChanged, "zindex_changed");

  void close();
  /*String|html.Node*/ get content => _getContent();
  _getContent();
  LatLng get position => _getPosition();
  LatLng _getPosition();
  num get zIndex => _getZIndex();
  num _getZIndex();
  void open([/*GMap|StreetViewPanorama*/ map, MVCObject anchor]);
  void set content(/*String|html.Node*/ content) => _setContent(content);
  void _setContent(/*String|html.Node*/ content);
  void set options(InfoWindowOptions options) => _setOptions(options);
  void _setOptions(InfoWindowOptions options);
  void set position(LatLng position) => _setPosition(position);
  void _setPosition(LatLng position);
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex);
}
