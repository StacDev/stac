# Style Recipes

## Spacing

- Use `StacEdgeInsets.all(16)` as default content padding.
- Keep vertical rhythm with `StacSizedBox(height: 8|12|16|24)`.

## Text

- Use theme styles before hardcoded values:
  - `StacThemeData.textTheme.titleLarge`
  - `StacThemeData.textTheme.bodyMedium`

## Color

- Prefer theme tokens (`primary`, `onSurface`) over hardcoded hex.
- Use explicit hex only for one-off decorative elements.

## Containers

- Use `StacBoxDecoration` only when style intent is clear.
- Keep border radius consistent across cards/buttons.
