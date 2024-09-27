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

import 'dart:js_interop';
import 'coordinates.dart' show LatLng, LatLngOrLatLngLiteral, Point;
import 'dart:js_interop_unsafe' show JSObjectUnsafeUtilExtension;
import 'event.dart' show MVCObject;
import 'map.dart' show Map, VisibleRegion;
import 'package:web/web.dart' show Element;
part 'overlay_view/map_canvas_projection.dart';
part 'overlay_view/map_panes.dart';
part 'overlay_view/overlay_view.dart';
