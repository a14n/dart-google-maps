import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;
import 'package:google_maps/gmaps_panoramio.dart' as gmaps_panoramio;

class PhotoWidget extends jsw.IsJsProxy {
  PhotoWidget(DivElement div, PhotoRequestOptions photoRequestOptions, PhotoWidgetOptions photoWidgetOptions) : super.newInstance(js.context.panoramio.PhotoWidget, [div, photoRequestOptions, photoWidgetOptions]);

  void setRequest(PhotoRequestOptions photoRequestOptions) { $.setRequest(photoRequestOptions); }
  void setPosition(num position) { $.setPosition(position); }
}

class PhotoWidgetOptions extends jsw.IsJsProxy {
  set width(num width) => $.width = width;
  set height(num height) => $.height = height;
}

class PhotoRequestOptions extends jsw.IsJsProxy {
  set ids(List<PhotoRequestOptionsId> ids) => $.ids = ids;
}

class PhotoRequestOptionsId extends jsw.IsJsProxy {
  set photoId(String photoId) => $.photoId = photoId;
  set userId(String userId) => $.userId = userId;
}

void main() {
  js.scoped(() {
    // The photoDiv defines the DIV within the info window for
    // displaying the Panoramio photo within its PhotoWidget.
    final photoDiv = new DivElement();

    // The PhotoWidget width and height are expressed as number values,
    // not string values.
    final photoWidgetOptions = new PhotoWidgetOptions()
      ..width = 640
      ..height = 500
      ;

    // We construct a PhotoWidget here with a blank (null) request as we
    // don't yet have a photo to populate it.
    final photoWidget = new PhotoWidget(photoDiv, null, photoWidgetOptions);

    final monoLake = new gmaps.LatLng(37.973432, -119.093170);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 11
      ..center = monoLake
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final infoWindow = new gmaps.InfoWindow();
    final panoramioLayer = new gmaps_panoramio.PanoramioLayer(new gmaps_panoramio.PanoramioLayerOptions()
      ..suppressInfoWindows = true
    );

    panoramioLayer.map = map;

    jsw.retainAll([photoWidget, infoWindow, map]);
    panoramioLayer.on.click.add((e) {
      final photoRequestOptions = new PhotoRequestOptions()
        ..ids = [new PhotoRequestOptionsId()
          ..photoId = e.featureDetails.photoId
          ..userId = e.featureDetails.userId
        ]
        ;
      photoWidget.setRequest(photoRequestOptions);
      photoWidget.setPosition(0);
      infoWindow.position = e.latLng;
      infoWindow.open(map);
      infoWindow.content = photoDiv;
    });
  });
}
