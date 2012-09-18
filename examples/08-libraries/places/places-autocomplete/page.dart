#import('dart:html');
#import('../../../../gmaps.dart', prefix:'gmaps');
#import('../../../../gmaps-places.dart', prefix:'gmaps_places');

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..center = new gmaps.LatLng(-33.8688, 151.2195)
    ..zoom = 13
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final input = query('#searchTextField') as InputElement;
  final autocomplete = new gmaps_places.Autocomplete(input);

  autocomplete.bindTo('bounds', map);

  final infowindow = new gmaps.InfoWindow();
  final marker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..map = map
  );

  gmaps.Events.addListener(autocomplete, 'place_changed', (e) {
    infowindow.close();
    final place = autocomplete.getPlace();

    if (place.geometry.viewport !== null) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.setCenter(place.geometry.location);
      map.setZoom(17);  // Why 17? Because it looks good.
    }

    final image = new gmaps.MarkerImage(
        place.icon,
        new gmaps.Size(71, 71),
        new gmaps.Point(0, 0),
        new gmaps.Point(17, 34),
        new gmaps.Size(35, 35));
    marker.setIcon(image);
    marker.setPosition(place.geometry.location);

    String address = '';
    if (place.address_components !== null) {
      address = Strings.join([
        (place.address_components[0] != null && place.address_components[0].short_name != null ? place.address_components[0].short_name : ''),
        (place.address_components[1] != null && place.address_components[1].short_name != null ? place.address_components[1].short_name : ''),
        (place.address_components[2] != null && place.address_components[2].short_name != null ? place.address_components[2].short_name : '')
      ], ' ');
    }

    infowindow.setContent('<div><strong>${place.name}</strong><br>${address}');
    infowindow.open(map, marker);
  });

  // Sets a listener on a radio button to change the filter type on Places
  // Autocomplete.
  void setupClickListener(id, types) {
    final radioButton = query('#${id}');
    gmaps.Events.addDomListener(radioButton, 'click', (e) {
      autocomplete.setTypes(types);
    });
  }

  setupClickListener('changetype-all', []);
  setupClickListener('changetype-establishment', ['establishment']);
  setupClickListener('changetype-geocode', ['geocode']);
}