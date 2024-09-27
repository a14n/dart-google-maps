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

import 'package:web/web.dart' show Document, Element;

import 'coordinates.dart'
    show
        LatLng,
        LatLngBounds,
        LatLngBoundsOrLatLngBoundsLiteral,
        LatLngOrLatLngLiteral,
        Point,
        Size;
import 'event.dart' show MVCObject, MapsEventListener, event;
import 'map.dart' show Map, MapMouseEvent, MapTypeStyle;

part 'image_overlay/ground_overlay.dart';
part 'image_overlay/ground_overlay_options.dart';
part 'image_overlay/image_map_type.dart';
part 'image_overlay/image_map_type_options.dart';
part 'image_overlay/map_type.dart';
part 'image_overlay/projection.dart';
part 'image_overlay/styled_map_type.dart';
part 'image_overlay/styled_map_type_options.dart';
