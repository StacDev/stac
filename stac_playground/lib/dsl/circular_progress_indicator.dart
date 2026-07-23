import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'circular_progress_indicator')
StacWidget circularProgressIndicatorExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Circular Progress Indicator')),
    body: StacCenter(
      child: StacColumn(
        crossAxisAlignment: StacCrossAxisAlignment.center,
        spacing: 52,
        children: [
          StacSizedBox(height: 1),
          StacCircularProgressIndicator(color: '#672BFF', strokeWidth: 3),
          StacCircularProgressIndicator(
            color: '#541204',
            strokeWidth: 6,
            backgroundColor: '#FFD700',
            strokeCap: StacStrokeCap.round,
          ),
          StacCircularProgressIndicator(
            color: '#bd3ed3',
            strokeWidth: 3,
            value: 0.5,
          ),
        ],
      ),
    ),
  );
}
