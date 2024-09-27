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

part of '../control.dart';

@JS('google.maps.ControlPosition')
extension type ControlPosition._(JSAny _) implements JSAny {
  external static ControlPosition get BLOCK_END_INLINE_CENTER;
  external static ControlPosition get BLOCK_END_INLINE_END;
  external static ControlPosition get BLOCK_END_INLINE_START;
  external static ControlPosition get BLOCK_START_INLINE_CENTER;
  external static ControlPosition get BLOCK_START_INLINE_END;
  external static ControlPosition get BLOCK_START_INLINE_START;
  external static ControlPosition get BOTTOM_CENTER;
  external static ControlPosition get BOTTOM_LEFT;
  external static ControlPosition get BOTTOM_RIGHT;
  external static ControlPosition get INLINE_END_BLOCK_CENTER;
  external static ControlPosition get INLINE_END_BLOCK_END;
  external static ControlPosition get INLINE_END_BLOCK_START;
  external static ControlPosition get INLINE_START_BLOCK_CENTER;
  external static ControlPosition get INLINE_START_BLOCK_END;
  external static ControlPosition get INLINE_START_BLOCK_START;
  external static ControlPosition get LEFT_BOTTOM;
  external static ControlPosition get LEFT_CENTER;
  external static ControlPosition get LEFT_TOP;
  external static ControlPosition get RIGHT_BOTTOM;
  external static ControlPosition get RIGHT_CENTER;
  external static ControlPosition get RIGHT_TOP;
  external static ControlPosition get TOP_CENTER;
  external static ControlPosition get TOP_LEFT;
  external static ControlPosition get TOP_RIGHT;
}
