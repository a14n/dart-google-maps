import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_weather.dart';

void main() {
  js.scoped(() {
    final mapOptions = new MapOptions()
      ..zoom = 6
      ..center = new LatLng(49.265984,-123.127491)
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);

    final weatherLayer = new WeatherLayer(new WeatherLayerOptions()
      ..temperatureUnits = TemperatureUnit.FAHRENHEIT
    );
    weatherLayer.map = map;

    final cloudLayer = new CloudLayer();
    cloudLayer.map = map;
  });
}
