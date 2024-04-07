import 'dart:js_interop';
import 'dart:math' as math;

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

// This example defines an image map type using the Gall-Peters
// projection.
// https://en.wikipedia.org/wiki/Gall%E2%80%93Peters_projection
void main() {
// Create a map. Use the Gall-Peters map type.
  final map = Map(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..zoom = 0
      ..center = LatLng(0, 0)
      ..mapTypeControl = false,
  );
  initGallPeters();
  map.mapTypes.set('gallPeters', gallPetersMapType);
  map.mapTypeId = 'gallPeters'.toJS;
  // Show the lat and lng under the mouse cursor.
  final coordsDiv = document.getElementById('coords') as HTMLDivElement;
  map.getControlsAt(ControlPosition.TOP_CENTER).push(coordsDiv);
  map.onMousemove.listen((e) {
    coordsDiv.textContent =
        'lat: ${e.latLng!.lat.round()}, lng: ${e.latLng!.lng.round()}';
  });
  // Add some markers to the map.
  map.data.style = ((DataFeature feature) => {
        'title': feature.getProperty('name'),
        'optimized': false,
      }.jsify()).toJS;
  map.data.addGeoJson(cities.jsify() as JSObject);
}

late ImageMapType gallPetersMapType;

void initGallPeters() {
  // Fetch Gall-Peters tiles stored locally on our server.
  const GALL_PETERS_RANGE_X = 800;
  const GALL_PETERS_RANGE_Y = 512;
  gallPetersMapType = ImageMapType(ImageMapTypeOptions()
    ..getTileUrl = ((Point coord, num zoom) {
      final scale = 1 << zoom.toInt();
      // Wrap tiles horizontally.
      final x = ((coord.x % scale) + scale) % scale;
      // Don't wrap tiles vertically.
      final y = coord.y;

      if (y < 0 || y >= scale) return '';
      return 'https://developers.google.com/maps/documentation/'
          'javascript/examples/full/images/gall-peters_${zoom}_${x}_$y.png';
    }).toJS
    ..tileSize = Size(GALL_PETERS_RANGE_X, GALL_PETERS_RANGE_Y)
    ..minZoom = 0
    ..maxZoom = 1
    ..name = 'Gall-Peters')
    // Describe the Gall-Peters projection used by these tiles.
    // ..projection = (JSObject()
    //   ..setProperty(
    //     'fromLatLngToPoint'.toJS,
    //     (LatLng latLng, [Point? point]) {
    //       final latRadians = (latLng.lat * math.pi) / 180;
    //       return Point(
    //         GALL_PETERS_RANGE_X * (0.5 + latLng.lng / 360),
    //         GALL_PETERS_RANGE_Y * (0.5 - 0.5 * math.sin(latRadians)),
    //       );
    //     }.toJS,
    //   )
    //   ..setProperty(
    //     'fromPointToLatLng'.toJS,
    //     (Point point, [bool? noClampNoWrap]) {
    //       final x = point.x / GALL_PETERS_RANGE_X;
    //       final y = math.max(0, math.min(1, point.y / GALL_PETERS_RANGE_Y));
    //       return LatLng((math.asin(1 - 2 * y) * 180) / math.pi, -180 + 360 * x,
    //           noClampNoWrap);
    //     }.toJS,
    //   )) as Projection;

    ..projection = (Projection()
      ..fromLatLngToPoint = (latLng, [point]) {
        final latRadians = (latLng.lat * math.pi) / 180;
        return Point(
          GALL_PETERS_RANGE_X * (0.5 + latLng.lng / 360),
          GALL_PETERS_RANGE_Y * (0.5 - 0.5 * math.sin(latRadians)),
        );
      }
      ..fromPointToLatLng = (point, [noClampNoWrap]) {
        final x = point.x / GALL_PETERS_RANGE_X;
        final y = math.max(0, math.min(1, point.y / GALL_PETERS_RANGE_Y));
        return LatLng((math.asin(1 - 2 * y) * 180) / math.pi, -180 + 360 * x,
            noClampNoWrap);
      });
}

// GeoJSON, describing the locations and names of some cities.
const cities = {
  'type': 'FeatureCollection',
  'features': [
    {
      'type': 'Feature',
      'geometry': {
        'type': 'Point',
        'coordinates': [-87.65, 41.85]
      },
      'properties': {'name': 'Chicago'},
    },
    {
      'type': 'Feature',
      'geometry': {
        'type': 'Point',
        'coordinates': [-149.9, 61.218]
      },
      'properties': {'name': 'Anchorage'},
    },
    {
      'type': 'Feature',
      'geometry': {
        'type': 'Point',
        'coordinates': [-99.127, 19.427]
      },
      'properties': {'name': 'Mexico City'},
    },
    {
      'type': 'Feature',
      'geometry': {
        'type': 'Point',
        'coordinates': [-0.126, 51.5]
      },
      'properties': {'name': 'London'},
    },
    {
      'type': 'Feature',
      'geometry': {
        'type': 'Point',
        'coordinates': [28.045, -26.201]
      },
      'properties': {'name': 'Johannesburg'},
    },
    {
      'type': 'Feature',
      'geometry': {
        'type': 'Point',
        'coordinates': [15.322, -4.325]
      },
      'properties': {'name': 'Kinshasa'},
    },
    {
      'type': 'Feature',
      'geometry': {
        'type': 'Point',
        'coordinates': [151.207, -33.867]
      },
      'properties': {'name': 'Sydney'},
    },
    {
      'type': 'Feature',
      'geometry': {
        'type': 'Point',
        'coordinates': [0, 0]
      },
      'properties': {'name': '0°N 0°E'},
    },
  ],
};
