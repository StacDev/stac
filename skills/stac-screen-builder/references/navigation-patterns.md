# Navigation Patterns

## Pattern: List to Detail

- In a list's `itemTemplate`, pass the item's id:

```dart
StacNavigator.pushStac('detail_screen', arguments: {'id': '{{\$item.id}}'})
```

- The detail screen reads it as `{{$args.id}}`, for example in its data
  provider's URL: `'https://api.example.com/items/{{\$args.id}}'`.
- Do not pass ids through app-wide variables; each screen has its own
  `$args`.

## Pattern: Auth Redirect

- After successful login:

```dart
StacNavigator.pushAndRemoveAllStac('home_screen')
```

## Pattern: Modal Close with Result

```dart
StacNavigator.pop(result: {'saved': true})
```

## Guardrails

- Use `pushReplacement*` only when previous screen must not remain in back stack.
- Use `pushAndRemoveAll*` only for root-flow transitions.
