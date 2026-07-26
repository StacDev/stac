import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'icon_button')
StacWidget iconButtonExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Icon Button')),
      body: StacRow(
          mainAxisAlignment: StacMainAxisAlignment.center,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacColumn(
                mainAxisAlignment: StacMainAxisAlignment.center,
                crossAxisAlignment: StacCrossAxisAlignment.center,
                children: [
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacIconButton(
                            icon: StacIcon(
                                iconType: StacIconType.material, icon: 'add'),
                            onPressed: StacAction()),
                        StacSizedBox(width: 20),
                        StacIconButton(
                            icon: StacIcon(
                                iconType: StacIconType.material,
                                icon: 'remove'),
                            onPressed: StacAction())
                      ]),
                  StacSizedBox(height: 52),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacIconButton(
                            icon: StacIcon(
                                iconType: StacIconType.material, icon: 'add')),
                        StacSizedBox(width: 20),
                        StacIconButton(
                            icon: StacIcon(
                                iconType: StacIconType.material,
                                icon: 'remove'))
                      ])
                ])
          ]));
}
