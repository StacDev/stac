## 1.5.0

- Added `StacDefaultNavigationController`, `StacNavigationBar`, `StacNavigationView`, and `StacNavigationDestination` models for Material 3 navigation.
- Added `mask` input formatter support.
- Added validator `options` for parameterized form validation rules.
- Added text decoration line support to `StacTextStyle`.
- Added `floatingLabelBehavior` support to `StacInputDecoration`.

## 1.4.0
  - Added new border option models for input decoration (`StacInputBorder`, etc).
  - Added `copyWith` method to `StacThemeTextStyle` model.

## 1.3.0

- Added `StacSliverToBoxAdapter` widget model
- Added `StacSliverPadding` widget model
- Added `StacSliverSafeArea` widget model
- Added `StacSliverOpacity` widget model
- Added `StacSliverVisibility` widget model
- Added `StacSliverList` widget model
- Added `StacSliverFillRemaining` widget model
- Added `StacSliverGrid` widget model

## 1.2.0

- Added `StacBadge` widget model for displaying badges with labels or counts
- Added `StacTooltip` widget model for tooltip functionality
- Added `StacSelectableText` widget model for selectable text display
- Added `loadingWidget` and `errorWidget` properties to `StacNetworkWidget` model
- Added `StacTooltipThemeData` model for tooltip theme configuration
- Added `StacThemeRef` annotation for Stac Theme DSL support

## 1.1.0

- Added Stac Theme and ThemeData classes to stac_core
- Added `enabled`, `backgroundColor`, `side` & `innerRadius` in StacRadio widget.
- Added `onChanged` in StacRadioGroup widget.

## 1.0.0

- **New Features:**
  - Added StacScreen annotation for marking methods that return StacWidget instances
  - Added StacBorder factory methods (.all() and .symmetric()) for convenient border creation
  - Added StacBorderRadius factory constructors (.only(), .horizontal(), .vertical(), .circular())
  - Added StacColor withOpacity() extension method for opacity manipulation
  - Added StacSetValue widget for managing application state through key-value pairs
  - Added StacLinearProgressIndicator widget
  - Added StacDefaultBottomNavigationController widget

- **Enhancements:**
  - Migrated StacAlign from packages/stac to packages/stac_core for DSL support
  - Migrated StacDefaultBottomNavigationController from legacy Freezed model to new stac_models system
  - Enhanced StacSetValueAction with proper StacAction type handling
  - Improved bottom navigation timing by deferring BottomNavigationScope access to build time

- **Bug Fixes:**
  - Fixed null child handling in StacSetValue widget
  - Fixed timing issues in navigation parsers where InheritedWidget was accessed before creation
  - Fixed StacSetValueAction.action type from Map to StacAction
  - Fixed default gradient return value in StacGradientParser to linearGradient

## 0.2.0

- Added stac alignment geometry 
- Enhanced StacTextStlye to support custom and material text theme
- Added propper logging
- Bug Fixes & improvements

## 0.1.0

- Initial release. Supports core functionalities and common interfaces for Stac.
