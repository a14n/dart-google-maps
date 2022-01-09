import 'dart:html';

import 'package:google_maps/google_maps.dart';

const IMAGE_URL =
    'https://google-developers.appspot.com/maps/documentation/javascript/examples/full';

late USGSOverlay overlay;

void main() {
  final myLatLng = LatLng(62.323907, -150.109291);
  final mapOptions = MapOptions()
    ..zoom = 11
    ..center = myLatLng
    ..mapTypeId = MapTypeId.SATELLITE;
  final map =
      GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);

  final swBound = LatLng(62.281819, -150.287132);
  final neBound = LatLng(62.400471, -150.005608);
  final bounds = LatLngBounds(swBound, neBound);

  // The photograph is courtesy of the U.S. Geological Survey.
  const srcImage = '$IMAGE_URL/images/talkeetna.png';
  overlay = USGSOverlay(bounds, srcImage, map);

  document.getElementById('toggle')!.onClick.listen((e) => overlay.toggle());
  document
      .getElementById('toggleDOM')!
      .onClick
      .listen((e) => overlay.toggleDOM());
}

class USGSOverlay {
  USGSOverlay(this._bounds, this._image, this._map) {
    overlayView
      ..onAdd = _onAdd
      ..draw = _draw
      ..onRemove = _onRemove

      // Explicitly call setMap on this overlay
      ..map = _map;
  }

  final overlayView = OverlayView();

  final LatLngBounds _bounds;
  final String _image;
  final GMap _map;

  DivElement? _div;

  /// onAdd is called when the map's panes are ready and the overlay has been
  /// added to the map.
  void _onAdd() {
    final div = DivElement();
    div.style
      ..border = 'none'
      ..borderWidth = '0px'
      ..position = 'absolute';

    // Create the img element and attach it to the div.
    final img = ImageElement()..src = _image;
    img.style
      ..width = '100%'
      ..height = '100%';
    div.children.add(img);

    _div = div;

    // Add the element to the "overlayImage" pane.
    overlayView.panes!.overlayLayer!.children.add(div);
  }

  void _draw() {
    // We use the south-west and north-east
    // coordinates of the overlay to peg it to the correct position and size.
    // To do this, we need to retrieve the projection from the overlay.
    final overlayProjection = overlayView.projection!;

    // Retrieve the south-west and north-east coordinates of this overlay
    // in LatLngs and convert them to pixel coordinates.
    // We'll use these coordinates to resize the div.
    final sw = overlayProjection.fromLatLngToDivPixel(_bounds.southWest);
    final ne = overlayProjection.fromLatLngToDivPixel(_bounds.northEast);

    // Resize the image's div to fit the indicated dimensions.
    final div = _div!;
    div.style
      ..left = '${sw!.x}px'
      ..top = '${ne!.y}px'
      ..width = '${ne.x! - sw.x!}px'
      ..height = '${sw.y! - ne.y!}px';
  }

  void _onRemove() {
    _div!.remove();
  }

  /// Set the visibility to 'hidden' or 'visible'.
  void hide() {
    if (_div != null) {
      _div!.style.visibility = 'hidden';
    }
  }

  void show() {
    if (_div != null) {
      _div!.style.visibility = 'visible';
    }
  }

  void toggle() {
    if (_div != null) {
      if (_div!.style.visibility == 'hidden') {
        show();
      } else {
        hide();
      }
    }
  }

  void toggleDOM() {
    if (overlayView.map != null) {
      overlayView.map = null;
    } else {
      overlayView.map = _map;
    }
  }
}
