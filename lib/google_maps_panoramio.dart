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

library google_maps_panoramio;

import 'package:js/js.dart' as js;
import 'js_wrap.dart' as jsw;
import 'google_maps.dart';

class PanoramioLayer extends MVCObject {
  PanoramioLayer([PanoramioLayerOptions opts]) : super.newInstance(maps.panoramio.PanoramioLayer, [opts]);
  PanoramioLayer.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  String get tag => $.getTag().value;
  String get userId => $.getUserId().value;
  set map(GMap map) => $.setMap(map);
  set options(PanoramioLayerOptions options) => $.setOptions(options);
  set tag(String tag) => $.setTag(tag);
  set userId(String userId) => $.setUserId(userId);

  PanoramioLayerEvents get on => new PanoramioLayerEvents._(this);
}

class PanoramioLayerEvents {
  final PanoramioLayer _panoramioLayer;

  PanoramioLayerEvents._(this._panoramioLayer);

  PanoramioMouseEventListenerAdder get click => new PanoramioMouseEventListenerAdder(_panoramioLayer, "click");
}

class PanoramioLayerOptions extends jsw.IsJsProxy {
  set clickable(bool clickable) => $.clickable = clickable;
  set map(GMap map) => $.map = map;
  set suppressInfoWindows(bool suppressInfoWindows) => $.suppressInfoWindows = suppressInfoWindows;
  set tag(String tag) => $.tag = tag;
  set userId(String userId) => $.userId = userId;
}

class PanoramioFeature extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new PanoramioFeature.fromJsProxy(jsProxy);
  PanoramioFeature.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  String get author => $.author.value;
  String get photoId => $.photoId.value;
  String get title => $.title.value;
  String get url => $.url.value;
  String get userId => $.userId.value;
}

class PanoramioMouseEvent extends jsw.IsJsProxy {
  PanoramioMouseEvent();
  PanoramioMouseEvent.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  PanoramioFeature get featureDetails => $.featureDetails.map(PanoramioFeature.INSTANCIATOR).value;
  String get infoWindowHtml => $.infoWindowHtml.value;
  LatLng get latLng => $.latLng.map(LatLng.INSTANCIATOR).value;
  Size get pixelOffset => $.pixelOffset.map(Size.INSTANCIATOR).value;
}

class PanoramioMouseEventListenerAdder extends EventListenerAdder {
  PanoramioMouseEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(PanoramioMouseEvent e)) { super.add((e) => handler(e.map((e) => new PanoramioMouseEvent.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(PanoramioMouseEvent e)) => super.addTemporary((e) => handler(e.map((e) => new PanoramioMouseEvent.fromJsProxy(e)).value));
}