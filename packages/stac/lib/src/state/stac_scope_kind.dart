/// Where a level of Stac state lives.
enum StacScopeKind {
  /// State shared by the whole app (`$app`).
  app,

  /// State of one screen (`$screen`).
  screen,

  /// State declared by a `stateScope` widget, or held by a `dataProvider`.
  local,

  /// The values of a form's fields (`$form`), keyed by field `id`.
  ///
  /// Read only through `$form`, so field ids never hide other variables.
  form,
}
