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

@JS()
library google_maps.local_context;

import 'dart:async' show StreamController;
import 'dart:html' show Element;
import 'package:js_wrapping/js_wrapping.dart';
import 'google_maps_core.dart';

part 'google_maps_local_context.g.dart';

part 'local_context/local_context_map_view.dart';
part 'local_context/local_context_map_view_options.dart';
part 'local_context/map_directions_options.dart';
part 'local_context/map_directions_options_literal.dart';
part 'local_context/pin_options.dart';
part 'local_context/place_chooser_view_setup_options.dart';
part 'local_context/place_chooser_layout_mode.dart';
part 'local_context/place_chooser_position.dart';
part 'local_context/place_details_view_setup_options.dart';
part 'local_context/place_details_layout_mode.dart';
part 'local_context/place_details_position.dart';
part 'local_context/place_type_preference.dart';
