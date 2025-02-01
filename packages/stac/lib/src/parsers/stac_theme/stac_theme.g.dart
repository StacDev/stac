// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacThemeImpl _$$StacThemeImplFromJson(Map<String, dynamic> json) =>
    _$StacThemeImpl(
      applyElevationOverlayColor: json['applyElevationOverlayColor'] as bool?,
      inputDecorationTheme: json['inputDecorationTheme'] == null
          ? null
          : StacInputDecorationTheme.fromJson(
              json['inputDecorationTheme'] as Map<String, dynamic>),
      useMaterial3: json['useMaterial3'] as bool?,
      brightness: $enumDecodeNullable(_$BrightnessEnumMap, json['brightness']),
      canvasColor: json['canvasColor'] as String?,
      cardColor: json['cardColor'] as String?,
      colorScheme: json['colorScheme'] == null
          ? null
          : StacColorScheme.fromJson(
              json['colorScheme'] as Map<String, dynamic>),
      colorSchemeSeed: json['colorSchemeSeed'] as String?,
      dialogBackgroundColor: json['dialogBackgroundColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      dividerColor: json['dividerColor'] as String?,
      focusColor: json['focusColor'] as String?,
      highlightColor: json['highlightColor'] as String?,
      hintColor: json['hintColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      indicatorColor: json['indicatorColor'] as String?,
      primaryColor: json['primaryColor'] as String?,
      primaryColorDark: json['primaryColorDark'] as String?,
      primaryColorLight: json['primaryColorLight'] as String?,
      primarySwatch: json['primarySwatch'] == null
          ? null
          : StacMaterialColor.fromJson(
              json['primarySwatch'] as Map<String, dynamic>),
      scaffoldBackgroundColor: json['scaffoldBackgroundColor'] as String?,
      secondaryHeaderColor: json['secondaryHeaderColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      splashColor: json['splashColor'] as String?,
      unselectedWidgetColor: json['unselectedWidgetColor'] as String?,
      fontFamily: json['fontFamily'] as String?,
      fontFamilyFallback: (json['fontFamilyFallback'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      appBarTheme: json['appBarTheme'] == null
          ? null
          : StacAppBarTheme.fromJson(
              json['appBarTheme'] as Map<String, dynamic>),
      elevatedButtonTheme: json['elevatedButtonTheme'] == null
          ? null
          : StacButtonStyle.fromJson(
              json['elevatedButtonTheme'] as Map<String, dynamic>),
      outlinedButtonTheme: json['outlinedButtonTheme'] == null
          ? null
          : StacButtonStyle.fromJson(
              json['outlinedButtonTheme'] as Map<String, dynamic>),
      iconButtonTheme: json['iconButtonTheme'] == null
          ? null
          : StacButtonStyle.fromJson(
              json['iconButtonTheme'] as Map<String, dynamic>),
      iconTheme: json['iconTheme'] == null
          ? null
          : StacIconThemeData.fromJson(
              json['iconTheme'] as Map<String, dynamic>),
      primaryIconTheme: json['primaryIconTheme'] == null
          ? null
          : StacIconThemeData.fromJson(
              json['primaryIconTheme'] as Map<String, dynamic>),
      dialogTheme: json['dialogTheme'] == null
          ? null
          : StacDialogTheme.fromJson(
              json['dialogTheme'] as Map<String, dynamic>),
      floatingActionButtonTheme: json['floatingActionButtonTheme'] == null
          ? null
          : StacFloatingActionButtonThemeData.fromJson(
              json['floatingActionButtonTheme'] as Map<String, dynamic>),
      textButtonTheme: json['textButtonTheme'] == null
          ? null
          : StacButtonStyle.fromJson(
              json['textButtonTheme'] as Map<String, dynamic>),
      bottomAppBarTheme: json['bottomAppBarTheme'] == null
          ? null
          : StacBottomAppBarTheme.fromJson(
              json['bottomAppBarTheme'] as Map<String, dynamic>),
      bottomNavigationBarTheme: json['bottomNavigationBarTheme'] == null
          ? null
          : StacBottomNavBarThemeData.fromJson(
              json['bottomNavigationBarTheme'] as Map<String, dynamic>),
      bottomSheetTheme: json['bottomSheetTheme'] == null
          ? null
          : StacBottomSheetThemeData.fromJson(
              json['bottomSheetTheme'] as Map<String, dynamic>),
      cardTheme: json['cardTheme'] == null
          ? null
          : StacCardThemeData.fromJson(
              json['cardTheme'] as Map<String, dynamic>),
      listTileTheme: json['listTileTheme'] == null
          ? null
          : StacListTileThemeData.fromJson(
              json['listTileTheme'] as Map<String, dynamic>),
      navigationBarTheme: json['navigationBarTheme'] == null
          ? null
          : StacNavigationBarThemeData.fromJson(
              json['navigationBarTheme'] as Map<String, dynamic>),
      tabBarTheme: json['tabBarTheme'] == null
          ? null
          : StacTabBarThemeData.fromJson(
              json['tabBarTheme'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StacThemeImplToJson(_$StacThemeImpl instance) =>
    <String, dynamic>{
      'applyElevationOverlayColor': instance.applyElevationOverlayColor,
      'inputDecorationTheme': instance.inputDecorationTheme,
      'useMaterial3': instance.useMaterial3,
      'brightness': _$BrightnessEnumMap[instance.brightness],
      'canvasColor': instance.canvasColor,
      'cardColor': instance.cardColor,
      'colorScheme': instance.colorScheme,
      'colorSchemeSeed': instance.colorSchemeSeed,
      'dialogBackgroundColor': instance.dialogBackgroundColor,
      'disabledColor': instance.disabledColor,
      'dividerColor': instance.dividerColor,
      'focusColor': instance.focusColor,
      'highlightColor': instance.highlightColor,
      'hintColor': instance.hintColor,
      'hoverColor': instance.hoverColor,
      'indicatorColor': instance.indicatorColor,
      'primaryColor': instance.primaryColor,
      'primaryColorDark': instance.primaryColorDark,
      'primaryColorLight': instance.primaryColorLight,
      'primarySwatch': instance.primarySwatch,
      'scaffoldBackgroundColor': instance.scaffoldBackgroundColor,
      'secondaryHeaderColor': instance.secondaryHeaderColor,
      'shadowColor': instance.shadowColor,
      'splashColor': instance.splashColor,
      'unselectedWidgetColor': instance.unselectedWidgetColor,
      'fontFamily': instance.fontFamily,
      'fontFamilyFallback': instance.fontFamilyFallback,
      'appBarTheme': instance.appBarTheme,
      'elevatedButtonTheme': instance.elevatedButtonTheme,
      'outlinedButtonTheme': instance.outlinedButtonTheme,
      'iconButtonTheme': instance.iconButtonTheme,
      'iconTheme': instance.iconTheme,
      'primaryIconTheme': instance.primaryIconTheme,
      'dialogTheme': instance.dialogTheme,
      'floatingActionButtonTheme': instance.floatingActionButtonTheme,
      'textButtonTheme': instance.textButtonTheme,
      'bottomAppBarTheme': instance.bottomAppBarTheme,
      'bottomNavigationBarTheme': instance.bottomNavigationBarTheme,
      'bottomSheetTheme': instance.bottomSheetTheme,
      'cardTheme': instance.cardTheme,
      'listTileTheme': instance.listTileTheme,
      'navigationBarTheme': instance.navigationBarTheme,
      'tabBarTheme': instance.tabBarTheme,
    };

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};
