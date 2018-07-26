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
  factory _DataDataOptions() => null;

  ControlPosition controlPosition;
  List<String> controls;
  String drawingMode;
  dynamic /*null(Data.Geometry): Data.Featur p1)*/ featureFactory;
  GMap map;
  dynamic /*DataStylingFunction|DataStyleOptions*/ get style => (ChainedCodec()
        ..add(FunctionCodec<DataStylingFunction>((f) {
          if (f == null) return null;
          return (p_dataFeature) {
            final dataFeature = JsInterfaceCodec<DataFeature>((o) => ((e) =>
                    e == null ? null : DataFeature.created(e as JsObject))(o))
                .decode(p_dataFeature as JsObject);
            final result = f(dataFeature);
            return JsInterfaceCodec<DataStyleOptions>((o) => ((e) => e == null
                ? null
                : DataStyleOptions.created(e as JsObject))(o)).encode(result);
          };
        }, (f) {
          if (f == null) return null;
          return (p_dataFeature) {
            final dataFeature = JsInterfaceCodec<DataFeature>((o) => ((e) =>
                    e == null ? null : DataFeature.created(e as JsObject))(o))
                .encode(p_dataFeature);
            final result = f is JsFunction
                ? f.apply([dataFeature])
                : Function.apply(f, [dataFeature]);
            return JsInterfaceCodec<DataStyleOptions>((o) => ((e) => e == null
                    ? null
                    : DataStyleOptions.created(e as JsObject))(o))
                .decode(result as JsObject);
          };
        }))
        ..add(JsInterfaceCodec<DataStyleOptions>(
            (o) => DataStyleOptions.created(o))))
      .decode(_style);
  void set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
      _style = (ChainedCodec()
            ..add(FunctionCodec<DataStylingFunction>((f) {
              if (f == null) return null;
              return (p_dataFeature) {
                final result = f(JsInterfaceCodec<DataFeature>((o) => ((e) =>
                        e == null ? null : DataFeature.created(e as JsObject))(
                    o)).decode(p_dataFeature as JsObject));
                return JsInterfaceCodec<DataStyleOptions>((o) => ((e) =>
                        e == null
                            ? null
                            : DataStyleOptions.created(e as JsObject))(o))
                    .encode(result);
              };
            }, (f) {
              if (f == null) return null;
              return (p_dataFeature) {
                final dataFeature = JsInterfaceCodec<DataFeature>((o) => ((e) =>
                        e == null ? null : DataFeature.created(e as JsObject))(
                    o)).encode(p_dataFeature);
                final result = f is JsFunction
                    ? f.apply([dataFeature])
                    : Function.apply(f, [dataFeature]);
                return JsInterfaceCodec<DataStyleOptions>((o) => ((e) =>
                        e == null
                            ? null
                            : DataStyleOptions.created(e as JsObject))(o))
                    .decode(result as JsObject);
              };
            }))
            ..add(JsInterfaceCodec<DataStyleOptions>(
                (o) => DataStyleOptions.created(o))))
          .encode(_style);
  dynamic /*DataStylingFunction|DataStyleOptions*/ _style;
}
