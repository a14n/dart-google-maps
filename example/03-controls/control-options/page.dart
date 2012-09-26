#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 4
      ..center = new gmaps.LatLng(-33, 151)
      ..mapTypeControl = true
      ..mapTypeControlOptions = (new gmaps.MapTypeControlOptions()
        ..style = gmaps.MapTypeControlStyle.DROPDOWN_MENU
      )
      ..zoomControl = true
      ..zoomControlOptions = (new gmaps.ZoomControlOptions()
        ..style = gmaps.ZoomControlStyle.SMALL
      )
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;

    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  });
}
