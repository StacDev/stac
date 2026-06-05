/// Enumeration of all supported widget types in the Stac framework.
///
/// The enum value's `.name` is used as the JSON `type` field for
/// identifying widgets during parsing and serialization.
enum WidgetType {
  /// Alert dialog widget
  alertDialog,

  /// Align widget
  align,

  /// App bar widget
  appBar,

  /// Aspect ratio widget
  aspectRatio,

  /// Autocomplete widget
  autocomplete,

  /// Backdrop filter widget
  backdropFilter,

  /// Badge widget
  badge,

  /// Bottom navigation bar widget
  bottomNavigationBar,

  /// Bottom navigation view widget.
  bottomNavigationView,

  /// Card widget
  card,

  /// Carousel view widget
  carouselView,

  /// Center widget
  center,

  /// Check box widget
  checkBox,

  /// Chip widget
  chip,

  /// Clip oval widget
  clipOval,

  /// Clip rounded rectangle widget
  clipRRect,

  /// Circle avatar widget
  circleAvatar,

  /// Circular progress indicator widget
  circularProgressIndicator,

  /// Colored box widget
  coloredBox,

  /// Column widget
  column,

  /// Conditional widget
  conditional,

  /// Container widget
  container,

  /// Drawer widget
  drawer,

  /// Dropdown menu widget
  dropdownMenu,

  /// Custom scroll view widget
  customScrollView,

  /// Default bottom navigation controller widget.
  defaultBottomNavigationController,

  /// Default navigation controller widget. Drives selection state for
  /// any navigation widget (`bottomNavigationBar`, `navigationBar`, etc.).
  defaultNavigationController,

  /// Default tab controller widget
  defaultTabController,

  /// Divider widget
  divider,

  /// Dynamic view widget
  dynamicView,

  /// Elevated button widget
  elevatedButton,

  /// Expanded widget
  expanded,

  /// Filled button widget
  filledButton,

  /// Fitted box widget
  fittedBox,

  /// Flexible widget
  flexible,

  /// Floating action button widget
  floatingActionButton,

  /// Form widget
  form,

  /// Form field widget
  formField,

  /// Fractionally sized box widget
  fractionallySizedBox,

  /// Gesture detector widget
  gestureDetector,

  /// Grid view widget
  gridView,

  /// Hero widget
  hero,

  /// Icon widget
  icon,

  /// Icon button widget
  iconButton,

  /// Image widget
  image,

  /// Ink well widget
  inkWell,

  /// Limited box widget
  limitedBox,

  /// Linear progress indicator widget
  linearProgressIndicator,

  /// List tile widget
  listTile,

  /// List view widget
  listView,

  /// Navigation bar widget (Material 3)
  navigationBar,

  /// Navigation destination widget (Material 3 navigation bar item)
  navigationDestination,

  /// Navigation view widget. Displays one of its children based on the
  /// current index from a `defaultNavigationController`.
  navigationView,

  /// Network widget
  networkWidget,

  /// Opacity widget
  opacity,

  /// Outlined button widget
  outlinedButton,

  /// Padding widget
  padding,

  /// Page view widget
  pageView,

  /// Placeholder widget
  placeholder,

  /// Positioned widget
  positioned,

  /// Radio widget
  radio,

  /// Radio group widget
  radioGroup,

  /// Refresh indicator widget
  refreshIndicator,

  /// Row widget
  row,

  /// Safe area widget
  safeArea,

  /// Scaffold widget
  scaffold,

  /// Selectable text widget
  selectableText,

  /// Set value action/widget
  setValue,

  /// Single child scroll view widget
  singleChildScrollView,

  /// Sized box widget
  sizedBox,

  /// Slider widget
  slider,

  /// Sliver app bar widget
  sliverAppBar,

  /// Sliver grid widget
  sliverGrid,

  /// Sliver fill remaining widget
  sliverFillRemaining,

  /// Sliver List widget
  sliverList,

  /// Sliver visibility widget
  sliverVisibility,

  /// Sliver opacity widget
  sliverOpacity,

  /// Sliver safe area widget
  sliverSafeArea,

  /// Sliver padding widget
  sliverPadding,

  /// Sliver to box adapter widget
  sliverToBoxAdapter,

  /// Spacer widget
  spacer,

  /// Stack widget
  stack,

  /// Tab widget
  tab,

  /// Tab bar widget
  tabBar,

  /// Tab bar view widget
  tabBarView,

  /// Table widget
  table,

  /// Table cell widget
  tableCell,

  /// Text widget
  text,

  /// Text button widget
  textButton,

  /// Text field widget
  textField,

  /// Text form field widget
  textFormField,

  /// Tooltip widget
  tooltip,

  /// Wrap widget
  wrap,

  /// Visibility widget
  visibility,

  /// Vertical divider widget
  verticalDivider,
}
