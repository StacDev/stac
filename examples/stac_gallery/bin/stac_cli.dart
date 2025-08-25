import 'package:stac_core/stac_core.dart';
import 'package:stac_core/types/stac_border/stac_border.dart';

final double fontSize = 20;

void main(List<String> args) {
  final json = homeScreen().toJson();
  json.removeWhere((key, value) => value == null);
}

StacWidget homeScreen() {
  return StacScaffold(
    appBar: StacAppBar(
      title: StacText(
        data: 'Hello, Stac!!',
      ),
    ),
    body: StacCenter(
      child: StacContainer(
        width: 200,
        height: 200,
        decoration: StacBoxDecoration(
          color: StacColors.red,
          border: StacBorder(
            color: StacColors.black,
            width: 10,
          ),
        ),
        child: StacText(
          data: 'Hello, Stac!!',
          style: StacTextStyle.custom(
            color: StacColors.white,
            fontSize: fontSize,
            fontWeight: StacFontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
