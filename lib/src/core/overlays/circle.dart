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

@JsName('google.maps.Circle')
abstract class _Circle extends MVCObject {
  factory _Circle([CircleOptions opts]) => null;

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds();
  LatLng get center => _getCenter();
  LatLng _getCenter();
  bool get draggable => _getDraggable();
  bool _getDraggable();
  bool get editable => _getEditable();
  bool _getEditable();
  GMap get map => _getMap();
  GMap _getMap();
  num get radius => _getRadius();
  num _getRadius();
  bool get visible => _getVisible();
  bool _getVisible();
  set center(LatLng center) => _setCenter(center);
  void _setCenter(LatLng center);
  set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable);
  set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable);
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  set options(CircleOptions options) => _setOptions(options);
  void _setOptions(CircleOptions options);
  set radius(num radius) => _setRadius(radius);
  void _setRadius(num radius);
  set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible);

  Stream get onCenterChanged =>
      getStream(this, #onCenterChanged, 'center_changed');
  Stream<MouseEvent> get onClick =>
      getStream(this, #onClick, 'click', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick => getStream(
      this, #onDblclick, 'dblclick', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDrag =>
      getStream(this, #onDrag, 'drag', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragend => getStream(
      this, #onDragend, 'dragend', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart => getStream(
      this, #onDragstart, 'dragstart', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMousedown => getStream(
      this, #onMousedown, 'mousedown', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMousemove => getStream(
      this, #onMousemove, 'mousemove', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout => getStream(
      this, #onMouseout, 'mouseout', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover => getStream(
      this, #onMouseover, 'mouseover', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup => getStream(
      this, #onMouseup, 'mouseup', (JsObject o) => MouseEvent.created(o));
  Stream get onRadiusChanged =>
      getStream(this, #onRadiusChanged, 'radius_changed');
  Stream<MouseEvent> get onRightclick => getStream(
      this, #onRightclick, 'rightclick', (JsObject o) => MouseEvent.created(o));
}
