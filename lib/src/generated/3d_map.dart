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

import 'dart:js_interop';

import 'package:web/web.dart' show Event, HTMLElement;

import '/src/js/iterable.dart' show JSIterable;
import 'coordinates.dart'
    show
        LatLngAltitude,
        LatLngAltitudeLiteral,
        LatLngBoundsOrLatLngBoundsLiteral,
        LatLngLiteral,
        Orientation3D,
        Orientation3DLiteral,
        Vector3D,
        Vector3DLiteral;
import 'marker.dart' show CollisionBehavior;
import 'place.dart' show Place;

part '3d_map/altitude_mode.dart';
part '3d_map/camera_options.dart';
part '3d_map/fly_around_animation_options.dart';
part '3d_map/fly_to_animation_options.dart';
part '3d_map/location_click_event.dart';
part '3d_map/map_3_delement.dart';
part '3d_map/map_3_delement_options.dart';
part '3d_map/marker_3_delement.dart';
part '3d_map/marker_3_delement_options.dart';
part '3d_map/marker_3_dinteractive_element.dart';
part '3d_map/marker_3_dinteractive_element_options.dart';
part '3d_map/model_3_delement.dart';
part '3d_map/model_3_delement_options.dart';
part '3d_map/place_click_event.dart';
part '3d_map/polygon_3_delement.dart';
part '3d_map/polygon_3_delement_options.dart';
part '3d_map/polyline_3_delement.dart';
part '3d_map/polyline_3_delement_options.dart';
part '3d_map/steady_change_event.dart';
