library example;

import 'dart:html';

import 'package:js_wrapping/js_wrapping.dart';
import 'package:google_maps/google_maps.dart';

part 'page.g.dart';

@JsName('google.visualization.ColumnChart')
abstract class _ColumnChart extends JsInterface {
  factory _ColumnChart(Node div) => null;

  void draw(DataTable data, [JsObject options]);
}

@JsName('google.visualization.DataTable')
abstract class _DataTable extends JsInterface {
  factory _DataTable() => null;

  void addColumn(String type, [String label, String id]);
  void addRow([JsArray cellArray]);
}

ElevationService elevator;
GMap map;
ColumnChart chart;
final infowindow = InfoWindow();
Polyline polyline;

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
  map = GMap(document.getElementById('map-canvas'), mapOptions);

  // Create an ElevationService.
  elevator = ElevationService();

  // Draw the path, using the Visualization API and the Elevation service.
  drawPath();
}

void drawPath() {
  // Create a new chart in the elevation_chart DIV.
  chart = ColumnChart(document.getElementById('elevation_chart'));

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
  elevator.getElevationAlongPath(pathRequest, plotElevation);
}

// Takes an array of ElevationResult objects, draws the path on the map
// and plots the elevation profile on a Visualization API ColumnChart.
void plotElevation(List<ElevationResult> results, ElevationStatus status) {
  if (status == ElevationStatus.OK) {
    // Extract the elevation samples from the returned results
    // and store them in an array of LatLngs.
    final elevationPath = [];
    for (final elevation in results) {
      elevationPath.add(elevation.location);
    }

    // Display a polyline of the elevation path.
    final pathOptions = PolylineOptions()
      ..path = elevationPath
      ..strokeColor = '#0000CC'
      ..map = map;

    // TODO(aa) https://code.google.com/p/gmaps-api-issues/issues/detail?id=8046
    asJsObject(pathOptions)['opacity'] = 0.4;

    polyline = Polyline(pathOptions);

    // Extract the data from which to populate the chart.
    // Because the samples are equidistant, the 'Sample'
    // column here does double duty as distance along the
    // X axis.
    final data = DataTable()
      ..addColumn('string', 'Sample')
      ..addColumn('number', 'Elevation');
    for (final elevation in results) {
      data.addRow(JsArray.from(['', elevation.elevation]));
    }

    // Draw the chart using the data within its DIV.
    querySelector('#elevation_chart').style.display = 'block';
    chart.draw(
        data,
        JsObject.jsify(
            {'height': 150, 'legend': 'none', 'titleY': 'Elevation (m)'}));
  }
}
