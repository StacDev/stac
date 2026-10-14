import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'state_scope')
StacWidget stateScopeExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'State Scope')),
    body: StacStateScope(
      state: {'count': 0, 'liked': false},
      child: StacCenter(
        child: StacColumn(
          mainAxisAlignment: StacMainAxisAlignment.center,
          children: [
            StacText(data: 'Count: {{count}}'),
            StacSizedBox(height: 12),
            StacRow(
              mainAxisAlignment: StacMainAxisAlignment.center,
              children: [
                StacOutlinedButton(
                  child: StacText(data: 'Remove'),
                  onPressed: StacSetValueAction(
                    values: [
                      {'path': 'count', 'op': 'decrement'},
                    ],
                  ),
                ),
                StacSizedBox(width: 12),
                StacFilledButton(
                  child: StacText(data: 'Add'),
                  onPressed: StacSetValueAction(
                    values: [
                      {'path': 'count', 'op': 'increment'},
                    ],
                  ),
                ),
              ],
            ),
            StacSizedBox(height: 24),
            StacConditional(
              condition: 'count >= 5',
              ifTrue: StacText(data: 'High five!'),
              ifFalse: StacText(data: '{{5 - count}} more to go'),
            ),
            StacSizedBox(height: 24),
            StacSwitch(
              value: false,
              onChanged: StacSetValueAction(
                values: [
                  {'path': 'liked', 'value': r'{{$value}}'},
                ],
              ),
            ),
            StacText(data: "{{liked ? 'Liked' : 'Not liked yet'}}"),
            StacSizedBox(height: 24),
            StacSizedBox(width: 240, child: StacTextField(bind: 'name')),
            StacText(data: "Hello {{name ?? 'there'}}"),
          ],
        ),
      ),
    ),
  );
}
