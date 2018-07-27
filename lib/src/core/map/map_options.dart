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

@anonymous
abstract class _MapOptions implements JsInterface {
  factory _MapOptions() => null;

  String backgroundColor;
  LatLng center;
  bool clickableIcons;
  bool disableDefaultUI;
  bool disableDoubleClickZoom;
  @Deprecated(
      "To disable dragging of the map on desktop devices, use the gestureHandling property and set it to 'none'")
  bool draggable;
  String draggableCursor;
  String draggingCursor;
  bool fullscreenControl;
  FullscreenControlOptions fullscreenControlOptions;
  String gestureHandling;
  num heading;
  bool keyboardShortcuts;
  bool mapTypeControl;
  MapTypeControlOptions mapTypeControlOptions;
  dynamic _mapTypeId;
  dynamic /*MapTypeId|String*/ get mapTypeId => (ChainedCodec()
        ..add(BiMapCodec<MapTypeId, dynamic>({
          MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
          MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
          MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
              ['SATELLITE'],
          MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
        }))
        ..add(IdentityCodec<String>()))
      .decode(_mapTypeId);
  set mapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) {
    _mapTypeId = (ChainedCodec()
          ..add(BiMapCodec<MapTypeId, dynamic>({
            MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
            MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']
                ['ROADMAP'],
            MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
                ['SATELLITE'],
            MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
          }))
          ..add(IdentityCodec<String>()))
        .encode(mapTypeId);
  }

  num maxZoom;
  num minZoom;
  bool noClear;
  bool overviewMapControl;
  OverviewMapControlOptions overviewMapControlOptions;
  bool panControl;
  PanControlOptions panControlOptions;
  bool rotateControl;
  RotateControlOptions rotateControlOptions;
  bool scaleControl;
  ScaleControlOptions scaleControlOptions;
  bool scrollwheel;
  StreetViewPanorama streetView;
  bool streetViewControl;
  StreetViewControlOptions streetViewControlOptions;
  List<MapTypeStyle> styles;
  num tilt;
  num zoom;
  bool zoomControl;
  ZoomControlOptions zoomControlOptions;
}
