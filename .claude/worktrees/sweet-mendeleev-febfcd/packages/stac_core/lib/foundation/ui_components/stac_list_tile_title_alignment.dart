/// Defines how the title and subtitle of a [ListTile] are vertically aligned.
///
/// This enum is used to specify the `titleAlignment` property of a [StacListTile].
enum StacListTileTitleAlignment {
  /// The top of the title will be aligned with the top of the leading widget.
  ///
  /// This is the default if [StacListTile.isThreeLine] is false and
  /// [StacListTile.subtitle] is null.
  titleHeight,

  /// The title and subtitle will be aligned such that the space between the
  /// leading widget and the title/subtitle is visually balanced.
  ///
  /// This is the default if [StacListTile.isThreeLine] is true.
  threeLine,

  /// The bottom of the subtitle will be aligned with the bottom of the leading widget.
  ///
  /// This is the default if [StacListTile.isThreeLine] is false and
  /// [StacListTile.subtitle] is not null.
  bottom,

  /// The center of the title and subtitle will be aligned with the center of the
  /// leading widget.
  center,
}
