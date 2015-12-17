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

@JsName('google.maps.Marker')
abstract class _Marker extends MVCObject {
  external static get MAX_ZINDEX;

  external factory _Marker([MarkerOptions opts]);

  Animation get animation => _getAnimation();
  Animation _getAnimation();
  Attribution get attribution => _getAttribution();
  Attribution _getAttribution();
  bool get clickable => _getClickable();
  bool _getClickable();
  String get cursor => _getCursor();
  String _getCursor();
  bool get draggable => _getDraggable();
  bool _getDraggable();
  dynamic /*String|Icon|GSymbol*/ get icon => (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<Icon>((o) => new Icon.created(o)))
    ..add(new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o))))
      .decode(_getIcon());
  _getIcon();
  MarkerLabel get label => _getLabel();
  MarkerLabel _getLabel();
  dynamic /*GMap|StreetViewPanorama*/ get map => (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
            (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']))))
      .decode(_getMap());
  _getMap();
  num get opacity => _getOpacity();
  num _getOpacity();
  MarkerPlace get place => _getPlace();
  MarkerPlace _getPlace();
  LatLng get position => _getPosition();
  LatLng _getPosition();
  MarkerShape get shape => _getShape();
  MarkerShape _getShape();
  String get title => _getTitle();
  String _getTitle();
  bool get visible => _getVisible();
  bool _getVisible();
  num get zIndex => _getZIndex();
  num _getZIndex();
  void set animation(Animation animation) => _setAnimation(animation);
  void _setAnimation(Animation animation);
  void set attribution(Attribution attribution) => _setAttribution(attribution);
  void _setAttribution(Attribution attribution);
  void set clickable(bool flag) => _setClickable(flag);
  void _setClickable(bool flag);
  void set cursor(String cursor) => _setCursor(cursor);
  void _setCursor(String cursor);
  void set draggable(bool flag) => _setDraggable(flag);
  void _setDraggable(bool flag);
  void set icon(dynamic /*String|Icon|GSymbol*/ icon) => _setIcon(
      (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<Icon>((o) => new Icon.created(o)))
    ..add(new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o))))
      .encode(icon));
  void _setIcon(dynamic /*String|Icon|GSymbol*/ icon);
  void set label(dynamic /*String|MarkerLabel*/ label) => _setLabel(
      (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<MarkerLabel>((o) => new MarkerLabel.created(o))))
      .encode(label));
  void _setLabel(dynamic /*String|MarkerLabel*/ label);
  void set map(dynamic /*GMap|StreetViewPanorama*/ map) => _setMap(
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
        (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']))))
          .encode(map));
  void _setMap(dynamic /*GMap|StreetViewPanorama*/ map);
  void set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity);
  void set options(MarkerOptions options) => _setOptions(options);
  void _setOptions(MarkerOptions options);
  void set place(MarkerPlace place) => _setPlace(place);
  void _setPlace(MarkerPlace place);
  void set position(LatLng latlng) => _setPosition(latlng);
  void _setPosition(LatLng latlng);
  void set shape(MarkerShape shape) => _setShape(shape);
  void _setShape(MarkerShape shape);
  void set title(String title) => _setTitle(title);
  void _setTitle(String title);
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible);
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex);

  Stream get onAnimationChanged =>
      getStream(this, #onAnimationChanged, "animation_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream get onClickableChanged =>
      getStream(this, #onClickableChanged, "clickable_changed");
  Stream get onCursorChanged =>
      getStream(this, #onCursorChanged, "cursor_changed");
  Stream<MouseEvent> get onDblclick => getStream(
      this, #onDblclick, "dblclick", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDrag => getStream(
      this, #onDrag, "drag", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragend => getStream(
      this, #onDragend, "dragend", (JsObject o) => new MouseEvent.created(o));
  Stream get onDraggableChanged =>
      getStream(this, #onDraggableChanged, "draggable_changed");
  Stream<MouseEvent> get onDragstart => getStream(this, #onDragstart,
      "dragstart", (JsObject o) => new MouseEvent.created(o));
  Stream get onFlatChanged => getStream(this, #onFlatChanged, "flat_changed");
  Stream get onIconChanged => getStream(this, #onIconChanged, "icon_changed");
  Stream<MouseEvent> get onMousedown => getStream(this, #onMousedown,
      "mousedown", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout => getStream(
      this, #onMouseout, "mouseout", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup => getStream(
      this, #onMouseup, "mouseup", (JsObject o) => new MouseEvent.created(o));
  Stream get onPositionChanged =>
      getStream(this, #onPositionChanged, "position_changed");
  Stream<MouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new MouseEvent.created(o));
  Stream get onShapeChanged =>
      getStream(this, #onShapeChanged, "shape_changed");
  Stream get onTitleChanged =>
      getStream(this, #onTitleChanged, "title_changed");
  Stream get onVisibleChanged =>
      getStream(this, #onVisibleChanged, "visible_changed");
  Stream get onZindexChanged =>
      getStream(this, #onZindexChanged, "zindex_changed");
}
