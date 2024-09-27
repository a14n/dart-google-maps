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

import 'dart:async' show Stream, StreamController;
import 'dart:js_interop';
import 'dart:js_interop_unsafe' show JSObjectUnsafeUtilExtension;

import 'coordinates.dart' show LatLng, LatLngOrLatLngLiteral, Point, Size;
import 'event.dart' show MVCObject, MapsEventListener, event;
import 'map.dart' show Map, MapMouseEvent;

part 'marker/animation.dart';
part 'marker/collision_behavior.dart';
part 'marker/icon.dart';
part 'marker/marker.dart';
part 'marker/marker_label.dart';
part 'marker/marker_options.dart';
part 'marker/marker_shape.dart';
part 'marker/symbol.dart';
part 'marker/symbol_path.dart';
