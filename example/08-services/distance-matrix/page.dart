import 'dart:html';

import 'package:google_maps/google_maps.dart';

GMap map;
Geocoder geocoder;
final bounds = new LatLngBounds();
final markersArray = new List<Marker>();

final origin1 = new LatLng(55.930385, -3.118425);
const origin2 = 'Greenwich, England';
const destinationA = 'Stockholm, Sweden';
final destinationB = new LatLng(50.087692, 14.421150);

const destinationIcon =
    'https://chart.googleapis.com/chart?chst=d_map_pin_letter&chld=D|FF0000|000000';
const originIcon =
    'https://chart.googleapis.com/chart?chst=d_map_pin_letter&chld=O|FFFF00|000000';

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(55.53, 9.4)
    ..zoom = 10;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);
  geocoder = new Geocoder();

  document.getElementById('calculateDistances').onClick
      .listen((e) => calculateDistances());
}

void calculateDistances() {
  final service = new DistanceMatrixService();
  service.getDistanceMatrix((new DistanceMatrixRequest()
    ..origins = [origin1, origin2]
    ..destinations = [destinationA, destinationB]
    ..travelMode = TravelMode.DRIVING
    ..unitSystem = UnitSystem.METRIC
    ..avoidHighways = false
    ..avoidTolls = false), callback);
}

void callback(DistanceMatrixResponse response, DistanceMatrixStatus status) {
  if (status != DistanceMatrixStatus.OK) {
    window.alert('Error was: ${status}');
  } else {
    final origins = response.originAddresses;
    final destinations = response.destinationAddresses;
    deleteOverlays();

    final html = new StringBuffer();
    for (var i = 0; i < origins.length; i++) {
      var results = response.rows[i].elements;
      addMarker(origins[i], false);
      for (var j = 0; j < results.length; j++) {
        addMarker(destinations[j], true);
        html.write(
            '${origins[i]} to ${destinations[j]}: ${results[j].distance.text} in ${results[j].duration.text}<br>');
      }
    }
    document.getElementById('outputDiv').innerHtml = html.toString();
  }
}

void addMarker(String location, bool isDestination) {
  String icon;
  if (isDestination) {
    icon = destinationIcon;
  } else {
    icon = originIcon;
  }
  geocoder.geocode(new GeocoderRequest()..address = location,
      (results, status) {
    if (status == GeocoderStatus.OK) {
      bounds.extend(results[0].geometry.location);
      map.fitBounds(bounds);
      final marker = new Marker(new MarkerOptions()
        ..map = map
        ..position = results[0].geometry.location
        ..icon = icon);
      markersArray.add(marker);
    } else {
      window.alert(
          'Geocode was not successful for the following reason: ${status}');
    }
  });
}

void deleteOverlays() {
  markersArray.forEach((marker) => marker.map = null);
  markersArray.clear();
}
