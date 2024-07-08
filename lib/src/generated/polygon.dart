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

import 'dart:async' show Stream, StreamController;
import 'dart:js_interop';
import 'dart:js_interop_unsafe' show JSObjectUnsafeUtilExtension;

import 'coordinates.dart'
    show
        CircleLiteral,
        LatLng,
        LatLngBounds,
        LatLngBoundsOrLatLngBoundsLiteral,
        LatLngLiteral,
        LatLngOrLatLngLiteral;
import 'event.dart' show MVCArray, MVCObject, MapsEventListener, event;
import 'map.dart' show Map, MapMouseEvent;
import 'marker.dart' show Symbol;

part 'polygon/circle.dart';
part 'polygon/circle_options.dart';
part 'polygon/icon_sequence.dart';
part 'polygon/poly_mouse_event.dart';
part 'polygon/polygon.dart';
part 'polygon/polygon_options.dart';
part 'polygon/polyline.dart';
part 'polygon/polyline_options.dart';
part 'polygon/rectangle.dart';
part 'polygon/rectangle_options.dart';
part 'polygon/stroke_position.dart';
