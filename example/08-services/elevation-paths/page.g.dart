// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-06-12T14:11:53.003Z

part of example;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ColumnChart
// **************************************************************************

@JsName('google.visualization.ColumnChart')
class ColumnChart extends JsInterface implements _ColumnChart {
  ColumnChart.created(JsObject o) : super.created(o);
  ColumnChart(Node div) : this.created(new JsObject(
          context['google']['visualization']['ColumnChart'], [div]));

  void draw(DataTable data, [JsObject options]) {
    asJsObject(this).callMethod('draw', [__codec248.encode(data), options]);
  }
}
/// codec for example.DataTable
final __codec248 =
    new JsInterfaceCodec<DataTable>((o) => new DataTable.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataTable
// **************************************************************************

@JsName('google.visualization.DataTable')
class DataTable extends JsInterface implements _DataTable {
  DataTable.created(JsObject o) : super.created(o);
  DataTable() : this.created(
          new JsObject(context['google']['visualization']['DataTable']));

  void addColumn(String type, [String label, String id]) {
    asJsObject(this).callMethod('addColumn', [type, label, id]);
  }
  void addRow([JsArray cellArray]) {
    asJsObject(this).callMethod('addRow', [__codec249.encode(cellArray)]);
  }
}
/// codec for dart.js.JsArray<dynamic>
final __codec249 = new JsListCodec<dynamic>(null);
