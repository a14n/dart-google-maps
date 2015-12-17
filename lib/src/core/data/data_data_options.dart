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

@anonymous
abstract class _DataDataOptions implements JsInterface {
  external factory _DataDataOptions();

  ControlPosition controlPosition;
  List<String> controls;
  String drawingMode;
  dynamic /*null(Data.Geometry): Data.Featur p1)*/ featureFactory;
  GMap map;
  dynamic /*DataStylingFunction|DataStyleOptions*/ get style =>
      (new ChainedCodec()
    ..add(new FunctionCodec<DataStylingFunction>((o) => ((f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .decode(p_dataFeature);
        final result = f(p_dataFeature);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .encode(result);
      };
    })(o), (o) => ((JsFunction f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .encode(p_dataFeature);
        final result = f.apply([p_dataFeature]);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .decode(result);
      };
    })(o)))
    ..add(new JsInterfaceCodec<DataStyleOptions>(
        (o) => new DataStyleOptions.created(o)))).decode(_style);
  void set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
      _style = (new ChainedCodec()
    ..add(new FunctionCodec<DataStylingFunction>((o) => ((f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .decode(p_dataFeature);
        final result = f(p_dataFeature);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .encode(result);
      };
    })(o), (o) => ((JsFunction f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .encode(p_dataFeature);
        final result = f.apply([p_dataFeature]);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .decode(result);
      };
    })(o)))
    ..add(new JsInterfaceCodec<DataStyleOptions>(
        (o) => new DataStyleOptions.created(o)))).encode(_style);
  dynamic /*DataStylingFunction|DataStyleOptions*/ _style;
}
