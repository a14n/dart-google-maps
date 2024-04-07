import 'dart:convert';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Map map;

void main() {
  initMap();
  initEvents();
}

void initMap() {
  // set up the map
  map = Map(
      document.getElementById('map-canvas') as HTMLElement,
      MapOptions()
        ..zoom = 2
        ..center = LatLng(0, 0));
}

void loadGeoJsonString(String geoString) {
  final geojson = json.decode(geoString);
  map.data.addGeoJson(geojson.jsify());
  zoom(map);
}

/// Update a map's viewport to fit each geometry in a dataset
/// @param {google.maps.Map} map The map to adjust
void zoom(Map map) {
  final bounds = LatLngBounds.empty();
  map.data.forEach((DataFeature feature) {
    processPoints(feature.geometry, (e) => bounds.extend(e));
  }.toJS);
  map.fitBounds(bounds);
}

/// Process each point in a Geometry, regardless of how deep the points may lie.
/// @param {google.maps.Data.Geometry} geometry The structure to process
/// @param {function(google.maps.LatLng)} callback A function to call on each
/// LatLng point encountered (e.g. Array.push)
void processPoints(
    DataGeometry geometry, LatLngBounds? callback(LatLng point)) {
  if (geometry.isA<DataPoint>()) {
    callback((geometry as DataPoint).get());
  } else if (geometry.isA<DataGeometryCollection>()) {
    for (final g in (geometry as DataGeometryCollection).array.toDart) {
      processPoints(g, callback);
    }
  }
}

/* DOM (drag/drop) functions */

void initEvents() {
  // set up the drag & drop events
  final mapContainer = document.getElementById('map-canvas')!;
  final dropContainer = document.getElementById('drop-container')!;

  // map-specific events
  mapContainer.onDragEnter.listen(showPanel);

  // overlay specific events (since it only appears once drag starts)
  dropContainer.onDragOver.listen(showPanel);
  dropContainer.onDrop.listen(handleDrop);
  dropContainer.onDragLeave.listen(hidePanel);
}

void showPanel(MouseEvent e) {
  e
    ..stopPropagation()
    ..preventDefault();
  (document.getElementById('drop-container') as HTMLElement).style.display =
      'block';
}

void hidePanel(MouseEvent e) {
  (document.getElementById('drop-container') as HTMLElement).style.display =
      'none';
}

void handleDrop(MouseEvent e) {
  e
    ..stopPropagation()
    ..preventDefault();
  hidePanel(e);

  final dataTransfer = e.getProperty('dataTransfer'.toJS) as DataTransfer;
  final files = dataTransfer.files;
  if (files.length > 0) {
    // process file(s) being dropped
    // grab the file data from each file
    for (var i = 0; i < files.length; i++) {
      final reader = FileReader();
      EventStreamProviders.loadEvent.forTarget(reader).listen((e) {
        loadGeoJsonString(((e.target as FileReader).result as JSString).toDart);
      });
      EventStreamProviders.errorFileReaderEvent.forTarget(reader).listen((e) {
        console.error('reading failed'.toJS);
      });
      reader.readAsText(files.item(i)!);
    }
  } else {
    // process non-file (e.g. text or html) content being dropped
    // grab the plain text version of the data
    final plainText = dataTransfer.getData('text/plain');
    // ignore: unnecessary_null_comparison
    if (plainText != null) {
      loadGeoJsonString(plainText);
    }
  }
}
