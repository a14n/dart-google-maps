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

library google_maps.src;

import 'dart:async' show Stream;
import 'dart:collection' show MapMixin;
import 'dart:html' show Node, Document;

import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/util/async.dart';

part 'google_maps_src.g.dart';

part 'core/map/map.dart';
part 'core/map/map_options.dart';
part 'core/map/map_type_id.dart';
part 'core/controls/map_type_control_options.dart';
part 'core/controls/map_type_control_style.dart';
part 'core/controls/overview_map_control_options.dart';
part 'core/controls/pan_control_options.dart';
part 'core/controls/rotate_control_options.dart';
part 'core/controls/scale_control_options.dart';
part 'core/controls/scale_control_style.dart';
part 'core/controls/street_view_control_options.dart';
part 'core/controls/zoom_control_options.dart';
part 'core/controls/zoom_control_style.dart';
part 'core/controls/control_position.dart';
part 'core/data/data.dart';
part 'core/data/data_data_options.dart';
part 'core/data/data_geo_json_options.dart';
part 'core/data/data_style_options.dart';
part 'core/data/data_styling_function.dart';
part 'core/data/data_feature.dart';
part 'core/data/data_feature_options.dart';
part 'core/data/data_geometry.dart';
part 'core/data/data_point.dart';
part 'core/data/data_multi_point.dart';
part 'core/data/data_line_string.dart';
part 'core/data/data_multi_line_string.dart';
part 'core/data/data_linear_ring.dart';
part 'core/data/data_polygon.dart';
part 'core/data/data_multi_polygon.dart';
part 'core/data/data_geometry_collection.dart';
part 'core/data/data_mouse_event.dart';
part 'core/data/data_add_feature_event.dart';
part 'core/data/data_remove_feature_event.dart';
part 'core/data/data_set_geometry_event.dart';
part 'core/data/data_set_property_event.dart';
part 'core/data/data_remove_property_event.dart';
part 'core/overlays/marker.dart';
part 'core/overlays/marker_options.dart';
part 'core/overlays/icon.dart';
part 'core/overlays/marker_label.dart';
part 'core/overlays/marker_shape.dart';
part 'core/overlays/symbol.dart';
part 'core/overlays/symbol_path.dart';
part 'core/overlays/animation.dart';
part 'core/overlays/info_window.dart';
part 'core/overlays/info_window_options.dart';
part 'core/overlays/polyline.dart';
part 'core/overlays/polyline_options.dart';
part 'core/overlays/icon_sequence.dart';
part 'core/overlays/polygon.dart';
part 'core/overlays/polygon_options.dart';
part 'core/overlays/poly_mouse_event.dart';
part 'core/overlays/rectangle.dart';
part 'core/overlays/rectangle_options.dart';
part 'core/overlays/circle.dart';
part 'core/overlays/circle_options.dart';
part 'core/overlays/stroke_position.dart';
part 'core/overlays/ground_overlay.dart';
part 'core/overlays/ground_overlay_options.dart';
part 'core/overlays/overlay_view.dart';
part 'core/overlays/map_panes.dart';
part 'core/overlays/map_canvas_projection.dart';
part 'core/services/geocoder.dart';
part 'core/services/geocoder_request.dart';
part 'core/services/geocoder_component_restrictions.dart';
part 'core/services/geocoder_status.dart';
part 'core/services/geocoder_result.dart';
part 'core/services/geocoder_address_component.dart';
part 'core/services/geocoder_geometry.dart';
part 'core/services/geocoder_location_type.dart';
part 'core/services/directions_renderer.dart';
part 'core/services/directions_renderer_options.dart';
part 'core/services/directions_service.dart';
part 'core/services/directions_request.dart';
part 'core/services/place.dart';
part 'core/services/travel_mode.dart';
part 'core/services/unit_system.dart';
part 'core/services/transit_options.dart';
part 'core/services/transit_mode.dart';
part 'core/services/transit_route_preference.dart';
part 'core/services/transit_fare.dart';
part 'core/services/driving_options.dart';
part 'core/services/traffic_model.dart';
part 'core/services/directions_waypoint.dart';
part 'core/services/directions_status.dart';
part 'core/services/directions_result.dart';
part 'core/services/directions_geocoded_waypoint.dart';
part 'core/services/directions_route.dart';
part 'core/services/directions_leg.dart';
part 'core/services/directions_step.dart';
part 'core/services/distance.dart';
part 'core/services/duration.dart';
part 'core/services/time.dart';
part 'core/services/transit_details.dart';
part 'core/services/transit_stop.dart';
part 'core/services/transit_line.dart';
part 'core/services/transit_agency.dart';
part 'core/services/transit_vehicle.dart';
part 'core/services/vehicle_type.dart';
part 'core/services/elevation_service.dart';
part 'core/services/location_elevation_request.dart';
part 'core/services/path_elevation_request.dart';
part 'core/services/elevation_result.dart';
part 'core/services/elevation_status.dart';
part 'core/services/max_zoom_service.dart';
part 'core/services/max_zoom_result.dart';
part 'core/services/max_zoom_status.dart';
part 'core/services/distance_matrix_service.dart';
part 'core/services/distance_matrix_request.dart';
part 'core/services/distance_matrix_response.dart';
part 'core/services/distance_matrix_response_row.dart';
part 'core/services/distance_matrix_response_element.dart';
part 'core/services/distance_matrix_status.dart';
part 'core/services/distance_matrix_element_status.dart';
part 'core/save_to_google_maps/attribution.dart';
part 'core/save_to_google_maps/marker_place.dart';
part 'core/save_to_google_maps/save_widget.dart';
part 'core/save_to_google_maps/save_widget_options.dart';
part 'core/map_types/map_type.dart';
part 'core/map_types/map_type_registry.dart';
part 'core/map_types/projection.dart';
part 'core/map_types/image_map_type.dart';
part 'core/map_types/image_map_type_options.dart';
part 'core/map_types/styled_map_type.dart';
part 'core/map_types/styled_map_type_options.dart';
part 'core/map_types/map_type_style.dart';
part 'core/map_types/map_type_style_feature_type.dart';
part 'core/map_types/map_type_style_element_type.dart';
part 'core/map_types/map_type_styler.dart';
part 'core/layers/bicycling_layer.dart';
part 'core/layers/fusion_tables_layer.dart';
part 'core/layers/fusion_tables_layer_options.dart';
part 'core/layers/fusion_tables_query.dart';
part 'core/layers/fusion_tables_style.dart';
part 'core/layers/fusion_tables_heatmap.dart';
part 'core/layers/fusion_tables_marker_options.dart';
part 'core/layers/fusion_tables_polygon_options.dart';
part 'core/layers/fusion_tables_polyline_options.dart';
part 'core/layers/fusion_tables_mouse_event.dart';
part 'core/layers/fusion_tables_cell.dart';
part 'core/layers/kml_layer.dart';
part 'core/layers/kml_layer_options.dart';
part 'core/layers/kml_layer_metadata.dart';
part 'core/layers/kml_layer_status.dart';
part 'core/layers/kml_mouse_event.dart';
part 'core/layers/kml_feature_data.dart';
part 'core/layers/kml_author.dart';
part 'core/layers/traffic_layer.dart';
part 'core/layers/transit_layer.dart';
part 'core/street_view/street_view_panorama.dart';
part 'core/street_view/street_view_panorama_options.dart';
part 'core/street_view/street_view_address_control_options.dart';
part 'core/street_view/street_view_link.dart';
part 'core/street_view/street_view_pov.dart';
part 'core/street_view/street_view_location_request.dart';
part 'core/street_view/street_view_pano_request.dart';
part 'core/street_view/street_view_panorama_data.dart';
part 'core/street_view/street_view_location.dart';
part 'core/street_view/street_view_preference.dart';
part 'core/street_view/street_view_source.dart';
part 'core/street_view/street_view_tile_data.dart';
part 'core/street_view/street_view_service.dart';
part 'core/street_view/street_view_status.dart';
part 'core/street_view/street_view_coverage_layer.dart';
part 'core/events/maps_event_listener.dart';
part 'core/events/event.dart';
part 'core/events/mouse_event.dart';
part 'core/base/lat_lng.dart';
part 'core/base/lat_lng_bounds.dart';
part 'core/base/point.dart';
part 'core/base/size.dart';
part 'core/mvc/mvcobject.dart';
part 'core/mvc/mvcarray.dart';

