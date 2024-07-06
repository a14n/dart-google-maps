import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';
import 'package:web/web.dart' hide Event;

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(-33.8688, 151.2195)
    ..zoom = 13;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final input = document.getElementById('pac-input') as HTMLInputElement;

  final types = document.getElementById('type-selector') as HTMLElement;
  map.getControlsAt(ControlPosition.TOP_LEFT).push(input);
  map.getControlsAt(ControlPosition.TOP_LEFT).push(types);

  final autocomplete = Autocomplete(input)..bindTo('bounds', map);

  final infowindow = InfoWindow();
  final marker = Marker(MarkerOptions()
    ..map = map
    ..anchorPoint = Point(0, -29));

  autocomplete.onPlaceChanged.listen((_) {
    infowindow.close();
    marker.visible = false;

    final place = autocomplete.place;
    if (place.geometry == null) {
      window.alert("Autocomplete's returned place contains no geometry");
      return;
    }

    // If the place has a geometry, then present it on a map.
    if (place.geometry!.viewport != null) {
      map.fitBounds(place.geometry!.viewport!);
    } else {
      map
        ..center = place.geometry!.location!
        ..zoom = 17; // Why 17? Because it looks good.
    }

    marker
      ..icon = (Icon()
        ..url = place.icon!
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
        addressComponents.elementAtOrNull(0)?.shortName ?? '',
        addressComponents.elementAtOrNull(1)?.shortName ?? '',
        addressComponents.elementAtOrNull(2)?.shortName ?? '',
      ].join(' ');
    }

    infowindow
      ..content = '<div><strong>${place.name}</strong><br>$address'.toJS
      ..open(map, marker);
  });

  // Sets a listener on a radio button to change the filter type on Places
  // Autocomplete.
  void setupClickListener(String id, List<String> types) {
    final radioButton = document.querySelector('#$id')!;
    event.addDomListener(
      radioButton,
      'click',
      (JSAny? _) {
        autocomplete.types = types.jsify() as JSArray<JSString>;
      }.toJS,
    );
  }

  setupClickListener('changetype-all', []);
  setupClickListener('changetype-establishment', ['establishment']);
  setupClickListener('changetype-geocode', ['geocode']);
}
