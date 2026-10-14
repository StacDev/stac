# State Recipes

Values that change at runtime live in state. Widgets read them with `{{ }}`
placeholders and rebuild when they change. Full reference: the State and
Expressions concept pages in the Stac docs.

## Choose Where a Value Lives

| Need | Use |
|------|-----|
| A value only part of a screen uses (expanded, selected) | `StacStateScope(state: {...})` around that part |
| A value the whole screen uses (query, filters) | a `setValue` `path` without a prefix; it is written to the screen |
| A value every screen reads (theme, user, cart) | a `$app.` path, or `Stac.initialize(initialState: ...)` |
| Data from an API | `StacDataProvider(id: ...)`; read `{{id.data}}` |
| Values for the next screen | `StacNavigator.pushStac('x', arguments: {...})`; read `{{$args.key}}` |
| Values to keep after a restart | `Stac.initialize(persist: ['settings'])` (app state only) |

## Counter

```dart
StacStateScope(
  state: {'count': 0},
  child: StacColumn(
    children: [
      StacText(data: 'Count: {{count}}'),
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
)
```

`op` is one of `set` (default), `toggle`, `increment`, `decrement`,
`append`, `remove`, `merge`, `delete`. Values can be expressions:
`{'path': 'total', 'value': '{{price * qty}}'}`.

## Inputs

Use `bind` on inputs instead of `onChanged` + `setValue`:

```dart
StacTextField(bind: 'query', decoration: StacInputDecoration(hintText: 'Search')),
StacText(data: 'Searching for {{query}}'),
StacSwitch(bind: '\$app.settings.darkMode', value: false),
```

Inside a `StacForm`, fields with an `id` are bound to `$form.<id>`.

## Lists From State

```dart
StacListView(
  items: '{{cart}}',
  keyPath: 'id',
  itemTemplate: StacListTile(
    title: StacText(data: '{{\$index + 1}}. {{\$item.name}}'),
    trailing: StacIconButton(
      icon: StacIcon(icon: 'delete'),
      onPressed: StacSetValueAction(
        values: [
          {'path': 'cart', 'op': 'remove', 'value': '{{\$item}}'},
        ],
      ),
    ),
  ),
  emptyWidget: StacCenter(child: StacText(data: 'Your cart is empty')),
)
```

- `items`, `itemTemplate`, `emptyWidget` and `keyPath` work on `StacColumn`,
  `StacRow`, `StacWrap`, `StacListView`, `StacGridView`, `StacSliverList`,
  `StacSliverGrid`, `StacPageView`, `StacCarouselView` and `StacTabBarView`.
- Use `StacForEach` to put items between other children, or in lists such as
  a stack's `children` or a custom scroll view's `slivers`.
- Set `keyPath` whenever items can be added, removed or reordered.

## Load Data

```dart
StacDataProvider(
  id: 'products',
  request: StacNetworkRequest(
    url: 'https://api.example.com/products',
    method: Method.get,
  ),
  targetPath: 'items',
  loaderWidget: StacCenter(child: StacCircularProgressIndicator()),
  errorWidget: StacTextButton(
    child: StacText(data: 'Try again'),
    onPressed: StacRefetchAction(id: 'products'),
  ),
  child: StacRefreshIndicator(
    onRefresh: StacRefetchAction(id: 'products'),
    child: StacListView(
      items: '{{products.data}}',
      keyPath: 'id',
      itemTemplate: StacListTile(
        title: StacText(data: '{{\$item.title}}'),
        onTap: StacNavigator.pushStac(
          'product_screen',
          arguments: {'id': '{{\$item.id}}'},
        ),
      ),
    ),
  ),
)
```

The provider's variable holds `data`, `isLoading`, `status` and `error`. A
placeholder in the request, such as `?q={{query}}`, sends it again when the
value changes. The detail screen reads `{{$args.id}}`.

## Submit and Handle the Result

```dart
StacFilledButton(
  child: StacText(data: 'Save'),
  onPressed: StacFormValidate(
    isValid: StacNetworkRequest(
      url: 'https://api.example.com/profile',
      method: Method.post,
      body: {'email': '{{\$form.email}}'},
      saveTo: '\$app.profile',
      onSuccess: StacNavigator.pop(),
      onError: StacSnackBar(
        content: StacText(data: 'Could not save ({{\$result.status}})').toJson(),
      ),
    ),
  ),
)
```

## Conditions

```dart
StacConditional(
  condition: "{{cart.length}} > 0 && {{\$app.user.plan}} == 'pro'",
  ifTrue: StacText(data: 'Free shipping'),
  ifFalse: StacText(data: 'Shipping: 4.99'),
)
```

Quote text values in conditions (`== 'pro'`); an unquoted word that is not a
variable is read as text and logs a warning.

## Pitfalls

- In Dart strings, escape `$`: `'{{\$item.name}}'`, `'\$app.theme'`.
- Typed DSL fields (`bool`, `double`, ...) cannot hold placeholders: use
  `bind` for inputs, or write the widget as `StacWidget(jsonData: {...})`.
- `setValue` entries with `key` keep the old meaning: the whole string is the
  name and it is written to the app. Prefer `path`.
- In a list inside an item template, `$item` is the inner item; the outer
  item cannot be read there.
- A data provider's variable is visible only inside it: wrap the whole
  scaffold when the app bar needs the data.
- Run `stac build`: it reports expression syntax errors, invalid state
  paths, read-only targets and bad `keyPath` or provider ids.
