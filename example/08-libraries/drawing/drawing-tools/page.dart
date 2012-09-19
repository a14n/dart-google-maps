#import('dart:html');
#import('../../../../lib/gmaps.dart', prefix:'gmaps');
#import('../../../../lib/gmaps-drawing.dart', prefix:'gmaps_draw');

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples";

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..center = new gmaps.LatLng(-34.397, 150.644)
    ..zoom = 8
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final drawingManager = new gmaps_draw.DrawingManager(new gmaps_draw.DrawingManagerOptions()
    ..drawingMode = gmaps_draw.OverlayType.MARKER
    ..drawingControl = true
    ..drawingControlOptions = (new gmaps_draw.DrawingControlOptions()
      ..position = gmaps.ControlPosition.TOP_CENTER
      ..drawingModes = [
        gmaps_draw.OverlayType.MARKER,
        gmaps_draw.OverlayType.CIRCLE
      ]
    )
    ..markerOptions = (new gmaps.MarkerOptions()
      ..icon = '${IMAGE_URL}/images/beachflag.png'
    )
    ..circleOptions = (new gmaps.CircleOptions()
      ..fillColor = '#ffff00'
      ..fillOpacity = 1
      ..strokeWeight = 5
      ..clickable = false
      ..editable = true
      ..zIndex = 1
    )
  );
  drawingManager.setMap(map);
}