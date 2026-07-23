import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'list_view')
StacWidget listViewExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Listview')),
      body: StacListView(
          shrinkWrap: true,
          separator: StacContainer(height: 10),
          children: [
            StacListTile(
                leading: StacContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: StacColumn(
                        mainAxisAlignment: StacMainAxisAlignment.center,
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacText(
                              data: '1', style: StacTextStyle(fontSize: 21))
                        ])),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item 1', style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item description',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            StacListTile(
                leading: StacContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: StacColumn(
                        mainAxisAlignment: StacMainAxisAlignment.center,
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacText(
                              data: '2', style: StacTextStyle(fontSize: 21))
                        ])),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item 2', style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item description',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            StacListTile(
                leading: StacContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: StacColumn(
                        mainAxisAlignment: StacMainAxisAlignment.center,
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacText(
                              data: '3', style: StacTextStyle(fontSize: 21))
                        ])),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item 3', style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item description',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            StacListTile(
                leading: StacContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: StacColumn(
                        mainAxisAlignment: StacMainAxisAlignment.center,
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacText(
                              data: '4', style: StacTextStyle(fontSize: 21))
                        ])),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item 4', style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item description',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            StacListTile(
                leading: StacContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: StacColumn(
                        mainAxisAlignment: StacMainAxisAlignment.center,
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacText(
                              data: '5', style: StacTextStyle(fontSize: 21))
                        ])),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item 5', style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item description',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            StacListTile(
                leading: StacContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: StacColumn(
                        mainAxisAlignment: StacMainAxisAlignment.center,
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacText(
                              data: '6', style: StacTextStyle(fontSize: 21))
                        ])),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item 6', style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item description',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            StacListTile(
                leading: StacContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: StacColumn(
                        mainAxisAlignment: StacMainAxisAlignment.center,
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacText(
                              data: '7', style: StacTextStyle(fontSize: 21))
                        ])),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item 7', style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item description',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            StacListTile(
                leading: StacContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: StacColumn(
                        mainAxisAlignment: StacMainAxisAlignment.center,
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacText(
                              data: '8', style: StacTextStyle(fontSize: 21))
                        ])),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item 8', style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item description',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            StacListTile(
                leading: StacContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: StacColumn(
                        mainAxisAlignment: StacMainAxisAlignment.center,
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacText(
                              data: '9', style: StacTextStyle(fontSize: 21))
                        ])),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item 9', style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item description',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            StacListTile(
                leading: StacContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: StacColumn(
                        mainAxisAlignment: StacMainAxisAlignment.center,
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacText(
                              data: '10', style: StacTextStyle(fontSize: 21))
                        ])),
                title: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item 10', style: StacTextStyle(fontSize: 18))),
                subtitle: StacPadding(
                    padding: StacEdgeInsets.only(top: 10),
                    child: StacText(
                        data: 'Item description',
                        style: StacTextStyle(fontSize: 14))),
                trailing: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'more_vert',
                    size: 24))
          ]));
}
