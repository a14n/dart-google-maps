library example;

import 'dart:html';

import 'package:js_wrapping/js_wrapping.dart';
import 'package:google_maps/google_maps.dart';

part 'page.g.dart';

@JsName('google.visualization.ColumnChart')
abstract class _ColumnChart extends JsInterface {
  external factory _ColumnChart(Node div);

  void draw(DataTable data, [JsObject options]);
}

@JsName('google.visualization.DataTable')
abstract class _DataTable extends JsInterface {
  external factory _DataTable();

  void addColumn(String type, [String label, String id]);
  void addRow([JsArray cellArray]);
}

ElevationService elevator;
GMap map;
ColumnChart chart;
final infowindow = new InfoWindow();
Polyline polyline;

// The following path marks a general path from Mt.
// Whitney, the highest point in the continental United
// States to Badwater, Death Vallet, the lowest point.
final LatLng whitney = new LatLng(36.578581, -118.291994);
final LatLng lonepine = new LatLng(36.606111, -118.062778);
final LatLng owenslake = new LatLng(36.433269, -117.950916);
final LatLng beattyjunction = new LatLng(36.588056, -116.943056);
final LatLng panamintsprings = new LatLng(36.339722, -117.467778);
final LatLng badwater = new LatLng(36.23998, -116.83171);

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = lonepine
    ..mapTypeId = MapTypeId.TERRAIN;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  // Create an ElevationService.
  elevator = new ElevationService();

  // Draw the path, using the Visualization API and the Elevation service.
  drawPath();
}

void drawPath() {

  // Create a new chart in the elevation_chart DIV.
  chart = new ColumnChart(document.getElementById('elevation_chart'));

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
  final pathRequest = new PathElevationRequest()
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
    final pathOptions = new PolylineOptions()
      ..path = elevationPath
      ..strokeColor = '#0000CC'
      ..map = map;

    // TODO(aa) https://code.google.com/p/gmaps-api-issues/issues/detail?id=8046
    asJsObject(pathOptions)['opacity'] = 0.4;

    polyline = new Polyline(pathOptions);

    // Extract the data from which to populate the chart.
    // Because the samples are equidistant, the 'Sample'
    // column here does double duty as distance along the
    // X axis.
    final data = new DataTable();
    data.addColumn('string', 'Sample');
    data.addColumn('number', 'Elevation');
    for (final elevation in results) {
      data.addRow(new JsArray.from(['', elevation.elevation]));
    }

    // Draw the chart using the data within its DIV.
    querySelector('#elevation_chart').style.display = 'block';
    chart.draw(data, new JsObject.jsify(
        {'height': 150, 'legend': 'none', 'titleY': 'Elevation (m)'}));
  }
}
