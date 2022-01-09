import 'dart:html' hide Point;
import 'dart:math' as math;

import 'package:google_maps/google_maps.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

// This example defines an image map type using the Gall-Peters
// projection.
// https://en.wikipedia.org/wiki/Gall%E2%80%93Peters_projection
void main() {
// Create a map. Use the Gall-Peters map type.
  final map = GMap(
    document.getElementById('map') as HtmlElement,
    MapOptions()
      ..zoom = 0
      ..center = LatLng(0, 0)
      ..mapTypeControl = false,
  );
  initGallPeters();
  map.mapTypes!.set('gallPeters', gallPetersMapType);
  map.mapTypeId = 'gallPeters';
  // Show the lat and lng under the mouse cursor.
  final coordsDiv = document.getElementById('coords') as DivElement;
  map.controls![ControlPosition.TOP_CENTER as int]!.push(coordsDiv);
  map.onMousemove.listen((event) {
    coordsDiv.text =
        'lat: ${event.latLng!.lat.round()}, lng: ${event.latLng!.lng.round()}';
  });
  // Add some markers to the map.
  map.data!.style = allowInterop((feature) => jsify({
        'title': feature.getProperty('name'),
        'optimized': false,
      }));
  map.data!.addGeoJson(jsify(cities));
}

late ImageMapType gallPetersMapType;

void initGallPeters() {
  const GALL_PETERS_RANGE_X = 800;
  const GALL_PETERS_RANGE_Y = 512;
  // Fetch Gall-Peters tiles stored locally on our server.
  gallPetersMapType = ImageMapType(ImageMapTypeOptions()
    ..getTileUrl = (coord, zoom) {
      final scale = 1 << zoom!.toInt();
      // Wrap tiles horizontally.
      final x = ((coord!.x! % scale) + scale) % scale;
      // Don't wrap tiles vertically.
      final y = coord.y!;

      if (y < 0 || y >= scale) return '';
      return 'https://developers.google.com/maps/documentation/'
          'javascript/examples/full/images/gall-peters_${zoom}_${x}_$y.png';
    }
    ..tileSize = Size(GALL_PETERS_RANGE_X, GALL_PETERS_RANGE_Y)
    ..minZoom = 0
    ..maxZoom = 1
    ..name = 'Gall-Peters')
    // Describe the Gall-Peters projection used by these tiles.
    ..projection = (Projection()
      ..fromLatLngToPoint = (latLng, [point]) {
        final latRadians = (latLng!.lat * math.pi) / 180;
        return Point(
          GALL_PETERS_RANGE_X * (0.5 + latLng.lng / 360),
          GALL_PETERS_RANGE_Y * (0.5 - 0.5 * math.sin(latRadians)),
        );
      }
      ..fromPointToLatLng = (point, [noWrap]) {
        final x = point!.x! / GALL_PETERS_RANGE_X;
        final y = math.max(0, math.min(1, point.y! / GALL_PETERS_RANGE_Y));
        return LatLng(
            (math.asin(1 - 2 * y) * 180) / math.pi, -180 + 360 * x, noWrap);
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
