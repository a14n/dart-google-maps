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

part of '../google_maps_core.dart';

@JsName('google.maps.OverlayView')
abstract class _OverlayView extends MVCObject {
  factory _OverlayView() => $js;
  void Function() draw;

  // synthetic getter for getMap
  Object /*GMap|StreetViewPanorama*/ get map => _getMap();
  @JsName('getMap')
  Object /*GMap|StreetViewPanorama*/ _getMap();

  // synthetic getter for getPanes
  MapPanes get panes => _getPanes();
  @JsName('getPanes')
  MapPanes _getPanes();

  // synthetic getter for getProjection
  MapCanvasProjection get projection => _getProjection();
  @JsName('getProjection')
  MapCanvasProjection _getProjection();

  void Function() onAdd;
  void Function() onRemove;

  // synthetic setter for setMap
  set map(Object /*GMap|StreetViewPanorama*/ map) => _setMap(map);
  @JsName('setMap')
  void _setMap(Object /*GMap|StreetViewPanorama*/ map);
}
