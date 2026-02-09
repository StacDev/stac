# Navigation Patterns

## Pattern: List to Detail

- In list item tap:

```dart
StacNavigator.pushStac('detail_screen', arguments: {'id': '{{id}}'})
```

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
