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

import 'package:web/web.dart' show Document, Element, Event, HTMLElement;

import 'control.dart'
    show
        ControlPosition,
        FullscreenControlOptions,
        MotionTrackingControlOptions,
        PanControlOptions,
        ZoomControlOptions;
import 'coordinates.dart' show LatLng, LatLngOrLatLngLiteral, Point, Size;
import 'event.dart' show MVCArray, MVCObject, MapsEventListener, event;
import 'map.dart' show Map;
import 'street_view_service.dart'
    show
        StreetViewLink,
        StreetViewLocation,
        StreetViewPanoramaData,
        StreetViewStatus;

part 'street_view/pano_provider_options.dart';
part 'street_view/street_view_address_control_options.dart';
part 'street_view/street_view_coverage_layer.dart';
part 'street_view/street_view_panorama.dart';
part 'street_view/street_view_panorama_options.dart';
part 'street_view/street_view_pov.dart';
part 'street_view/street_view_tile_data.dart';
