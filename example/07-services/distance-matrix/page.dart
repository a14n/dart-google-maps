#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
gmaps.Geocoder geocoder;
final gmaps.LatLngBounds bounds = jsw.retain(new gmaps.LatLngBounds());
final markersArray = new List<gmaps.Marker>();

final gmaps.LatLng origin1 = jsw.retain(new gmaps.LatLng(55.930385, -3.118425));
const origin2 = 'Greenwich, England';
const destinationA = 'Stockholm, Sweden';
final gmaps.LatLng destinationB = jsw.retain(new gmaps.LatLng(50.087692, 14.421150));

const destinationIcon = 'https://chart.googleapis.com/chart?chst=d_map_pin_letter&chld=D|FF0000|000000';
const originIcon = 'https://chart.googleapis.com/chart?chst=d_map_pin_letter&chld=O|FFFF00|000000';

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..center = new gmaps.LatLng(55.53, 9.4)
      ..zoom = 10
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    map = jsw.retain(new gmaps.GMap(query("#map"), mapOptions));
    geocoder = jsw.retain(new gmaps.Geocoder());

    query('#calculateDistances').on.click.add((e) => calculateDistances());
  });
}

void calculateDistances() {
  js.scoped(() {
    final service = new gmaps.DistanceMatrixService();
    service.getDistanceMatrix((new gmaps.DistanceMatrixRequest()
      ..origins = [origin1, origin2]
      ..destinations = [destinationA, destinationB]
      ..travelMode = gmaps.TravelMode.DRIVING
      ..unitSystem = gmaps.UnitSystem.METRIC
      ..avoidHighways = false
      ..avoidTolls = false
      ), callback);
  });
}

void callback(gmaps.DistanceMatrixResponse response, gmaps.DistanceMatrixStatus status) {
  if (status != gmaps.DistanceMatrixStatus.OK) {
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
        html.add('${origins[i]} to ${destinations[j]}: ${results[j].distance.text} in ${results[j].duration.text}<br>');
      }
    }
    query('#outputDiv').innerHTML = html.toString();
  }
}

void addMarker(String location, bool isDestination) {
  String icon;
  if (isDestination) {
    icon = destinationIcon;
  } else {
    icon = originIcon;
  }
  final request = new gmaps.GeocoderRequest()
    ..address = location
    ;
  geocoder.geocode(request, (List<gmaps.GeocoderResult> results, gmaps.GeocoderStatus status) {
    if (status == gmaps.GeocoderStatus.OK) {
      bounds.extend(results[0].geometry.location);
      map.fitBounds(bounds);
      final marker = new gmaps.Marker(new gmaps.MarkerOptions()
        ..map = map
        ..position = results[0].geometry.location
        ..icon = icon
      );
      markersArray.add(marker);
    } else {
      window.alert('Geocode was not successful for the following reason: ${status}');
    }
  });
}

void deleteOverlays() {
  markersArray.forEach((marker) => marker.map = null);
  markersArray.clear();
}
