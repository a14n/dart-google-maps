#import('dart:html');
#import('dart:math');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
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
}
