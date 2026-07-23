/// Clipping options for widgets that may overflow their bounds.
///
/// Different clipping modes offer trade-offs between performance and visual quality.
/// Choose the appropriate mode based on your specific needs and performance requirements.
enum StacClip {
  /// No clip at all.
  ///
  /// This is the default option for most widgets: if the content does not
  /// overflow the widget boundary, don't pay any performance cost for clipping.
  ///
  /// If the content does overflow, consider the following [Clip] options:
  ///
  ///  * [hardEdge], which is the fastest clipping, but with lower fidelity.
  ///  * [antiAlias], which is a little slower than [hardEdge], but with smoothed edges.
  ///  * [antiAliasWithSaveLayer], which is much slower than [antiAlias], and should
  ///    rarely be used.
  none,

  /// Clip, but do not apply anti-aliasing.
  ///
  /// This mode enables clipping, but curves and non-axis-aligned straight lines will be
  /// jagged as no effort is made to anti-alias.
  ///
  /// Faster than other clipping modes, but slower than [none].
  ///
  /// This is a reasonable choice when clipping is needed, if the container is an axis-
  /// aligned rectangle or an axis-aligned rounded rectangle with very small corner radii.
  ///
  /// See also:
  ///
  ///  * [antiAlias], recommended when clipping is needed and the shape is not
  ///    an axis-aligned rectangle.
  hardEdge,

  /// Clip with anti-aliasing.
  ///
  /// This mode has anti-aliased clipping edges, which reduces jagged edges when
  /// the clip shape itself has edges that are diagonal, curved, or otherwise
  /// not axis-aligned.
  ///
  /// This is much faster than [antiAliasWithSaveLayer], but slower than [hardEdge].
  ///
  /// Unlike [hardEdge] and [antiAliasWithSaveLayer], this clipping can have
  /// bleeding edge artifacts
  /// ([Skia Fiddle example](https://fiddle.skia.org/c/21cb4c2b2515996b537f36e7819288ae)).
  ///
  /// See also:
  ///
  ///  * [hardEdge], which is faster, but with lower fidelity.
  ///  * [antiAliasWithSaveLayer], which is much slower, but avoids bleeding
  ///    edge artifacts.
  ///  * [Paint.isAntiAlias], which is the anti-aliasing switch for general draw operations.
  antiAlias,

  /// Clip with anti-aliasing and `saveLayer` immediately following the clip.
  ///
  /// This mode not only clips with anti-aliasing, but also allocates an offscreen
  /// buffer. All subsequent paints are carried out on that buffer before finally
  /// being clipped and composited back.
  ///
  /// This is very slow. It has no bleeding edge artifacts, unlike [antiAlias],
  /// but it changes the semantics as it introduces an offscreen buffer.
  /// For example, see this
  /// [Skia Fiddle without `saveLayer`](https://fiddle.skia.org/c/83ed46ceadaf90f36a4df3b98cbe1c35)
  /// and this
  /// [Skia Fiddle with `saveLayer`](https://fiddle.skia.org/c/704acfa049a7e99fbe685232c45d1582).
  ///
  /// Use this mode only if necessary. For example, if you have an
  /// image overlaid on a very different background color. In these
  /// cases, consider if you can avoid overlaying multiple colors in one
  /// location (e.g. by having the background color only present where the image is
  /// absent). If possible, prefer [antiAlias] as it is much faster.
  ///
  /// See also:
  ///
  ///  * [antiAlias], which is much faster, and has similar clipping results.
  ///  * [Canvas.saveLayer].
  antiAliasWithSaveLayer,
}
