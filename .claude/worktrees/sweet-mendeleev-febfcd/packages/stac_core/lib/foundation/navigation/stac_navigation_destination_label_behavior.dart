/// Navigation destination label behavior options.
///
/// Defines how labels are displayed for navigation bar destinations.
///
/// Maps to Flutter's [NavigationDestinationLabelBehavior].
enum StacNavigationDestinationLabelBehavior {
  /// Always shows all of the labels under each navigation bar destination,
  /// selected and unselected.
  alwaysShow,

  /// Never shows any of the labels under the navigation bar destinations,
  /// regardless of selected vs unselected.
  alwaysHide,

  /// Only shows the labels of the selected navigation bar destination.
  ///
  /// When a destination is unselected, the label will be faded out, and the
  /// icon will be centered.
  ///
  /// When a destination is selected, the label will fade in and the label and
  /// icon will slide up so that they are both centered.
  onlyShowSelected,
}
