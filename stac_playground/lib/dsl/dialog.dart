import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'dialog')
StacWidget dialogExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Dialogs')),
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
              onPressed: StacDialogAction(
                widget: StacAlertDialog(
                  content: StacPadding(
                    padding: StacEdgeInsets.only(
                      top: 0,
                      left: 12,
                      right: 12,
                      bottom: 8,
                    ),
                    child: StacText(
                      data: 'Discard draft?',
                      style: StacTextStyle(fontSize: 14),
                    ),
                  ),
                  actions: [
                    StacTextButton(
                      onPressed: StacNavigateAction(
                        navigationStyle: NavigationStyle.pop,
                      ),
                      child: StacText(data: 'CANCEL'),
                    ),
                    StacSizedBox(width: 8),
                    StacTextButton(
                      onPressed: StacNavigateAction(
                        navigationStyle: NavigationStyle.pop,
                      ),
                      child: StacText(data: 'DISCARD'),
                    ),
                    StacSizedBox(width: 12),
                  ],
                ).toJson(),
              ),
              child: StacText(data: 'SIMPLE ALERT'),
            ),
            StacSizedBox(height: 12),
            StacElevatedButton(
              style: StacButtonStyle(
                padding: StacEdgeInsets.only(
                  top: 8,
                  left: 12,
                  right: 12,
                  bottom: 8,
                ),
              ),
              onPressed: StacDialogAction(
                widget: StacAlertDialog(
                  title: StacText(
                    data: "Use Google's Location Services?",
                    style: StacTextStyle(fontSize: 21),
                  ),
                  content: StacPadding(
                    padding: StacEdgeInsets.only(
                      top: 24,
                      left: 12,
                      right: 12,
                      bottom: 8,
                    ),
                    child: StacText(
                      data: 'Let Google help apps determine location.',
                      style: StacTextStyle(fontSize: 14),
                    ),
                  ),
                  actions: [
                    StacTextButton(
                      onPressed: StacNavigateAction(
                        navigationStyle: NavigationStyle.pop,
                      ),
                      child: StacText(data: 'DISAGREE'),
                    ),
                    StacSizedBox(width: 8),
                    StacTextButton(
                      onPressed: StacNavigateAction(
                        navigationStyle: NavigationStyle.pop,
                      ),
                      child: StacText(data: 'AGREE'),
                    ),
                    StacSizedBox(width: 12),
                  ],
                ).toJson(),
              ),
              child: StacText(data: 'ALERT WITH TITLE'),
            ),
          ],
        ),
      ],
    ),
  );
}
