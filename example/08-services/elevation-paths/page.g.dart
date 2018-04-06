// GENERATED CODE - DO NOT MODIFY BY HAND

part of example;

// **************************************************************************
// Generator: JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_ColumnChart)
@JsName('google.visualization.ColumnChart')
class ColumnChart extends JsInterface {
  ColumnChart.created(JsObject o) : super.created(o);
  ColumnChart(Node div)
      : this.created(new JsObject(
            context['google']['visualization']['ColumnChart'], [div]));

  void draw(DataTable data, [JsObject options]) {
    asJsObject(this).callMethod('draw', [__codec0.encode(data), options]);
  }
}

@GeneratedFrom(_DataTable)
@JsName('google.visualization.DataTable')
class DataTable extends JsInterface {
  DataTable.created(JsObject o) : super.created(o);
  DataTable()
      : this.created(
            new JsObject(context['google']['visualization']['DataTable']));

  void addColumn(String type, [String label, String id]) {
    asJsObject(this).callMethod('addColumn', [type, label, id]);
  }

  void addRow([JsArray cellArray]) {
    asJsObject(this).callMethod('addRow', [__codec2.encode(cellArray)]);
  }
}

/// codec for example.DataTable
final __codec0 =
    new JsInterfaceCodec<DataTable>((o) => new DataTable.created(o));

/// codec for null.dynamic
final __codec1 = new DynamicCodec();

/// codec for dart.js.JsArray<dynamic>
final __codec2 = new JsListCodec<dynamic>(__codec1);
