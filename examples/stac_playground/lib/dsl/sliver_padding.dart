import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'sliver_padding')
StacWidget sliverPaddingExample() {
  return StacScaffold(
    body: StacCustomScrollView(
      slivers: [
        StacSliverPadding(
          padding: StacEdgeInsets.all(16.0),
          sliver: StacSliverToBoxAdapter(
            child: StacContainer(
              height: 150,
              color: '#4CAF50',
              child: StacCenter(
                child: StacText(
                  data: 'I am a Box inside a SliverPadding!',
                  style: StacTextStyle(
                    color: '#FFFFFF',
                    fontWeight: StacFontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
