import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'badge')
StacWidget badgeExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Badge')),
      body: StacColumn(
          mainAxisAlignment: StacMainAxisAlignment.center,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacText(
                data: 'Badge with Label',
                style: StacTextStyle(
                    fontSize: 18, fontWeight: StacFontWeight.bold)),
            StacSizedBox(height: 16),
            StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                crossAxisAlignment: StacCrossAxisAlignment.center,
                children: [
                  StacBadge(
                      label: StacText(data: '5'),
                      child: StacIcon(icon: 'notifications', size: 32)),
                  StacSizedBox(width: 24),
                  StacBadge(
                      label: StacText(data: 'NEW'),
                      backgroundColor: '#4CAF50',
                      textColor: '#FFFFFF',
                      child: StacIcon(icon: 'mail', size: 32))
                ]),
            StacSizedBox(height: 32),
            StacText(
                data: 'Badge with Count',
                style: StacTextStyle(
                    fontSize: 18, fontWeight: StacFontWeight.bold)),
            StacSizedBox(height: 16),
            StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                crossAxisAlignment: StacCrossAxisAlignment.center,
                children: [
                  StacBadge(
                      count: 5,
                      child: StacIcon(icon: 'shopping_cart', size: 32)),
                  StacSizedBox(width: 24),
                  StacBadge(
                      count: 99,
                      maxCount: 99,
                      child: StacIcon(icon: 'favorite', size: 32)),
                  StacSizedBox(width: 24),
                  StacBadge(
                      count: 1000,
                      maxCount: 99,
                      child: StacIcon(icon: 'notifications', size: 32))
                ]),
            StacSizedBox(height: 32),
            StacText(
                data: 'Small Badge (No Label)',
                style: StacTextStyle(
                    fontSize: 18, fontWeight: StacFontWeight.bold)),
            StacSizedBox(height: 16),
            StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                crossAxisAlignment: StacCrossAxisAlignment.center,
                children: [
                  StacBadge(
                      smallSize: 8,
                      backgroundColor: '#F44336',
                      child: StacIcon(icon: 'circle', size: 32)),
                  StacSizedBox(width: 24),
                  StacBadge(
                      smallSize: 12,
                      backgroundColor: '#4CAF50',
                      child: StacIcon(icon: 'check_circle', size: 32))
                ]),
            StacSizedBox(height: 32),
            StacText(
                data: 'Badge on IconButton',
                style: StacTextStyle(
                    fontSize: 18, fontWeight: StacFontWeight.bold)),
            StacSizedBox(height: 16),
            StacBadge(
                count: 3,
                child: StacIconButton(
                    icon: StacIcon(icon: 'notifications', size: 24),
                    padding: StacEdgeInsets.only(
                        left: 0, top: 0, right: 0, bottom: 0)))
          ]));
}
