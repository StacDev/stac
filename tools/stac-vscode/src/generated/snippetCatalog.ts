/* AUTO-GENERATED FILE. DO NOT EDIT. */

export type SnippetKind = 'widget' | 'action' | 'screen' | 'theme';

export interface SnippetCatalogEntry {
  kind: SnippetKind;
  label: string;
  prefix: string;
  description: string;
  body: string[];
}

export const snippetCatalog: SnippetCatalogEntry[] = [
  {
    "kind": "action",
    "label": "StacDelayAction",
    "prefix": "stac.action.delay",
    "description": "Stac action: delay",
    "body": [
      "const StacDelayAction(",
      "  milliseconds: ${1:300},",
      ")"
    ]
  },
  {
    "kind": "action",
    "label": "StacGetFormValue",
    "prefix": "stac.action.get_form_value",
    "description": "Stac action: getFormValue",
    "body": [
      "const StacGetFormValue(",
      "  id: '$1',",
      ")"
    ]
  },
  {
    "kind": "action",
    "label": "StacMultiAction",
    "prefix": "stac.action.multi_action",
    "description": "Stac action: multiAction",
    "body": [
      "const StacMultiAction(",
      "  actions: [",
      "    StacAction(jsonData: {'actionType': 'none'}),",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "action",
    "label": "StacNavigateAction",
    "prefix": "stac.action.navigate",
    "description": "Stac action: navigate",
    "body": [
      "const StacNavigateAction(",
      "  routeName: '$1',",
      ")"
    ]
  },
  {
    "kind": "action",
    "label": "StacNetworkRequest",
    "prefix": "stac.action.network_request",
    "description": "Stac action: networkRequest",
    "body": [
      "const StacNetworkRequest(",
      "  url: '$1',",
      ")"
    ]
  },
  {
    "kind": "action",
    "label": "StacAction",
    "prefix": "stac.action.none",
    "description": "Stac action: none",
    "body": [
      "const StacAction(",
      "  jsonData: {'actionType': 'none'},",
      ")"
    ]
  },
  {
    "kind": "action",
    "label": "StacSetValueAction",
    "prefix": "stac.action.set_value",
    "description": "Stac action: setValue",
    "body": [
      "const StacSetValueAction(",
      "  values: [",
      "    {'key': '$1', 'value': '$2'},",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "action",
    "label": "StacDialogAction",
    "prefix": "stac.action.show_dialog",
    "description": "Stac action: showDialog",
    "body": [
      "const StacDialogAction(",
      "  widget: StacContainer().toJson(),",
      ")"
    ]
  },
  {
    "kind": "action",
    "label": "StacModalBottomSheetAction",
    "prefix": "stac.action.show_modal_bottom_sheet",
    "description": "Stac action: showModalBottomSheet",
    "body": [
      "const StacModalBottomSheetAction(",
      "  widget: StacContainer(),",
      ")"
    ]
  },
  {
    "kind": "action",
    "label": "StacSnackBar",
    "prefix": "stac.action.show_snack_bar",
    "description": "Stac action: showSnackBar",
    "body": [
      "const StacSnackBar(",
      "  content: StacText(data: '$1').toJson(),",
      ")"
    ]
  },
  {
    "kind": "action",
    "label": "StacFormValidate",
    "prefix": "stac.action.validate_form",
    "description": "Stac action: validateForm",
    "body": [
      "const StacFormValidate(",
      "  isValid: StacAction(jsonData: {'actionType': 'none'}),",
      ")"
    ]
  },
  {
    "kind": "screen",
    "label": "StacScreen",
    "prefix": "stac.screen",
    "description": "Stac screen template",
    "body": [
      "@StacScreen(screenName: '$1')",
      "StacWidget $2() {",
      "  return StacScaffold(",
      "    body: StacCenter(",
      "      child: StacText(data: '$0'),",
      "    ),",
      "  );",
      "}"
    ]
  },
  {
    "kind": "theme",
    "label": "StacThemeRef",
    "prefix": "stac.theme",
    "description": "Stac theme template",
    "body": [
      "@StacThemeRef(name: '$1')",
      "StacTheme get $2 => StacTheme(",
      "  brightness: StacBrightness.light,",
      "  colorScheme: StacColorScheme(",
      "    brightness: StacBrightness.light,",
      "    primary: '$0',",
      "    onPrimary: '#FFFFFF',",
      "    surface: '#FFFFFF',",
      "    onSurface: '#000000',",
      "  ),",
      ");"
    ]
  },
  {
    "kind": "theme",
    "label": "StacAppBarTheme",
    "prefix": "stac.theme.app_bar_theme",
    "description": "Stac theme model: StacAppBarTheme",
    "body": [
      "StacAppBarTheme(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacBottomAppBarThemeData",
    "prefix": "stac.theme.bottom_app_bar_theme",
    "description": "Stac theme model: StacBottomAppBarThemeData",
    "body": [
      "StacBottomAppBarThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacBottomNavBarThemeData",
    "prefix": "stac.theme.bottom_nav_bar_theme_data",
    "description": "Stac theme model: StacBottomNavBarThemeData",
    "body": [
      "StacBottomNavBarThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacBottomSheetThemeData",
    "prefix": "stac.theme.bottom_sheet_theme_data",
    "description": "Stac theme model: StacBottomSheetThemeData",
    "body": [
      "StacBottomSheetThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacButtonStyle",
    "prefix": "stac.theme.button_style",
    "description": "Stac theme model: StacButtonStyle",
    "body": [
      "StacButtonStyle(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacButtonThemeData",
    "prefix": "stac.theme.button_theme_data",
    "description": "Stac theme model: StacButtonThemeData",
    "body": [
      "StacButtonThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacCardThemeData",
    "prefix": "stac.theme.card_theme_data",
    "description": "Stac theme model: StacCardThemeData",
    "body": [
      "StacCardThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacCheckboxThemeData",
    "prefix": "stac.theme.checkbox_theme_data",
    "description": "Stac theme model: StacCheckboxThemeData",
    "body": [
      "StacCheckboxThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacChipThemeData",
    "prefix": "stac.theme.chip_theme_data",
    "description": "Stac theme model: StacChipThemeData",
    "body": [
      "StacChipThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacColorScheme",
    "prefix": "stac.theme.color_scheme",
    "description": "Stac theme model: StacColorScheme",
    "body": [
      "StacColorScheme(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacDatePickerThemeData",
    "prefix": "stac.theme.date_picker_theme_data",
    "description": "Stac theme model: StacDatePickerThemeData",
    "body": [
      "StacDatePickerThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacDialogTheme",
    "prefix": "stac.theme.dialog_theme",
    "description": "Stac theme model: StacDialogTheme",
    "body": [
      "StacDialogTheme(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacDialogThemeData",
    "prefix": "stac.theme.dialog_theme_data",
    "description": "Stac theme model: StacDialogThemeData",
    "body": [
      "StacDialogThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacDividerThemeData",
    "prefix": "stac.theme.divider_theme_data",
    "description": "Stac theme model: StacDividerThemeData",
    "body": [
      "StacDividerThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacDrawerThemeData",
    "prefix": "stac.theme.drawer_theme_data",
    "description": "Stac theme model: StacDrawerThemeData",
    "body": [
      "StacDrawerThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacFloatingActionButtonThemeData",
    "prefix": "stac.theme.floating_action_button_theme_data",
    "description": "Stac theme model: StacFloatingActionButtonThemeData",
    "body": [
      "StacFloatingActionButtonThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacIconThemeData",
    "prefix": "stac.theme.icon_theme_data",
    "description": "Stac theme model: StacIconThemeData",
    "body": [
      "StacIconThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacInputDecorationTheme",
    "prefix": "stac.theme.input_decoration_theme",
    "description": "Stac theme model: StacInputDecorationTheme",
    "body": [
      "StacInputDecorationTheme(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacListTileThemeData",
    "prefix": "stac.theme.list_tile_theme_data",
    "description": "Stac theme model: StacListTileThemeData",
    "body": [
      "StacListTileThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacMaterialBannerThemeData",
    "prefix": "stac.theme.material_banner_theme_data",
    "description": "Stac theme model: StacMaterialBannerThemeData",
    "body": [
      "StacMaterialBannerThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacMaterialColor",
    "prefix": "stac.theme.material_color",
    "description": "Stac theme model: StacMaterialColor",
    "body": [
      "StacMaterialColor(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacNavigationBarThemeData",
    "prefix": "stac.theme.navigation_bar_theme_data",
    "description": "Stac theme model: StacNavigationBarThemeData",
    "body": [
      "StacNavigationBarThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacNavigationDrawerThemeData",
    "prefix": "stac.theme.navigation_drawer_theme_data",
    "description": "Stac theme model: StacNavigationDrawerThemeData",
    "body": [
      "StacNavigationDrawerThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacScrollbarThemeData",
    "prefix": "stac.theme.scrollbar_theme_data",
    "description": "Stac theme model: StacScrollbarThemeData",
    "body": [
      "StacScrollbarThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacSnackBarThemeData",
    "prefix": "stac.theme.snack_bar_theme_data",
    "description": "Stac theme model: StacSnackBarThemeData",
    "body": [
      "StacSnackBarThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacTabBarThemeData",
    "prefix": "stac.theme.tab_bar_theme_data",
    "description": "Stac theme model: StacTabBarThemeData",
    "body": [
      "StacTabBarThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacTextTheme",
    "prefix": "stac.theme.text_theme",
    "description": "Stac theme model: StacTextTheme",
    "body": [
      "StacTextTheme(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacTheme",
    "prefix": "stac.theme.theme",
    "description": "Stac theme model: StacTheme",
    "body": [
      "StacTheme(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "theme",
    "label": "StacTooltipThemeData",
    "prefix": "stac.theme.tool_tip_theme_data",
    "description": "Stac theme model: StacTooltipThemeData",
    "body": [
      "StacTooltipThemeData(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacAlertDialog",
    "prefix": "stac.widget.alert_dialog",
    "description": "Stac widget: StacAlertDialog",
    "body": [
      "StacAlertDialog(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacAlign",
    "prefix": "stac.widget.align",
    "description": "Stac widget: StacAlign",
    "body": [
      "StacAlign(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacAppBar",
    "prefix": "stac.widget.app_bar",
    "description": "Stac widget: StacAppBar",
    "body": [
      "StacAppBar(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacAspectRatio",
    "prefix": "stac.widget.aspect_ratio",
    "description": "Stac widget: StacAspectRatio",
    "body": [
      "StacAspectRatio(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacAutoComplete",
    "prefix": "stac.widget.auto_complete",
    "description": "Stac widget: StacAutoComplete",
    "body": [
      "StacAutoComplete(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacBackdropFilter",
    "prefix": "stac.widget.backdrop_filter",
    "description": "Stac widget: StacBackdropFilter",
    "body": [
      "StacBackdropFilter(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacBadge",
    "prefix": "stac.widget.badge",
    "description": "Stac widget: StacBadge",
    "body": [
      "StacBadge(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacBottomNavigationBar",
    "prefix": "stac.widget.bottom_navigation_bar",
    "description": "Stac widget: StacBottomNavigationBar",
    "body": [
      "StacBottomNavigationBar(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacBottomNavigationView",
    "prefix": "stac.widget.bottom_navigation_view",
    "description": "Stac widget: StacBottomNavigationView",
    "body": [
      "StacBottomNavigationView(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacCard",
    "prefix": "stac.widget.card",
    "description": "Stac widget: StacCard",
    "body": [
      "StacCard(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacCarouselView",
    "prefix": "stac.widget.carousel_view",
    "description": "Stac widget: StacCarouselView",
    "body": [
      "StacCarouselView(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacCenter",
    "prefix": "stac.widget.center",
    "description": "Stac widget: StacCenter",
    "body": [
      "StacCenter(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacCheckBox",
    "prefix": "stac.widget.check_box",
    "description": "Stac widget: StacCheckBox",
    "body": [
      "StacCheckBox(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacChip",
    "prefix": "stac.widget.chip",
    "description": "Stac widget: StacChip",
    "body": [
      "StacChip(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacCircleAvatar",
    "prefix": "stac.widget.circle_avatar",
    "description": "Stac widget: StacCircleAvatar",
    "body": [
      "StacCircleAvatar(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacCircularProgressIndicator",
    "prefix": "stac.widget.circular_progress_indicator",
    "description": "Stac widget: StacCircularProgressIndicator",
    "body": [
      "StacCircularProgressIndicator(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacClipOval",
    "prefix": "stac.widget.clip_oval",
    "description": "Stac widget: StacClipOval",
    "body": [
      "StacClipOval(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacClipRRect",
    "prefix": "stac.widget.clip_rrect",
    "description": "Stac widget: StacClipRRect",
    "body": [
      "StacClipRRect(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacColoredBox",
    "prefix": "stac.widget.colored_box",
    "description": "Stac widget: StacColoredBox",
    "body": [
      "StacColoredBox(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacColumn",
    "prefix": "stac.widget.column",
    "description": "Stac widget: StacColumn",
    "body": [
      "StacColumn(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacConditional",
    "prefix": "stac.widget.conditional",
    "description": "Stac widget: StacConditional",
    "body": [
      "StacConditional(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacContainer",
    "prefix": "stac.widget.container",
    "description": "Stac widget: StacContainer",
    "body": [
      "StacContainer(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacCustomScrollView",
    "prefix": "stac.widget.custom_scroll_view",
    "description": "Stac widget: StacCustomScrollView",
    "body": [
      "StacCustomScrollView(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacDefaultBottomNavigationController",
    "prefix": "stac.widget.default_bottom_navigation_controller",
    "description": "Stac widget: StacDefaultBottomNavigationController",
    "body": [
      "StacDefaultBottomNavigationController(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacDefaultTabController",
    "prefix": "stac.widget.default_tab_controller",
    "description": "Stac widget: StacDefaultTabController",
    "body": [
      "StacDefaultTabController(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacDivider",
    "prefix": "stac.widget.divider",
    "description": "Stac widget: StacDivider",
    "body": [
      "StacDivider(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacDrawer",
    "prefix": "stac.widget.drawer",
    "description": "Stac widget: StacDrawer",
    "body": [
      "StacDrawer(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacDropdownMenu",
    "prefix": "stac.widget.dropdown_menu",
    "description": "Stac widget: StacDropdownMenu",
    "body": [
      "StacDropdownMenu(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacDynamicView",
    "prefix": "stac.widget.dynamic_view",
    "description": "Stac widget: StacDynamicView",
    "body": [
      "StacDynamicView(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacElevatedButton",
    "prefix": "stac.widget.elevated_button",
    "description": "Stac widget: StacElevatedButton",
    "body": [
      "StacElevatedButton(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacExpanded",
    "prefix": "stac.widget.expanded",
    "description": "Stac widget: StacExpanded",
    "body": [
      "StacExpanded(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacFilledButton",
    "prefix": "stac.widget.filled_button",
    "description": "Stac widget: StacFilledButton",
    "body": [
      "StacFilledButton(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacFittedBox",
    "prefix": "stac.widget.fitted_box",
    "description": "Stac widget: StacFittedBox",
    "body": [
      "StacFittedBox(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacFlexible",
    "prefix": "stac.widget.flexible",
    "description": "Stac widget: StacFlexible",
    "body": [
      "StacFlexible(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacFloatingActionButton",
    "prefix": "stac.widget.floating_action_button",
    "description": "Stac widget: StacFloatingActionButton",
    "body": [
      "StacFloatingActionButton(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacForm",
    "prefix": "stac.widget.form",
    "description": "Stac widget: StacForm",
    "body": [
      "StacForm(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacFractionallySizedBox",
    "prefix": "stac.widget.fractionally_sized_box",
    "description": "Stac widget: StacFractionallySizedBox",
    "body": [
      "StacFractionallySizedBox(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacGestureDetector",
    "prefix": "stac.widget.gesture_detector",
    "description": "Stac widget: StacGestureDetector",
    "body": [
      "StacGestureDetector(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacGridView",
    "prefix": "stac.widget.grid_view",
    "description": "Stac widget: StacGridView",
    "body": [
      "StacGridView(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacHero",
    "prefix": "stac.widget.hero",
    "description": "Stac widget: StacHero",
    "body": [
      "StacHero(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacIcon",
    "prefix": "stac.widget.icon",
    "description": "Stac widget: StacIcon",
    "body": [
      "StacIcon(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacIconButton",
    "prefix": "stac.widget.icon_button",
    "description": "Stac widget: StacIconButton",
    "body": [
      "StacIconButton(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacImage",
    "prefix": "stac.widget.image",
    "description": "Stac widget: StacImage",
    "body": [
      "StacImage(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacInkWell",
    "prefix": "stac.widget.ink_well",
    "description": "Stac widget: StacInkWell",
    "body": [
      "StacInkWell(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacLimitedBox",
    "prefix": "stac.widget.limited_box",
    "description": "Stac widget: StacLimitedBox",
    "body": [
      "StacLimitedBox(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacLinearProgressIndicator",
    "prefix": "stac.widget.linear_progress_indicator",
    "description": "Stac widget: StacLinearProgressIndicator",
    "body": [
      "StacLinearProgressIndicator(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacListTile",
    "prefix": "stac.widget.list_tile",
    "description": "Stac widget: StacListTile",
    "body": [
      "StacListTile(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacListView",
    "prefix": "stac.widget.list_view",
    "description": "Stac widget: StacListView",
    "body": [
      "StacListView(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacNetworkWidget",
    "prefix": "stac.widget.network_widget",
    "description": "Stac widget: StacNetworkWidget",
    "body": [
      "StacNetworkWidget(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacOpacity",
    "prefix": "stac.widget.opacity",
    "description": "Stac widget: StacOpacity",
    "body": [
      "StacOpacity(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacOutlinedButton",
    "prefix": "stac.widget.outlined_button",
    "description": "Stac widget: StacOutlinedButton",
    "body": [
      "StacOutlinedButton(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacPadding",
    "prefix": "stac.widget.padding",
    "description": "Stac widget: StacPadding",
    "body": [
      "StacPadding(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacPageView",
    "prefix": "stac.widget.page_view",
    "description": "Stac widget: StacPageView",
    "body": [
      "StacPageView(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacPlaceholder",
    "prefix": "stac.widget.placeholder",
    "description": "Stac widget: StacPlaceholder",
    "body": [
      "StacPlaceholder(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacPositioned",
    "prefix": "stac.widget.positioned",
    "description": "Stac widget: StacPositioned",
    "body": [
      "StacPositioned(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacRadio",
    "prefix": "stac.widget.radio",
    "description": "Stac widget: StacRadio",
    "body": [
      "StacRadio(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacRadioGroup",
    "prefix": "stac.widget.radio_group",
    "description": "Stac widget: StacRadioGroup",
    "body": [
      "StacRadioGroup(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacRefreshIndicator",
    "prefix": "stac.widget.refresh_indicator",
    "description": "Stac widget: StacRefreshIndicator",
    "body": [
      "StacRefreshIndicator(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacRow",
    "prefix": "stac.widget.row",
    "description": "Stac widget: StacRow",
    "body": [
      "StacRow(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSafeArea",
    "prefix": "stac.widget.safe_area",
    "description": "Stac widget: StacSafeArea",
    "body": [
      "StacSafeArea(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacScaffold",
    "prefix": "stac.widget.scaffold",
    "description": "Stac widget: StacScaffold",
    "body": [
      "StacScaffold(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSelectableText",
    "prefix": "stac.widget.selectable_text",
    "description": "Stac widget: StacSelectableText",
    "body": [
      "StacSelectableText(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSetValue",
    "prefix": "stac.widget.set_value",
    "description": "Stac widget: StacSetValue",
    "body": [
      "StacSetValue(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSingleChildScrollView",
    "prefix": "stac.widget.single_child_scroll_view",
    "description": "Stac widget: StacSingleChildScrollView",
    "body": [
      "StacSingleChildScrollView(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSizedBox",
    "prefix": "stac.widget.sized_box",
    "description": "Stac widget: StacSizedBox",
    "body": [
      "StacSizedBox(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSlider",
    "prefix": "stac.widget.slider",
    "description": "Stac widget: StacSlider",
    "body": [
      "StacSlider(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSliverAppBar",
    "prefix": "stac.widget.sliver_app_bar",
    "description": "Stac widget: StacSliverAppBar",
    "body": [
      "StacSliverAppBar(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSliverFillRemaining",
    "prefix": "stac.widget.sliver_fill_remaining",
    "description": "Stac widget: StacSliverFillRemaining",
    "body": [
      "StacSliverFillRemaining(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSliverGrid",
    "prefix": "stac.widget.sliver_grid",
    "description": "Stac widget: StacSliverGrid",
    "body": [
      "StacSliverGrid(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSliverList",
    "prefix": "stac.widget.sliver_list",
    "description": "Stac widget: StacSliverList",
    "body": [
      "StacSliverList(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSliverOpacity",
    "prefix": "stac.widget.sliver_opacity",
    "description": "Stac widget: StacSliverOpacity",
    "body": [
      "StacSliverOpacity(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSliverPadding",
    "prefix": "stac.widget.sliver_padding",
    "description": "Stac widget: StacSliverPadding",
    "body": [
      "StacSliverPadding(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSliverSafeArea",
    "prefix": "stac.widget.sliver_safe_area",
    "description": "Stac widget: StacSliverSafeArea",
    "body": [
      "StacSliverSafeArea(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSliverToBoxAdapter",
    "prefix": "stac.widget.sliver_to_box_adapter",
    "description": "Stac widget: StacSliverToBoxAdapter",
    "body": [
      "StacSliverToBoxAdapter(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSliverVisibility",
    "prefix": "stac.widget.sliver_visibility",
    "description": "Stac widget: StacSliverVisibility",
    "body": [
      "StacSliverVisibility(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSpacer",
    "prefix": "stac.widget.spacer",
    "description": "Stac widget: StacSpacer",
    "body": [
      "StacSpacer(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacStack",
    "prefix": "stac.widget.stack",
    "description": "Stac widget: StacStack",
    "body": [
      "StacStack(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacSwitch",
    "prefix": "stac.widget.switch",
    "description": "Stac widget: StacSwitch",
    "body": [
      "StacSwitch(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacTab",
    "prefix": "stac.widget.tab",
    "description": "Stac widget: StacTab",
    "body": [
      "StacTab(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacTabBar",
    "prefix": "stac.widget.tab_bar",
    "description": "Stac widget: StacTabBar",
    "body": [
      "StacTabBar(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacTabBarView",
    "prefix": "stac.widget.tab_bar_view",
    "description": "Stac widget: StacTabBarView",
    "body": [
      "StacTabBarView(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacTable",
    "prefix": "stac.widget.table",
    "description": "Stac widget: StacTable",
    "body": [
      "StacTable(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacTableCell",
    "prefix": "stac.widget.table_cell",
    "description": "Stac widget: StacTableCell",
    "body": [
      "StacTableCell(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacText",
    "prefix": "stac.widget.text",
    "description": "Stac widget: StacText",
    "body": [
      "StacText(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacTextButton",
    "prefix": "stac.widget.text_button",
    "description": "Stac widget: StacTextButton",
    "body": [
      "StacTextButton(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacTextField",
    "prefix": "stac.widget.text_field",
    "description": "Stac widget: StacTextField",
    "body": [
      "StacTextField(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacTextFormField",
    "prefix": "stac.widget.text_form_field",
    "description": "Stac widget: StacTextFormField",
    "body": [
      "StacTextFormField(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacTooltip",
    "prefix": "stac.widget.tool_tip",
    "description": "Stac widget: StacTooltip",
    "body": [
      "StacTooltip(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacVerticalDivider",
    "prefix": "stac.widget.vertical_divider",
    "description": "Stac widget: StacVerticalDivider",
    "body": [
      "StacVerticalDivider(",
      "  $0",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacVisibility",
    "prefix": "stac.widget.visibility",
    "description": "Stac widget: StacVisibility",
    "body": [
      "StacVisibility(",
      "  child: $0,",
      ")"
    ]
  },
  {
    "kind": "widget",
    "label": "StacWrap",
    "prefix": "stac.widget.wrap",
    "description": "Stac widget: StacWrap",
    "body": [
      "StacWrap(",
      "  children: [",
      "    $0,",
      "  ],",
      ")"
    ]
  }
];
