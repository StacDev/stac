import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'intrinsic_height')
StacWidget intrinsicHeightExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'IntrinsicHeight')),
    body: StacPadding(
      padding: const StacEdgeInsets.all(16),
      child: StacSingleChildScrollView(
        scrollDirection: StacAxis.horizontal,
        child: StacIntrinsicHeight(
          child: StacRow(
            crossAxisAlignment: StacCrossAxisAlignment.stretch,
            children: [
              StacContainer(
                width: 120,
                margin: const StacEdgeInsets.only(right: 12),
                padding: const StacEdgeInsets.all(12),
                decoration: const StacBoxDecoration(
                  color: '#FFE0B2',
                  borderRadius: StacBorderRadius.circular(8),
                ),
                child: StacText(data: 'Short label'),
              ),
              StacContainer(
                width: 120,
                margin: const StacEdgeInsets.only(right: 12),
                padding: const StacEdgeInsets.all(12),
                decoration: const StacBoxDecoration(
                  color: '#B2DFDB',
                  borderRadius: StacBorderRadius.circular(8),
                ),
                child: StacText(
                  data:
                      'A card with a lot more text in it, so it grows much taller than its neighbours',
                ),
              ),
              StacContainer(
                width: 120,
                padding: const StacEdgeInsets.all(12),
                decoration: const StacBoxDecoration(
                  color: '#C5CAE9',
                  borderRadius: StacBorderRadius.circular(8),
                ),
                child: StacText(data: 'Medium length label here'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
