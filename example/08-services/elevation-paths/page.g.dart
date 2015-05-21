// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-05-21T17:01:56.283Z

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
    asJsObject(this).callMethod('draw', [__codec251.encode(data), options]);
  }
}
/// codec for DataTable
final __codec251 =
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
    asJsObject(this).callMethod('addRow', [__codec253.encode(cellArray)]);
  }
}
/// codec for dynamic
final __codec252 = new DynamicCodec();

/// codec for JsArray<dynamic>
final __codec253 = new JsListCodec<dynamic>(__codec252);
