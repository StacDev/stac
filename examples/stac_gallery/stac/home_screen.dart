import 'package:stac_core/stac_core.dart';

StacWidget homeScreen() {
  return StacScaffold(
    body: StacCenter(
      child: StacContainer(
        width: 200,
        height: 200,
        decoration: StacBoxDecoration(
          color: StacColors.pink,
        ),
        child: StacCenter(
          child: StacText(
            data: 'Hello World - UPDATED!',
            style: StacCustomTextStyle(
              fontSize: 17,
              fontWeight: StacFontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}
