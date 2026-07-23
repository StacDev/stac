import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'chip')
StacWidget chipExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Chip')),
    body: StacColumn(
      mainAxisAlignment: StacMainAxisAlignment.center,
      crossAxisAlignment: StacCrossAxisAlignment.center,
      children: [
        StacRow(
          mainAxisAlignment: StacMainAxisAlignment.center,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacChip(
              avatar: StacIcon(iconType: StacIconType.material, icon: 'tune'),
              label: StacText(data: 'Chip', style: StacTextStyle(fontSize: 21)),
            ),
            StacSizedBox(width: 20),
            StacChip(
              autofocus: true,
              deleteIcon: StacIcon(
                iconType: StacIconType.material,
                icon: 'close',
                size: 20,
              ),
              label: StacText(data: 'Chip', style: StacTextStyle(fontSize: 21)),
            ),
          ],
        ),
        StacRow(
          mainAxisAlignment: StacMainAxisAlignment.center,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacChip(
              avatar: StacIcon(iconType: StacIconType.material, icon: 'tune'),
              label: StacText(
                data: 'Round Chip',
                style: StacTextStyle(fontSize: 21),
              ),
              shape: StacRoundedRectangleBorder(
                borderRadius: StacBorderRadius.only(
                  topLeft: 8,
                  topRight: 8,
                  bottomLeft: 8,
                  bottomRight: 8,
                ),
              ),
            ),
            StacSizedBox(width: 20),
            StacChip(
              autofocus: true,
              deleteIcon: StacIcon(
                iconType: StacIconType.material,
                icon: 'close',
                size: 20,
              ),
              label: StacText(
                data: 'Round Chip',
                style: StacTextStyle(fontSize: 21),
              ),
              elevation: 8,
              shape: StacRoundedRectangleBorder(
                borderRadius: StacBorderRadius.only(
                  topLeft: 8,
                  topRight: 8,
                  bottomLeft: 8,
                  bottomRight: 8,
                ),
              ),
            ),
          ],
        ),
        StacRow(
          mainAxisAlignment: StacMainAxisAlignment.center,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacChip(
              color: '#6d81b3',
              avatar: StacIcon(
                color: '#ffffff',
                iconType: StacIconType.material,
                icon: 'tune',
              ),
              label: StacText(
                data: 'Color Chip',
                style: StacTextStyle(fontSize: 21, color: '#ffffff'),
              ),
              shape: StacRoundedRectangleBorder(
                borderRadius: StacBorderRadius.only(
                  topLeft: 8,
                  topRight: 8,
                  bottomLeft: 8,
                  bottomRight: 8,
                ),
              ),
            ),
            StacSizedBox(width: 20),
            StacChip(
              color: '#6d81b3',
              deleteIcon: StacIcon(
                color: '#ffffff',
                iconType: StacIconType.material,
                icon: 'close',
                size: 20,
              ),
              label: StacText(
                data: 'Color Chip',
                style: StacTextStyle(color: '#ffffff', fontSize: 21),
              ),
              shape: StacRoundedRectangleBorder(
                borderRadius: StacBorderRadius.only(
                  topLeft: 8,
                  topRight: 8,
                  bottomLeft: 8,
                  bottomRight: 8,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
