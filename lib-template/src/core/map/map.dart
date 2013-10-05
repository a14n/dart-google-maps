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

@wrapper @skipConstructor abstract class GMap extends MVCObject {
  static GMap cast(js.JsObject jsObject) => null;
  static bool isInstance(js.JsObject proxy) => proxy.instanceof(maps['Map']);

  jsw.SubscribeStreamProvider _onBoundsChanged;
  jsw.SubscribeStreamProvider _onCenterChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onDblClick;
  jsw.SubscribeStreamProvider _onDrag;
  jsw.SubscribeStreamProvider _onDragend;
  jsw.SubscribeStreamProvider _onDragstart;
  jsw.SubscribeStreamProvider _onHeadingChanged;
  jsw.SubscribeStreamProvider _onIdle;
  jsw.SubscribeStreamProvider _onMaptypeidChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onMousemove;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseout;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseover;
  jsw.SubscribeStreamProvider _onProjectionChanged;
  jsw.SubscribeStreamProvider _onResize;
  jsw.SubscribeStreamProvider<MouseEvent> _onRightclick;
  jsw.SubscribeStreamProvider _onTilesloaded;
  jsw.SubscribeStreamProvider _onTiltChanged;
  jsw.SubscribeStreamProvider _onZoomChanged;

  GMap(html.Node mapDiv, [MapOptions opts]) : super(maps['Map'], [jsw.convertElementToJs(mapDiv), opts]) { _initStreams(); }
  GMap.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onBoundsChanged = event.getStreamProviderFor(this, "bounds_changed");
    _onCenterChanged = event.getStreamProviderFor(this, "center_changed");
    _onClick = event.getStreamProviderFor(this, "click", MouseEvent.cast);
    _onDblClick = event.getStreamProviderFor(this, "dblclick", MouseEvent.cast);
    _onDrag = event.getStreamProviderFor(this, "drag");
    _onDragend = event.getStreamProviderFor(this, "dragend");
    _onDragstart = event.getStreamProviderFor(this, "dragstart");
    _onHeadingChanged = event.getStreamProviderFor(this, "heading_changed");
    _onIdle = event.getStreamProviderFor(this, "idle");
    _onMaptypeidChanged = event.getStreamProviderFor(this, "maptypeid_changed");
    _onMousemove = event.getStreamProviderFor(this, "mousemove", MouseEvent.cast);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", MouseEvent.cast);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", MouseEvent.cast);
    _onProjectionChanged = event.getStreamProviderFor(this, "projection_changed");
    _onResize = event.getStreamProviderFor(this, "resize");
    _onRightclick = event.getStreamProviderFor(this, "rightclick", MouseEvent.cast);
    _onTilesloaded = event.getStreamProviderFor(this, "tilesloaded");
    _onTiltChanged = event.getStreamProviderFor(this, "tilt_changed");
    _onZoomChanged = event.getStreamProviderFor(this, "zoom_changed");
  }

  Stream get onBoundsChanged => _onBoundsChanged.stream;
  Stream get onCenterChanged => _onCenterChanged.stream;
  Stream<MouseEvent> get onClick => _onClick.stream;
  Stream<MouseEvent> get onDblClick => _onDblClick.stream;
  Stream get onDrag => _onDrag.stream;
  Stream get onDragend => _onDragend.stream;
  Stream get onDragstart => _onDragstart.stream;
  Stream get onHeadingChanged => _onHeadingChanged.stream;
  Stream get onIdle => _onIdle.stream;
  Stream get onMaptypeidChanged => _onMaptypeidChanged.stream;
  Stream<MouseEvent> get onMousemove => _onMousemove.stream;
  Stream<MouseEvent> get onMouseout => _onMouseout.stream;
  Stream<MouseEvent> get onMouseover => _onMouseover.stream;
  Stream get onProjectionChanged => _onProjectionChanged.stream;
  Stream get onResize => _onResize.stream;
  Stream<MouseEvent> get onRightclick => _onRightclick.stream;
  Stream get onTilesloaded => _onTilesloaded.stream;
  Stream get onTiltChanged => _onTiltChanged.stream;
  Stream get onZoomChanged => _onZoomChanged.stream;

  void fitBounds(LatLngBounds bounds);
  @forMethods LatLngBounds get bounds;
  @forMethods LatLng get center;
  html.Node get div => jsw.convertElementToDart($unsafe.callMethod('getDiv'));
  @forMethods num get heading;
  dynamic/*MapTypeId|String*/ get mapTypeId {
    final result = $unsafe.callMethod('getMapTypeId');
    return [MapTypeId.find(result), result].firstWhere((e) => e != null, orElse: () => null);
  }
  @forMethods Projection get projection;
  @forMethods StreetViewPanorama get streetView;
  @forMethods num get tilt;
  @forMethods num get zoom;
  void panBy(num x, num y);
  void panTo(LatLng latLng);
  void panToBounds(LatLngBounds latLngBounds);
  @forMethods set center(LatLng latLng);
  @forMethods set heading(num heading);
  @forMethods set mapTypeId(dynamic/*MapTypeId|String*/ mapTypeId);
  @forMethods set options(MapOptions options);
  @forMethods set streetView(StreetViewPanorama panorama);
  @forMethods set tilt(num tilt);
  @forMethods set zoom(num zoom);

  Controls get controls;
  MapTypeRegistry get mapTypes;
  MVCArray<MapType> get overlayMapTypes => MVCArray.castListOfSerializables($unsafe['overlayMapTypes'], MapType.cast);
  set controls(Controls controls);
  set mapTypes(MapTypeRegistry mapTypes);
  set overlayMapTypes(MVCArray<MapType> overlayMapTypes);
}

// TODO make this a Map
@wrapper abstract class Controls extends jsw.TypedJsObject {
  static Controls cast(js.JsObject proxy) => null;

  Controls() : super.fromJsObject(js.jsify([]));

  MVCArray<html.Node> operator[](ControlPosition controlPosition) => MVCArray.cast($unsafe[controlPosition], _nodeTranslator);
  void operator[]=(ControlPosition controlPosition, MVCArray<html.Node> nodes) { $unsafe[controlPosition] = nodes; }
}

final _nodeTranslator = new _NodeTranslator();
class _NodeTranslator extends jsw.Translator<html.Node> {
  _NodeTranslator() : super(jsw.convertElementToDart, jsw.convertElementToJs);
}
