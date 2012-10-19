#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 12
      ..center = new gmaps.LatLng(-28.643387, 153.612224)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ..mapTypeControl = true
      ..mapTypeControlOptions = (new gmaps.MapTypeControlOptions()
        ..style = gmaps.MapTypeControlStyle.HORIZONTAL_BAR
        ..position = gmaps.ControlPosition.BOTTOM_CENTER
      )
      ..panControl = true
      ..panControlOptions = (new gmaps.PanControlOptions()
        ..position = gmaps.ControlPosition.TOP_RIGHT
      )
      ..zoomControl = true
      ..zoomControlOptions = (new gmaps.ZoomControlOptions()
        ..style = gmaps.ZoomControlStyle.LARGE
        ..position = gmaps.ControlPosition.LEFT_CENTER
      )
      ..scaleControl = true
      ..scaleControlOptions = (new gmaps.ScaleControlOptions()
        ..position = gmaps.ControlPosition.TOP_LEFT
      )
      ..streetViewControl = true
      ..streetViewControlOptions = (new gmaps.StreetViewControlOptions()
        ..position = gmaps.ControlPosition.LEFT_TOP
      )
      ;

    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  });
}
