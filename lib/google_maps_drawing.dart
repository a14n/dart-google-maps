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

library google_maps_drawing;

import 'dart:async';

import 'package:js/js.dart' as js;
import 'package:js/js_wrapping.dart' as jsw;
import 'package:meta/meta.dart';

import 'google_maps.dart';
import 'src/utils.dart';

part 'src/library/drawing/drawing_manager.dart';
part 'src/library/drawing/drawing_manager_options.dart';
part 'src/library/drawing/drawing_control_options.dart';
part 'src/library/drawing/overlay_complete_event.dart';
part 'src/library/drawing/overlay_type.dart';

class CircleCompleteEventListenerAdder extends EventListenerAdder {
  CircleCompleteEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Circle circle)) { super.add((o) => handler(Circle.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(Circle circle)) => super.addTemporary((o) => handler(Circle.cast(o)));
}

class MarkerCompleteEventListenerAdder extends EventListenerAdder {
  MarkerCompleteEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Marker marker)) { super.add((o) => handler(Marker.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(Marker marker)) => super.addTemporary((o) => handler(Marker.cast(o)));
}

class OverlayCompleteEventListenerAdder extends EventListenerAdder {
  OverlayCompleteEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(OverlayCompleteEvent e)) { super.add((o) => handler(OverlayCompleteEvent.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(OverlayCompleteEvent e)) => super.addTemporary((o) => handler(OverlayCompleteEvent.cast(o)));
}

class PolygonCompleteEventListenerAdder extends EventListenerAdder {
  PolygonCompleteEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Polygon polygon)) { super.add((o) => handler(Polygon.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(Polygon polygon)) => super.addTemporary((o) => handler(Polygon.cast(o)));
}

class PolylineCompleteEventListenerAdder extends EventListenerAdder {
  PolylineCompleteEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Polyline polyline)) { super.add((o) => handler(Polyline.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(Polyline polyline)) => super.addTemporary((o) => handler(Polyline.cast(o)));
}

class RectangleCompleteEventListenerAdder extends EventListenerAdder {
  RectangleCompleteEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Rectangle rectangle)) { super.add((o) => handler(Rectangle.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(Rectangle rectangle)) => super.addTemporary((o) => handler(Rectangle.cast(o)));
}

