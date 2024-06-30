import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geocoding.dart';
import 'package:google_maps/google_maps_routes.dart';
import 'package:web/web.dart';

late Map map;
late Geocoder geocoder;
final bounds = LatLngBounds.empty();
final markersArray = <Marker>[];

final origin1 = LatLng(55.930385, -3.118425);
const origin2 = 'Greenwich, England';
const destinationA = 'Stockholm, Sweden';
final destinationB = LatLng(50.087692, 14.421150);

const destinationIcon =
    'https://chart.googleapis.com/chart?chst=d_map_pin_letter&chld=D|FF0000|000000';
const originIcon =
    'https://chart.googleapis.com/chart?chst=d_map_pin_letter&chld=O|FFFF00|000000';

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(55.53, 9.4)
    ..zoom = 10;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);
  geocoder = Geocoder();

  document
      .getElementById('calculateDistances')!
      .onClick
      .listen((e) => calculateDistances());
}

void calculateDistances() {
  DistanceMatrixService().getDistanceMatrix(
      DistanceMatrixRequest()
        ..origins = [origin1, origin2.toJS]
        ..destinations = [destinationA.toJS, destinationB]
        ..travelMode = TravelMode.DRIVING
        ..unitSystem = UnitSystem.METRIC
        ..avoidHighways = false
        ..avoidTolls = false,
      callback.toJS);
}

void callback(DistanceMatrixResponse? response, DistanceMatrixStatus? status) {
  if (status != DistanceMatrixStatus.OK) {
    window.alert('Error was: $status');
  } else {
    final origins = response!.originAddresses;
    final destinations = response.destinationAddresses;
    deleteOverlays();

    final html = StringBuffer();
    for (var i = 0; i < origins.length; i++) {
      final results = response.rows[i].elements;
      addMarker(origins[i], isDestination: false);
      for (var j = 0; j < results.length; j++) {
        addMarker(destinations[j], isDestination: true);
        html.write(
            '${origins[i]} to ${destinations[j]}: ${results[j].distance.text} in ${results[j].duration.text}<br>');
      }
    }
    document.getElementById('outputDiv')!.innerHTML = html.toString();
  }
}

void addMarker(String location, {required bool isDestination}) {
  String icon;
  if (isDestination) {
    icon = destinationIcon;
  } else {
    icon = originIcon;
  }
  geocoder.geocode(
    GeocoderRequest()..address = location,
    (JSArray<GeocoderResult>? results, GeocoderStatus status) {
      if (status == GeocoderStatus.OK) {
        bounds.extend(results!.toDart[0].geometry.location);
        map.fitBounds(bounds);
        final marker = Marker(MarkerOptions()
          ..map = map
          ..position = results.toDart[0].geometry.location
          ..icon = icon.toJS);
        markersArray.add(marker);
      } else {
        window.alert(
            'Geocode was not successful for the following reason: $status');
      }
    }.toJS,
  );
}

void deleteOverlays() {
  for (final marker in markersArray) {
    marker.map = null;
  }
  markersArray.clear();
}
