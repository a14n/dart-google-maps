// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../overlay_view.dart';

@JS('google.maps.OverlayView')
extension type OverlayView._(MVCObject _) implements MVCObject {
  external OverlayView();
  set onAdd(void Function() onAdd) => setProperty('onAdd'.toJS, onAdd.toJS);
  set onRemove(void Function() onRemove) =>
      setProperty('onRemove'.toJS, onRemove.toJS);
  set draw(void Function() draw) => setProperty('draw'.toJS, draw.toJS);

  @JS('getMap')
  external JSAny? /*Map|StreetViewPanorama|null*/ _getMap();
  JSAny? /*Map|StreetViewPanorama|null*/ get map => _getMap();
  @JS('getPanes')
  external MapPanes? _getPanes();
  MapPanes? get panes => _getPanes();
  @JS('getProjection')
  external MapCanvasProjection _getProjection();
  MapCanvasProjection get projection => _getProjection();
  @JS('setMap')
  external void _setMap(JSAny? /*(Map|StreetViewPanorama)?*/ map);
  set map(JSAny? /*(Map|StreetViewPanorama)?*/ map) => _setMap(map);
  external static void preventMapHitsAndGesturesFrom(
    Element element,
  );
  external static void preventMapHitsFrom(
    Element element,
  );
}
