import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'dynamic_view')
StacWidget dynamicViewExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'User Profile')),
    body: StacDynamicView(
      request: StacNetworkRequest(
        url: 'https://dummyjson.com/users/1',
        method: Method.get,
      ),
      loaderWidget: StacCenter(
        child: StacColumn(
          children: [
            StacText(data: 'Loading...'),
            StacCircularProgressIndicator(),
          ],
        ),
      ),
      errorWidget: StacCenter(
        child: StacText(data: 'Error fetching user profile'),
      ),
      template: StacColumn(
        children: [
          StacContainer(
            padding: StacEdgeInsets.all(16),
            child: StacColumn(
              crossAxisAlignment: StacCrossAxisAlignment.start,
              children: [
                StacImage(src: '{{image}}', width: 100, height: 100),
                StacText(
                  data: '{{firstName}} {{lastName}}',
                  style: StacTextStyle(
                    fontSize: 24,
                    fontWeight: StacFontWeight.w700,
                  ),
                ),
                StacSizedBox(height: 8),
                StacText(
                  data: 'Email: {{email}}',
                  style: StacTextStyle(fontSize: 16, color: '#666666'),
                ),
                StacText(
                  data: 'Phone: {{phone}}',
                  style: StacTextStyle(fontSize: 16, color: '#666666'),
                ),
                StacText(
                  data: 'Age: {{age}}',
                  style: StacTextStyle(fontSize: 16, color: '#666666'),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
