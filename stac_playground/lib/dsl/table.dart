import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'table')
StacWidget tableExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Stac Table Example')),
    body: StacPadding(
      padding: StacEdgeInsets.all(16.0),
      child: StacTable(
        defaultColumnWidth: StacTableColumnWidth(
          type: StacTableColumnWidthType.flexColumnWidth,
          value: 1,
        ),
        border: StacTableBorder(color: '#000000', width: 1.0),
        children: [
          StacTableRow(
            children: [
              _headerCell('Header 1'),
              _headerCell('Header 2'),
              _headerCell('Header 3'),
            ],
          ),
          StacTableRow(
            children: [
              _bodyCell('Row 1, Cell 1'),
              _bodyCell('Row 1, Cell 2'),
              _bodyCell('Row 1, Cell 3'),
            ],
          ),
          StacTableRow(
            children: [
              _bodyCell('Row 2, Cell 1'),
              _bodyCell('Row 2, Cell 2'),
              _bodyCell('Row 2, Cell 3'),
            ],
          ),
          StacTableRow(
            children: [
              _bodyCell('Row 3, Cell 1'),
              _bodyCell('Row 3, Cell 2'),
              _bodyCell('Row 3, Cell 3'),
            ],
          ),
        ],
      ),
    ),
  );
}

StacWidget _headerCell(String data) {
  return StacTableCell(
    child: StacContainer(
      color: '#40000000',
      height: 50.0,
      child: StacCenter(child: StacText(data: data)),
    ),
  );
}

StacWidget _bodyCell(String data) {
  return StacTableCell(
    child: StacSizedBox(
      height: 50.0,
      child: StacCenter(child: StacText(data: data)),
    ),
  );
}
