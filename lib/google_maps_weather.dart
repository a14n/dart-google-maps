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

library google_maps_weather;

import 'dart:async';
import 'dart:js' as js;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart' as jsw;

part 'src/generated/library/weather/cloud_layer.dart';
part 'src/generated/library/weather/weather_layer.dart';
part 'src/generated/library/weather/weather_layer_options.dart';
part 'src/generated/library/weather/temperature_unit.dart';
part 'src/generated/library/weather/wind_speed_unit.dart';
part 'src/generated/library/weather/label_color.dart';
part 'src/generated/library/weather/weather_mouse_event.dart';
part 'src/generated/library/weather/weather_feature.dart';
part 'src/generated/library/weather/weather_conditions.dart';
part 'src/generated/library/weather/weather_forecast.dart';
