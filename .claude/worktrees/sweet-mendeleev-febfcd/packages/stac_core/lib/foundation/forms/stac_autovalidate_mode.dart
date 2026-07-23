/// Mirrors Flutter's [AutovalidateMode] for form fields.
enum StacAutovalidateMode {
  /// Validation is disabled.
  disabled,

  /// Validation occurs after every build.
  always,

  /// Validation occurs after user interaction.
  onUserInteraction,
}
