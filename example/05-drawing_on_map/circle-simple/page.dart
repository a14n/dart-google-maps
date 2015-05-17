import 'dart:html';
import 'dart:math' show sqrt;
import 'package:google_maps/google_maps.dart';

// First, create an object containing LatLng and population for each city.
final citymap = {
  'chicago': {
    'center': new LatLng(41.878113, -87.629798),
    'population': 2842518
  },
  'newyork': {
    'center': new LatLng(40.714352, -74.005973),
    'population': 8143197
  },
  'losangeles': {
    'center': new LatLng(34.052234, -118.243684),
    'population': 3844829
  },
  'vancouver': {'center': new LatLng(49.25, -123.1), 'population': 603502}
};

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = new LatLng(37.09024, -95.712891)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  citymap.forEach((String name, Map city) {
    // Construct the circle for each value in citymap. We scale population by 20.
    final populationOptions = new CircleOptions()
      ..strokeColor = '#FF0000'
      ..strokeOpacity = 0.8
      ..strokeWeight = 2
      ..fillColor = '#FF0000'
      ..fillOpacity = 0.35
      ..map = map
      ..center = city['center']
      ..radius = sqrt(city['population']) * 100;
    new Circle(populationOptions);
  });
}
