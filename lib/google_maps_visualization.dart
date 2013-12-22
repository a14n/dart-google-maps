// Copyright (c) 2012, Alexandre Ardhuin
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

library google_maps_visualization;

import 'dart:async';
import 'dart:js' as js;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart' as jsw;

part 'src/generated/library/visualization/maps_engine_layer.dart';
part 'src/generated/library/visualization/maps_engine_layer_options.dart';
part 'src/generated/library/visualization/maps_engine_layer_properties.dart';
part 'src/generated/library/visualization/maps_engine_mouse_event.dart';
part 'src/generated/library/visualization/maps_engine_status.dart';
part 'src/generated/library/visualization/dynamic_maps_engine_layer.dart';
part 'src/generated/library/visualization/dynamic_maps_engine_layer_options.dart';
part 'src/generated/library/visualization/dynamic_maps_engine_mouse_event.dart';
part 'src/generated/library/visualization/feature_style.dart';
part 'src/generated/library/visualization/heatmap_layer.dart';
part 'src/generated/library/visualization/heatmap_layer_options.dart';
part 'src/generated/library/visualization/weighted_location.dart';
part 'src/generated/library/visualization/demographics_layer.dart';
part 'src/generated/library/visualization/demographics_layer_options.dart';
part 'src/generated/library/visualization/demographics_query.dart';
part 'src/generated/library/visualization/demographics_style.dart';
part 'src/generated/library/visualization/demographics_polygon_options.dart';
part 'src/generated/library/visualization/demographics_property_style.dart';
