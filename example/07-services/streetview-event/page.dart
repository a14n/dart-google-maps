#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

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
    panorama.on.panoChanged.add(() {
      final panoCell = query('#pano_cell');
      panoCell.innerHTML = panorama.pano;
    });

    jsw.retainAll([panorama]);
    panorama.on.linksChanged.add(() {
      final linksTable = query('#links_table');
      linksTable.elements.clear();
      final links =  panorama.links;
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
    panorama.on.positionChanged.add(() {
      final positionCell = query('#position_cell');
      positionCell.innerHTML = '${panorama.position}';
    });

    jsw.retainAll([panorama]);
    panorama.on.povChanged.add(() {
      final headingCell = query('#heading_cell');
      final pitchCell = query('#pitch_cell');
      headingCell.innerHTML = '${panorama.pov.heading}';
      pitchCell.innerHTML = '${panorama.pov.pitch}';
    });
  });
}