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
library google_maps.drawing;

import 'dart:async' show StreamController;
import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

part 'drawing/drawing_manager.dart';
part 'drawing/drawing_manager_options.dart';
part 'drawing/drawing_control_options.dart';
part 'drawing/overlay_complete_event.dart';
part 'drawing/overlay_type.dart';
