import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'app_bar')
StacWidget appBarExample() {
  return StacScaffold(
      appBar: StacAppBar(
          automaticallyImplyLeading: true,
          title: StacText(data: 'Stac Appbar'),
          primary: true,
          excludeHeaderSemantics: false,
          toolbarOpacity: 1,
          bottomOpacity: 1,
          forceMaterialTransparency: false,
          useDefaultSemanticsOrder: true),
      body: StacCenter(
          child: StacText(data: 'Home', style: StacTextStyle(fontSize: 17))));
}
