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
