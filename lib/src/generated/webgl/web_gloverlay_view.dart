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

part of '../webgl.dart';

@JS('google.maps.WebGLOverlayView')
extension type WebGLOverlayView._(MVCObject _) implements MVCObject {
  external WebGLOverlayView();
  void set onAdd(void Function() onAdd) =>
      setProperty('onAdd'.toJS, onAdd.toJS);
  void set onContextLost(void Function() onContextLost) =>
      setProperty('onContextLost'.toJS, onContextLost.toJS);
  void set onContextRestored(
          void Function(WebGLStateOptions options) onContextRestored) =>
      setProperty('onContextRestored'.toJS, onContextRestored.toJS);
  void set onDraw(void Function(WebGLDrawOptions options) onDraw) =>
      setProperty('onDraw'.toJS, onDraw.toJS);
  void set onRemove(void Function() onRemove) =>
      setProperty('onRemove'.toJS, onRemove.toJS);
  void set onStateUpdate(
          void Function(WebGLStateOptions options) onStateUpdate) =>
      setProperty('onStateUpdate'.toJS, onStateUpdate.toJS);

  @JS('getMap')
  external Map? _getMap();
  Map? get map => _getMap();
  external void requestRedraw();
  external void requestStateUpdate();
  @JS('setMap')
  external void _setMap(Map? map);
  void set map(Map? map) => _setMap(map);
}
