import 'dart:html' hide Point, Events;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(-33.8688, 151.2195)
    ..zoom = 13;
  final map =
      GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);

  final input = document.getElementById('pac-input') as InputElement;

  final types = document.getElementById('type-selector') as HtmlElement;
  map.controls![ControlPosition.TOP_LEFT as int]!.push(input);
  map.controls![ControlPosition.TOP_LEFT as int]!.push(types);

  final autocomplete = Autocomplete(input)..bindTo('bounds', map);

  final infowindow = InfoWindow();
  final marker = Marker(MarkerOptions()
    ..map = map
    ..anchorPoint = Point(0, -29));

  autocomplete.onPlaceChanged.listen((_) {
    infowindow.close();
    marker.visible = false;

    final place = autocomplete.place!;
    if (place.geometry == null) {
      window.alert("Autocomplete's returned place contains no geometry");
      return;
    }

    // If the place has a geometry, then present it on a map.
    if (place.geometry!.viewport != null) {
      map.fitBounds(place.geometry!.viewport);
    } else {
      map
        ..center = place.geometry!.location
        ..zoom = 17; // Why 17? Because it looks good.
    }

    marker
      ..icon = (Icon()
        ..url = place.icon
        ..size = Size(71, 71)
        ..origin = Point(0, 0)
        ..anchor = Point(17, 34)
        ..scaledSize = Size(35, 35))
      ..position = place.geometry!.location
      ..visible = true;

    var address = '';
    final addressComponents = place.addressComponents;
    if (addressComponents != null) {
      address = [
        addressComponents[0]?.shortName ?? '',
        addressComponents[1]?.shortName ?? '',
        addressComponents[2]?.shortName ?? '',
      ].join(' ');
    }

    infowindow
      ..content = '<div><strong>${place.name}</strong><br>$address'
      ..open(map, marker);
  });

  // Sets a listener on a radio button to change the filter type on Places
  // Autocomplete.
  void setupClickListener(String id, List<String> types) {
    final radioButton = querySelector('#$id');
    Event.addDomListener(radioButton, 'click', (_) {
      autocomplete.types = types;
    });
  }

  setupClickListener('changetype-all', []);
  setupClickListener('changetype-establishment', ['establishment']);
  setupClickListener('changetype-geocode', ['geocode']);
}
