import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'intrinsic_width')
StacWidget intrinsicWidthExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'IntrinsicWidth')),
    body: StacPadding(
      padding: const StacEdgeInsets.all(16),
      child: StacIntrinsicWidth(
        child: StacColumn(
          crossAxisAlignment: StacCrossAxisAlignment.stretch,
          children: [
            StacContainer(
              height: 40,
              margin: const StacEdgeInsets.only(bottom: 12),
              padding: const StacEdgeInsets.all(12),
              decoration: const StacBoxDecoration(
                color: '#FFE0B2',
                borderRadius: StacBorderRadius.circular(8),
              ),
              child: StacText(data: 'Short'),
            ),
            StacContainer(
              height: 40,
              padding: const StacEdgeInsets.all(12),
              decoration: const StacBoxDecoration(
                color: '#B2DFDB',
                borderRadius: StacBorderRadius.circular(8),
              ),
              child: StacText(data: 'A much longer piece of text'),
            ),
          ],
        ),
      ),
    ),
  );
}
