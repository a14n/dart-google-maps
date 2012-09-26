#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

final gmaps.LatLng cafe = jsw.retain(new gmaps.LatLng(37.869085,-122.254775));

void main() {
  js.scoped(() {
    final panoramaOptions = new gmaps.StreetViewPanoramaOptions()
      ..position = cafe
      ..pov = (new gmaps.StreetViewPov()
        ..heading = 270
        ..pitch = 0
        ..zoom = 1
      )
      ..visible = true
      ;
    final panorama = new gmaps.StreetViewPanorama(query('#pano'), panoramaOptions);

    jsw.retainAll([panorama]);
    gmaps.Events.addListener(panorama, 'pano_changed', (e) {
      final panoCell = query('#pano_cell');
      panoCell.innerHTML = panorama.getPano();
    });

    jsw.retainAll([panorama]);
    gmaps.Events.addListener(panorama, 'links_changed', (e) {
      final linksTable = query('#links_table');
      linksTable.elements.clear();
      final links =  panorama.getLinks();
      for (int i = 0; i < links.length; i++) {
        final row = new TableRowElement();
        linksTable.elements.add(row);
        final labelCell = new TableCellElement();
        labelCell.innerHTML = '<b>Link: ${i}</b>';
        final valueCell = new TableCellElement();
        valueCell.innerHTML = links[i].description;
        linksTable.elements.add(labelCell);
        linksTable.elements.add(valueCell);
      }
    });

    jsw.retainAll([panorama]);
    gmaps.Events.addListener(panorama, 'position_changed', (e) {
      final positionCell = query('#position_cell');
      positionCell.innerHTML = '${panorama.getPosition()}';
    });

    jsw.retainAll([panorama]);
    gmaps.Events.addListener(panorama, 'pov_changed', (e) {
      final headingCell = query('#heading_cell');
      final pitchCell = query('#pitch_cell');
      headingCell.innerHTML = '${panorama.getPov().heading}';
      pitchCell.innerHTML = '${panorama.getPov().pitch}';
    });
  });
}