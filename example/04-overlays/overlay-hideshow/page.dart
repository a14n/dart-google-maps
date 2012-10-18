#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples";

USGSOverlay overlay;

void main() {
  js.scoped(() {
    final myLatLng = new gmaps.LatLng(62.323907, -150.109291);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 11
      ..center = myLatLng
      ..mapTypeId = gmaps.MapTypeId.SATELLITE
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final swBound = new gmaps.LatLng(62.281819, -150.287132);
    final neBound = new gmaps.LatLng(62.400471, -150.005608);
    final bounds = new gmaps.LatLngBounds(swBound, neBound);

    // Photograph courtesy of the U.S. Geological Survey
    final srcImage = '${IMAGE_URL}/images/talkeetna.png';
    overlay = jsw.retain(new USGSOverlay(bounds, srcImage, map));

    query("#toggle").on.click.add((e) => overlay.toggle());
    query("#toggleDOM").on.click.add((e) => overlay.toggleDOM());
  });
}

class USGSOverlay extends gmaps.OverlayView {
  gmaps.LatLngBounds _bounds;
  String _image;
  gmaps.GMap _map;

  DivElement _div;

  USGSOverlay(gmaps.LatLngBounds bounds, String image, gmaps.GMap map) : super() {
    $.onAdd = new jsw.Callback.many(_onAdd);
    $.draw = new jsw.Callback.many(_draw);
    $.onRemove = new jsw.Callback.many(_onRemove);

    // Now initialize all properties.
    _bounds = jsw.retain(bounds);
    _image = image;
    _map = jsw.retain(map);

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
      ;
    div.elements.add(img);

    // Set the overlay's div_ property to this DIV
    _div = div;

    // We add an overlay to a map via one of the map's panes.
    // We'll add this overlay to the overlayImage pane.
    (panes.overlayImage as Element).elements.add(_div);
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
    var div = _div;
    div.style
      ..left = '${sw.x}px'
      ..top = '${ne.y}px'
      ..width = '${ne.x - sw.x}px'
      ..height = '${sw.y - ne.y}px'
      ;
  }

  void _onRemove() {
    _div.parent.$dom_removeChild(_div);
  }

  // Note that the visibility property must be a string enclosed in quotes
  void hide() {
    if (_div !== null) {
      _div.style.visibility = 'hidden';
    }
  }

  void show() {
    if (_div !== null) {
      _div.style.visibility = 'visible';
    }
  }

  void toggle() {
    if (_div !== null) {
      if (_div.style.visibility == 'hidden') {
        show();
      } else {
        hide();
      }
    }
  }

  void toggleDOM() {
    js.scoped(() {
      if (map !== null) {
        map = null;
      } else {
        map = _map;
      }
    });
  }
}
