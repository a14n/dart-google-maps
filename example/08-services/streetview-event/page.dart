import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  final panorama = StreetViewPanorama(
    document.getElementById('pano'),
    StreetViewPanoramaOptions()
      ..position = LatLng(37.869, -122.255)
      ..pov = (StreetViewPov()
        ..heading = 270
        ..pitch = 0)
      ..visible = true,
  );

  panorama.onPanoChanged.listen((_) {
    document.getElementById('pano_cell').innerHtml = panorama.pano;
  });

  Event.addListener(panorama, 'links_changed', () {
    final linksTable = document.getElementById('links_table');
    linksTable.children.clear();
    final links = panorama.links;
    for (var i = 0; i < links.length; i++) {
      final row = TableRowElement();
      linksTable.children.add(row);
      final labelCell = TableCellElement()..innerHtml = '<b>Link: $i</b>';
      final valueCell = TableCellElement()..innerHtml = links[i].description;
      linksTable.children.add(labelCell);
      linksTable.children.add(valueCell);
    }
  });

  panorama.onPositionChanged.listen((_) {
    document.getElementById('position_cell').innerHtml = '${panorama.position}';
  });

  panorama.onPovChanged.listen((_) {
    final headingCell = document.getElementById('heading_cell');
    final pitchCell = document.getElementById('pitch_cell');
    headingCell.innerHtml = '${panorama.pov.heading}';
    pitchCell.innerHtml = '${panorama.pov.pitch}';
  });
}
