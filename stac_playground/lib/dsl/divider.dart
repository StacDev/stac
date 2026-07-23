import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'divider')
StacWidget dividerExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Divider')),
      body: StacListView(children: [
        StacDivider(thickness: 5, height: 5, color: '#672BFF'),
        StacSizedBox(height: 20),
        StacDivider(thickness: 3, height: 3, color: '#FC5632'),
        StacSizedBox(height: 20),
        StacDivider(thickness: 2, height: 2, color: '#32FC88'),
        StacSizedBox(height: 20),
        StacSizedBox(
            height: 200,
            child: StacVerticalDivider(
                width: 20,
                thickness: 4,
                indent: 10,
                endIndent: 10,
                color: '#21814C'))
      ]));
}
