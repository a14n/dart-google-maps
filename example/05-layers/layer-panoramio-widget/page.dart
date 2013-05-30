import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:js/js_wrapping.dart' as jsw;
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_panoramio.dart';

js.Serializable<js.Proxy> jsifyList(List list) => (list is js.Serializable<js.Proxy>) ? list : js.array(list);

class PhotoWidget extends jsw.TypedProxy {
  PhotoWidget(DivElement div, PhotoRequestOptions photoRequestOptions, PhotoWidgetOptions photoWidgetOptions) : super(js.context.panoramio.PhotoWidget, [div, photoRequestOptions, photoWidgetOptions]);

  void setRequest(PhotoRequestOptions photoRequestOptions) { $unsafe.setRequest(photoRequestOptions); }
  void setPosition(num position) { $unsafe.setPosition(position); }
}

class PhotoWidgetOptions extends jsw.TypedProxy {
  PhotoWidgetOptions() : super();

  set width(num width) => $unsafe.width = width;
  set height(num height) => $unsafe.height = height;
}

class PhotoRequestOptions extends jsw.TypedProxy {
  PhotoRequestOptions() : super();

  set ids(List<PhotoRequestOptionsId> ids) => $unsafe.ids = jsifyList(ids);
}

class PhotoRequestOptionsId extends jsw.TypedProxy {
  PhotoRequestOptionsId() : super();

  set photoId(String photoId) => $unsafe.photoId = photoId;
  set userId(String userId) => $unsafe.userId = userId;
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
  final map = new GMap(query("#map_canvas"), mapOptions);

  final infoWindow = new InfoWindow();
  final panoramioLayer = new PanoramioLayer(new PanoramioLayerOptions()
    ..suppressInfoWindows = true
  );

  panoramioLayer.map = map;

  [photoWidget, infoWindow, map].forEach(js.retain);
  panoramioLayer.onClick.listen((e) {
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
}
