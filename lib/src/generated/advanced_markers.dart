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

import 'dart:async' show Stream, StreamController;
import 'dart:js_interop';

import 'package:web/web.dart' show Element, Event, HTMLElement, Node;

import 'event.dart' show MapsEventListener, event;
import 'map.dart' show Map, MapMouseEvent;
import 'marker.dart' show CollisionBehavior;

part 'advanced_markers/advanced_marker_click_event.dart';
part 'advanced_markers/advanced_marker_element.dart';
part 'advanced_markers/advanced_marker_element_options.dart';
part 'advanced_markers/pin_element.dart';
part 'advanced_markers/pin_element_options.dart';
