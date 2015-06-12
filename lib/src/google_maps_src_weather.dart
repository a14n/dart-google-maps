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

library google_maps.src.weather;

import 'dart:async' show Stream;

import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/util/async.dart';
import 'package:google_maps/google_maps.dart';

part 'google_maps_src_weather.g.dart';

part 'library/weather/cloud_layer.dart';
part 'library/weather/weather_layer.dart';
part 'library/weather/weather_layer_options.dart';
part 'library/weather/temperature_unit.dart';
part 'library/weather/wind_speed_unit.dart';
part 'library/weather/label_color.dart';
part 'library/weather/weather_mouse_event.dart';
part 'library/weather/weather_feature.dart';
part 'library/weather/weather_conditions.dart';
part 'library/weather/weather_forecast.dart';
