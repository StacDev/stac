import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'linear_progress_indicator')
StacWidget linearProgressIndicatorExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Linear Progress Indicator')),
      body: StacPadding(
          padding: StacEdgeInsets.only(left: 10, right: 10),
          child: StacColumn(
              crossAxisAlignment: StacCrossAxisAlignment.center,
              spacing: 52,
              children: [
                StacSizedBox(height: 1),
                StacLinearProgressIndicator(color: '#672BFF', minHeight: 3),
                StacLinearProgressIndicator(
                    color: '#541204',
                    minHeight: 6,
                    backgroundColor: '#FFD700',
                    borderRadius: StacBorderRadius.only(
                        topLeft: 10,
                        topRight: 10,
                        bottomLeft: 10,
                        bottomRight: 10)),
                StacLinearProgressIndicator(
                    color: '#bd3ed3', minHeight: 3, value: 0.5)
              ])));
}
