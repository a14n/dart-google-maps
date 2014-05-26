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

@wrapper @forMethods @skipConstructor abstract class Polyline extends MVCObject {
  static Polyline $wrap(js.JsObject jsObject) => null;
  static bool isInstance(js.JsObject jsObject) => jsObject != null && jsObject.instanceof(maps['Polyline']);

  jsw.SubscribeStreamProvider<PolyMouseEvent> _onClick;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onDblClick;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMousedown;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMousemove;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMouseout;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMouseover;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMouseup;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onRightclick;

  @generate Polyline([PolylineOptions opts]) { _initStreams(); }
  Polyline.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", PolyMouseEvent.$wrap);
    _onDblClick = event.getStreamProviderFor(this, "dblclick", PolyMouseEvent.$wrap);
    _onMousedown = event.getStreamProviderFor(this, "mousedown", PolyMouseEvent.$wrap);
    _onMousemove = event.getStreamProviderFor(this, "mousemove", PolyMouseEvent.$wrap);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", PolyMouseEvent.$wrap);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", PolyMouseEvent.$wrap);
    _onMouseup = event.getStreamProviderFor(this, "mouseup", PolyMouseEvent.$wrap);
    _onRightclick = event.getStreamProviderFor(this, "rightclick", PolyMouseEvent.$wrap);
  }

  Stream<PolyMouseEvent> get onClick => _onClick.stream;
  Stream<PolyMouseEvent> get onDblClick => _onDblClick.stream;
  Stream<PolyMouseEvent> get onMousedown => _onMousedown.stream;
  Stream<PolyMouseEvent> get onMousemove => _onMousemove.stream;
  Stream<PolyMouseEvent> get onMouseout => _onMouseout.stream;
  Stream<PolyMouseEvent> get onMouseover => _onMouseover.stream;
  Stream<PolyMouseEvent> get onMouseup => _onMouseup.stream;
  Stream<PolyMouseEvent> get onRightclick => _onRightclick.stream;

  bool get draggable;
  bool get editable;
  GMap get map;
  MVCArray<LatLng> get path => MVCArray.$wrapSerializables($unsafe.callMethod('getPath'), LatLng.$wrap);
  bool get visible;
  set draggable(bool draggable);
  set editable(bool editable);
  set map(GMap map);
  set options(PolylineOptions options);
  set path(dynamic/*MVCArray.<LatLng>|Array.<LatLng>*/ path) => $unsafe.callMethod('setPath', [path == null ? null : path is js.JsArray ? path : path is List ? jsw.jsify(path) : path]);
  set visible(bool visible);
}
