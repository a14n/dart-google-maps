@JS()
library example;

import 'dart:js_util';

import 'package:google_maps/google_maps.dart';
import 'package:js/js.dart';
import 'package:web/web.dart';

@JS('google.visualization.ColumnChart')
class ColumnChart {
  external factory ColumnChart(Node div);

  external void draw(DataTable data, [Object options]);
}

@JS('google.visualization.DataTable')
class DataTable {
  external factory DataTable();

  external void addColumn(String type, [String label, String id]);
  external void addRow([List cells]);
}

late ElevationService elevator;
late GMap map;
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
  map = GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  // Create an ElevationService.
  elevator = ElevationService();

  // Draw the path, using the Visualization API and the Elevation service.
  drawPath();
}

void drawPath() {
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
  elevator.getElevationAlongPath(pathRequest, plotElevation);
}

// Takes an array of ElevationResult objects, draws the path on the map
// and plots the elevation profile on a Visualization API ColumnChart.
void plotElevation(List<ElevationResult?>? results, ElevationStatus? status) {
  if (status == ElevationStatus.OK) {
    // Extract the elevation samples from the returned results
    // and store them in an array of LatLngs.
    final elevationPath = [];
    for (final elevation in results!) {
      elevationPath.add(elevation!.location);
    }

    // Display a polyline of the elevation path.
    final pathOptions = PolylineOptions()
      ..path = elevationPath
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
    for (final elevation in results) {
      data.addRow(['', elevation!.elevation]);
    }

    // Draw the chart using the data within its DIV.
    (document.querySelector('#elevation_chart')! as HTMLElement).style.display =
        'block';
    chart.draw(data,
        jsify({'height': 150, 'legend': 'none', 'titleY': 'Elevation (m)'}));
  }
}
