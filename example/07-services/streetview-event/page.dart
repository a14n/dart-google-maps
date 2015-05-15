import 'dart:html';

import 'package:google_maps/google_maps.dart';

final cafe = new LatLng(37.869085, -122.254775);

void main() {
  final panoramaOptions = new StreetViewPanoramaOptions()
    ..position = cafe
    ..pov = (new StreetViewPov()
      ..heading = 270
      ..pitch = 0)
    ..visible = true;
  final panorama =
      new StreetViewPanorama(document.getElementById('pano'), panoramaOptions);

  panorama.onPanoChanged.listen((_) {
    final panoCell = document.getElementById('pano_cell');
    panoCell.innerHtml = panorama.pano;
  });

  panorama.onLinksChanged.listen((_) {
    final linksTable = document.getElementById('links_table');
    linksTable.children.clear();
    final links = panorama.links;
    for (int i = 0; i < links.length; i++) {
      final row = new TableRowElement();
      linksTable.children.add(row);
      final labelCell = new TableCellElement();
      labelCell.innerHtml = '<b>Link: ${i}</b>';
      final valueCell = new TableCellElement();
      valueCell.innerHtml = links[i].description;
      linksTable.children.add(labelCell);
      linksTable.children.add(valueCell);
    }
  });

  panorama.onPositionChanged.listen((_) {
    final positionCell = document.getElementById('position_cell');
    positionCell.innerHtml = '${panorama.position}';
  });

  panorama.onPovChanged.listen((_) {
    final headingCell = document.getElementById('heading_cell');
    final pitchCell = document.getElementById('pitch_cell');
    headingCell.innerHtml = '${panorama.pov.heading}';
    pitchCell.innerHtml = '${panorama.pov.pitch}';
  });
}
