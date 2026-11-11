import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'state')
StacWidget stateExample() {
  return StacSetValue(
    values: <Map<String, dynamic>>[
      {'key': 'count', 'value': 0},
      {'key': 'nextId', 'value': 1},
      {
        'key': 'todos',
        'value': <Map<String, dynamic>>[
          {'id': 'a', 'title': 'Read the state docs'},
          {'id': 'b', 'title': 'Try the observer'},
        ],
      },
    ],
    child: StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'State Example')),
      body: StacSingleChildScrollView(
        padding: StacEdgeInsets.all(16),
        child: StacColumn(
          crossAxisAlignment: StacCrossAxisAlignment.stretch,
          children: [
            StacText(
              data: 'An observer rebuilds whenever a value it reads changes.',
            ),
            StacSizedBox(height: 8),
            StacObserver(
              child: StacText(
                data: 'Count: {{count}}',
                style: StacTextStyle(
                  fontSize: 24,
                  fontWeight: StacFontWeight.w700,
                ),
              ),
            ),
            StacSizedBox(height: 8),
            StacRow(
              children: [
                StacElevatedButton(
                  onPressed: StacSetValueAction(
                    values: <Map<String, dynamic>>[
                      {'key': 'count', 'expression': 'count + 1'},
                    ],
                  ),
                  child: StacText(data: '+1'),
                ),
                StacSizedBox(width: 8),
                StacElevatedButton(
                  onPressed: StacSetValueAction(
                    values: <Map<String, dynamic>>[
                      {'key': 'count', 'expression': 'count - 1'},
                    ],
                  ),
                  child: StacText(data: '-1'),
                ),
              ],
            ),
            StacDivider(height: 32),
            StacText(data: 'A list built from state follows it.'),
            StacColumn(
              items: '{{todos}}',
              itemTemplate: StacListTile(
                title: StacText(data: '{{title}}'),
                trailing: StacIconButton(
                  icon: StacIcon(icon: 'delete'),
                  onPressed: StacUpdateListAction(
                    key: 'todos',
                    op: StacListOp.remove,
                    match: {'id': '{{id}}'},
                  ),
                ),
              ),
              emptyTemplate: StacPadding(
                padding: StacEdgeInsets.all(16),
                child: StacText(data: 'Nothing left. Add an item below.'),
              ),
            ),
            StacSizedBox(height: 8),
            StacElevatedButton(
              onPressed: StacMultiAction(
                sync: true,
                actions: [
                  StacUpdateListAction(
                    key: 'todos',
                    op: StacListOp.append,
                    item: {
                      'id': 'item-{{nextId}}',
                      'title': 'Item {{nextId}}',
                    },
                  ),
                  StacSetValueAction(
                    values: <Map<String, dynamic>>[
                      {'key': 'count', 'expression': 'count + 1'},
                      {'key': 'nextId', 'expression': 'nextId + 1'},
                    ],
                  ),
                ],
              ),
              child: StacText(data: 'Add item'),
            ),
          ],
        ),
      ),
    ),
  );
}
