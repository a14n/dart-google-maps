#library('gmaps-visualization');

#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class HeatmapLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.visualization.HeatmapLayer";

  HeatmapLayer([HeatmapLayerOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  HeatmapLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  MVCArray<Object> getData() => new MVCArray.fromJsRef($.callJs("getData"), (js.JsRef jsRef) {
    if (js.isInstanceOf(jsRef, LatLng.TYPE_NAME)) {
      return new LatLng.fromJsRef(jsRef);
    } else if (js.isInstanceOf(jsRef, "Object")) {
      return new WeightedLocation.fromJsRef(jsRef);
    } else {
      throw new Exception("Unsupported result");
    }
  });
  GMap getMap() => _transformIfNotNull($.callJs("getMap"), (e) => new GMap.fromJsRef(e));
  void setData(Object data) {
    List list;
    if (data is MVCArray) {
      list = data.getArray();
    } else if (data is List) {
      list = data;
    }
    if (data !== null && list === null) {
      throw new IllegalArgumentException(data);
    }
    if (!list.filter((e)=> !(e is LatLng || e is WeightedLocation)).isEmpty()) {
      throw new IllegalArgumentException("some elements are not String or MapTypeId");
    }
    $.callJs("setData", [data]);
  }
  void setMap(GMap map) { $.callJs("setMap", [map]); }
  void setOptions(HeatmapLayerOptions options) { $.callJs("setOptions", [options]); }
}

class HeatmapLayerOptions extends js.JsObject {
  set data(MVCArray<LatLng> data) => $["data"] = data;
  set dissipating(bool dissipating) => $["dissipating"] = dissipating;
  set gradient(List<String> gradient) => $["gradient"] = gradient;
  set map(GMap map) => $["map"] = map;
  set maxIntensity(num maxIntensity) => $["maxIntensity"] = maxIntensity;
  set opacity(num opacity) => $["opacity"] = opacity;
  set radius(num radius) => $["radius"] = radius;
}

class WeightedLocation extends js.JsObject {
  WeightedLocation() : super();
  WeightedLocation.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLng get location => new LatLng.fromJsRef($["location"]);
         set location(LatLng location) => $["location"] = location;
  num get weight => $["weight"];
      set weight(num weight) => $["weight"] = weight;
}