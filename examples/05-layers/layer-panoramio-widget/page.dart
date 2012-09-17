#import('dart:html');
#import('../../../jsni.dart', prefix:'js');
#import('../../../gmaps.dart', prefix:'gmaps');
#import('../../../gmaps-panoramio.dart', prefix:'gmaps_panoramio');

class PhotoWidget extends js.JsObject {
  static const String TYPE_NAME = "panoramio.PhotoWidget";

  PhotoWidget(DivElement div, PhotoRequestOptions photoRequestOptions, PhotoWidgetOptions photoWidgetOptions) : super.newInstance(TYPE_NAME, [div, photoRequestOptions, photoWidgetOptions]);

  void setRequest(PhotoRequestOptions photoRequestOptions) { $.callJs("setRequest", [photoRequestOptions]); }
  void setPosition(num position) { $.callJs("setPosition", [position]); }
}

class PhotoWidgetOptions extends js.JsObject {
  set width(num width) => $["width"] = width;
  set height(num height) => $["height"] = height;
}

class PhotoRequestOptions extends js.JsObject {
  set ids(List<PhotoRequestOptionsId> ids) => $["ids"] = ids;
}

class PhotoRequestOptionsId extends js.JsObject {
  set photoId(String photoId) => $["photoId"] = photoId;
  set userId(String userId) => $["userId"] = userId;
}

void main() {
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

  panoramioLayer.setMap(map);

  gmaps.Events.addListener(panoramioLayer, 'click', (e) {
    final photo = new gmaps_panoramio.PanoramioMouseEvent.wrap(e);
    final photoRequestOptions = new PhotoRequestOptions()
      ..ids = [new PhotoRequestOptionsId()
                 ..photoId = photo.featureDetails.photoId
                 ..userId = photo.featureDetails.userId
      ]
      ;
    photoWidget.setRequest(photoRequestOptions);
    photoWidget.setPosition(0);
    infoWindow.setPosition(photo.latLng);
    infoWindow.open(map);
    infoWindow.setContent(photoDiv);
  });
}
