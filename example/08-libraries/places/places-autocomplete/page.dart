import 'dart:html' hide Point, Events;
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

void main() {
  js.scoped(() {
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

    jsw.retainAll([map, marker, infowindow, autocomplete]);
    autocomplete.on.placeChanged.add(() {
      infowindow.close();
      final place = autocomplete.place;

      if (place.geometry.viewport != null) {
        map.fitBounds(place.geometry.viewport);
      } else {
        map.center = place.geometry.location;
        map.zoom = 17;  // Why 17? Because it looks good.
      }

      final image = new MarkerImage(
          place.icon,
          new Size(71, 71),
          new Point(0, 0),
          new Point(17, 34),
          new Size(35, 35));
      marker.icon = image;
      marker.position = place.geometry.location;

      String address = '';
      if (place.address_components != null) {
        address = Strings.join([
          (place.address_components[0] != null && place.address_components[0].short_name != null ? place.address_components[0].short_name : ''),
          (place.address_components[1] != null && place.address_components[1].short_name != null ? place.address_components[1].short_name : ''),
          (place.address_components[2] != null && place.address_components[2].short_name != null ? place.address_components[2].short_name : '')
        ], ' ');
      }

      infowindow.content = '<div><strong>${place.name}</strong><br>${address}';
      infowindow.open(map, marker);
    });

    // Sets a listener on a radio button to change the filter type on Places
    // Autocomplete.
    void setupClickListener(id, types) {
      final radioButton = query('#${id}');
      Events.addDomListener(radioButton, 'click', () {
        autocomplete.types = types;
      });
    }

    setupClickListener('changetype-all', []);
    setupClickListener('changetype-establishment', ['establishment']);
    setupClickListener('changetype-geocode', ['geocode']);
  });
}