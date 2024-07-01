import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_elevation.dart';
import 'package:web/web.dart';

@JS('google.visualization.ColumnChart')
extension type ColumnChart._(JSObject _) implements JSObject {
  external ColumnChart(Node div);

  external void draw(DataTable data, [JSAny options]);
}

@JS('google.visualization.DataTable')
extension type DataTable._(JSObject _) implements JSObject {
  external DataTable();

  external void addColumn(String type, [String label, String id]);
  external void addRow([JSArray cells]);
}

late ElevationService elevator;
late Map map;
late ColumnChart chart;
final infowindow = InfoWindow();
late Polyline polyline;

// The following path marks a general path from Mt.
// Whitney, the highest point in the continental United
// States to Badwater, Death Vallet, the lowest point.
final LatLng whitney = LatLng(36.578581, -118.291994);
final LatLng lonepine = LatLng(36.606111, -118.062778);
final LatLng owenslake = LatLng(36.433269, -117.950916);
final LatLng beattyjunction = LatLng(36.588056, -116.943056);
final LatLng panamintsprings = LatLng(36.339722, -117.467778);
final LatLng badwater = LatLng(36.23998, -116.83171);

void main() {
  final mapOptions = MapOptions()
    ..zoom = 8
    ..center = lonepine
    ..mapTypeId = MapTypeId.TERRAIN;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  // Create an ElevationService.
  elevator = ElevationService();

  // Draw the path, using the Visualization API and the Elevation service.
  drawPath();
}

void drawPath() async {
  // Create a new chart in the elevation_chart DIV.
  chart = ColumnChart(document.getElementById('elevation_chart')!);

  final path = [
    whitney,
    lonepine,
    owenslake,
    panamintsprings,
    beattyjunction,
    badwater
  ];

  // Create a PathElevationRequest object using this array.
  // Ask for 256 samples along that path.
  final pathRequest = PathElevationRequest()
    ..path = path
    ..samples = 256;

  // Initiate the path request.
  final response = await elevator.getElevationAlongPath(pathRequest);

  // Takes an array of ElevationResult objects, draws the path on the map
  // and plots the elevation profile on a Visualization API ColumnChart.
  // Extract the elevation samples from the returned results
  // and store them in an array of LatLngs.
  final elevationPath = <LatLng?>[];
  for (final elevation in response.results) {
    elevationPath.add(elevation.location);
  }

  // Display a polyline of the elevation path.
  final pathOptions = PolylineOptions()
    ..path = elevationPath.toJS
    ..strokeColor = '#0000CC'
    ..strokeOpacity = 0.4
    ..map = map;

  polyline = Polyline(pathOptions);

  // Extract the data from which to populate the chart.
  // Because the samples are equidistant, the 'Sample'
  // column here does double duty as distance along the
  // X axis.
  final data = DataTable()
    ..addColumn('string', 'Sample')
    ..addColumn('number', 'Elevation');
  for (final elevation in response.results) {
    data.addRow(['', elevation.elevation].jsify() as JSArray);
  }

  // Draw the chart using the data within its DIV.
  (document.querySelector('#elevation_chart')! as HTMLElement).style.display =
      'block';
  chart.draw(
      data,
      {'height': 150, 'legend': 'none', 'titleY': 'Elevation (m)'}.jsify()
          as JSArray);
}
