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
import '/src/js/error.dart' show JSError;
import 'dart:async' show Stream, StreamController;
import 'event.dart' show MapsEventListener, event;
import 'journey_sharing_ui_customization.dart' show MarkerSetup, PolylineSetup;
import 'map.dart' show Map, MapOptions;
import 'marker.dart' show Marker;
import 'package:web/web.dart' show Element;
import 'polygon.dart' show Polyline;
part 'journey_sharing_map_view/automatic_viewport_mode.dart';
part 'journey_sharing_map_view/journey_sharing_map_view.dart';
part 'journey_sharing_map_view/journey_sharing_map_view_options.dart';
part 'journey_sharing_map_view/location_provider.dart';
part 'journey_sharing_map_view/polling_location_provider.dart';
part 'journey_sharing_map_view/polling_location_provider_is_polling_change_event.dart';
