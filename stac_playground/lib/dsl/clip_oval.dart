import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'clip_oval')
StacWidget clipOvalExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'ClipOval')),
    body: StacPadding(
      padding: StacEdgeInsets.all(16.0),
      child: StacColumn(
        mainAxisAlignment: StacMainAxisAlignment.center,
        crossAxisAlignment: StacCrossAxisAlignment.center,
        children: [
          StacText(
            data: 'Basic ClipOval with Image',
            style:
                StacTextStyle(fontSize: 18.0, fontWeight: StacFontWeight.w600),
          ),
          StacSizedBox(height: 16.0),
          StacClipOval(
            clipBehavior: StacClip.antiAlias,
            child: StacImage(
              src: 'https://picsum.photos/200',
              width: 200,
              height: 200,
              fit: StacBoxFit.cover,
            ),
          ),
          StacSizedBox(height: 32.0),
          StacText(
            data: 'ClipOval with Container',
            style:
                StacTextStyle(fontSize: 18.0, fontWeight: StacFontWeight.w600),
          ),
          StacSizedBox(height: 16.0),
          StacClipOval(
            clipBehavior: StacClip.antiAlias,
            child: StacContainer(color: '#2196F3', height: 100, width: 200),
          ),
          StacSizedBox(height: 32.0),
          StacText(
            data: 'ClipOval with Text',
            style:
                StacTextStyle(fontSize: 18.0, fontWeight: StacFontWeight.w600),
          ),
          StacSizedBox(height: 16.0),
          StacClipOval(
            clipBehavior: StacClip.antiAlias,
            child: StacContainer(
              color: '#FF5722',
              height: 100,
              width: 100,
              child: StacCenter(
                child: StacText(
                  data: 'Hello',
                  style: StacTextStyle(color: '#FFFFFF', fontSize: 18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
