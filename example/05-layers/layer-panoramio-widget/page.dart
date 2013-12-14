import 'dart:html';
import 'dart:js' as js;

import 'package:js_wrapping/js_wrapping.dart' as jsw;
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_panoramio.dart';

class PhotoWidget extends jsw.TypedJsObject {
  PhotoWidget(DivElement div, PhotoRequestOptions photoRequestOptions, PhotoWidgetOptions photoWidgetOptions) : super(js.context['panoramio']['PhotoWidget'], [div, photoRequestOptions, photoWidgetOptions]);

  void set request(PhotoRequestOptions photoRequestOptions) { $unsafe.callMethod('setRequest', [photoRequestOptions]); }
  void set position(num position) { $unsafe.callMethod('setPosition', [position]); }
}

class PhotoWidgetOptions extends jsw.TypedJsObject {
  PhotoWidgetOptions() : super();

  set width(num width) => $unsafe['width'] = width;
  set height(num height) => $unsafe['height'] = height;
}

class PhotoRequestOptions extends jsw.TypedJsObject {
  PhotoRequestOptions() : super();

  set ids(List<PhotoRequestOptionsId> ids) => $unsafe['ids'] = (ids == null ? null : ids is js.JsArray ? ids : jsw.jsify(ids));
}

class PhotoRequestOptionsId extends jsw.TypedJsObject {
  PhotoRequestOptionsId() : super();

  set photoId(String photoId) => $unsafe['photoId'] = photoId;
  set userId(String userId) => $unsafe['userId'] = userId;
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

  final monoLake = new LatLng(37.973432, -119.093170);
  final mapOptions = new MapOptions()
    ..zoom = 11
    ..center = monoLake
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);

  final infoWindow = new InfoWindow();
  final panoramioLayer = new PanoramioLayer(new PanoramioLayerOptions()
    ..suppressInfoWindows = true
  );

  panoramioLayer.map = map;

  panoramioLayer.onClick.listen((e) {
    final photoRequestOptions = new PhotoRequestOptions()
      ..ids = [new PhotoRequestOptionsId()
        ..photoId = e.featureDetails.photoId
        ..userId = e.featureDetails.userId
      ]
      ;
    photoWidget.request = photoRequestOptions;
    photoWidget.position = 0;
    infoWindow.position = e.latLng;
    infoWindow.open(map);
    infoWindow.content = photoDiv;
  });
}
