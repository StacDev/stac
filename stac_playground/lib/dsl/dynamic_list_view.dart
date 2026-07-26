import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'dynamic_list_view')
StacWidget dynamicListViewExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Users List')),
    body: StacDynamicView(
      request: StacNetworkRequest(
        url: 'https://dummyjson.com/users',
        method: Method.get,
      ),
      targetPath: 'users',
      // NOTE: the JSON template is a listView carrying an `itemTemplate` key —
      // a runtime-only field the dynamicView parser reads to render each list
      // item. StacListView (stac_core) has no `itemTemplate` param, so the
      // per-item template is represented as the list's single child here.
      template: StacListView(
        children: [
          StacListTile(
            title: StacText(data: '{{firstName}} {{lastName}}'),
            subtitle: StacText(data: '{{email}}'),
            leading: StacCircleAvatar(backgroundImage: '{{image}}'),
          ),
        ],
      ),
    ),
  );
}
