import 'dart:html' hide Point, Events;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(-33.8688, 151.2195)
    ..zoom = 13
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);

  final input = query('#searchTextField') as InputElement;
  final autocomplete = new Autocomplete(input);

  autocomplete.bindTo('bounds', map);

  final infowindow = new InfoWindow();
  final marker = new Marker(new MarkerOptions()
    ..map = map
  );

  autocomplete.onPlaceChanged.listen((_) {
    infowindow.close();
    final place = autocomplete.place;

    if (place.geometry.viewport != null) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.center = place.geometry.location;
      map.zoom = 17;  // Why 17? Because it looks good.
    }

    // TODO issue for MarkerImage deprecated
    final icon = new Icon()
      ..url = place.icon
      ..size = new Size(71, 71)
      ..origin = new Point(0, 0)
      ..anchor = new Point(17, 34)
      ..scaledSize = new Size(35, 35);
    marker.icon = icon;
    marker.position = place.geometry.location;

    String address = '';
    if (place.addressComponents != null) {
      address = [
        (place.addressComponents[0] != null && place.addressComponents[0].shortName != null ? place.addressComponents[0].shortName : ''),
        (place.addressComponents[1] != null && place.addressComponents[1].shortName != null ? place.addressComponents[1].shortName : ''),
        (place.addressComponents[2] != null && place.addressComponents[2].shortName != null ? place.addressComponents[2].shortName : '')
      ].join(' ');
    }

    infowindow.content = '<div><strong>${place.name}</strong><br>${address}';
    infowindow.open(map, marker);
  });

  // Sets a listener on a radio button to change the filter type on Places
  // Autocomplete.
  void setupClickListener(id, types) {
    final radioButton = query('#${id}');
    event.addDomListener(radioButton, 'click', () {
      autocomplete.types = types;
    });
  }

  setupClickListener('changetype-all', []);
  setupClickListener('changetype-establishment', ['establishment']);
  setupClickListener('changetype-geocode', ['geocode']);
}