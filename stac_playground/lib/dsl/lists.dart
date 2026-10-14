import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'lists')
StacWidget listsExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Lists')),
    body: StacStateScope(
      state: {
        'todos': [
          {'id': 1, 'title': 'Read about state', 'done': true},
          {'id': 2, 'title': 'Build a list from items', 'done': false},
        ],
        'nextId': 3,
        'tags': ['layout', 'state', 'lists'],
      },
      child: StacPadding(
        padding: StacEdgeInsets.all(16),
        child: StacColumn(
          crossAxisAlignment: StacCrossAxisAlignment.stretch,
          children: [
            StacRow(
              children: [
                StacExpanded(
                  child: StacTextField(
                    bind: 'draft',
                    decoration: StacInputDecoration(hintText: 'New todo'),
                  ),
                ),
                StacSizedBox(width: 12),
                StacFilledButton(
                  child: StacText(data: 'Add'),
                  onPressed: StacSetValueAction(
                    values: [
                      {
                        'path': 'todos',
                        'op': 'append',
                        'value': {
                          'id': '{{nextId}}',
                          'title': "{{draft ?? 'Untitled'}}",
                          'done': false,
                        },
                      },
                      {'path': 'nextId', 'op': 'increment'},
                      {'path': 'draft', 'value': ''},
                    ],
                  ),
                ),
              ],
            ),
            StacSizedBox(height: 12),
            StacWrap(
              spacing: 8,
              children: [
                StacForEach(
                  items: '{{tags}}',
                  itemTemplate: StacChip(label: StacText(data: '#{{\$item}}')),
                ),
              ],
            ),
            StacSizedBox(height: 12),
            StacText(data: '{{todos.length}} todos'),
            StacExpanded(
              child: StacListView(
                items: '{{todos}}',
                keyPath: 'id',
                itemTemplate: StacListTile(
                  leading: StacWidget(
                    jsonData: {
                      'type': 'checkBox',
                      'value': '{{\$item.done}}',
                      'onChanged': {
                        'actionType': 'setValue',
                        'values': [
                          {
                            'path': 'todos[{{\$index}}].done',
                            'value': '{{\$value}}',
                          },
                        ],
                      },
                    },
                  ),
                  title: StacText(data: '{{\$item.title}}'),
                  trailing: StacIconButton(
                    icon: StacIcon(icon: 'delete_outline'),
                    onPressed: StacSetValueAction(
                      values: [
                        {
                          'path': 'todos',
                          'op': 'remove',
                          'value': '{{\$item}}'
                        },
                      ],
                    ),
                  ),
                ),
                emptyWidget: StacCenter(child: StacText(data: 'Nothing to do')),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
