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
import 'dart:js_interop_unsafe' show JSObjectUnsafeUtilExtension;

import 'package:web/web.dart' show Document, Element, WebGLRenderingContext;

import 'coordinates.dart'
    show LatLng, LatLngAltitude, LatLngAltitudeLiteral, Point;
import 'event.dart' show MVCObject;
import 'map.dart' show CameraOptions, Map;

part 'webgl/camera_params.dart';
part 'webgl/coordinate_transformer.dart';
part 'webgl/web_gldraw_options.dart';
part 'webgl/web_gloverlay_view.dart';
part 'webgl/web_glstate_options.dart';
