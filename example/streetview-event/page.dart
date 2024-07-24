import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_streetview.dart';
import 'package:web/web.dart';

void main() {
  final panorama = StreetViewPanorama(
    document.getElementById('pano') as HTMLElement,
    StreetViewPanoramaOptions()
      ..position = LatLng(37.869, -122.255)
      ..pov = (StreetViewPov()
        ..heading = 270
        ..pitch = 0)
      ..visible = true,
  );

  panorama.onPanoChanged.listen((_) {
    document.getElementById('pano_cell')!.innerHTML = panorama.pano.toJS;
  });

  panorama.addListener(
    'links_changed',
    () {
      final linksTable =
          document.getElementById('links_table') as HTMLTableElement;
      while (linksTable.hasChildNodes()) {
        linksTable.removeChild(linksTable.firstChild!);
      }
      final links = panorama.links;
      for (var i = 0; i < links.toDart.length; i++) {
        linksTable.insertRow()
          ..insertCell().innerHTML = '<b>Link: $i</b>'.toJS
          ..insertCell().innerHTML = (links.toDart[i].description ?? '').toJS;
      }
    }.toJS,
  );

  panorama.onPositionChanged.listen((_) {
    document.getElementById('position_cell')!.innerHTML =
        '${panorama.position}'.toJS;
  });

  panorama.onPovChanged.listen((_) {
    final headingCell = document.getElementById('heading_cell')!;
    final pitchCell = document.getElementById('pitch_cell')!;
    headingCell.textContent = '${panorama.pov.heading}';
    pitchCell.textContent = '${panorama.pov.pitch}';
  });
}
