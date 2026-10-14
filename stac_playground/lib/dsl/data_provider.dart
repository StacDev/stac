import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'data_provider')
StacWidget dataProviderExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Data Provider')),
    body: StacDataProvider(
      id: 'users',
      request: StacNetworkRequest(
        url: 'https://dummyjson.com/users?limit=20',
        method: Method.get,
      ),
      targetPath: 'users',
      loaderWidget: StacCenter(child: StacCircularProgressIndicator()),
      errorWidget: StacCenter(
        child: StacColumn(
          mainAxisSize: StacMainAxisSize.min,
          children: [
            StacText(data: 'Could not load users: {{users.error}}'),
            StacTextButton(
              child: StacText(data: 'Try again'),
              onPressed: StacRefetchAction(id: 'users'),
            ),
          ],
        ),
      ),
      child: StacRefreshIndicator(
        onRefresh: StacRefetchAction(id: 'users'),
        child: StacListView(
          items: '{{users.data}}',
          keyPath: 'id',
          itemTemplate: StacListTile(
            leading: StacCircleAvatar(backgroundImage: '{{\$item.image}}'),
            title: StacText(data: '{{\$item.firstName}} {{\$item.lastName}}'),
            subtitle: StacText(data: '{{\$item.email}}'),
          ),
          emptyWidget: StacCenter(child: StacText(data: 'No users')),
        ),
      ),
    ),
  );
}
