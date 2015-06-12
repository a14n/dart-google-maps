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

@JsName('google.maps.Polygon')
abstract class _Polygon extends MVCObject {
  external factory _Polygon([PolygonOptions opts]);

  bool get draggable => _getDraggable();
  bool _getDraggable();
  bool get editable => _getEditable();
  bool _getEditable();
  GMap get map => _getMap();
  GMap _getMap();
  MVCArray<LatLng> get path =>
      (new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) => new MVCArray<LatLng>.created(o,
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(context['google']['maps']['LatLng'])))))
          .decode(_getPath());
  _getPath();
  MVCArray<MVCArray<LatLng>> get paths =>
      (new JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
              (o) =>
                  new MVCArray<MVCArray<LatLng>>.created(o,
                      new JsInterfaceCodec<MVCArray<LatLng>>(
                          (o) => new MVCArray<LatLng>.created(o,
                              new JsInterfaceCodec<LatLng>(
                                  (o) => new LatLng.created(o),
                                  (o) => o != null &&
                                      o.instanceof(context['google']['maps'][
                                          'LatLng'])))))))
          .decode(
              _getPaths());
  _getPaths();
  bool get visible => _getVisible();
  bool _getVisible();
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable);
  void set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable);
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  void set options(PolygonOptions options) => _setOptions(options);
  void _setOptions(PolygonOptions options);
  void set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) =>
      _setPath((new ChainedCodec()
    ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
        (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
            (o) => new LatLng.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['LatLng'])))))
      .encode(path));
  void _setPath(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path);
  void set paths(
          dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) =>
      _setPaths(
          (new ChainedCodec()
    ..add(
        new JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
            (o) =>
                new MVCArray<MVCArray<LatLng>>.created(o,
                    new JsInterfaceCodec<MVCArray<LatLng>>(
                        (o) => new MVCArray<LatLng>.created(o,
                            new JsInterfaceCodec<LatLng>(
                                (o) => new LatLng.created(o),
                                (o) => o != null &&
                                    o.instanceof(context['google']['maps'][
                                        'LatLng'])))))))
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) =>
                new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                    (o) => new LatLng.created(o), (o) => o != null &&
                        o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(
        new JsListCodec<List<LatLng>>(
            new JsListCodec<LatLng>(
                new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                    (o) => o != null &&
                        o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(
        new JsListCodec<LatLng>(
            new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o),
                (o) => o != null &&
                    o.instanceof(context['google']['maps']['LatLng'])))))
              .encode(paths));
  void _setPaths(
      dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths);
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible);

  Stream<PolyMouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onDblclick => getStream(this, #onDblclick,
      "dblclick", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<MouseEvent> get onDrag => getStream(
      this, #onDrag, "drag", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragend => getStream(
      this, #onDragend, "dragend", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart => getStream(this, #onDragstart,
      "dragstart", (JsObject o) => new MouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousedown => getStream(this, #onMousedown,
      "mousedown", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousemove => getStream(this, #onMousemove,
      "mousemove", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseout => getStream(this, #onMouseout,
      "mouseout", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseup => getStream(this, #onMouseup, "mouseup",
      (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new PolyMouseEvent.created(o));
}
