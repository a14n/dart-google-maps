// Copyright (c) 2015, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps.src;

@JsName('google.maps.Data')
abstract class _Data implements JsInterface {
  factory _Data([DataDataOptions options]) => null;

  DataFeature add(dynamic /*DataFeature|DataFeatureOptions*/ feature) =>
      JsInterfaceCodec<DataFeature>((o) => DataFeature.created(o)).decode(_add(
          (ChainedCodec()
                ..add(JsInterfaceCodec<DataFeature>(
                    (o) => DataFeature.created(o),
                    (o) =>
                        o != null &&
                        o.instanceof(context['google']['maps']['Data']
                            ['Feature'] as JsFunction)))
                ..add(JsInterfaceCodec<DataFeatureOptions>((o) => DataFeatureOptions.created(o))))
              .encode(feature)));
  dynamic _add(dynamic /*DataFeature|DataFeatureOptions*/ feature);
  List<DataFeature> addGeoJson(Object geoJson, [DataGeoJsonOptions options]);
  bool contains(DataFeature feature);
  void forEach(callback(DataFeature p1));
  ControlPosition get controlPosition => _getControlPosition();
  ControlPosition _getControlPosition();
  List<String> get controls => _getControls();
  List<String> _getControls();
  String get drawingMode => _getDrawingMode();
  String _getDrawingMode();
  DataFeature getFeatureById(dynamic /*num|String*/ id);
  GMap get map => _getMap();
  GMap _getMap();
  dynamic /*DataStylingFunction|DataStyleOptions*/ get style => (ChainedCodec()
        ..add(FunctionCodec<DataStylingFunction>((f) {
          if (f == null) return null;
          return (p_dataFeature) => JsInterfaceCodec<DataStyleOptions>(
                  (e) => e == null ? null : DataStyleOptions.created(e))
              .encode(f(JsInterfaceCodec<DataFeature>(
                      (e) => e == null ? null : DataFeature.created(e))
                  .decode(p_dataFeature as JsObject)));
        }, (f) {
          if (f == null) return null;
          return (p_dataFeature) => JsInterfaceCodec<DataStyleOptions>(
                  (e) => e == null ? null : DataStyleOptions.created(e))
              .decode(f is JsFunction
                  ? f.apply([
                      JsInterfaceCodec<DataFeature>(
                              (e) => e == null ? null : DataFeature.created(e))
                          .encode(p_dataFeature)
                    ]) as JsObject
                  : Function.apply(f, [
                      JsInterfaceCodec<DataFeature>(
                              (e) => e == null ? null : DataFeature.created(e))
                          .encode(p_dataFeature)
                    ]) as JsObject);
        }))
        ..add(JsInterfaceCodec<DataStyleOptions>(
            (o) => DataStyleOptions.created(o))))
      .decode(_getStyle());
  dynamic _getStyle();
  void loadGeoJson(String url,
      [DataGeoJsonOptions options, callback(List<DataFeature> p1)]);
  void overrideStyle(DataFeature feature, DataStyleOptions style);
  void remove(DataFeature feature);
  void revertStyle([DataFeature feature]);
  set controlPosition(ControlPosition controlPosition) =>
      _setControlPosition(controlPosition);
  void _setControlPosition(ControlPosition controlPosition);
  set controls(List<String> controls) => _setControls(controls);
  void _setControls(List<String> controls);
  set drawingMode(String drawingMode) => _setDrawingMode(drawingMode);
  void _setDrawingMode(String drawingMode);
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
      _setStyle((ChainedCodec()
            ..add(FunctionCodec<DataStylingFunction>((f) {
              if (f == null) return null;
              return (p_dataFeature) => JsInterfaceCodec<DataStyleOptions>(
                      (e) => e == null ? null : DataStyleOptions.created(e))
                  .encode(f(JsInterfaceCodec<DataFeature>(
                          (e) => e == null ? null : DataFeature.created(e))
                      .decode(p_dataFeature as JsObject)));
            }, (f) {
              if (f == null) return null;
              return (p_dataFeature) => JsInterfaceCodec<DataStyleOptions>(
                      (e) => e == null ? null : DataStyleOptions.created(e))
                  .decode(f is JsFunction
                      ? f.apply([
                          JsInterfaceCodec<DataFeature>((e) =>
                                  e == null ? null : DataFeature.created(e))
                              .encode(p_dataFeature)
                        ]) as JsObject
                      : Function.apply(f, [
                          JsInterfaceCodec<DataFeature>((e) =>
                                  e == null ? null : DataFeature.created(e))
                              .encode(p_dataFeature)
                        ]) as JsObject);
            }))
            ..add(JsInterfaceCodec<DataStyleOptions>(
                (o) => DataStyleOptions.created(o))))
          .encode(style));
  void _setStyle(dynamic /*DataStylingFunction|DataStyleOptions*/ style);
  void toGeoJson(callback(Object p1));

  Stream<DataAddFeatureEvent> get onAddfeature => getStream(
      this, 'addfeature', (JsObject o) => DataAddFeatureEvent.created(o));
  Stream<DataMouseEvent> get onClick =>
      getStream(this, 'click', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onDblclick =>
      getStream(this, 'dblclick', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMousedown =>
      getStream(this, 'mousedown', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMouseout =>
      getStream(this, 'mouseout', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMouseover =>
      getStream(this, 'mouseover', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMouseup =>
      getStream(this, 'mouseup', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataRemoveFeatureEvent> get onRemovefeature => getStream(
      this, 'removefeature', (JsObject o) => DataRemoveFeatureEvent.created(o));
  Stream<DataRemovePropertyEvent> get onRemoveproperty => getStream(this,
      'removeproperty', (JsObject o) => DataRemovePropertyEvent.created(o));
  Stream<DataMouseEvent> get onRightclick =>
      getStream(this, 'rightclick', (JsObject o) => DataMouseEvent.created(o));
  Stream<DataSetGeometryEvent> get onSetgeometry => getStream(
      this, 'setgeometry', (JsObject o) => DataSetGeometryEvent.created(o));
  Stream<DataSetPropertyEvent> get onSetproperty => getStream(
      this, 'setproperty', (JsObject o) => DataSetPropertyEvent.created(o));
}
