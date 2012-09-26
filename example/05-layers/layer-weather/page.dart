#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');
#import('package:dart_google_maps/gmaps-weather.dart', prefix:'gmaps_weather');

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 6
      ..center = new gmaps.LatLng(49.265984,-123.127491)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final weatherLayer = new gmaps_weather.WeatherLayer(new gmaps_weather.WeatherLayerOptions()
      ..temperatureUnits = gmaps_weather.TemperatureUnit.FAHRENHEIT
    );
    weatherLayer.setMap(map);

    final cloudLayer = new gmaps_weather.CloudLayer();
    cloudLayer.setMap(map);
  });
}
