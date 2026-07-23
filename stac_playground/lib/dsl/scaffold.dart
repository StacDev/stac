import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'scaffold')
StacWidget scaffoldExample() {
  return StacScaffold(
      appBar: StacAppBar(
          title: StacText(data: 'Scaffold'),
          leading: StacIconButton(
              icon: StacIcon(iconType: StacIconType.material, icon: 'menu'),
              onPressed: StacAction()),
          actions: [
            StacIconButton(
                icon: StacIcon(
                    iconType: StacIconType.cupertino, icon: 'heart_solid'),
                onPressed: StacAction()),
            StacIconButton(
                icon: StacIcon(iconType: StacIconType.material, icon: 'search'),
                onPressed: StacAction()),
            StacIconButton(
                icon: StacIcon(
                    iconType: StacIconType.material, icon: 'more_horiz'),
                onPressed: StacAction())
          ]),
      body: StacRow(
          mainAxisAlignment: StacMainAxisAlignment.center,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacColumn(
                mainAxisAlignment: StacMainAxisAlignment.center,
                crossAxisAlignment: StacCrossAxisAlignment.center,
                children: [
                  StacText(data: 'Home', style: StacTextStyle(fontSize: 17))
                ])
          ]),
      floatingActionButton: StacFloatingActionButton(
          backgroundColor: '#FC3F1B',
          foregroundColor: '#ffffff',
          buttonType: StacFloatingActionButtonType.medium,
          child:
              StacIcon(iconType: StacIconType.material, icon: 'add', size: 32),
          onPressed: StacAction()));
}
