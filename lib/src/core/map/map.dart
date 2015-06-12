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

@JsName('google.maps.Map')
abstract class _GMap extends MVCObject {
  external factory _GMap(Node mapDiv, [MapOptions opts]);

  void fitBounds(LatLngBounds bounds);
  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds();
  LatLng get center => _getCenter();
  LatLng _getCenter();
  Node get div => _getDiv();
  Node _getDiv();
  num get heading => _getHeading();
  num _getHeading();
  dynamic /*MapTypeId|String*/ get mapTypeId => (new ChainedCodec()
    ..add(new BiMapCodec<MapTypeId, dynamic>({
      MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
      MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
      MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']['SATELLITE'],
      MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
    }))
    ..add(new IdentityCodec<String>())).decode(_getMapTypeId());
  _getMapTypeId();
  Projection get projection => _getProjection();
  Projection _getProjection();
  StreetViewPanorama get streetView => _getStreetView();
  StreetViewPanorama _getStreetView();
  num get tilt => _getTilt();
  num _getTilt();
  num get zoom => _getZoom();
  num _getZoom();
  void panBy(num x, num y);
  void panTo(LatLng latLng);
  void panToBounds(LatLngBounds latLngBounds);
  void set center(LatLng latlng) => _setCenter(latlng);
  void _setCenter(LatLng latlng);
  void set heading(num heading) => _setHeading(heading);
  void _setHeading(num heading);
  void set mapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) => _setMapTypeId(
      (new ChainedCodec()
    ..add(new BiMapCodec<MapTypeId, dynamic>({
      MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
      MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
      MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']['SATELLITE'],
      MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
    }))
    ..add(new IdentityCodec<String>())).encode(mapTypeId));
  void _setMapTypeId(dynamic /*MapTypeId|String*/ mapTypeId);
  void set options(MapOptions options) => _setOptions(options);
  void _setOptions(MapOptions options);
  void set streetView(StreetViewPanorama panorama) => _setStreetView(panorama);
  void _setStreetView(StreetViewPanorama panorama);
  void set tilt(num tilt) => _setTilt(tilt);
  void _setTilt(num tilt);
  void set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom);

  Controls controls;
  Data data;
  MapTypeRegistry mapTypes;
  dynamic _overlayMapTypes;
  MVCArray<MapType> get overlayMapTypes =>
      (new JsInterfaceCodec<MVCArray<MapType>>(
          (o) => new MVCArray<MapType>.created(o, new JsInterfaceCodec<MapType>(
              (o) => new MapType.created(o))))).decode(_overlayMapTypes);
  void set overlayMapTypes(MVCArray<MapType> overlayMapTypes) {
    _overlayMapTypes = (new JsInterfaceCodec<MVCArray<MapType>>(
            (o) => new MVCArray<MapType>.created(o,
                new JsInterfaceCodec<MapType>((o) => new MapType.created(o)))))
        .encode(overlayMapTypes);
  }
  Stream get onBoundsChanged =>
      getStream(this, #onBoundsChanged, "bounds_changed");
  Stream get onCenterChanged =>
      getStream(this, #onCenterChanged, "center_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick => getStream(
      this, #onDblclick, "dblclick", (JsObject o) => new MouseEvent.created(o));
  Stream get onDrag => getStream(this, #onDrag, "drag");
  Stream get onDragend => getStream(this, #onDragend, "dragend");
  Stream get onDragstart => getStream(this, #onDragstart, "dragstart");
  Stream get onHeadingChanged =>
      getStream(this, #onHeadingChanged, "heading_changed");
  Stream get onIdle => getStream(this, #onIdle, "idle");
  Stream get onMaptypeidChanged =>
      getStream(this, #onMaptypeidChanged, "maptypeid_changed");
  Stream<MouseEvent> get onMousemove => getStream(this, #onMousemove,
      "mousemove", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout => getStream(
      this, #onMouseout, "mouseout", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new MouseEvent.created(o));
  Stream get onProjectionChanged =>
      getStream(this, #onProjectionChanged, "projection_changed");
  Stream get onResize => getStream(this, #onResize, "resize");
  Stream<MouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new MouseEvent.created(o));
  Stream get onTilesloaded => getStream(this, #onTilesloaded, "tilesloaded");
  Stream get onTiltChanged => getStream(this, #onTiltChanged, "tilt_changed");
  Stream get onZoomChanged => getStream(this, #onZoomChanged, "zoom_changed");
}
