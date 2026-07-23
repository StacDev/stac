import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'tool_tip')
StacWidget toolTipExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Tooltip')),
    body: StacColumn(
      mainAxisAlignment: StacMainAxisAlignment.center,
      crossAxisAlignment: StacCrossAxisAlignment.center,
      children: [
        StacText(
          data: 'Basic Tooltip',
          style: StacTextStyle(fontSize: 18, fontWeight: StacFontWeight.bold),
        ),
        StacSizedBox(height: 16),
        StacRow(
          mainAxisAlignment: StacMainAxisAlignment.center,
          children: [
            StacTooltip(
              message: 'This is a basic tooltip',
              child: StacIcon(icon: 'info', size: 32),
            ),
          ],
        ),
        StacSizedBox(height: 32),
        StacText(
          data: 'Styled Tooltip',
          style: StacTextStyle(fontSize: 18, fontWeight: StacFontWeight.bold),
        ),
        StacSizedBox(height: 16),
        StacRow(
          mainAxisAlignment: StacMainAxisAlignment.center,
          children: [
            StacTooltip(
              message: 'Custom styled tooltip',
              preferBelow: false,
              verticalOffset: 12,
              decoration: StacBoxDecoration(
                color: '#4CAF50',
                borderRadius: StacBorderRadius.only(
                  topLeft: 6,
                  topRight: 6,
                  bottomLeft: 6,
                  bottomRight: 6,
                ),
              ),
              textStyle: StacTextStyle(
                color: '#FFFFFF',
                fontSize: 14,
                fontWeight: StacFontWeight.bold,
              ),
              child: StacIcon(icon: 'palette', size: 32),
            ),
          ],
        ),
        StacSizedBox(height: 32),
        StacText(
          data: 'Tooltip with Delay & Duration',
          style: StacTextStyle(fontSize: 18, fontWeight: StacFontWeight.bold),
        ),
        StacSizedBox(height: 16),
        StacRow(
          mainAxisAlignment: StacMainAxisAlignment.center,
          children: [
            StacTooltip(
              message: 'Appears after 1s, stays 3s',
              waitDuration: StacDuration(milliseconds: 1000),
              showDuration: StacDuration(milliseconds: 3000),
              exitDuration: StacDuration(milliseconds: 300),
              child: StacIcon(icon: 'timer', size: 32),
            ),
          ],
        ),
        StacSizedBox(height: 32),
        StacText(
          data: 'Tooltip on IconButton',
          style: StacTextStyle(fontSize: 18, fontWeight: StacFontWeight.bold),
        ),
        StacSizedBox(height: 16),
        StacRow(
          mainAxisAlignment: StacMainAxisAlignment.center,
          children: [
            StacTooltip(
              message: 'Notifications',
              child: StacIconButton(
                icon: StacIcon(icon: 'notifications', size: 24),
                padding:
                    StacEdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                onPressed: StacAction(jsonData: {'actionType': 'none'}),
              ),
            ),
          ],
        ),
        StacText(
          data: 'Tap to see Tooltip',
          style: StacTextStyle(fontSize: 18, fontWeight: StacFontWeight.bold),
        ),
        StacSizedBox(height: 16),
        StacTooltip(
          message: 'Tap to see tooltip',
          triggerMode: StacTooltipTriggerMode.tap,
          child: StacIcon(icon: 'info', size: 32),
        ),
      ],
    ),
  );
}
