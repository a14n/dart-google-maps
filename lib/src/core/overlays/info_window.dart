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
  InfoWindow([InfoWindowOptions opts]) : super.newInstance(maps.InfoWindow, [opts]);
  InfoWindow.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  void close() { $.close(); }
  Object get content {
    final result = $.getContent().value;
    if (result is String || result is html.Node) {
      return result;
    } else {
      throw new Exception("Unsupported result");
    }
  }
  LatLng get position => $.getPosition().map(LatLng.INSTANCIATOR).value;
  num get zIndex => $.getZIndex().value;
  void open([Object map, MVCObject anchor]) {
    if (map is GMap || map is StreetViewPanorama) {
      $.open(map, anchor);
    } else {
      throw new UnsupportedError("Parameter must be of type GMap or StreetViewPanorama");
    }
  }
  set content(Object content) {
    if (content is String || content is html.Node) {
      $.setContent(content);
    } else {
      throw new UnsupportedError("Parameter must be of type String or Node");
    }
  }
  set options(InfoWindowOptions options) => $.setOptions(options);
  set position(LatLng position) => $.setPosition(position);
  set zIndex(num zIndex) => $.setZIndex(zIndex);

  InfoWindowEvents get on => new InfoWindowEvents._(this);
}

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