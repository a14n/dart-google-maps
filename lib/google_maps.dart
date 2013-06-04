// Copyright (c) 2012, Alexandre Ardhuin
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

library google_maps;

import 'dart:async';
import 'dart:html' as html;

import 'package:js/js.dart' as js;
import 'package:js/js_wrapping.dart' as jsw;
import 'package:meta/meta.dart';

import 'src/utils.dart';

part 'src/core/map/map.dart';
part 'src/core/map/map_options.dart';
part 'src/core/map/map_type_id.dart';

part 'src/core/controls/map_type_control_options.dart';
part 'src/core/controls/map_type_control_style.dart';
part 'src/core/controls/overview_map_control_options.dart';
part 'src/core/controls/pan_control_options.dart';
part 'src/core/controls/rotate_control_options.dart';
part 'src/core/controls/scale_control_options.dart';
part 'src/core/controls/scale_control_style.dart';
part 'src/core/controls/street_view_control_options.dart';
part 'src/core/controls/zoom_control_options.dart';
part 'src/core/controls/zoom_control_style.dart';
part 'src/core/controls/control_position.dart';

part 'src/core/overlays/marker.dart';
part 'src/core/overlays/marker_options.dart';
part 'src/core/overlays/marker_image.dart';
part 'src/core/overlays/icon.dart';
part 'src/core/overlays/marker_shape.dart';
part 'src/core/overlays/symbol.dart';
part 'src/core/overlays/symbol_path.dart';
part 'src/core/overlays/animation.dart';
part 'src/core/overlays/info_window.dart';
part 'src/core/overlays/info_window_options.dart';
part 'src/core/overlays/polyline.dart';
part 'src/core/overlays/polyline_options.dart';
part 'src/core/overlays/icon_sequence.dart';
part 'src/core/overlays/polygon.dart';
part 'src/core/overlays/polygon_options.dart';
part 'src/core/overlays/poly_mouse_event.dart';
part 'src/core/overlays/rectangle.dart';
part 'src/core/overlays/rectangle_options.dart';
part 'src/core/overlays/circle.dart';
part 'src/core/overlays/circle_options.dart';
part 'src/core/overlays/stroke_position.dart';
part 'src/core/overlays/ground_overlay.dart';
part 'src/core/overlays/ground_overlay_options.dart';
part 'src/core/overlays/overlay_view.dart';
part 'src/core/overlays/map_panes.dart';
part 'src/core/overlays/map_canvas_projection.dart';

part 'src/core/services/geocoder.dart';
part 'src/core/services/geocoder_request.dart';
part 'src/core/services/geocoder_status.dart';
part 'src/core/services/geocoder_result.dart';
part 'src/core/services/geocoder_address_component.dart';
part 'src/core/services/geocoder_geometry.dart';
part 'src/core/services/geocoder_location_type.dart';
part 'src/core/services/directions_renderer.dart';
part 'src/core/services/directions_renderer_options.dart';
part 'src/core/services/directions_service.dart';
part 'src/core/services/directions_request.dart';
part 'src/core/services/travel_mode.dart';
part 'src/core/services/unit_system.dart';
part 'src/core/services/transit_options.dart';
part 'src/core/services/directions_waypoint.dart';
part 'src/core/services/directions_status.dart';
part 'src/core/services/directions_result.dart';
part 'src/core/services/directions_route.dart';
part 'src/core/services/directions_leg.dart';
part 'src/core/services/directions_step.dart';
part 'src/core/services/distance.dart';
part 'src/core/services/duration.dart';
part 'src/core/services/time.dart';
part 'src/core/services/transit_details.dart';
part 'src/core/services/transit_stop.dart';
part 'src/core/services/transit_line.dart';
part 'src/core/services/transit_agency.dart';
part 'src/core/services/transit_vehicle.dart';
part 'src/core/services/vehicle_type.dart';
part 'src/core/services/elevation_service.dart';
part 'src/core/services/location_elevation_request.dart';
part 'src/core/services/path_elevation_request.dart';
part 'src/core/services/elevation_result.dart';
part 'src/core/services/elevation_status.dart';
part 'src/core/services/max_zoom_service.dart';
part 'src/core/services/max_zoom_result.dart';
part 'src/core/services/max_zoom_status.dart';
part 'src/core/services/distance_matrix_service.dart';
part 'src/core/services/distance_matrix_request.dart';
part 'src/core/services/distance_matrix_response.dart';
part 'src/core/services/distance_matrix_response_row.dart';
part 'src/core/services/distance_matrix_response_element.dart';
part 'src/core/services/distance_matrix_status.dart';
part 'src/core/services/distance_matrix_element_status.dart';

part 'src/core/map_types/map_type.dart';
part 'src/core/map_types/map_type_registry.dart';
part 'src/core/map_types/projection.dart';
part 'src/core/map_types/image_map_type.dart';
part 'src/core/map_types/image_map_type_options.dart';
part 'src/core/map_types/styled_map_type.dart';
part 'src/core/map_types/styled_map_type_options.dart';
part 'src/core/map_types/map_type_style.dart';
part 'src/core/map_types/map_type_style_feature_type.dart';
part 'src/core/map_types/map_type_style_element_type.dart';
part 'src/core/map_types/map_type_styler.dart';

