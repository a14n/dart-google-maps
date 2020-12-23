// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.visualization;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_HeatmapLayer)
@JS('google.maps.visualization.HeatmapLayer')
class HeatmapLayer extends MVCObject {
  external HeatmapLayer([
    HeatmapLayerOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_HeatmapLayer)
extension HeatmapLayer$Ext on HeatmapLayer {
  MVCArray<Object /*LatLng|WeightedLocation*/ > get data => _getData();
  GMap get map => _getMap();
  set data(
          Object /*MVCArray<Object/*LatLng|WeightedLocation*/>|List<Object/*LatLng|WeightedLocation*/>*/ data) =>
      _setData(data);
  set map(GMap map) => _setMap(map);
  set options(HeatmapLayerOptions options) => _setOptions(options);

  MVCArray<Object /*LatLng|WeightedLocation*/ > _getData() =>
      callMethod(this, 'getData', []);

  GMap _getMap() => callMethod(this, 'getMap', []);

  void _setData(
      Object /*MVCArray<Object/*LatLng|WeightedLocation*/>|List<Object/*LatLng|WeightedLocation*/>*/ data) {
    callMethod(this, 'setData', [data]);
  }

  void _setMap(GMap map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(HeatmapLayerOptions options) {
    callMethod(this, 'setOptions', [options]);
  }
}

@GeneratedFrom(_HeatmapLayerOptions)
@JS()
@anonymous
class HeatmapLayerOptions {
  external factory HeatmapLayerOptions();

  external Object /*MVCArray<Object/*LatLng|WeightedLocation*/>|List<Object/*LatLng|WeightedLocation*/>*/ get data;

  external set data(
      Object /*MVCArray<Object/*LatLng|WeightedLocation*/>|List<Object/*LatLng|WeightedLocation*/>*/ value);

  external bool get dissipating;

  external set dissipating(bool value);

  external GMap get map;

  external set map(GMap value);

  external num get maxIntensity;

  external set maxIntensity(num value);

  external num get opacity;

  external set opacity(num value);

  external num get radius;

  external set radius(num value);
}

@GeneratedFrom(_HeatmapLayerOptions)
extension HeatmapLayerOptions$Ext on HeatmapLayerOptions {
  List<String> get gradient => getProperty(this, 'gradient')?.cast<String>();

  set gradient(List<String> value) {
    setProperty(this, 'gradient', value);
  }
}

@GeneratedFrom(_WeightedLocation)
@JS()
@anonymous
class WeightedLocation {
  external factory WeightedLocation();

  external LatLng get location;

  external set location(LatLng value);

  external num get weight;

  external set weight(num value);
}
