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
  factory _GMap(Node mapDiv, [MapOptions opts]) => null;

  void fitBounds(LatLngBounds bounds, [dynamic /*num|Padding*/ padding]);
  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds();
  LatLng get center => _getCenter();
  LatLng _getCenter();
  bool get clickableIcons => _getClickableIcons();
  bool _getClickableIcons();
  Node get div => _getDiv();
  Node _getDiv();
  num get heading => _getHeading();
  num _getHeading();
  dynamic /*MapTypeId|String*/ get mapTypeId => (ChainedCodec()
        ..add(BiMapCodec<MapTypeId, dynamic>({
          MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
          MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
          MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
              ['SATELLITE'],
          MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
        }))
        ..add(IdentityCodec<String>()))
      .decode(_getMapTypeId());
  dynamic _getMapTypeId();
  Projection get projection => _getProjection();
  Projection _getProjection();
  StreetViewPanorama get streetView => _getStreetView();
  StreetViewPanorama _getStreetView();
  num get tilt => _getTilt();
  num _getTilt();
  int get zoom => _getZoom();
  int _getZoom();
  void panBy(num x, num y);
  void panTo(LatLng latLng);
  void panToBounds(LatLngBounds latLngBounds);
  set center(LatLng latlng) => _setCenter(latlng);
  void _setCenter(LatLng latlng);
  set clickableIcons(bool value) => _setClickableIcons(value);
  void _setClickableIcons(bool value);
  set heading(num heading) => _setHeading(heading);
  void _setHeading(num heading);
  set mapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) =>
      _setMapTypeId((ChainedCodec()
            ..add(BiMapCodec<MapTypeId, dynamic>({
              MapTypeId.HYBRID: context['google']['maps']['MapTypeId']
                  ['HYBRID'],
              MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']
                  ['ROADMAP'],
              MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
                  ['SATELLITE'],
              MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']
                  ['TERRAIN']
            }))
            ..add(IdentityCodec<String>()))
          .encode(mapTypeId));
  void _setMapTypeId(dynamic /*MapTypeId|String*/ mapTypeId);
  set options(MapOptions options) => _setOptions(options);
  void _setOptions(MapOptions options);
  set streetView(StreetViewPanorama panorama) => _setStreetView(panorama);
  void _setStreetView(StreetViewPanorama panorama);
  set tilt(num tilt) => _setTilt(tilt);
  void _setTilt(num tilt);
  set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom);

  Controls controls;
  Data data;
  MapTypeRegistry mapTypes;
  dynamic _overlayMapTypes;
  MVCArray<MapType> get overlayMapTypes =>
      JsInterfaceCodec<MVCArray<MapType>>((o) => MVCArray<MapType>.created(
              o, JsInterfaceCodec<MapType>((o) => MapType.created(o))))
          .decode(_overlayMapTypes as JsObject);
  set overlayMapTypes(MVCArray<MapType> overlayMapTypes) {
    _overlayMapTypes = JsInterfaceCodec<MVCArray<MapType>>((o) =>
            MVCArray<MapType>.created(
                o, JsInterfaceCodec<MapType>((o) => MapType.created(o))))
        .encode(overlayMapTypes);
  }

  Stream get onBoundsChanged => getStream(this, 'bounds_changed');
  Stream get onCenterChanged => getStream(this, 'center_changed');
  Stream<MouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => MouseEvent.created(o));
  Stream get onDrag => getStream(this, 'drag');
  Stream get onDragend => getStream(this, 'dragend');
  Stream get onDragstart => getStream(this, 'dragstart');
  Stream get onHeadingChanged => getStream(this, 'heading_changed');
  Stream get onIdle => getStream(this, 'idle');
  Stream get onMaptypeidChanged => getStream(this, 'maptypeid_changed');
  Stream<MouseEvent> get onMousemove =>
      getStream(this, 'mousemove', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout =>
      getStream(this, 'mouseout', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover =>
      getStream(this, 'mouseover', (JsObject o) => MouseEvent.created(o));
  Stream get onProjectionChanged => getStream(this, 'projection_changed');
  Stream get onResize => getStream(this, 'resize');
  Stream<MouseEvent> get onRightclick =>
      getStream(this, 'rightclick', (JsObject o) => MouseEvent.created(o));
  Stream get onTilesloaded => getStream(this, 'tilesloaded');
  Stream get onTiltChanged => getStream(this, 'tilt_changed');
  Stream get onZoomChanged => getStream(this, 'zoom_changed');
}
