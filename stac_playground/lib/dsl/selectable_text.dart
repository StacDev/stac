import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'selectable_text')
StacWidget selectableTextExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Selectable Text')),
    body: StacSingleChildScrollView(
      child: StacPadding(
        padding: StacEdgeInsets.only(top: 12, left: 12, right: 12, bottom: 12),
        child: StacColumn(
          crossAxisAlignment: StacCrossAxisAlignment.start,
          children: [
            StacText(
              data: 'Standard Selectable Text',
              style:
                  StacTextStyle(fontSize: 18, fontWeight: StacFontWeight.w600),
            ),
            StacSizedBox(height: 10),
            StacSelectableText(
              data:
                  'You can select this text. Long press or double tap to select.',
            ),
            StacSizedBox(height: 32),
            StacText(
              data: 'Rich Selectable Text',
              style:
                  StacTextStyle(fontSize: 18, fontWeight: StacFontWeight.w600),
            ),
            StacSizedBox(height: 10),
            StacSelectableText(
              data: 'This is a ',
              children: [
                StacTextSpan(
                  text: 'selectable rich text.',
                  style: StacTextStyle(
                      fontWeight: StacFontWeight.w800, color: '#6700A4'),
                ),
              ],
            ),
            StacSizedBox(height: 32),
            StacText(
              data: 'Custom Cursor Selectable Text',
              style:
                  StacTextStyle(fontSize: 18, fontWeight: StacFontWeight.w600),
            ),
            StacSizedBox(height: 10),
            StacSelectableText(
              data: 'This text has a red cursor.',
              showCursor: true,
              cursorColor: '#FF0000',
              cursorWidth: 5.0,
            ),
            StacSizedBox(height: 32),
            StacText(
              data: 'Interactive Selection Disabled',
              style:
                  StacTextStyle(fontSize: 18, fontWeight: StacFontWeight.w600),
            ),
            StacSizedBox(height: 10),
            StacSelectableText(
              data:
                  'You cannot select this text (interactive selection disabled).',
              enableInteractiveSelection: false,
            ),
          ],
        ),
      ),
    ),
  );
}
