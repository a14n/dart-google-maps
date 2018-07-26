// GENERATED CODE - DO NOT MODIFY BY HAND

part of example;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_ColumnChart)
@JsName('google.visualization.ColumnChart')
class ColumnChart extends JsInterface {
  ColumnChart(Node div)
      : this.created(
            JsObject(context['google']['visualization']['ColumnChart'], [div]));
  ColumnChart.created(JsObject o) : super.created(o);

  void draw(DataTable data, [JsObject options]) {
    asJsObject(this).callMethod('draw', [__codec0.encode(data), options]);
  }
}

@GeneratedFrom(_DataTable)
@JsName('google.visualization.DataTable')
class DataTable extends JsInterface {
  DataTable()
      : this.created(JsObject(context['google']['visualization']['DataTable']));
  DataTable.created(JsObject o) : super.created(o);

  void addColumn(String type, [String label, String id]) {
    asJsObject(this).callMethod('addColumn', [type, label, id]);
  }

  void addRow([JsArray cellArray]) {
    asJsObject(this).callMethod('addRow', [__codec2.encode(cellArray)]);
  }
}

/// codec for example.DataTable
final __codec0 = JsInterfaceCodec<DataTable>((o) => DataTable.created(o));

/// codec for dart.core.dynamic
final __codec1 = DynamicCodec();

/// codec for dart.js.JsArray<dynamic>
final __codec2 = JsListCodec<dynamic>(__codec1);
