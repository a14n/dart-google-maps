// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-05-13T20:47:44.674Z

part of example;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ColumnChart
// **************************************************************************

@JsName('google.visualization.ColumnChart')
class ColumnChart extends JsInterface implements _ColumnChart {
  ColumnChart.created(JsObject o) : super.created(o);
  ColumnChart(Node div) : this.created(
          new JsObject(getPath('google.visualization.ColumnChart'), [div]));

  void draw(DataTable data, [JsObject options]) {
    asJsObject(this).callMethod('draw', [__codec1.encode(data), options]);
  }
}
/// codec for DataTable
final __codec1 =
    new JsInterfaceCodec<DataTable>((o) => new DataTable.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataTable
// **************************************************************************

@JsName('google.visualization.DataTable')
class DataTable extends JsInterface implements _DataTable {
  DataTable.created(JsObject o) : super.created(o);
  DataTable()
      : this.created(new JsObject(getPath('google.visualization.DataTable')));

  void addColumn(String type, [String label, String id]) {
    asJsObject(this).callMethod('addColumn', [type, label, id]);
  }
  void addRow([JsArray cellArray]) {
    asJsObject(this).callMethod('addRow', [__codec3.encode(cellArray)]);
  }
}
/// codec for dynamic
final __codec2 = new DynamicCodec();

/// codec for JsArray<dynamic>
final __codec3 = new JsListCodec<dynamic>(__codec2);
