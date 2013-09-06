import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples/full";

USGSOverlay overlay;

void main() {
  final myLatLng = new LatLng(62.323907, -150.109291);
  final mapOptions = new MapOptions()
    ..zoom = 11
    ..center = myLatLng
    ..mapTypeId = MapTypeId.SATELLITE
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);

  final swBound = new LatLng(62.281819, -150.287132);
  final neBound = new LatLng(62.400471, -150.005608);
  final bounds = new LatLngBounds(swBound, neBound);

  // Photograph courtesy of the U.S. Geological Survey
  final srcImage = '${IMAGE_URL}/images/talkeetna.png';
  overlay = js.retain(new USGSOverlay(bounds, srcImage, map));
}

class USGSOverlay extends OverlayView {
  LatLngBounds _bounds;
  String _image;
  GMap _map;

  DivElement _div;

  USGSOverlay(LatLngBounds bounds, String image, GMap map) : super() {
    set_onAdd(_onAdd);
    set_draw(_draw);
    set_onRemove(_onRemove);

    // Now initialize all properties.
    _bounds = js.retain(bounds);
    _image = image;
    _map = js.retain(map);

    // We define a property to hold the image's
    // div. We'll actually create this div
    // upon receipt of the add() method so we'll
    // leave it null for now.
    _div = null;

    // Explicitly call setMap on this overlay
    this.map = map;
  }

  void _onAdd() {

    // Note: an overlay's receipt of add() indicates that
    // the map's panes are now available for attaching
    // the overlay to the map via the DOM.

    // Create the DIV and set some basic attributes.
    final div = new DivElement();
    div.style
      ..border = 'none'
      ..borderWidth = '0px'
      ..position = 'absolute'
      ;

    // Create an IMG element and attach it to the DIV.
    final img = new ImageElement()
      ..src = _image
      ;
    img.style
      ..width = '100%'
      ..height = '100%'
      ..position = 'absolute'
      ;
    div.children.add(img);

    // Set the overlay's div_ property to this DIV
    _div = div;

    // We add an overlay to a map via one of the map's panes.
    // We'll add this overlay to the overlayImage pane.
    (panes.overlayImage as Element).children.add(_div);
  }

  void _draw() {
    // Size and position the overlay. We use a southwest and northeast
    // position of the overlay to peg it to the correct position and size.
    // We need to retrieve the projection from this overlay to do this.
    final overlayProjection = this.projection;

    // Retrieve the southwest and northeast coordinates of this overlay
    // in latlngs and convert them to pixels coordinates.
    // We'll use these coordinates to resize the DIV.
    final sw = overlayProjection.fromLatLngToDivPixel(_bounds.southWest);
    final ne = overlayProjection.fromLatLngToDivPixel(_bounds.northEast);

    // Resize the image's DIV to fit the indicated dimensions.
    final div = _div;
    div.style
      ..left = '${sw.x}px'
      ..top = '${ne.y}px'
      ..width = '${ne.x - sw.x}px'
      ..height = '${sw.y - ne.y}px'
      ;
  }

  void _onRemove() {
    _div.remove();
    _div = null;
  }
}
