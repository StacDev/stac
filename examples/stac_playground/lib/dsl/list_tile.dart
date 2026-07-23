import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'list_tile')
StacWidget listTileExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Tiles')),
      body: StacColumn(
          mainAxisAlignment: StacMainAxisAlignment.start,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacSizedBox(height: 12),
            StacListTile(
                leading: StacIcon(icon: 'person'),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Andrew Symonds',
                        style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data:
                            'Andrew Symonds was an Australian international cricketer, who played all three formats as a batting all-rounder. Commonly nicknamed "Roy", he was a key member of two World Cup winning squads. Symonds played as a right-handed, middle order batsman and alternated between medium pace and off-spin',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            StacSizedBox(height: 12),
            StacListTile(
                leading: StacIcon(icon: 'person'),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Adam Gilchrist',
                        style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data:
                            'Adam Craig Gilchrist is an Australian cricket commentator and former international cricketer and captain of the Australia national cricket team. He was an attacking left-handed batsman and record-breaking wicket-keeper',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24))
          ]));
}