part 'src/core/layers/bicycling_layer.dart';
part 'src/core/layers/fusion_tables_layer.dart';
part 'src/core/layers/fusion_tables_layer_options.dart';
part 'src/core/layers/fusion_tables_query.dart';
part 'src/core/layers/fusion_tables_style.dart';
part 'src/core/layers/fusion_tables_heatmap.dart';
part 'src/core/layers/fusion_tables_marker_options.dart';
part 'src/core/layers/fusion_tables_polygon_options.dart';
part 'src/core/layers/fusion_tables_polyline_options.dart';
part 'src/core/layers/fusion_tables_mouse_event.dart';
part 'src/core/layers/fusion_tables_cell.dart';
part 'src/core/layers/kml_layer.dart';
part 'src/core/layers/kml_layer_options.dart';
part 'src/core/layers/kml_layer_metadata.dart';
part 'src/core/layers/kml_layer_status.dart';
part 'src/core/layers/kml_mouse_event.dart';
part 'src/core/layers/kml_feature_data.dart';
part 'src/core/layers/kml_author.dart';
part 'src/core/layers/traffic_layer.dart';
part 'src/core/layers/transit_layer.dart';

part 'src/core/street_view/street_view_panorama.dart';
part 'src/core/street_view/street_view_panorama_options.dart';
part 'src/core/street_view/street_view_address_control_options.dart';
part 'src/core/street_view/street_view_link.dart';
part 'src/core/street_view/street_view_pov.dart';
part 'src/core/street_view/street_view_panorama_data.dart';
part 'src/core/street_view/street_view_location.dart';
part 'src/core/street_view/street_view_tile_data.dart';
part 'src/core/street_view/street_view_service.dart';
part 'src/core/street_view/street_view_status.dart';
part 'src/core/street_view/street_view_coverage_layer.dart';

part 'src/core/events/maps_event_listener.dart';
part 'src/core/events/events.dart';
part 'src/core/events/mouse_event.dart';

part 'src/core/base/lat_lng.dart';
part 'src/core/base/lat_lng_bounds.dart';
part 'src/core/base/point.dart';
part 'src/core/base/size.dart';

part 'src/core/mvc/mvc_object.dart';
part 'src/core/mvc/mvc_array.dart';

// js.Proxy for "google.maps"
final maps = js.retain(js.context.google.maps);

bool get visualRefresh => maps.visualRefresh;
set visualRefresh(bool visualRefresh) => maps.visualRefresh = visualRefresh;

class NativeEvent extends jsw.TypedProxy {
  static NativeEvent cast(js.Proxy proxy) => proxy == null ? null : new NativeEvent.fromProxy(proxy);

  NativeEvent() : super();
  NativeEvent.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);
}

class EventListenerAdder {
  final jsw.TypedProxy _instance;
  final String _eventName;

  EventListenerAdder(this._instance, this._eventName);

  void add(Function handler) { event.addListener(_instance, _eventName, handler); }
  MapsEventListenerRegistration addTemporary(Function handler) => new MapsEventListenerRegistration._(js.retain(event.addListener(_instance, _eventName, handler)));
}

class MapsEventListenerRegistration {
  final MapsEventListener _mapsEventListener;

  MapsEventListenerRegistration._(this._mapsEventListener);

  void removeListener() {
    event.removeListener(_mapsEventListener);
    js.release(_mapsEventListener);
  }
}

class NoArgsEventListenerAdder extends EventListenerAdder {
  NoArgsEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler()) => super.add(() => handler());
  MapsEventListenerRegistration addTemporary(void handler()) => super.addTemporary(() => handler());
}

class NativeEventListenerAdder extends EventListenerAdder {
  NativeEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(NativeEvent e)) { super.add((o) => handler(NativeEvent.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(NativeEvent e)) => super.addTemporary((o) => handler(NativeEvent.cast(o)));
}

class MouseEventListenerAdder extends EventListenerAdder {
  MouseEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(MouseEvent e)) { super.add((o) => handler(MouseEvent.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(MouseEvent e)) => super.addTemporary((o) => handler(MouseEvent.cast(o)));
}

class PolyMouseEventListenerAdder extends EventListenerAdder {
  PolyMouseEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(PolyMouseEvent e)) { super.add((o) => handler(PolyMouseEvent.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(PolyMouseEvent e)) => super.addTemporary((o) => handler(PolyMouseEvent.cast(o)));
}

class FusionTablesMouseEventListenerAdder extends EventListenerAdder {
  FusionTablesMouseEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(FusionTablesMouseEvent e)) { super.add((o) => handler(FusionTablesMouseEvent.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(FusionTablesMouseEvent e)) => super.addTemporary((o) => handler(FusionTablesMouseEvent.cast(o)));
}

class KmlMouseEventListenerAdder extends EventListenerAdder {
  KmlMouseEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(KmlMouseEvent e)) { super.add((o) => handler(KmlMouseEvent.cast(o))); }
  MapsEventListenerRegistration addTemporary(void handler(KmlMouseEvent e)) => super.addTemporary((o) => handler(KmlMouseEvent.cast(o)));
}

class NumEventListenerAdder extends EventListenerAdder {
  NumEventListenerAdder(jsw.TypedProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(num number)) { super.add((o) => handler(o)); }
  MapsEventListenerRegistration addTemporary(void handler(num number)) => super.addTemporary((o) => handler(o));
}

class NumAndElementEventListenerAdder<E> extends EventListenerAdder {
  jsw.Mapper<dynamic, E> _mapper;

  NumAndElementEventListenerAdder(jsw.TypedProxy _instance, String _eventName, this._mapper) : super(_instance, _eventName);

  void add(void handler(num number, E e)) { super.add((num number, o) => handler(number, _mapper(o))); }
  MapsEventListenerRegistration addTemporary(void handler(num number, E e)) => super.addTemporary((num number, o) => handler(number, _mapper(o)));
}

