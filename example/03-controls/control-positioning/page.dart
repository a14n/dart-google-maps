import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  GMap(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..zoom = 12
      ..center = LatLng(-28.643387, 153.612224)
      ..mapTypeControl = true
      ..mapTypeControlOptions = (MapTypeControlOptions()
        ..style = MapTypeControlStyle.HORIZONTAL_BAR
        ..position = ControlPosition.TOP_CENTER)
      ..zoomControl = true
      ..zoomControlOptions =
          (ZoomControlOptions()..position = ControlPosition.LEFT_CENTER)
      ..scaleControl = true
      ..streetViewControl = true
      ..streetViewControlOptions =
          (StreetViewControlOptions()..position = ControlPosition.LEFT_TOP)
      ..fullscreenControl = true,
  );
}
