import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'bottom_sheet')
StacWidget bottomSheetExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'BottomSheet')),
    body: StacRow(
      mainAxisAlignment: StacMainAxisAlignment.center,
      crossAxisAlignment: StacCrossAxisAlignment.center,
      children: [
        StacColumn(
          mainAxisAlignment: StacMainAxisAlignment.center,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacElevatedButton(
              style: StacButtonStyle(
                padding: StacEdgeInsets.only(
                  top: 8,
                  left: 12,
                  right: 12,
                  bottom: 8,
                ),
              ),
              onPressed: StacModalBottomSheetAction(
                widget: StacContainer(
                  height: 200,
                  padding: StacEdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 16,
                    bottom: 16,
                  ),
                  child: StacColumn(
                    children: [
                      StacRow(
                        mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
                        children: [
                          StacText(
                            data: 'Modal Bottom Sheet',
                            style: StacTextStyle(
                              fontSize: 18,
                              fontWeight: StacFontWeight.bold,
                            ),
                          ),
                          StacIconButton(
                            icon: StacIcon(
                              iconType: StacIconType.material,
                              icon: 'close',
                            ),
                            onPressed: StacNavigateAction(
                              navigationStyle: NavigationStyle.pop,
                            ),
                          ),
                        ],
                      ),
                      StacPadding(
                        padding: StacEdgeInsets.only(top: 16),
                        child: StacText(
                          data: 'This is a simple modal bottom sheet example.',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              child: StacText(data: 'Modal Bottom Sheet'),
            ),
          ],
        ),
      ],
    ),
  );
}
