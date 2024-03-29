import 'package:google_maps/google_maps.dart';
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
    document.getElementById('pano_cell')!.innerHTML = panorama.pano!;
  });

  panorama.addListener('links_changed', () {
    final linksTable =
        document.getElementById('links_table') as HTMLTableElement;
    while (linksTable.hasChildNodes()) {
      linksTable.removeChild(linksTable.firstChild!);
    }
    final links = panorama.links!;
    for (var i = 0; i < links.length; i++) {
      linksTable.insertRow()
        ..insertCell().innerHTML = '<b>Link: $i</b>'
        ..insertCell().innerHTML = links[i]!.description ?? '';
    }
  });

  panorama.onPositionChanged.listen((_) {
    document.getElementById('position_cell')!.innerHTML =
        '${panorama.position}';
  });

  panorama.onPovChanged.listen((_) {
    final headingCell = document.getElementById('heading_cell')!;
    final pitchCell = document.getElementById('pitch_cell')!;
    headingCell.textContent = '${panorama.pov!.heading}';
    pitchCell.textContent = '${panorama.pov!.pitch}';
  });
}
