// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTheme _$StacThemeFromJson(Map<String, dynamic> json) => StacTheme(
  applyElevationOverlayColor: json['applyElevationOverlayColor'] as bool?,
  inputDecorationTheme: json['inputDecorationTheme'] == null
      ? null
      : StacInputDecorationTheme.fromJson(
          json['inputDecorationTheme'] as Map<String, dynamic>,
        ),
  materialTapTargetSize: $enumDecodeNullable(
    _$MaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
  platform: $enumDecodeNullable(_$TargetPlatformEnumMap, json['platform']),
  scrollbarTheme: json['scrollbarTheme'] == null
      ? null
      : StacScrollbarThemeData.fromJson(
          json['scrollbarTheme'] as Map<String, dynamic>,
        ),
  useMaterial3: json['useMaterial3'] as bool?,
  colorScheme: json['colorScheme'] == null
      ? null
      : StacColorScheme.fromJson(json['colorScheme'] as Map<String, dynamic>),
  brightness: $enumDecodeNullable(_$BrightnessEnumMap, json['brightness']),
  colorSchemeSeed: json['colorSchemeSeed'] as String?,
  canvasColor: json['canvasColor'] as String?,
  cardColor: json['cardColor'] as String?,
  disabledColor: json['disabledColor'] as String?,
  dividerColor: json['dividerColor'] as String?,
  focusColor: json['focusColor'] as String?,
  highlightColor: json['highlightColor'] as String?,
  hintColor: json['hintColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  primaryColor: json['primaryColor'] as String?,
  primaryColorDark: json['primaryColorDark'] as String?,
  primaryColorLight: json['primaryColorLight'] as String?,
  primarySwatch: json['primarySwatch'] == null
      ? null
      : StacMaterialColor.fromJson(
          json['primarySwatch'] as Map<String, dynamic>,
        ),
  scaffoldBackgroundColor: json['scaffoldBackgroundColor'] as String?,
  secondaryHeaderColor: json['secondaryHeaderColor'] as String?,
  shadowColor: json['shadowColor'] as String?,
  splashColor: json['splashColor'] as String?,
  unselectedWidgetColor: json['unselectedWidgetColor'] as String?,
  fontFamily: json['fontFamily'] as String?,
  fontFamilyFallback: (json['fontFamilyFallback'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  package: json['package'] as String?,
  iconTheme: json['iconTheme'] == null
      ? null
      : StacIconThemeData.fromJson(json['iconTheme'] as Map<String, dynamic>),
  primaryIconTheme: json['primaryIconTheme'] == null
      ? null
      : StacIconThemeData.fromJson(
          json['primaryIconTheme'] as Map<String, dynamic>,
        ),
  primaryTextTheme: json['primaryTextTheme'] == null
      ? null
      : StacTextTheme.fromJson(
          json['primaryTextTheme'] as Map<String, dynamic>,
        ),
  textTheme: json['textTheme'] == null
      ? null
      : StacTextTheme.fromJson(json['textTheme'] as Map<String, dynamic>),
  appBarTheme: json['appBarTheme'] == null
      ? null
      : StacAppBarTheme.fromJson(json['appBarTheme'] as Map<String, dynamic>),
  bannerTheme: json['bannerTheme'] == null
      ? null
      : StacMaterialBannerThemeData.fromJson(
          json['bannerTheme'] as Map<String, dynamic>,
        ),
  bottomAppBarTheme: json['bottomAppBarTheme'] == null
      ? null
      : StacBottomAppBarThemeData.fromJson(
          json['bottomAppBarTheme'] as Map<String, dynamic>,
        ),
  bottomNavigationBarTheme:
      json['bottomNavigationBarTheme'] as Map<String, dynamic>?,
  bottomSheetTheme: json['bottomSheetTheme'] as Map<String, dynamic>?,
  buttonTheme: json['buttonTheme'] == null
      ? null
      : StacButtonThemeData.fromJson(
          json['buttonTheme'] as Map<String, dynamic>,
        ),
  cardTheme: json['cardTheme'] as Map<String, dynamic>?,
  checkboxTheme: json['checkboxTheme'] as Map<String, dynamic>?,
  chipTheme: json['chipTheme'] as Map<String, dynamic>?,
  datePickerTheme: json['datePickerTheme'] as Map<String, dynamic>?,
  dialogTheme: json['dialogTheme'] as Map<String, dynamic>?,
  dividerTheme: json['dividerTheme'] == null
      ? null
      : StacDividerThemeData.fromJson(
          json['dividerTheme'] as Map<String, dynamic>,
        ),
  drawerTheme: json['drawerTheme'] as Map<String, dynamic>?,
  elevatedButtonTheme: json['elevatedButtonTheme'] == null
      ? null
      : StacButtonStyle.fromJson(
          json['elevatedButtonTheme'] as Map<String, dynamic>,
        ),
  filledButtonTheme: json['filledButtonTheme'] == null
      ? null
      : StacButtonStyle.fromJson(
          json['filledButtonTheme'] as Map<String, dynamic>,
        ),
  floatingActionButtonTheme:
      json['floatingActionButtonTheme'] as Map<String, dynamic>?,
  iconButtonTheme: json['iconButtonTheme'] == null
      ? null
      : StacButtonStyle.fromJson(
          json['iconButtonTheme'] as Map<String, dynamic>,
        ),
  listTileTheme: json['listTileTheme'] as Map<String, dynamic>?,
  menuButtonTheme: json['menuButtonTheme'] == null
      ? null
      : StacButtonStyle.fromJson(
          json['menuButtonTheme'] as Map<String, dynamic>,
        ),
  navigationBarTheme: json['navigationBarTheme'] as Map<String, dynamic>?,
  navigationDrawerTheme: json['navigationDrawerTheme'] as Map<String, dynamic>?,
  outlinedButtonTheme: json['outlinedButtonTheme'] == null
      ? null
      : StacButtonStyle.fromJson(
          json['outlinedButtonTheme'] as Map<String, dynamic>,
        ),
  segmentedButtonTheme: json['segmentedButtonTheme'] == null
      ? null
      : StacButtonStyle.fromJson(
          json['segmentedButtonTheme'] as Map<String, dynamic>,
        ),
  snackBarTheme: json['snackBarTheme'] as Map<String, dynamic>?,
  tabBarTheme: json['tabBarTheme'] as Map<String, dynamic>?,
  textButtonTheme: json['textButtonTheme'] == null
      ? null
      : StacButtonStyle.fromJson(
          json['textButtonTheme'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StacThemeToJson(StacTheme instance) => <String, dynamic>{
  'applyElevationOverlayColor': instance.applyElevationOverlayColor,
  'inputDecorationTheme': instance.inputDecorationTheme?.toJson(),
  'materialTapTargetSize':
      _$MaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
  'platform': _$TargetPlatformEnumMap[instance.platform],
  'scrollbarTheme': instance.scrollbarTheme?.toJson(),
  'useMaterial3': instance.useMaterial3,
  'colorScheme': instance.colorScheme?.toJson(),
  'brightness': _$BrightnessEnumMap[instance.brightness],
  'colorSchemeSeed': instance.colorSchemeSeed,
  'canvasColor': instance.canvasColor,
  'cardColor': instance.cardColor,
  'disabledColor': instance.disabledColor,
  'dividerColor': instance.dividerColor,
  'focusColor': instance.focusColor,
  'highlightColor': instance.highlightColor,
  'hintColor': instance.hintColor,
  'hoverColor': instance.hoverColor,
  'primaryColor': instance.primaryColor,
  'primaryColorDark': instance.primaryColorDark,
  'primaryColorLight': instance.primaryColorLight,
  'primarySwatch': instance.primarySwatch?.toJson(),
  'scaffoldBackgroundColor': instance.scaffoldBackgroundColor,
  'secondaryHeaderColor': instance.secondaryHeaderColor,
  'shadowColor': instance.shadowColor,
  'splashColor': instance.splashColor,
  'unselectedWidgetColor': instance.unselectedWidgetColor,
  'fontFamily': instance.fontFamily,
  'fontFamilyFallback': instance.fontFamilyFallback,
  'package': instance.package,
  'iconTheme': instance.iconTheme?.toJson(),
  'primaryIconTheme': instance.primaryIconTheme?.toJson(),
  'primaryTextTheme': instance.primaryTextTheme?.toJson(),
  'textTheme': instance.textTheme?.toJson(),
  'appBarTheme': instance.appBarTheme?.toJson(),
  'bannerTheme': instance.bannerTheme?.toJson(),
  'bottomAppBarTheme': instance.bottomAppBarTheme?.toJson(),
  'bottomNavigationBarTheme': instance.bottomNavigationBarTheme,
  'bottomSheetTheme': instance.bottomSheetTheme,
  'buttonTheme': instance.buttonTheme?.toJson(),
  'cardTheme': instance.cardTheme,
  'checkboxTheme': instance.checkboxTheme,
  'chipTheme': instance.chipTheme,
  'datePickerTheme': instance.datePickerTheme,
  'dialogTheme': instance.dialogTheme,
  'dividerTheme': instance.dividerTheme?.toJson(),
  'drawerTheme': instance.drawerTheme,
  'elevatedButtonTheme': instance.elevatedButtonTheme?.toJson(),
  'filledButtonTheme': instance.filledButtonTheme?.toJson(),
  'floatingActionButtonTheme': instance.floatingActionButtonTheme,
  'iconButtonTheme': instance.iconButtonTheme?.toJson(),
  'listTileTheme': instance.listTileTheme,
  'menuButtonTheme': instance.menuButtonTheme?.toJson(),
  'navigationBarTheme': instance.navigationBarTheme,
  'navigationDrawerTheme': instance.navigationDrawerTheme,
  'outlinedButtonTheme': instance.outlinedButtonTheme?.toJson(),
  'segmentedButtonTheme': instance.segmentedButtonTheme?.toJson(),
  'snackBarTheme': instance.snackBarTheme,
  'tabBarTheme': instance.tabBarTheme,
  'textButtonTheme': instance.textButtonTheme?.toJson(),
};

const _$MaterialTapTargetSizeEnumMap = {
  MaterialTapTargetSize.padded: 'padded',
  MaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};

const _$TargetPlatformEnumMap = {
  TargetPlatform.android: 'android',
  TargetPlatform.fuchsia: 'fuchsia',
  TargetPlatform.iOS: 'iOS',
  TargetPlatform.linux: 'linux',
  TargetPlatform.macOS: 'macOS',
  TargetPlatform.windows: 'windows',
};

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};
