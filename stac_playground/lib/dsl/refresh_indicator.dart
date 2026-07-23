import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'refresh_indicator')
StacWidget refreshIndicatorExample() {
  return StacScaffold(
    body: StacRefreshIndicator(
      onRefresh: StacNetworkRequest(
        url:
            'https://raw.githubusercontent.com/StacDev/stac/main/stac_playground/assets/json/list_view_example.json',
        method: Method.get,
        contentType: 'application/json',
      ),
      child: StacNetworkWidget(
        request: StacNetworkRequest(
          url:
              'https://raw.githubusercontent.com/StacDev/stac/main/stac_playground/assets/json/list_view_example.json',
          method: Method.get,
        ),
      ),
    ),
  );
}
