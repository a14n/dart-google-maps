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

class InfoWindow extends MVCObject {
  static InfoWindow cast(js.Proxy proxy) => proxy == null ? null : new InfoWindow.fromProxy(proxy);

  Stream _onCloseclick;
  Stream _onContentChanged;
  Stream _onDomready;
  Stream _onPositionChanged;
  Stream _onZindexChanged;

  InfoWindow([InfoWindowOptions opts]) : super(maps.InfoWindow, [opts]) { _initStreams(); }
  InfoWindow.fromProxy(js.Proxy proxy) : super.fromProxy(proxy) { _initStreams(); }

  void _initStreams() {
    _onCloseclick = event.getStreamFor(this, "closeclick");
    _onContentChanged = event.getStreamFor(this, "content_changed");
    _onDomready = event.getStreamFor(this, "domready");
    _onPositionChanged = event.getStreamFor(this, "position_changed");
    _onZindexChanged = event.getStreamFor(this, "zindex_changed");
  }

  Stream get onCloseclick => _onCloseclick;
  Stream get onContentChanged => _onContentChanged;
  Stream get onDomready => _onDomready;
  Stream get onPositionChanged => _onPositionChanged;
  Stream get onZindexChanged => _onZindexChanged;

  void close() { $unsafe.close(); }
  dynamic/*string|Node*/ get content => $unsafe.getContent();
  LatLng get position => LatLng.cast($unsafe.getPosition());
  num get zIndex => $unsafe.getZIndex();
  void open([dynamic/*Map|StreetViewPanorama*/ map, MVCObject anchor]) => $unsafe.open(map, anchor);
  set content(dynamic/*string|Node*/ content) => $unsafe.setContent(content);
  set options(InfoWindowOptions options) => $unsafe.setOptions(options);
  set position(LatLng position) => $unsafe.setPosition(position);
  set zIndex(num zIndex) => $unsafe.setZIndex(zIndex);

  /// deprecated : use onXxx stream.
  @deprecated InfoWindowEvents get on => new InfoWindowEvents._(this);
}

@deprecated
class InfoWindowEvents {
  static final CLOSECLICK = "closeclick";
  static final CONTENT_CHANGED = "content_changed";
  static final DOMREADY = "domready";
  static final POSITION_CHANGED = "position_changed";
  static final ZINDEX_CHANGED = "zindex_changed";

  final InfoWindow _infoWindow;

  InfoWindowEvents._(this._infoWindow);

  NoArgsEventListenerAdder get closeclick => new NoArgsEventListenerAdder(_infoWindow, CLOSECLICK);
  NoArgsEventListenerAdder get contentChanged => new NoArgsEventListenerAdder(_infoWindow, CONTENT_CHANGED);
  NoArgsEventListenerAdder get domready => new NoArgsEventListenerAdder(_infoWindow, DOMREADY);
  NoArgsEventListenerAdder get positionChanged => new NoArgsEventListenerAdder(_infoWindow, POSITION_CHANGED);
  NoArgsEventListenerAdder get zindexChanged => new NoArgsEventListenerAdder(_infoWindow, ZINDEX_CHANGED);
}