abstract class _Controls extends JsInterface
    with MapMixin<ControlPosition, MVCArray<Node>> {
  _Controls() : super.created(new JsArray());

  MVCArray<Node> operator [](ControlPosition controlPosition) {
    var value = asJsObject(this)[_toJsControlPosition(controlPosition)];
    if (value == null) return null;
    return new MVCArray<Node>.created(value);
  }
  void operator []=(ControlPosition controlPosition, MVCArray<Node> nodes) {
    asJsObject(this)[_toJsControlPosition(controlPosition)] = asJsObject(nodes);
  }
  Iterable<ControlPosition> get keys {
    var result = <ControlPosition>[];
    for (final control in ControlPosition.values) {
      if (this[control] != null) result.add(control);
    }
    return result;
  }
  MVCArray<Node> remove(Object key) {
    var result = this[key];
    this[key] = null;
    return result;
  }
  void clear() => (asJsObject(this) as JsArray).clear();

  _toJsControlPosition(ControlPosition controlPosition) => ((e) {
    if (e == null) return null;
    final path = context['google']['maps']['ControlPosition'];
    if (e == ControlPosition.BOTTOM_CENTER) return path['BOTTOM_CENTER'];
    if (e == ControlPosition.BOTTOM_LEFT) return path['BOTTOM_LEFT'];
    if (e == ControlPosition.BOTTOM_RIGHT) return path['BOTTOM_RIGHT'];
    if (e == ControlPosition.LEFT_BOTTOM) return path['LEFT_BOTTOM'];
    if (e == ControlPosition.LEFT_CENTER) return path['LEFT_CENTER'];
    if (e == ControlPosition.LEFT_TOP) return path['LEFT_TOP'];
    if (e == ControlPosition.RIGHT_BOTTOM) return path['RIGHT_BOTTOM'];
    if (e == ControlPosition.RIGHT_CENTER) return path['RIGHT_CENTER'];
    if (e == ControlPosition.RIGHT_TOP) return path['RIGHT_TOP'];
    if (e == ControlPosition.TOP_CENTER) return path['TOP_CENTER'];
    if (e == ControlPosition.TOP_LEFT) return path['TOP_LEFT'];
    if (e == ControlPosition.TOP_RIGHT) return path['TOP_RIGHT'];
  })(controlPosition);
}
