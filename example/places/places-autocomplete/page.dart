import 'dart:html' hide Point, Events;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(-33.8688, 151.2195)
    ..zoom = 13;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final input = document.getElementById('pac-input') as InputElement;

  final types = document.getElementById('type-selector');
  map.controls[ControlPosition.TOP_LEFT].push(input);
  map.controls[ControlPosition.TOP_LEFT].push(types);

  final autocomplete = new Autocomplete(input);
  autocomplete.bindTo('bounds', map);

  final infowindow = new InfoWindow();
  final marker = new Marker(new MarkerOptions()
    ..map = map
    ..anchorPoint = new Point(0, -29));

  autocomplete.onPlaceChanged.listen((_) {
    infowindow.close();
    marker.visible = false;

    final place = autocomplete.place;
    if (place.geometry == null) {
      window.alert("Autocomplete's returned place contains no geometry");
      return;
    }

    // If the place has a geometry, then present it on a map.
    if (place.geometry.viewport != null) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.center = place.geometry.location;
      map.zoom = 17; // Why 17? Because it looks good.
    }

    marker.icon = new Icon()
    ..url = place.icon
    ..size = new Size(71, 71)
    ..origin = new Point(0, 0)
    ..anchor = new Point(17, 34)
    ..scaledSize = new Size(35, 35);
    marker.position = place.geometry.location;
    marker.visible = true;

    String address = '';
    if (place.addressComponents != null) {
      address = [
        (place.addressComponents[0] != null &&
                place.addressComponents[0].shortName != null
            ? place.addressComponents[0].shortName
            : ''),
        (place.addressComponents[1] != null &&
                place.addressComponents[1].shortName != null
            ? place.addressComponents[1].shortName
            : ''),
        (place.addressComponents[2] != null &&
                place.addressComponents[2].shortName != null
            ? place.addressComponents[2].shortName
            : '')
      ].join(' ');
    }

    infowindow.content = '<div><strong>${place.name}</strong><br>${address}';
    infowindow.open(map, marker);
  });

  // Sets a listener on a radio button to change the filter type on Places
  // Autocomplete.
  void setupClickListener(String id, List<String> types) {
    final radioButton = querySelector('#${id}');
    event.addDomListener(radioButton, 'click', (_) {
      autocomplete.types = types;
    });
  }

  setupClickListener('changetype-all', []);
  setupClickListener('changetype-establishment', ['establishment']);
  setupClickListener('changetype-geocode', ['geocode']);
}
