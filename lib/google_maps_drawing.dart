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

import 'package:js/js.dart' as js;
import 'js_wrap.dart' as jsw;
import 'google_maps.dart';

part 'src/library/drawing/drawing_manager.dart';
part 'src/library/drawing/drawing_manager_options.dart';
part 'src/library/drawing/drawing_control_options.dart';
part 'src/library/drawing/overlay_complete_event.dart';
part 'src/library/drawing/overlay_type.dart';

class CircleCompleteEventListenerAdder extends EventListenerAdder {
  CircleCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Circle circle)) { super.add((e) => handler(e.map((e) => new Circle.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(Circle circle)) => super.addTemporary((e) => handler(e.map((e) => new Circle.fromJsProxy(e)).value));
}

class MarkerCompleteEventListenerAdder extends EventListenerAdder {
  MarkerCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Marker marker)) { super.add((e) => handler(e.map((e) => new Marker.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(Marker marker)) => super.addTemporary((e) => handler(e.map((e) => new Marker.fromJsProxy(e)).value));
}

class OverlayCompleteEventListenerAdder extends EventListenerAdder {
  OverlayCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(OverlayCompleteEvent e)) { super.add((e) => handler(e.map((e) => new OverlayCompleteEvent.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(OverlayCompleteEvent e)) => super.addTemporary((e) => handler(e.map((e) => new OverlayCompleteEvent.fromJsProxy(e)).value));
}

class PolygonCompleteEventListenerAdder extends EventListenerAdder {
  PolygonCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Polygon polygon)) { super.add((e) => handler(e.map((e) => new Polygon.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(Polygon polygon)) => super.addTemporary((e) => handler(e.map((e) => new Polygon.fromJsProxy(e)).value));
}

class PolylineCompleteEventListenerAdder extends EventListenerAdder {
  PolylineCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Polyline polyline)) { super.add((e) => handler(e.map((e) => new Polyline.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(Polyline polyline)) => super.addTemporary((e) => handler(e.map((e) => new Polyline.fromJsProxy(e)).value));
}

class RectangleCompleteEventListenerAdder extends EventListenerAdder {
  RectangleCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Rectangle rectangle)) { super.add((e) => handler(e.map((e) => new Rectangle.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(Rectangle rectangle)) => super.addTemporary((e) => handler(e.map((e) => new Rectangle.fromJsProxy(e)).value));
}

