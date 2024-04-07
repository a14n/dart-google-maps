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

part of '../map.dart';

@JS('google.maps.MapElement')
extension type MapElement._(HTMLElement _)
    implements HTMLElement, MapElementOptions {
  external MapElement([
    MapElementOptions? options,
  ]);
  external LatLngOrLatLngLiteral? center;
  external bool? headingInteractionDisabled;
  external Map innerMap;
  external String? mapId;
  external RenderingType? renderingType;
  external bool? tiltInteractionDisabled;
  external num? zoom;
  external void addEventListener(
    String type,
    JSAny /*EventListener|EventListenerObject*/ listener, [
    JSAny? /*(boolean|AddEventListenerOptions)?*/ options,
  ]);
  external void removeEventListener(
    String type,
    JSAny /*EventListener|EventListenerObject*/ listener, [
    JSAny? /*(boolean|EventListenerOptions)?*/ options,
  ]);
}
