#import('dart:html');
#import('../../../lib/jsni.dart', prefix:'js');
#import('../../../lib/gmaps.dart', prefix:'gmaps');

class ColumnChart extends js.JsObject {
  static const String TYPE_NAME = "google.visualization.ColumnChart";

  ColumnChart(Node div) : super.newInstance(TYPE_NAME, [div]);

  void draw(DataTable data, [js.JsObject options]) { $.call("draw", [data, options]); }
}

class DataTable extends js.JsObject {
  static const String TYPE_NAME = "google.visualization.DataTable";

  DataTable() : super.newInstance(TYPE_NAME);

  void addColumn(String type, [String label, String id]) { $.call("addColumn", [type, label, id]); }
  void addRow([List<Object> cellArray]) { $.call("addRow", [cellArray]); }
}

gmaps.ElevationService elevator;
gmaps.GMap map;
ColumnChart chart;

// The following path marks a general path from Mt.
// Whitney, the highest point in the continental United
// States to Badwater, Death Vallet, the lowest point.
gmaps.LatLng whitney;
gmaps.LatLng lonepine;
gmaps.LatLng owenslake;
gmaps.LatLng beattyjunction;
gmaps.LatLng panamintsprings;
gmaps.LatLng badwater;

void main() {
  var infowindow = new gmaps.InfoWindow();

  // The following path marks a general path from Mt.
  // Whitney, the highest point in the continental United
  // States to Badwater, Death Vallet, the lowest point.
  whitney = new gmaps.LatLng(36.578581, -118.291994);
  lonepine = new gmaps.LatLng(36.606111, -118.062778);
  owenslake = new gmaps.LatLng(36.433269, -117.950916);
  beattyjunction = new gmaps.LatLng(36.588056, -116.943056);
  panamintsprings = new gmaps.LatLng(36.339722, -117.467778);
  badwater = new gmaps.LatLng(36.23998, -116.83171);

  final mapOptions = new gmaps.MapOptions()
    ..zoom = 8
    ..center = lonepine
    ..mapTypeId = gmaps.MapTypeId.TERRAIN
    ;
  map = new gmaps.GMap(query('#map_canvas'), mapOptions);

  // Create an ElevationService.
  elevator = new gmaps.ElevationService();

  // Draw the path, using the Visualization API and the Elevation service.
  drawPath();
}

void drawPath() {

  // Create a new chart in the elevation_chart DIV.
  chart = new ColumnChart(query('#elevation_chart'));

  final path = [ whitney, lonepine, owenslake, panamintsprings, beattyjunction, badwater];

  // Create a PathElevationRequest object using this array.
  // Ask for 256 samples along that path.
  final pathRequest = new gmaps.PathElevationRequest()
    ..path = path
    ..samples = 256
    ;

  // Initiate the path request.
  elevator.getElevationAlongPath(pathRequest, plotElevation);
}

// Takes an array of ElevationResult objects, draws the path on the map
// and plots the elevation profile on a Visualization API ColumnChart.
void plotElevation(List<gmaps.ElevationResult> results, gmaps.ElevationStatus status) {
  if (status == gmaps.ElevationStatus.OK) {
    // Extract the elevation samples from the returned results
    // and store them in an array of LatLngs.
    final elevationPath = [];
    for (final elevation in results) {
      elevationPath.add(elevation.location);
    }

    // Display a polyline of the elevation path.
    final pathOptions = new gmaps.PolylineOptions()
      ..path = elevationPath
      ..strokeColor = '#0000CC'
      ..$["opacity"] = 0.4  // TODO not in doc
      ..map = map
      ;
    final polyline = new gmaps.Polyline(pathOptions);

    // Extract the data from which to populate the chart.
    // Because the samples are equidistant, the 'Sample'
    // column here does double duty as distance along the
    // X axis.
    final data = new DataTable();
    data.addColumn('string', 'Sample');
    data.addColumn('number', 'Elevation');
    for (final elevation in results) {
      data.addRow(['', elevation.elevation]);
    }

    // Draw the chart using the data within its DIV.
    query('#elevation_chart').style.display = 'block';
    chart.draw(data, new js.JsObject()
      ..$["width"] = 640
      ..$["height"] = 200
      ..$["legend"] = 'none'
      ..$["titleY"] = 'Elevation (m)'
    );
  }
}