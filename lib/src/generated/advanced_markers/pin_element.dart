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

part of '../advanced_markers.dart';

@JS('google.maps.marker.PinElement')
extension type PinElement._(HTMLElement _)
    implements HTMLElement, PinElementOptions {
  external PinElement([
    PinElementOptions? options,
  ]);
  external String? background;
  external String? borderColor;
  external HTMLElement element;
  external JSAny? /*(string|Element|URL)?*/ glyph;
  external String? glyphColor;
  external num? scale;
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
