/// JSON-friendly keyboard type values for [TextField].
/// Mirrors Flutter's [TextInputType] at a high level.
enum StacTextInputType {
  /// Default text keyboard for general text input.
  text,

  /// Text keyboard configured for multi-line entry (enables return/newline).
  multiline,

  /// Numeric keyboard for entering numbers (may show decimal/negatives per OS).
  number,

  /// Phone keypad optimized for dialing.
  phone,

  /// Date/time related input keyboard (platform-specific).
  datetime,

  /// Email-optimized keyboard (e.g., includes @ and . shortcuts).
  emailAddress,

  /// URL-optimized keyboard (e.g., includes / and . shortcuts).
  url,

  /// Password entry with visually distinct layout; pair with obscureText.
  visiblePassword,

  /// Name entry keyboard (platform-optimized for names).
  name,

  /// Street address entry keyboard (platform-optimized for addresses).
  streetAddress,

  /// No particular keyboard, let platform decide.
  none,
}

/// IME action button to display/trigger on the soft keyboard.
/// Mirrors Flutter's [TextInputAction].
enum StacTextInputAction {
  /// No action button.
  none,

  /// Let the platform decide.
  unspecified,

  /// Complete text entry (e.g., close keyboard).
  done,

  /// Proceed to the target destination or submit.
  go,

  /// Perform a search.
  search,

  /// Send the current input (e.g., message/email).
  send,

  /// Move to the next field.
  next,

  /// Move to the previous field.
  previous,

  /// Continue the current flow.
  continueAction,

  /// Join or connect (e.g., meeting/game).
  join,

  /// Begin route/directions.
  route,

  /// Place an emergency call.
  emergencyCall,

  /// Insert a newline (for multi-line fields).
  newline,
}

/// How to auto-capitalize user input. Mirrors Flutter's [TextCapitalization].
enum StacTextCapitalization {
  /// Do not auto-capitalize.
  none,

  /// Capitalize all characters.
  characters,

  /// Capitalize the first letter of each word.
  words,

  /// Capitalize the first letter of each sentence.
  sentences,
}
