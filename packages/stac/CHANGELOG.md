## 1.5.0

- feat: add Material 3 navigation bar, navigation view, and generic navigation controller parsers.
- feat: use `flutter_validators` for form validation rules with parameterized validator options.
- feat: add mask input formatter support.
- feat: add text decoration line parsing for text styles.
- feat: add floating label behavior parsing for input decoration.
- fix: use `DropdownMenuEntry<Object>` for safer dropdown menu parsing.

## 1.4.0

- feat: enhance input decoration with new border options.
- feat: add copyWith support to textTheme.
- feat: re-export stac_core through stac package.
- docs: improve package READMEs with quick start guides & detailed features.

## 1.3.1

- fix: Bump `stac_core`to ^1.3.0

## 1.3.0

- **BREAKING**: Refactored caching to use global configuration via `Stac.initialize()`. See [Caching Docs](https://docs.stac.dev/concepts/caching) for migration guide.
- refactor: Centralize cache configuration to `Stac.initialize` and set `networkFirst` as default cache strategy
- feat: Add DSL entry to documentation JSON
- feat: Add stacSliverToBoxAdapter widget, parser, example, and documentation
- feat: Add stacSliverPadding widget, parser, example, and documentation
- feat: Add stacSliverSafeArea widget, parser, example, and documentation
- feat: Add stacSliverOpacity widget, parser, example, and documentation
- feat: Add stacSliverVisibility widget, parser, example, and documentation
- feat: Add stacSliverList widget, parser, example, and documentation
- feat: Add stacSliverFillRemaining widget, parser, example, and documentation
- feat: Add stacSliverGrid widget, parser, example, and documentation
- feat: Enhance the Positioned widget with new constructors
- feat: Add constructors for StacImage widget to support asset, network, and file sources
- feat: StacNavigator API and navigation documentation
- docs: Comprehensive documentation improvements with Dart examples
- docs: Add Dart code examples and wrap all examples in a CodeGroup component for sliver widget documentation

## 1.2.0

- Added screen caching and offline support
- Added theme support with cloud loading
- Added support for badge widget
- Added support for tooltip widget
- Added support for selectable text widget
- Added support for tooltip theme configuration
- Exported extension methods for easier widget and action parsing
- Enhanced network widget to support custom loading and error widgets

## 1.1.2

- chore: Upgrade `dio` to `^5.9.0`
- chore: Upgrade `flutter_svg` to `^2.2.2`
- chore: Upgrade `build_runner` to `^2.10.4`
- chore: Upgrade `json_serializable` to `^6.11.1` 

## 1.1.0

- Added theming support for Stac DSL (Dart-to-JSON conversion)
- Added `enabled`, `backgroundColor`, `side`, and `innerRadius` properties to StacRadio widget
- Added `onChanged` property to StacRadioGroup widget
- Simplified StacRadio and StacRadioGroup implementations

## 1.0.1

- Update README

## 1.0.0

### Breaking changes

- Minimum Flutter SDK is now 3.35.0+
- Switch: rename `activeColor` → `activeThumbColor` (align with Flutter API)
- `ThemeData.bottomAppBarTheme` now expects `BottomAppBarThemeData` (aligned with Flutter 3.35)
- `TextSpan` now takes `text` instead of `data`

### Features

- Introduced `StacError` and `StacErrorWidget` for enhanced error handling (#364)
- Added support for Dart-to-JSON conversion via Stac DSL
- WASM compatibility for Web/WASM platform support
- Conditional widget with expression evaluation for dynamic UI logic
- SVG rendering capability in `StacImage`
- `TextStyle.copyWith()` via `copyWithStyle` property
- Border side customization in `BoxDecoration`
- `multi_action_parser` for advanced interaction handling
- Integrated `SnackBarThemeData` for consistent styling
- `BackdropFilter` widget support
- Color transparency using `@` notation (e.g. "primary@50")
- `Visibility` widget support
- Replaced `Image.network` usage with `CachedNetworkImage`
- `ClipRRect` widget support
- `GestureDetector` widget with tap, drag and press handlers
- Material 3 fixed colors and new surface variants
- `ClipOval` widget support
- `InkWell` widget support
- Variable support with `setValue` widget and action
- `StacDouble` type support
- Updated Stac theme with new `ThemeData` classes
- `DropdownMenu` widget support
- `SliverAppBar` and `CustomScrollView` parsers
- `StacDynamicView` parser for fetching and rendering API data
- Improved Stac borders and styles

## 0.10.0

- Migrate to Flutter 3.29
- feat: Remove IconAlignment from button widgets by @divyanshub024

## 0.9.3

- Add pub.dev topics 

## 0.9.2

- chore: update readme

## 0.9.0

- feat: Add Stac parser for hero widget by @Yash-Khattar
- feat: Added support for radio widget by @ishanvaghani
- feat: Added support for slider widget by @ishanvaghani
- feat: Add support for Opacity widget by @vinothvino42
- feat: Add material as default icon type and update icon example by @vinothvino42
- fix: filledButton onPressed and onLongPress Functionality by @ShalmonAnandas
- feat: Added support for snackbar by @ishanvaghani
- feat: Adding Support Placeholder by @MohamedAbd0
- feat : Adding AspectRatio, FittedBox, LimitedBox Widgets by @MohamedAbd0
- feat: Update Stac webview @divyanshub024
- fix: Simplify table border configuration by @divyanshub024
- feat: Added support for name colors by @ishanvaghani
- feat: standardize parameters in buttons by @ishanvaghani
- feat: Update Chip widget params by @divyanshub024
- fix: change all icon button widget property from child to icon by @vinothvino42

## 0.8.3

- chore: Rename from Mirai to Stac
- chore: update readme

## 0.8.0

- chore: Code Refactoring :) by @divyanshub024
- feat: Add Row and Column Spacing by @divyanshub024
- feat: Add Stac carousel view with example by @divyanshub024
- feat: Add Stac colored box parser by @divyanshub024
- fix: Replace cache network image with the Image.network. by @divyanshub024
- feat: Add support for the Divider widget by @bhattkrutij
- feat: added ability to override stac parsers and action_parsers. by @khanjasir90
- feat: Added support for stac progress indicators by @ishanvaghani

## 0.7.2

- update Readme

## 0.7.0

- Added support for new widgets: CircleAvatar, GridView, Chip, Wrap & FilledButton
- Rename scrollView to SingleChildScrollView
- Added defaultBottomNavigationController & bottomNavigationView
- A new and better way to define Stac Network Request & Network Result
- Revamp Stac Form to add form validation, getting form values and submitting Form
- Use app text theme in text styles 
- A new way to declare EdgeInsets & BorderRadius
- A lot of enhancement, refactoring and bug fixes

## 0.6.0

- chore: update readme by @divyanshub024
- feat: Add Stac Switch by @kushalmahapatro
- :bug: fix: Failed assertion 'initialValue == null || controller == null': is not true in TextFormField by @loud-at-heart
- :rocket: Added support for align widget by @loud-at-heart
- feat: Added tabAlignment in stac tab bar by @i-asimkhan
- fix: Added scroll physics export statement in utils.dart by @i-asimkhan
- fix: Added support for `flex` in expanded widget by @i-asimkhan
- feat: Added `PageView` widget parser in `stac` widget parsers by @i-asimkhan
- Update banner by @divyanshub024
- feat: Use app theme colors in color property by @i-asimkhan
- feat: Added support for `textScaler` in Stac Text Parser by @i-asimkhan
- feat: Add Stac Network Widget by @divyanshub024
- feat: Added refresh-indicator to get a fresh `listView` json from the remote URL by @i-asimkhan

## 0.5.1

- minor changes

## 0.5.0

- feat: Add support for the Custom Action by @RodolfoSilva
- feat: Add border-radius in Button Styles by @i-asimkhan
- feat: Add SafeArea widget by @RodolfoSilva
- feat: Add Flexible widget by @RodolfoSilva
- feat: Enhance StacInputDecoration by @i-asimkhan
- feat: Add support for the form validation by @i-asimkhan
- feat: Add support for InputBorder.none by @divyanshub024
- feat: Add support for gradient in outline border by @divyanshub024
- BREAKING:feat: Re structure navigation action by @divyanshub024
- BREAKING:feat: Add modal bottom sheet action by @divyanshub024
- BREAKING:feat: Add show dialog action by @divyanshub024
- feat: Add support for webview by @divyanshub024
- feat: Add tap gesture recognizer to the Stac text Span by @divyanshub024

## 0.4.0

- feat: Extending rich text functionality to Stac Text (#158) by @divyanshub024
- feat: Added support for pushNamed in Stac Navigation (#159) by @i-asimkhan
- feat: Added support for Expanded Widget (#165) by @divyanshub024
- feat: Added support for InputDecorationTheme & InputBorder (#166) by @divyanshub024

## 0.3.0

- Added support for the appBarTheme (#96) by @i-asimkhan
- Added support for the textButtonTheme (#98) by @i-asimkhan
- Added support for the floatingActionButtonTheme (#99) by @i-asimkhan
- Added support for the bottomNavBarTheme (#136) by @i-asimkhan
- Added support for the bottomSheetTheme (#137) by @i-asimkhan
- Added support for the CardTheme (#139) by @i-asimkhan
- Added support for the dialog theme (#140) by @i-asimkhan
- Added support for the StacNavigationBarThemeData (#142) by @i-asimkhan
- Added support for the StacTabBarThemeData (#143) by @i-asimkhan
- Added support for the StacTabBarThemeData (#143) by @i-asimkhan
- Added CODE_OF_CONDUCT(#122) by @divyanshub024

## 0.2.0

- BREAKING: feat: Call `Stac.initialize` to initialize Stac (#103)
- feat: Add support for iconTheme (#91)
- feat: Add FractionallySizedBox widget (#100)
- feat: Add support for elevatedButtonTheme (#92)
- feat: Add support for outlinedButtonTheme (#93)
- feat: Add support for iconButtonTheme (#94)
- feat: Add center widget (#102)
- feat: Add support to inject dio instance (#104)
- feat: Add support for InputFormatters (#111)
- feat: Add support for InputValidation (#106)
- feat: Add `BoxDecoration` support for Container (#112)
- feat: Add Stack and Positioned widget (#114)
- chore: Update Readme (#101)

## 0.1.0

- Added Stac Theme support
- Added new Stac Tab Parser
- Added BoxFit support for Stac Image 
- Fixed AppBar size issue
- Updated examples in Stac Gallery

## 0.0.5

- Update assets

## 0.0.2

- Fix README assets

## 0.0.1

- initial release 🎉
