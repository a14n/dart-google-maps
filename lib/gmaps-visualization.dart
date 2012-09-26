#library('gmaps-visualization');

#import('package:js/js.dart', prefix:'js');
#import('jswrap.dart', prefix:'jsw');
#import('gmaps.dart');

class HeatmapLayer extends MVCObject {
  HeatmapLayer([HeatmapLayerOptions opts]) : super.newInstance(maps.visualization.HeatmapLayer, [opts]);
  HeatmapLayer.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  MVCArray<Object> getData() => $.call("getData", [], (js.Proxy jsProxy) => new MVCArray.fromJsProxy(jsProxy, (js.Proxy jsProxy) {
    if (jsProxy == null) {
      return jsProxy;
    } else {
      try {
        // TODO replace with js instanceOf
        jsProxy.weight; // valid if WeightedLocation
        return new WeightedLocation.fromJsProxy(jsProxy);
      } on NoSuchMethodError catch (e) {
        return new LatLng.fromJsProxy(jsProxy);
      }
      throw new Exception("Unsupported result");
    }
  }));
  GMap getMap() => $.call("getMap", [], GMap.INSTANCIATOR);
  void setData(Object data) {
    List list;
    if (data is MVCArray) {
      list = data.getArray();
    } else if (data is List) {
      list = data;
    }
    if (data !== null && list == null) {
      throw new IllegalArgumentException(data);
    }
    if (!list.filter((e)=> !(e is LatLng || e is WeightedLocation)).isEmpty()) {
      throw new IllegalArgumentException("some elements are not LatLng or WeightedLocation");
    }
    $.call("setData", [data]);
  }
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(HeatmapLayerOptions options) { $.call("setOptions", [options]); }
}

class HeatmapLayerOptions extends jsw.IsJsProxy {
  set data(MVCArray<LatLng> data) => $["data"] = data;
  set dissipating(bool dissipating) => $["dissipating"] = dissipating;
  set gradient(List<String> gradient) => $["gradient"] = gradient;
  set map(GMap map) => $["map"] = map;
  set maxIntensity(num maxIntensity) => $["maxIntensity"] = maxIntensity;
  set opacity(num opacity) => $["opacity"] = opacity;
  set radius(num radius) => $["radius"] = radius;
}

class WeightedLocation extends jsw.IsJsProxy {
  WeightedLocation() : super();
  WeightedLocation.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLng get location => $.getProperty("location", LatLng.INSTANCIATOR);
         set location(LatLng location) => $["location"] = location;
  num get weight => $["weight"];
      set weight(num weight) => $["weight"] = weight;
}