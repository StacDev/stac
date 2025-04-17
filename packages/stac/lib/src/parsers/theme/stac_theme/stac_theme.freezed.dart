// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacTheme {
// GENERAL CONFIGURATION
  bool? get applyElevationOverlayColor;
  StacInputDecorationTheme? get inputDecorationTheme;
  MaterialTapTargetSize? get materialTapTargetSize;
  TargetPlatform? get platform;
  StacScrollbarThemeData? get scrollbarTheme;
  bool? get useMaterial3; // COLOR
  StacColorScheme? get colorScheme;
  Brightness? get brightness;
  String?
      get colorSchemeSeed; // [colorScheme] is the preferred way to configure colors. The [Color] properties
// listed below (as well as primarySwatch) will gradually be phased out, see
// https://github.com/flutter/flutter/issues/91772.
  String? get canvasColor;
  String? get cardColor;
  String? get disabledColor;
  String? get dividerColor;
  String? get focusColor;
  String? get highlightColor;
  String? get hintColor;
  String? get hoverColor;
  String? get indicatorColor;
  String? get primaryColor;
  String? get primaryColorDark;
  String? get primaryColorLight;
  StacMaterialColor? get primarySwatch;
  String? get scaffoldBackgroundColor;
  String? get secondaryHeaderColor;
  String? get shadowColor;
  String? get splashColor;
  String? get unselectedWidgetColor; // TYPOGRAPHY & ICONOGRAPHY
  String? get fontFamily;
  List<String>? get fontFamilyFallback;
  String? get package;
  StacIconThemeData? get iconTheme;
  StacIconThemeData? get primaryIconTheme;
  StacTextTheme? get primaryTextTheme;
  StacTextTheme? get textTheme; // COMPONENT THEMES
  StacAppBarTheme? get appBarTheme;
  StacBadgeThemeData? get badgeTheme;
  StacMaterialBannerThemeData? get bannerTheme;
  StacBottomAppBarTheme? get bottomAppBarTheme;
  StacBottomNavBarThemeData? get bottomNavigationBarTheme;
  StacBottomSheetThemeData? get bottomSheetTheme;
  StacButtonThemeData? get buttonTheme;
  StacCardThemeData? get cardTheme;
  StacCheckboxThemeData? get checkboxTheme;
  StacChipThemeData? get chipTheme;
  StacDatePickerThemeData? get datePickerTheme;
  StacDialogTheme? get dialogTheme;
  StacDividerThemeData? get dividerTheme;
  StacDrawerThemeData?
      get drawerTheme; // DropdownMenuThemeData? dropdownMenuTheme,
  StacButtonStyle?
      get elevatedButtonTheme; // ExpansionTileThemeData? expansionTileTheme,
  StacButtonStyle? get filledButtonTheme;
  StacFloatingActionButtonThemeData? get floatingActionButtonTheme;
  StacButtonStyle? get iconButtonTheme;
  StacListTileThemeData? get listTileTheme; // MenuBarThemeData? menuBarTheme,
  StacButtonStyle? get menuButtonTheme; // MenuThemeData? menuTheme,
  StacNavigationBarThemeData? get navigationBarTheme;
  StacNavigationDrawerThemeData?
      get navigationDrawerTheme; // NavigationRailThemeData? navigationRailTheme,
  StacButtonStyle?
      get outlinedButtonTheme; // PopupMenuThemeData? popupMenuTheme,
// ProgressIndicatorThemeData? progressIndicatorTheme,
// RadioThemeData? radioTheme,
// SearchBarThemeData? searchBarTheme,
// SearchViewThemeData? searchViewTheme,
  StacButtonStyle? get segmentedButtonTheme; // SliderThemeData? sliderTheme,
// SnackBarThemeData? snackBarTheme,
// SwitchThemeData? switchTheme,
  StacTabBarThemeData? get tabBarTheme;
  StacButtonStyle? get textButtonTheme;

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacThemeCopyWith<StacTheme> get copyWith =>
      _$StacThemeCopyWithImpl<StacTheme>(this as StacTheme, _$identity);

  /// Serializes this StacTheme to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTheme &&
            (identical(other.applyElevationOverlayColor, applyElevationOverlayColor) ||
                other.applyElevationOverlayColor ==
                    applyElevationOverlayColor) &&
            (identical(other.inputDecorationTheme, inputDecorationTheme) ||
                other.inputDecorationTheme == inputDecorationTheme) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.scrollbarTheme, scrollbarTheme) ||
                other.scrollbarTheme == scrollbarTheme) &&
            (identical(other.useMaterial3, useMaterial3) ||
                other.useMaterial3 == useMaterial3) &&
            (identical(other.colorScheme, colorScheme) ||
                other.colorScheme == colorScheme) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.colorSchemeSeed, colorSchemeSeed) ||
                other.colorSchemeSeed == colorSchemeSeed) &&
            (identical(other.canvasColor, canvasColor) ||
                other.canvasColor == canvasColor) &&
            (identical(other.cardColor, cardColor) ||
                other.cardColor == cardColor) &&
            (identical(other.disabledColor, disabledColor) ||
                other.disabledColor == disabledColor) &&
            (identical(other.dividerColor, dividerColor) ||
                other.dividerColor == dividerColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.highlightColor, highlightColor) ||
                other.highlightColor == highlightColor) &&
            (identical(other.hintColor, hintColor) ||
                other.hintColor == hintColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.primaryColor, primaryColor) ||
                other.primaryColor == primaryColor) &&
            (identical(other.primaryColorDark, primaryColorDark) ||
                other.primaryColorDark == primaryColorDark) &&
            (identical(other.primaryColorLight, primaryColorLight) ||
                other.primaryColorLight == primaryColorLight) &&
            (identical(other.primarySwatch, primarySwatch) ||
                other.primarySwatch == primarySwatch) &&
            (identical(other.scaffoldBackgroundColor, scaffoldBackgroundColor) ||
                other.scaffoldBackgroundColor == scaffoldBackgroundColor) &&
            (identical(other.secondaryHeaderColor, secondaryHeaderColor) ||
                other.secondaryHeaderColor == secondaryHeaderColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.splashColor, splashColor) ||
                other.splashColor == splashColor) &&
            (identical(other.unselectedWidgetColor, unselectedWidgetColor) ||
                other.unselectedWidgetColor == unselectedWidgetColor) &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            const DeepCollectionEquality()
                .equals(other.fontFamilyFallback, fontFamilyFallback) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.iconTheme, iconTheme) ||
                other.iconTheme == iconTheme) &&
            (identical(other.primaryIconTheme, primaryIconTheme) ||
                other.primaryIconTheme == primaryIconTheme) &&
            (identical(other.primaryTextTheme, primaryTextTheme) ||
                other.primaryTextTheme == primaryTextTheme) &&
            (identical(other.textTheme, textTheme) || other.textTheme == textTheme) &&
            (identical(other.appBarTheme, appBarTheme) || other.appBarTheme == appBarTheme) &&
            (identical(other.badgeTheme, badgeTheme) || other.badgeTheme == badgeTheme) &&
            (identical(other.bannerTheme, bannerTheme) || other.bannerTheme == bannerTheme) &&
            (identical(other.bottomAppBarTheme, bottomAppBarTheme) || other.bottomAppBarTheme == bottomAppBarTheme) &&
            (identical(other.bottomNavigationBarTheme, bottomNavigationBarTheme) || other.bottomNavigationBarTheme == bottomNavigationBarTheme) &&
            (identical(other.bottomSheetTheme, bottomSheetTheme) || other.bottomSheetTheme == bottomSheetTheme) &&
            (identical(other.buttonTheme, buttonTheme) || other.buttonTheme == buttonTheme) &&
            (identical(other.cardTheme, cardTheme) || other.cardTheme == cardTheme) &&
            (identical(other.checkboxTheme, checkboxTheme) || other.checkboxTheme == checkboxTheme) &&
            (identical(other.chipTheme, chipTheme) || other.chipTheme == chipTheme) &&
            (identical(other.datePickerTheme, datePickerTheme) || other.datePickerTheme == datePickerTheme) &&
            (identical(other.dialogTheme, dialogTheme) || other.dialogTheme == dialogTheme) &&
            (identical(other.dividerTheme, dividerTheme) || other.dividerTheme == dividerTheme) &&
            (identical(other.drawerTheme, drawerTheme) || other.drawerTheme == drawerTheme) &&
            (identical(other.elevatedButtonTheme, elevatedButtonTheme) || other.elevatedButtonTheme == elevatedButtonTheme) &&
            (identical(other.filledButtonTheme, filledButtonTheme) || other.filledButtonTheme == filledButtonTheme) &&
            (identical(other.floatingActionButtonTheme, floatingActionButtonTheme) || other.floatingActionButtonTheme == floatingActionButtonTheme) &&
            (identical(other.iconButtonTheme, iconButtonTheme) || other.iconButtonTheme == iconButtonTheme) &&
            (identical(other.listTileTheme, listTileTheme) || other.listTileTheme == listTileTheme) &&
            (identical(other.menuButtonTheme, menuButtonTheme) || other.menuButtonTheme == menuButtonTheme) &&
            (identical(other.navigationBarTheme, navigationBarTheme) || other.navigationBarTheme == navigationBarTheme) &&
            (identical(other.navigationDrawerTheme, navigationDrawerTheme) || other.navigationDrawerTheme == navigationDrawerTheme) &&
            (identical(other.outlinedButtonTheme, outlinedButtonTheme) || other.outlinedButtonTheme == outlinedButtonTheme) &&
            (identical(other.segmentedButtonTheme, segmentedButtonTheme) || other.segmentedButtonTheme == segmentedButtonTheme) &&
            (identical(other.tabBarTheme, tabBarTheme) || other.tabBarTheme == tabBarTheme) &&
            (identical(other.textButtonTheme, textButtonTheme) || other.textButtonTheme == textButtonTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        applyElevationOverlayColor,
        inputDecorationTheme,
        materialTapTargetSize,
        platform,
        scrollbarTheme,
        useMaterial3,
        colorScheme,
        brightness,
        colorSchemeSeed,
        canvasColor,
        cardColor,
        disabledColor,
        dividerColor,
        focusColor,
        highlightColor,
        hintColor,
        hoverColor,
        indicatorColor,
        primaryColor,
        primaryColorDark,
        primaryColorLight,
        primarySwatch,
        scaffoldBackgroundColor,
        secondaryHeaderColor,
        shadowColor,
        splashColor,
        unselectedWidgetColor,
        fontFamily,
        const DeepCollectionEquality().hash(fontFamilyFallback),
        package,
        iconTheme,
        primaryIconTheme,
        primaryTextTheme,
        textTheme,
        appBarTheme,
        badgeTheme,
        bannerTheme,
        bottomAppBarTheme,
        bottomNavigationBarTheme,
        bottomSheetTheme,
        buttonTheme,
        cardTheme,
        checkboxTheme,
        chipTheme,
        datePickerTheme,
        dialogTheme,
        dividerTheme,
        drawerTheme,
        elevatedButtonTheme,
        filledButtonTheme,
        floatingActionButtonTheme,
        iconButtonTheme,
        listTileTheme,
        menuButtonTheme,
        navigationBarTheme,
        navigationDrawerTheme,
        outlinedButtonTheme,
        segmentedButtonTheme,
        tabBarTheme,
        textButtonTheme
      ]);

  @override
  String toString() {
    return 'StacTheme(applyElevationOverlayColor: $applyElevationOverlayColor, inputDecorationTheme: $inputDecorationTheme, materialTapTargetSize: $materialTapTargetSize, platform: $platform, scrollbarTheme: $scrollbarTheme, useMaterial3: $useMaterial3, colorScheme: $colorScheme, brightness: $brightness, colorSchemeSeed: $colorSchemeSeed, canvasColor: $canvasColor, cardColor: $cardColor, disabledColor: $disabledColor, dividerColor: $dividerColor, focusColor: $focusColor, highlightColor: $highlightColor, hintColor: $hintColor, hoverColor: $hoverColor, indicatorColor: $indicatorColor, primaryColor: $primaryColor, primaryColorDark: $primaryColorDark, primaryColorLight: $primaryColorLight, primarySwatch: $primarySwatch, scaffoldBackgroundColor: $scaffoldBackgroundColor, secondaryHeaderColor: $secondaryHeaderColor, shadowColor: $shadowColor, splashColor: $splashColor, unselectedWidgetColor: $unselectedWidgetColor, fontFamily: $fontFamily, fontFamilyFallback: $fontFamilyFallback, package: $package, iconTheme: $iconTheme, primaryIconTheme: $primaryIconTheme, primaryTextTheme: $primaryTextTheme, textTheme: $textTheme, appBarTheme: $appBarTheme, badgeTheme: $badgeTheme, bannerTheme: $bannerTheme, bottomAppBarTheme: $bottomAppBarTheme, bottomNavigationBarTheme: $bottomNavigationBarTheme, bottomSheetTheme: $bottomSheetTheme, buttonTheme: $buttonTheme, cardTheme: $cardTheme, checkboxTheme: $checkboxTheme, chipTheme: $chipTheme, datePickerTheme: $datePickerTheme, dialogTheme: $dialogTheme, dividerTheme: $dividerTheme, drawerTheme: $drawerTheme, elevatedButtonTheme: $elevatedButtonTheme, filledButtonTheme: $filledButtonTheme, floatingActionButtonTheme: $floatingActionButtonTheme, iconButtonTheme: $iconButtonTheme, listTileTheme: $listTileTheme, menuButtonTheme: $menuButtonTheme, navigationBarTheme: $navigationBarTheme, navigationDrawerTheme: $navigationDrawerTheme, outlinedButtonTheme: $outlinedButtonTheme, segmentedButtonTheme: $segmentedButtonTheme, tabBarTheme: $tabBarTheme, textButtonTheme: $textButtonTheme)';
  }
}

/// @nodoc
abstract mixin class $StacThemeCopyWith<$Res> {
  factory $StacThemeCopyWith(StacTheme value, $Res Function(StacTheme) _then) =
      _$StacThemeCopyWithImpl;
  @useResult
  $Res call(
      {bool? applyElevationOverlayColor,
      StacInputDecorationTheme? inputDecorationTheme,
      MaterialTapTargetSize? materialTapTargetSize,
      TargetPlatform? platform,
      StacScrollbarThemeData? scrollbarTheme,
      bool? useMaterial3,
      StacColorScheme? colorScheme,
      Brightness? brightness,
      String? colorSchemeSeed,
      String? canvasColor,
      String? cardColor,
      String? disabledColor,
      String? dividerColor,
      String? focusColor,
      String? highlightColor,
      String? hintColor,
      String? hoverColor,
      String? indicatorColor,
      String? primaryColor,
      String? primaryColorDark,
      String? primaryColorLight,
      StacMaterialColor? primarySwatch,
      String? scaffoldBackgroundColor,
      String? secondaryHeaderColor,
      String? shadowColor,
      String? splashColor,
      String? unselectedWidgetColor,
      String? fontFamily,
      List<String>? fontFamilyFallback,
      String? package,
      StacIconThemeData? iconTheme,
      StacIconThemeData? primaryIconTheme,
      StacTextTheme? primaryTextTheme,
      StacTextTheme? textTheme,
      StacAppBarTheme? appBarTheme,
      StacBadgeThemeData? badgeTheme,
      StacMaterialBannerThemeData? bannerTheme,
      StacBottomAppBarTheme? bottomAppBarTheme,
      StacBottomNavBarThemeData? bottomNavigationBarTheme,
      StacBottomSheetThemeData? bottomSheetTheme,
      StacButtonThemeData? buttonTheme,
      StacCardThemeData? cardTheme,
      StacCheckboxThemeData? checkboxTheme,
      StacChipThemeData? chipTheme,
      StacDatePickerThemeData? datePickerTheme,
      StacDialogTheme? dialogTheme,
      StacDividerThemeData? dividerTheme,
      StacDrawerThemeData? drawerTheme,
      StacButtonStyle? elevatedButtonTheme,
      StacButtonStyle? filledButtonTheme,
      StacFloatingActionButtonThemeData? floatingActionButtonTheme,
      StacButtonStyle? iconButtonTheme,
      StacListTileThemeData? listTileTheme,
      StacButtonStyle? menuButtonTheme,
      StacNavigationBarThemeData? navigationBarTheme,
      StacNavigationDrawerThemeData? navigationDrawerTheme,
      StacButtonStyle? outlinedButtonTheme,
      StacButtonStyle? segmentedButtonTheme,
      StacTabBarThemeData? tabBarTheme,
      StacButtonStyle? textButtonTheme});

  $StacInputDecorationThemeCopyWith<$Res>? get inputDecorationTheme;
  $StacScrollbarThemeDataCopyWith<$Res>? get scrollbarTheme;
  $StacColorSchemeCopyWith<$Res>? get colorScheme;
  $StacMaterialColorCopyWith<$Res>? get primarySwatch;
  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
  $StacIconThemeDataCopyWith<$Res>? get primaryIconTheme;
  $StacTextThemeCopyWith<$Res>? get primaryTextTheme;
  $StacTextThemeCopyWith<$Res>? get textTheme;
  $StacAppBarThemeCopyWith<$Res>? get appBarTheme;
  $StacBadgeThemeDataCopyWith<$Res>? get badgeTheme;
  $StacMaterialBannerThemeDataCopyWith<$Res>? get bannerTheme;
  $StacBottomAppBarThemeCopyWith<$Res>? get bottomAppBarTheme;
  $StacBottomNavBarThemeDataCopyWith<$Res>? get bottomNavigationBarTheme;
  $StacBottomSheetThemeDataCopyWith<$Res>? get bottomSheetTheme;
  $StacButtonThemeDataCopyWith<$Res>? get buttonTheme;
  $StacCardThemeDataCopyWith<$Res>? get cardTheme;
  $StacCheckboxThemeDataCopyWith<$Res>? get checkboxTheme;
  $StacChipThemeDataCopyWith<$Res>? get chipTheme;
  $StacDatePickerThemeDataCopyWith<$Res>? get datePickerTheme;
  $StacDialogThemeCopyWith<$Res>? get dialogTheme;
  $StacDividerThemeDataCopyWith<$Res>? get dividerTheme;
  $StacDrawerThemeDataCopyWith<$Res>? get drawerTheme;
  $StacButtonStyleCopyWith<$Res>? get elevatedButtonTheme;
  $StacButtonStyleCopyWith<$Res>? get filledButtonTheme;
  $StacFloatingActionButtonThemeDataCopyWith<$Res>?
      get floatingActionButtonTheme;
  $StacButtonStyleCopyWith<$Res>? get iconButtonTheme;
  $StacListTileThemeDataCopyWith<$Res>? get listTileTheme;
  $StacButtonStyleCopyWith<$Res>? get menuButtonTheme;
  $StacNavigationBarThemeDataCopyWith<$Res>? get navigationBarTheme;
  $StacNavigationDrawerThemeDataCopyWith<$Res>? get navigationDrawerTheme;
  $StacButtonStyleCopyWith<$Res>? get outlinedButtonTheme;
  $StacButtonStyleCopyWith<$Res>? get segmentedButtonTheme;
  $StacTabBarThemeDataCopyWith<$Res>? get tabBarTheme;
  $StacButtonStyleCopyWith<$Res>? get textButtonTheme;
}

/// @nodoc
class _$StacThemeCopyWithImpl<$Res> implements $StacThemeCopyWith<$Res> {
  _$StacThemeCopyWithImpl(this._self, this._then);

  final StacTheme _self;
  final $Res Function(StacTheme) _then;

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyElevationOverlayColor = freezed,
    Object? inputDecorationTheme = freezed,
    Object? materialTapTargetSize = freezed,
    Object? platform = freezed,
    Object? scrollbarTheme = freezed,
    Object? useMaterial3 = freezed,
    Object? colorScheme = freezed,
    Object? brightness = freezed,
    Object? colorSchemeSeed = freezed,
    Object? canvasColor = freezed,
    Object? cardColor = freezed,
    Object? disabledColor = freezed,
    Object? dividerColor = freezed,
    Object? focusColor = freezed,
    Object? highlightColor = freezed,
    Object? hintColor = freezed,
    Object? hoverColor = freezed,
    Object? indicatorColor = freezed,
    Object? primaryColor = freezed,
    Object? primaryColorDark = freezed,
    Object? primaryColorLight = freezed,
    Object? primarySwatch = freezed,
    Object? scaffoldBackgroundColor = freezed,
    Object? secondaryHeaderColor = freezed,
    Object? shadowColor = freezed,
    Object? splashColor = freezed,
    Object? unselectedWidgetColor = freezed,
    Object? fontFamily = freezed,
    Object? fontFamilyFallback = freezed,
    Object? package = freezed,
    Object? iconTheme = freezed,
    Object? primaryIconTheme = freezed,
    Object? primaryTextTheme = freezed,
    Object? textTheme = freezed,
    Object? appBarTheme = freezed,
    Object? badgeTheme = freezed,
    Object? bannerTheme = freezed,
    Object? bottomAppBarTheme = freezed,
    Object? bottomNavigationBarTheme = freezed,
    Object? bottomSheetTheme = freezed,
    Object? buttonTheme = freezed,
    Object? cardTheme = freezed,
    Object? checkboxTheme = freezed,
    Object? chipTheme = freezed,
    Object? datePickerTheme = freezed,
    Object? dialogTheme = freezed,
    Object? dividerTheme = freezed,
    Object? drawerTheme = freezed,
    Object? elevatedButtonTheme = freezed,
    Object? filledButtonTheme = freezed,
    Object? floatingActionButtonTheme = freezed,
    Object? iconButtonTheme = freezed,
    Object? listTileTheme = freezed,
    Object? menuButtonTheme = freezed,
    Object? navigationBarTheme = freezed,
    Object? navigationDrawerTheme = freezed,
    Object? outlinedButtonTheme = freezed,
    Object? segmentedButtonTheme = freezed,
    Object? tabBarTheme = freezed,
    Object? textButtonTheme = freezed,
  }) {
    return _then(_self.copyWith(
      applyElevationOverlayColor: freezed == applyElevationOverlayColor
          ? _self.applyElevationOverlayColor
          : applyElevationOverlayColor // ignore: cast_nullable_to_non_nullable
              as bool?,
      inputDecorationTheme: freezed == inputDecorationTheme
          ? _self.inputDecorationTheme
          : inputDecorationTheme // ignore: cast_nullable_to_non_nullable
              as StacInputDecorationTheme?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      platform: freezed == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as TargetPlatform?,
      scrollbarTheme: freezed == scrollbarTheme
          ? _self.scrollbarTheme
          : scrollbarTheme // ignore: cast_nullable_to_non_nullable
              as StacScrollbarThemeData?,
      useMaterial3: freezed == useMaterial3
          ? _self.useMaterial3
          : useMaterial3 // ignore: cast_nullable_to_non_nullable
              as bool?,
      colorScheme: freezed == colorScheme
          ? _self.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as StacColorScheme?,
      brightness: freezed == brightness
          ? _self.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness?,
      colorSchemeSeed: freezed == colorSchemeSeed
          ? _self.colorSchemeSeed
          : colorSchemeSeed // ignore: cast_nullable_to_non_nullable
              as String?,
      canvasColor: freezed == canvasColor
          ? _self.canvasColor
          : canvasColor // ignore: cast_nullable_to_non_nullable
              as String?,
      cardColor: freezed == cardColor
          ? _self.cardColor
          : cardColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledColor: freezed == disabledColor
          ? _self.disabledColor
          : disabledColor // ignore: cast_nullable_to_non_nullable
              as String?,
      dividerColor: freezed == dividerColor
          ? _self.dividerColor
          : dividerColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightColor: freezed == highlightColor
          ? _self.highlightColor
          : highlightColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hintColor: freezed == hintColor
          ? _self.hintColor
          : hintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryColor: freezed == primaryColor
          ? _self.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryColorDark: freezed == primaryColorDark
          ? _self.primaryColorDark
          : primaryColorDark // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryColorLight: freezed == primaryColorLight
          ? _self.primaryColorLight
          : primaryColorLight // ignore: cast_nullable_to_non_nullable
              as String?,
      primarySwatch: freezed == primarySwatch
          ? _self.primarySwatch
          : primarySwatch // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      scaffoldBackgroundColor: freezed == scaffoldBackgroundColor
          ? _self.scaffoldBackgroundColor
          : scaffoldBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryHeaderColor: freezed == secondaryHeaderColor
          ? _self.secondaryHeaderColor
          : secondaryHeaderColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashColor: freezed == splashColor
          ? _self.splashColor
          : splashColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedWidgetColor: freezed == unselectedWidgetColor
          ? _self.unselectedWidgetColor
          : unselectedWidgetColor // ignore: cast_nullable_to_non_nullable
              as String?,
      fontFamily: freezed == fontFamily
          ? _self.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      fontFamilyFallback: freezed == fontFamilyFallback
          ? _self.fontFamilyFallback
          : fontFamilyFallback // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      package: freezed == package
          ? _self.package
          : package // ignore: cast_nullable_to_non_nullable
              as String?,
      iconTheme: freezed == iconTheme
          ? _self.iconTheme
          : iconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      primaryIconTheme: freezed == primaryIconTheme
          ? _self.primaryIconTheme
          : primaryIconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      primaryTextTheme: freezed == primaryTextTheme
          ? _self.primaryTextTheme
          : primaryTextTheme // ignore: cast_nullable_to_non_nullable
              as StacTextTheme?,
      textTheme: freezed == textTheme
          ? _self.textTheme
          : textTheme // ignore: cast_nullable_to_non_nullable
              as StacTextTheme?,
      appBarTheme: freezed == appBarTheme
          ? _self.appBarTheme
          : appBarTheme // ignore: cast_nullable_to_non_nullable
              as StacAppBarTheme?,
      badgeTheme: freezed == badgeTheme
          ? _self.badgeTheme
          : badgeTheme // ignore: cast_nullable_to_non_nullable
              as StacBadgeThemeData?,
      bannerTheme: freezed == bannerTheme
          ? _self.bannerTheme
          : bannerTheme // ignore: cast_nullable_to_non_nullable
              as StacMaterialBannerThemeData?,
      bottomAppBarTheme: freezed == bottomAppBarTheme
          ? _self.bottomAppBarTheme
          : bottomAppBarTheme // ignore: cast_nullable_to_non_nullable
              as StacBottomAppBarTheme?,
      bottomNavigationBarTheme: freezed == bottomNavigationBarTheme
          ? _self.bottomNavigationBarTheme
          : bottomNavigationBarTheme // ignore: cast_nullable_to_non_nullable
              as StacBottomNavBarThemeData?,
      bottomSheetTheme: freezed == bottomSheetTheme
          ? _self.bottomSheetTheme
          : bottomSheetTheme // ignore: cast_nullable_to_non_nullable
              as StacBottomSheetThemeData?,
      buttonTheme: freezed == buttonTheme
          ? _self.buttonTheme
          : buttonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonThemeData?,
      cardTheme: freezed == cardTheme
          ? _self.cardTheme
          : cardTheme // ignore: cast_nullable_to_non_nullable
              as StacCardThemeData?,
      checkboxTheme: freezed == checkboxTheme
          ? _self.checkboxTheme
          : checkboxTheme // ignore: cast_nullable_to_non_nullable
              as StacCheckboxThemeData?,
      chipTheme: freezed == chipTheme
          ? _self.chipTheme
          : chipTheme // ignore: cast_nullable_to_non_nullable
              as StacChipThemeData?,
      datePickerTheme: freezed == datePickerTheme
          ? _self.datePickerTheme
          : datePickerTheme // ignore: cast_nullable_to_non_nullable
              as StacDatePickerThemeData?,
      dialogTheme: freezed == dialogTheme
          ? _self.dialogTheme
          : dialogTheme // ignore: cast_nullable_to_non_nullable
              as StacDialogTheme?,
      dividerTheme: freezed == dividerTheme
          ? _self.dividerTheme
          : dividerTheme // ignore: cast_nullable_to_non_nullable
              as StacDividerThemeData?,
      drawerTheme: freezed == drawerTheme
          ? _self.drawerTheme
          : drawerTheme // ignore: cast_nullable_to_non_nullable
              as StacDrawerThemeData?,
      elevatedButtonTheme: freezed == elevatedButtonTheme
          ? _self.elevatedButtonTheme
          : elevatedButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      filledButtonTheme: freezed == filledButtonTheme
          ? _self.filledButtonTheme
          : filledButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      floatingActionButtonTheme: freezed == floatingActionButtonTheme
          ? _self.floatingActionButtonTheme
          : floatingActionButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacFloatingActionButtonThemeData?,
      iconButtonTheme: freezed == iconButtonTheme
          ? _self.iconButtonTheme
          : iconButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      listTileTheme: freezed == listTileTheme
          ? _self.listTileTheme
          : listTileTheme // ignore: cast_nullable_to_non_nullable
              as StacListTileThemeData?,
      menuButtonTheme: freezed == menuButtonTheme
          ? _self.menuButtonTheme
          : menuButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      navigationBarTheme: freezed == navigationBarTheme
          ? _self.navigationBarTheme
          : navigationBarTheme // ignore: cast_nullable_to_non_nullable
              as StacNavigationBarThemeData?,
      navigationDrawerTheme: freezed == navigationDrawerTheme
          ? _self.navigationDrawerTheme
          : navigationDrawerTheme // ignore: cast_nullable_to_non_nullable
              as StacNavigationDrawerThemeData?,
      outlinedButtonTheme: freezed == outlinedButtonTheme
          ? _self.outlinedButtonTheme
          : outlinedButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      segmentedButtonTheme: freezed == segmentedButtonTheme
          ? _self.segmentedButtonTheme
          : segmentedButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      tabBarTheme: freezed == tabBarTheme
          ? _self.tabBarTheme
          : tabBarTheme // ignore: cast_nullable_to_non_nullable
              as StacTabBarThemeData?,
      textButtonTheme: freezed == textButtonTheme
          ? _self.textButtonTheme
          : textButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
    ));
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputDecorationThemeCopyWith<$Res>? get inputDecorationTheme {
    if (_self.inputDecorationTheme == null) {
      return null;
    }

    return $StacInputDecorationThemeCopyWith<$Res>(_self.inputDecorationTheme!,
        (value) {
      return _then(_self.copyWith(inputDecorationTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacScrollbarThemeDataCopyWith<$Res>? get scrollbarTheme {
    if (_self.scrollbarTheme == null) {
      return null;
    }

    return $StacScrollbarThemeDataCopyWith<$Res>(_self.scrollbarTheme!,
        (value) {
      return _then(_self.copyWith(scrollbarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacColorSchemeCopyWith<$Res>? get colorScheme {
    if (_self.colorScheme == null) {
      return null;
    }

    return $StacColorSchemeCopyWith<$Res>(_self.colorScheme!, (value) {
      return _then(_self.copyWith(colorScheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get primarySwatch {
    if (_self.primarySwatch == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.primarySwatch!, (value) {
      return _then(_self.copyWith(primarySwatch: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get iconTheme {
    if (_self.iconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.iconTheme!, (value) {
      return _then(_self.copyWith(iconTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get primaryIconTheme {
    if (_self.primaryIconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.primaryIconTheme!, (value) {
      return _then(_self.copyWith(primaryIconTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextThemeCopyWith<$Res>? get primaryTextTheme {
    if (_self.primaryTextTheme == null) {
      return null;
    }

    return $StacTextThemeCopyWith<$Res>(_self.primaryTextTheme!, (value) {
      return _then(_self.copyWith(primaryTextTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextThemeCopyWith<$Res>? get textTheme {
    if (_self.textTheme == null) {
      return null;
    }

    return $StacTextThemeCopyWith<$Res>(_self.textTheme!, (value) {
      return _then(_self.copyWith(textTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacAppBarThemeCopyWith<$Res>? get appBarTheme {
    if (_self.appBarTheme == null) {
      return null;
    }

    return $StacAppBarThemeCopyWith<$Res>(_self.appBarTheme!, (value) {
      return _then(_self.copyWith(appBarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBadgeThemeDataCopyWith<$Res>? get badgeTheme {
    if (_self.badgeTheme == null) {
      return null;
    }

    return $StacBadgeThemeDataCopyWith<$Res>(_self.badgeTheme!, (value) {
      return _then(_self.copyWith(badgeTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialBannerThemeDataCopyWith<$Res>? get bannerTheme {
    if (_self.bannerTheme == null) {
      return null;
    }

    return $StacMaterialBannerThemeDataCopyWith<$Res>(_self.bannerTheme!,
        (value) {
      return _then(_self.copyWith(bannerTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBottomAppBarThemeCopyWith<$Res>? get bottomAppBarTheme {
    if (_self.bottomAppBarTheme == null) {
      return null;
    }

    return $StacBottomAppBarThemeCopyWith<$Res>(_self.bottomAppBarTheme!,
        (value) {
      return _then(_self.copyWith(bottomAppBarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBottomNavBarThemeDataCopyWith<$Res>? get bottomNavigationBarTheme {
    if (_self.bottomNavigationBarTheme == null) {
      return null;
    }

    return $StacBottomNavBarThemeDataCopyWith<$Res>(
        _self.bottomNavigationBarTheme!, (value) {
      return _then(_self.copyWith(bottomNavigationBarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBottomSheetThemeDataCopyWith<$Res>? get bottomSheetTheme {
    if (_self.bottomSheetTheme == null) {
      return null;
    }

    return $StacBottomSheetThemeDataCopyWith<$Res>(_self.bottomSheetTheme!,
        (value) {
      return _then(_self.copyWith(bottomSheetTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonThemeDataCopyWith<$Res>? get buttonTheme {
    if (_self.buttonTheme == null) {
      return null;
    }

    return $StacButtonThemeDataCopyWith<$Res>(_self.buttonTheme!, (value) {
      return _then(_self.copyWith(buttonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacCardThemeDataCopyWith<$Res>? get cardTheme {
    if (_self.cardTheme == null) {
      return null;
    }

    return $StacCardThemeDataCopyWith<$Res>(_self.cardTheme!, (value) {
      return _then(_self.copyWith(cardTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacCheckboxThemeDataCopyWith<$Res>? get checkboxTheme {
    if (_self.checkboxTheme == null) {
      return null;
    }

    return $StacCheckboxThemeDataCopyWith<$Res>(_self.checkboxTheme!, (value) {
      return _then(_self.copyWith(checkboxTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacChipThemeDataCopyWith<$Res>? get chipTheme {
    if (_self.chipTheme == null) {
      return null;
    }

    return $StacChipThemeDataCopyWith<$Res>(_self.chipTheme!, (value) {
      return _then(_self.copyWith(chipTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDatePickerThemeDataCopyWith<$Res>? get datePickerTheme {
    if (_self.datePickerTheme == null) {
      return null;
    }

    return $StacDatePickerThemeDataCopyWith<$Res>(_self.datePickerTheme!,
        (value) {
      return _then(_self.copyWith(datePickerTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDialogThemeCopyWith<$Res>? get dialogTheme {
    if (_self.dialogTheme == null) {
      return null;
    }

    return $StacDialogThemeCopyWith<$Res>(_self.dialogTheme!, (value) {
      return _then(_self.copyWith(dialogTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDividerThemeDataCopyWith<$Res>? get dividerTheme {
    if (_self.dividerTheme == null) {
      return null;
    }

    return $StacDividerThemeDataCopyWith<$Res>(_self.dividerTheme!, (value) {
      return _then(_self.copyWith(dividerTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDrawerThemeDataCopyWith<$Res>? get drawerTheme {
    if (_self.drawerTheme == null) {
      return null;
    }

    return $StacDrawerThemeDataCopyWith<$Res>(_self.drawerTheme!, (value) {
      return _then(_self.copyWith(drawerTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get elevatedButtonTheme {
    if (_self.elevatedButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.elevatedButtonTheme!, (value) {
      return _then(_self.copyWith(elevatedButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get filledButtonTheme {
    if (_self.filledButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.filledButtonTheme!, (value) {
      return _then(_self.copyWith(filledButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacFloatingActionButtonThemeDataCopyWith<$Res>?
      get floatingActionButtonTheme {
    if (_self.floatingActionButtonTheme == null) {
      return null;
    }

    return $StacFloatingActionButtonThemeDataCopyWith<$Res>(
        _self.floatingActionButtonTheme!, (value) {
      return _then(_self.copyWith(floatingActionButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get iconButtonTheme {
    if (_self.iconButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.iconButtonTheme!, (value) {
      return _then(_self.copyWith(iconButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacListTileThemeDataCopyWith<$Res>? get listTileTheme {
    if (_self.listTileTheme == null) {
      return null;
    }

    return $StacListTileThemeDataCopyWith<$Res>(_self.listTileTheme!, (value) {
      return _then(_self.copyWith(listTileTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get menuButtonTheme {
    if (_self.menuButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.menuButtonTheme!, (value) {
      return _then(_self.copyWith(menuButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNavigationBarThemeDataCopyWith<$Res>? get navigationBarTheme {
    if (_self.navigationBarTheme == null) {
      return null;
    }

    return $StacNavigationBarThemeDataCopyWith<$Res>(_self.navigationBarTheme!,
        (value) {
      return _then(_self.copyWith(navigationBarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNavigationDrawerThemeDataCopyWith<$Res>? get navigationDrawerTheme {
    if (_self.navigationDrawerTheme == null) {
      return null;
    }

    return $StacNavigationDrawerThemeDataCopyWith<$Res>(
        _self.navigationDrawerTheme!, (value) {
      return _then(_self.copyWith(navigationDrawerTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get outlinedButtonTheme {
    if (_self.outlinedButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.outlinedButtonTheme!, (value) {
      return _then(_self.copyWith(outlinedButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get segmentedButtonTheme {
    if (_self.segmentedButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.segmentedButtonTheme!, (value) {
      return _then(_self.copyWith(segmentedButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTabBarThemeDataCopyWith<$Res>? get tabBarTheme {
    if (_self.tabBarTheme == null) {
      return null;
    }

    return $StacTabBarThemeDataCopyWith<$Res>(_self.tabBarTheme!, (value) {
      return _then(_self.copyWith(tabBarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get textButtonTheme {
    if (_self.textButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.textButtonTheme!, (value) {
      return _then(_self.copyWith(textButtonTheme: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacTheme implements StacTheme {
  const _StacTheme(
      {this.applyElevationOverlayColor,
      this.inputDecorationTheme,
      this.materialTapTargetSize,
      this.platform,
      this.scrollbarTheme,
      this.useMaterial3,
      this.colorScheme,
      this.brightness,
      this.colorSchemeSeed,
      this.canvasColor,
      this.cardColor,
      this.disabledColor,
      this.dividerColor,
      this.focusColor,
      this.highlightColor,
      this.hintColor,
      this.hoverColor,
      this.indicatorColor,
      this.primaryColor,
      this.primaryColorDark,
      this.primaryColorLight,
      this.primarySwatch,
      this.scaffoldBackgroundColor,
      this.secondaryHeaderColor,
      this.shadowColor,
      this.splashColor,
      this.unselectedWidgetColor,
      this.fontFamily,
      final List<String>? fontFamilyFallback,
      this.package,
      this.iconTheme,
      this.primaryIconTheme,
      this.primaryTextTheme,
      this.textTheme,
      this.appBarTheme,
      this.badgeTheme,
      this.bannerTheme,
      this.bottomAppBarTheme,
      this.bottomNavigationBarTheme,
      this.bottomSheetTheme,
      this.buttonTheme,
      this.cardTheme,
      this.checkboxTheme,
      this.chipTheme,
      this.datePickerTheme,
      this.dialogTheme,
      this.dividerTheme,
      this.drawerTheme,
      this.elevatedButtonTheme,
      this.filledButtonTheme,
      this.floatingActionButtonTheme,
      this.iconButtonTheme,
      this.listTileTheme,
      this.menuButtonTheme,
      this.navigationBarTheme,
      this.navigationDrawerTheme,
      this.outlinedButtonTheme,
      this.segmentedButtonTheme,
      this.tabBarTheme,
      this.textButtonTheme})
      : _fontFamilyFallback = fontFamilyFallback;
  factory _StacTheme.fromJson(Map<String, dynamic> json) =>
      _$StacThemeFromJson(json);

// GENERAL CONFIGURATION
  @override
  final bool? applyElevationOverlayColor;
  @override
  final StacInputDecorationTheme? inputDecorationTheme;
  @override
  final MaterialTapTargetSize? materialTapTargetSize;
  @override
  final TargetPlatform? platform;
  @override
  final StacScrollbarThemeData? scrollbarTheme;
  @override
  final bool? useMaterial3;
// COLOR
  @override
  final StacColorScheme? colorScheme;
  @override
  final Brightness? brightness;
  @override
  final String? colorSchemeSeed;
// [colorScheme] is the preferred way to configure colors. The [Color] properties
// listed below (as well as primarySwatch) will gradually be phased out, see
// https://github.com/flutter/flutter/issues/91772.
  @override
  final String? canvasColor;
  @override
  final String? cardColor;
  @override
  final String? disabledColor;
  @override
  final String? dividerColor;
  @override
  final String? focusColor;
  @override
  final String? highlightColor;
  @override
  final String? hintColor;
  @override
  final String? hoverColor;
  @override
  final String? indicatorColor;
  @override
  final String? primaryColor;
  @override
  final String? primaryColorDark;
  @override
  final String? primaryColorLight;
  @override
  final StacMaterialColor? primarySwatch;
  @override
  final String? scaffoldBackgroundColor;
  @override
  final String? secondaryHeaderColor;
  @override
  final String? shadowColor;
  @override
  final String? splashColor;
  @override
  final String? unselectedWidgetColor;
// TYPOGRAPHY & ICONOGRAPHY
  @override
  final String? fontFamily;
  final List<String>? _fontFamilyFallback;
  @override
  List<String>? get fontFamilyFallback {
    final value = _fontFamilyFallback;
    if (value == null) return null;
    if (_fontFamilyFallback is EqualUnmodifiableListView)
      return _fontFamilyFallback;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? package;
  @override
  final StacIconThemeData? iconTheme;
  @override
  final StacIconThemeData? primaryIconTheme;
  @override
  final StacTextTheme? primaryTextTheme;
  @override
  final StacTextTheme? textTheme;
// COMPONENT THEMES
  @override
  final StacAppBarTheme? appBarTheme;
  @override
  final StacBadgeThemeData? badgeTheme;
  @override
  final StacMaterialBannerThemeData? bannerTheme;
  @override
  final StacBottomAppBarTheme? bottomAppBarTheme;
  @override
  final StacBottomNavBarThemeData? bottomNavigationBarTheme;
  @override
  final StacBottomSheetThemeData? bottomSheetTheme;
  @override
  final StacButtonThemeData? buttonTheme;
  @override
  final StacCardThemeData? cardTheme;
  @override
  final StacCheckboxThemeData? checkboxTheme;
  @override
  final StacChipThemeData? chipTheme;
  @override
  final StacDatePickerThemeData? datePickerTheme;
  @override
  final StacDialogTheme? dialogTheme;
  @override
  final StacDividerThemeData? dividerTheme;
  @override
  final StacDrawerThemeData? drawerTheme;
// DropdownMenuThemeData? dropdownMenuTheme,
  @override
  final StacButtonStyle? elevatedButtonTheme;
// ExpansionTileThemeData? expansionTileTheme,
  @override
  final StacButtonStyle? filledButtonTheme;
  @override
  final StacFloatingActionButtonThemeData? floatingActionButtonTheme;
  @override
  final StacButtonStyle? iconButtonTheme;
  @override
  final StacListTileThemeData? listTileTheme;
// MenuBarThemeData? menuBarTheme,
  @override
  final StacButtonStyle? menuButtonTheme;
// MenuThemeData? menuTheme,
  @override
  final StacNavigationBarThemeData? navigationBarTheme;
  @override
  final StacNavigationDrawerThemeData? navigationDrawerTheme;
// NavigationRailThemeData? navigationRailTheme,
  @override
  final StacButtonStyle? outlinedButtonTheme;
// PopupMenuThemeData? popupMenuTheme,
// ProgressIndicatorThemeData? progressIndicatorTheme,
// RadioThemeData? radioTheme,
// SearchBarThemeData? searchBarTheme,
// SearchViewThemeData? searchViewTheme,
  @override
  final StacButtonStyle? segmentedButtonTheme;
// SliderThemeData? sliderTheme,
// SnackBarThemeData? snackBarTheme,
// SwitchThemeData? switchTheme,
  @override
  final StacTabBarThemeData? tabBarTheme;
  @override
  final StacButtonStyle? textButtonTheme;

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacThemeCopyWith<_StacTheme> get copyWith =>
      __$StacThemeCopyWithImpl<_StacTheme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacThemeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTheme &&
            (identical(other.applyElevationOverlayColor, applyElevationOverlayColor) ||
                other.applyElevationOverlayColor ==
                    applyElevationOverlayColor) &&
            (identical(other.inputDecorationTheme, inputDecorationTheme) ||
                other.inputDecorationTheme == inputDecorationTheme) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.scrollbarTheme, scrollbarTheme) ||
                other.scrollbarTheme == scrollbarTheme) &&
            (identical(other.useMaterial3, useMaterial3) ||
                other.useMaterial3 == useMaterial3) &&
            (identical(other.colorScheme, colorScheme) ||
                other.colorScheme == colorScheme) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.colorSchemeSeed, colorSchemeSeed) ||
                other.colorSchemeSeed == colorSchemeSeed) &&
            (identical(other.canvasColor, canvasColor) ||
                other.canvasColor == canvasColor) &&
            (identical(other.cardColor, cardColor) ||
                other.cardColor == cardColor) &&
            (identical(other.disabledColor, disabledColor) ||
                other.disabledColor == disabledColor) &&
            (identical(other.dividerColor, dividerColor) ||
                other.dividerColor == dividerColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.highlightColor, highlightColor) ||
                other.highlightColor == highlightColor) &&
            (identical(other.hintColor, hintColor) ||
                other.hintColor == hintColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.primaryColor, primaryColor) ||
                other.primaryColor == primaryColor) &&
            (identical(other.primaryColorDark, primaryColorDark) ||
                other.primaryColorDark == primaryColorDark) &&
            (identical(other.primaryColorLight, primaryColorLight) ||
                other.primaryColorLight == primaryColorLight) &&
            (identical(other.primarySwatch, primarySwatch) ||
                other.primarySwatch == primarySwatch) &&
            (identical(other.scaffoldBackgroundColor, scaffoldBackgroundColor) ||
                other.scaffoldBackgroundColor == scaffoldBackgroundColor) &&
            (identical(other.secondaryHeaderColor, secondaryHeaderColor) ||
                other.secondaryHeaderColor == secondaryHeaderColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.splashColor, splashColor) ||
                other.splashColor == splashColor) &&
            (identical(other.unselectedWidgetColor, unselectedWidgetColor) ||
                other.unselectedWidgetColor == unselectedWidgetColor) &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            const DeepCollectionEquality()
                .equals(other._fontFamilyFallback, _fontFamilyFallback) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.iconTheme, iconTheme) ||
                other.iconTheme == iconTheme) &&
            (identical(other.primaryIconTheme, primaryIconTheme) ||
                other.primaryIconTheme == primaryIconTheme) &&
            (identical(other.primaryTextTheme, primaryTextTheme) ||
                other.primaryTextTheme == primaryTextTheme) &&
            (identical(other.textTheme, textTheme) || other.textTheme == textTheme) &&
            (identical(other.appBarTheme, appBarTheme) || other.appBarTheme == appBarTheme) &&
            (identical(other.badgeTheme, badgeTheme) || other.badgeTheme == badgeTheme) &&
            (identical(other.bannerTheme, bannerTheme) || other.bannerTheme == bannerTheme) &&
            (identical(other.bottomAppBarTheme, bottomAppBarTheme) || other.bottomAppBarTheme == bottomAppBarTheme) &&
            (identical(other.bottomNavigationBarTheme, bottomNavigationBarTheme) || other.bottomNavigationBarTheme == bottomNavigationBarTheme) &&
            (identical(other.bottomSheetTheme, bottomSheetTheme) || other.bottomSheetTheme == bottomSheetTheme) &&
            (identical(other.buttonTheme, buttonTheme) || other.buttonTheme == buttonTheme) &&
            (identical(other.cardTheme, cardTheme) || other.cardTheme == cardTheme) &&
            (identical(other.checkboxTheme, checkboxTheme) || other.checkboxTheme == checkboxTheme) &&
            (identical(other.chipTheme, chipTheme) || other.chipTheme == chipTheme) &&
            (identical(other.datePickerTheme, datePickerTheme) || other.datePickerTheme == datePickerTheme) &&
            (identical(other.dialogTheme, dialogTheme) || other.dialogTheme == dialogTheme) &&
            (identical(other.dividerTheme, dividerTheme) || other.dividerTheme == dividerTheme) &&
            (identical(other.drawerTheme, drawerTheme) || other.drawerTheme == drawerTheme) &&
            (identical(other.elevatedButtonTheme, elevatedButtonTheme) || other.elevatedButtonTheme == elevatedButtonTheme) &&
            (identical(other.filledButtonTheme, filledButtonTheme) || other.filledButtonTheme == filledButtonTheme) &&
            (identical(other.floatingActionButtonTheme, floatingActionButtonTheme) || other.floatingActionButtonTheme == floatingActionButtonTheme) &&
            (identical(other.iconButtonTheme, iconButtonTheme) || other.iconButtonTheme == iconButtonTheme) &&
            (identical(other.listTileTheme, listTileTheme) || other.listTileTheme == listTileTheme) &&
            (identical(other.menuButtonTheme, menuButtonTheme) || other.menuButtonTheme == menuButtonTheme) &&
            (identical(other.navigationBarTheme, navigationBarTheme) || other.navigationBarTheme == navigationBarTheme) &&
            (identical(other.navigationDrawerTheme, navigationDrawerTheme) || other.navigationDrawerTheme == navigationDrawerTheme) &&
            (identical(other.outlinedButtonTheme, outlinedButtonTheme) || other.outlinedButtonTheme == outlinedButtonTheme) &&
            (identical(other.segmentedButtonTheme, segmentedButtonTheme) || other.segmentedButtonTheme == segmentedButtonTheme) &&
            (identical(other.tabBarTheme, tabBarTheme) || other.tabBarTheme == tabBarTheme) &&
            (identical(other.textButtonTheme, textButtonTheme) || other.textButtonTheme == textButtonTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        applyElevationOverlayColor,
        inputDecorationTheme,
        materialTapTargetSize,
        platform,
        scrollbarTheme,
        useMaterial3,
        colorScheme,
        brightness,
        colorSchemeSeed,
        canvasColor,
        cardColor,
        disabledColor,
        dividerColor,
        focusColor,
        highlightColor,
        hintColor,
        hoverColor,
        indicatorColor,
        primaryColor,
        primaryColorDark,
        primaryColorLight,
        primarySwatch,
        scaffoldBackgroundColor,
        secondaryHeaderColor,
        shadowColor,
        splashColor,
        unselectedWidgetColor,
        fontFamily,
        const DeepCollectionEquality().hash(_fontFamilyFallback),
        package,
        iconTheme,
        primaryIconTheme,
        primaryTextTheme,
        textTheme,
        appBarTheme,
        badgeTheme,
        bannerTheme,
        bottomAppBarTheme,
        bottomNavigationBarTheme,
        bottomSheetTheme,
        buttonTheme,
        cardTheme,
        checkboxTheme,
        chipTheme,
        datePickerTheme,
        dialogTheme,
        dividerTheme,
        drawerTheme,
        elevatedButtonTheme,
        filledButtonTheme,
        floatingActionButtonTheme,
        iconButtonTheme,
        listTileTheme,
        menuButtonTheme,
        navigationBarTheme,
        navigationDrawerTheme,
        outlinedButtonTheme,
        segmentedButtonTheme,
        tabBarTheme,
        textButtonTheme
      ]);

  @override
  String toString() {
    return 'StacTheme(applyElevationOverlayColor: $applyElevationOverlayColor, inputDecorationTheme: $inputDecorationTheme, materialTapTargetSize: $materialTapTargetSize, platform: $platform, scrollbarTheme: $scrollbarTheme, useMaterial3: $useMaterial3, colorScheme: $colorScheme, brightness: $brightness, colorSchemeSeed: $colorSchemeSeed, canvasColor: $canvasColor, cardColor: $cardColor, disabledColor: $disabledColor, dividerColor: $dividerColor, focusColor: $focusColor, highlightColor: $highlightColor, hintColor: $hintColor, hoverColor: $hoverColor, indicatorColor: $indicatorColor, primaryColor: $primaryColor, primaryColorDark: $primaryColorDark, primaryColorLight: $primaryColorLight, primarySwatch: $primarySwatch, scaffoldBackgroundColor: $scaffoldBackgroundColor, secondaryHeaderColor: $secondaryHeaderColor, shadowColor: $shadowColor, splashColor: $splashColor, unselectedWidgetColor: $unselectedWidgetColor, fontFamily: $fontFamily, fontFamilyFallback: $fontFamilyFallback, package: $package, iconTheme: $iconTheme, primaryIconTheme: $primaryIconTheme, primaryTextTheme: $primaryTextTheme, textTheme: $textTheme, appBarTheme: $appBarTheme, badgeTheme: $badgeTheme, bannerTheme: $bannerTheme, bottomAppBarTheme: $bottomAppBarTheme, bottomNavigationBarTheme: $bottomNavigationBarTheme, bottomSheetTheme: $bottomSheetTheme, buttonTheme: $buttonTheme, cardTheme: $cardTheme, checkboxTheme: $checkboxTheme, chipTheme: $chipTheme, datePickerTheme: $datePickerTheme, dialogTheme: $dialogTheme, dividerTheme: $dividerTheme, drawerTheme: $drawerTheme, elevatedButtonTheme: $elevatedButtonTheme, filledButtonTheme: $filledButtonTheme, floatingActionButtonTheme: $floatingActionButtonTheme, iconButtonTheme: $iconButtonTheme, listTileTheme: $listTileTheme, menuButtonTheme: $menuButtonTheme, navigationBarTheme: $navigationBarTheme, navigationDrawerTheme: $navigationDrawerTheme, outlinedButtonTheme: $outlinedButtonTheme, segmentedButtonTheme: $segmentedButtonTheme, tabBarTheme: $tabBarTheme, textButtonTheme: $textButtonTheme)';
  }
}

/// @nodoc
abstract mixin class _$StacThemeCopyWith<$Res>
    implements $StacThemeCopyWith<$Res> {
  factory _$StacThemeCopyWith(
          _StacTheme value, $Res Function(_StacTheme) _then) =
      __$StacThemeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? applyElevationOverlayColor,
      StacInputDecorationTheme? inputDecorationTheme,
      MaterialTapTargetSize? materialTapTargetSize,
      TargetPlatform? platform,
      StacScrollbarThemeData? scrollbarTheme,
      bool? useMaterial3,
      StacColorScheme? colorScheme,
      Brightness? brightness,
      String? colorSchemeSeed,
      String? canvasColor,
      String? cardColor,
      String? disabledColor,
      String? dividerColor,
      String? focusColor,
      String? highlightColor,
      String? hintColor,
      String? hoverColor,
      String? indicatorColor,
      String? primaryColor,
      String? primaryColorDark,
      String? primaryColorLight,
      StacMaterialColor? primarySwatch,
      String? scaffoldBackgroundColor,
      String? secondaryHeaderColor,
      String? shadowColor,
      String? splashColor,
      String? unselectedWidgetColor,
      String? fontFamily,
      List<String>? fontFamilyFallback,
      String? package,
      StacIconThemeData? iconTheme,
      StacIconThemeData? primaryIconTheme,
      StacTextTheme? primaryTextTheme,
      StacTextTheme? textTheme,
      StacAppBarTheme? appBarTheme,
      StacBadgeThemeData? badgeTheme,
      StacMaterialBannerThemeData? bannerTheme,
      StacBottomAppBarTheme? bottomAppBarTheme,
      StacBottomNavBarThemeData? bottomNavigationBarTheme,
      StacBottomSheetThemeData? bottomSheetTheme,
      StacButtonThemeData? buttonTheme,
      StacCardThemeData? cardTheme,
      StacCheckboxThemeData? checkboxTheme,
      StacChipThemeData? chipTheme,
      StacDatePickerThemeData? datePickerTheme,
      StacDialogTheme? dialogTheme,
      StacDividerThemeData? dividerTheme,
      StacDrawerThemeData? drawerTheme,
      StacButtonStyle? elevatedButtonTheme,
      StacButtonStyle? filledButtonTheme,
      StacFloatingActionButtonThemeData? floatingActionButtonTheme,
      StacButtonStyle? iconButtonTheme,
      StacListTileThemeData? listTileTheme,
      StacButtonStyle? menuButtonTheme,
      StacNavigationBarThemeData? navigationBarTheme,
      StacNavigationDrawerThemeData? navigationDrawerTheme,
      StacButtonStyle? outlinedButtonTheme,
      StacButtonStyle? segmentedButtonTheme,
      StacTabBarThemeData? tabBarTheme,
      StacButtonStyle? textButtonTheme});

  @override
  $StacInputDecorationThemeCopyWith<$Res>? get inputDecorationTheme;
  @override
  $StacScrollbarThemeDataCopyWith<$Res>? get scrollbarTheme;
  @override
  $StacColorSchemeCopyWith<$Res>? get colorScheme;
  @override
  $StacMaterialColorCopyWith<$Res>? get primarySwatch;
  @override
  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
  @override
  $StacIconThemeDataCopyWith<$Res>? get primaryIconTheme;
  @override
  $StacTextThemeCopyWith<$Res>? get primaryTextTheme;
  @override
  $StacTextThemeCopyWith<$Res>? get textTheme;
  @override
  $StacAppBarThemeCopyWith<$Res>? get appBarTheme;
  @override
  $StacBadgeThemeDataCopyWith<$Res>? get badgeTheme;
  @override
  $StacMaterialBannerThemeDataCopyWith<$Res>? get bannerTheme;
  @override
  $StacBottomAppBarThemeCopyWith<$Res>? get bottomAppBarTheme;
  @override
  $StacBottomNavBarThemeDataCopyWith<$Res>? get bottomNavigationBarTheme;
  @override
  $StacBottomSheetThemeDataCopyWith<$Res>? get bottomSheetTheme;
  @override
  $StacButtonThemeDataCopyWith<$Res>? get buttonTheme;
  @override
  $StacCardThemeDataCopyWith<$Res>? get cardTheme;
  @override
  $StacCheckboxThemeDataCopyWith<$Res>? get checkboxTheme;
  @override
  $StacChipThemeDataCopyWith<$Res>? get chipTheme;
  @override
  $StacDatePickerThemeDataCopyWith<$Res>? get datePickerTheme;
  @override
  $StacDialogThemeCopyWith<$Res>? get dialogTheme;
  @override
  $StacDividerThemeDataCopyWith<$Res>? get dividerTheme;
  @override
  $StacDrawerThemeDataCopyWith<$Res>? get drawerTheme;
  @override
  $StacButtonStyleCopyWith<$Res>? get elevatedButtonTheme;
  @override
  $StacButtonStyleCopyWith<$Res>? get filledButtonTheme;
  @override
  $StacFloatingActionButtonThemeDataCopyWith<$Res>?
      get floatingActionButtonTheme;
  @override
  $StacButtonStyleCopyWith<$Res>? get iconButtonTheme;
  @override
  $StacListTileThemeDataCopyWith<$Res>? get listTileTheme;
  @override
  $StacButtonStyleCopyWith<$Res>? get menuButtonTheme;
  @override
  $StacNavigationBarThemeDataCopyWith<$Res>? get navigationBarTheme;
  @override
  $StacNavigationDrawerThemeDataCopyWith<$Res>? get navigationDrawerTheme;
  @override
  $StacButtonStyleCopyWith<$Res>? get outlinedButtonTheme;
  @override
  $StacButtonStyleCopyWith<$Res>? get segmentedButtonTheme;
  @override
  $StacTabBarThemeDataCopyWith<$Res>? get tabBarTheme;
  @override
  $StacButtonStyleCopyWith<$Res>? get textButtonTheme;
}

/// @nodoc
class __$StacThemeCopyWithImpl<$Res> implements _$StacThemeCopyWith<$Res> {
  __$StacThemeCopyWithImpl(this._self, this._then);

  final _StacTheme _self;
  final $Res Function(_StacTheme) _then;

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? applyElevationOverlayColor = freezed,
    Object? inputDecorationTheme = freezed,
    Object? materialTapTargetSize = freezed,
    Object? platform = freezed,
    Object? scrollbarTheme = freezed,
    Object? useMaterial3 = freezed,
    Object? colorScheme = freezed,
    Object? brightness = freezed,
    Object? colorSchemeSeed = freezed,
    Object? canvasColor = freezed,
    Object? cardColor = freezed,
    Object? disabledColor = freezed,
    Object? dividerColor = freezed,
    Object? focusColor = freezed,
    Object? highlightColor = freezed,
    Object? hintColor = freezed,
    Object? hoverColor = freezed,
    Object? indicatorColor = freezed,
    Object? primaryColor = freezed,
    Object? primaryColorDark = freezed,
    Object? primaryColorLight = freezed,
    Object? primarySwatch = freezed,
    Object? scaffoldBackgroundColor = freezed,
    Object? secondaryHeaderColor = freezed,
    Object? shadowColor = freezed,
    Object? splashColor = freezed,
    Object? unselectedWidgetColor = freezed,
    Object? fontFamily = freezed,
    Object? fontFamilyFallback = freezed,
    Object? package = freezed,
    Object? iconTheme = freezed,
    Object? primaryIconTheme = freezed,
    Object? primaryTextTheme = freezed,
    Object? textTheme = freezed,
    Object? appBarTheme = freezed,
    Object? badgeTheme = freezed,
    Object? bannerTheme = freezed,
    Object? bottomAppBarTheme = freezed,
    Object? bottomNavigationBarTheme = freezed,
    Object? bottomSheetTheme = freezed,
    Object? buttonTheme = freezed,
    Object? cardTheme = freezed,
    Object? checkboxTheme = freezed,
    Object? chipTheme = freezed,
    Object? datePickerTheme = freezed,
    Object? dialogTheme = freezed,
    Object? dividerTheme = freezed,
    Object? drawerTheme = freezed,
    Object? elevatedButtonTheme = freezed,
    Object? filledButtonTheme = freezed,
    Object? floatingActionButtonTheme = freezed,
    Object? iconButtonTheme = freezed,
    Object? listTileTheme = freezed,
    Object? menuButtonTheme = freezed,
    Object? navigationBarTheme = freezed,
    Object? navigationDrawerTheme = freezed,
    Object? outlinedButtonTheme = freezed,
    Object? segmentedButtonTheme = freezed,
    Object? tabBarTheme = freezed,
    Object? textButtonTheme = freezed,
  }) {
    return _then(_StacTheme(
      applyElevationOverlayColor: freezed == applyElevationOverlayColor
          ? _self.applyElevationOverlayColor
          : applyElevationOverlayColor // ignore: cast_nullable_to_non_nullable
              as bool?,
      inputDecorationTheme: freezed == inputDecorationTheme
          ? _self.inputDecorationTheme
          : inputDecorationTheme // ignore: cast_nullable_to_non_nullable
              as StacInputDecorationTheme?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      platform: freezed == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as TargetPlatform?,
      scrollbarTheme: freezed == scrollbarTheme
          ? _self.scrollbarTheme
          : scrollbarTheme // ignore: cast_nullable_to_non_nullable
              as StacScrollbarThemeData?,
      useMaterial3: freezed == useMaterial3
          ? _self.useMaterial3
          : useMaterial3 // ignore: cast_nullable_to_non_nullable
              as bool?,
      colorScheme: freezed == colorScheme
          ? _self.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as StacColorScheme?,
      brightness: freezed == brightness
          ? _self.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness?,
      colorSchemeSeed: freezed == colorSchemeSeed
          ? _self.colorSchemeSeed
          : colorSchemeSeed // ignore: cast_nullable_to_non_nullable
              as String?,
      canvasColor: freezed == canvasColor
          ? _self.canvasColor
          : canvasColor // ignore: cast_nullable_to_non_nullable
              as String?,
      cardColor: freezed == cardColor
          ? _self.cardColor
          : cardColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledColor: freezed == disabledColor
          ? _self.disabledColor
          : disabledColor // ignore: cast_nullable_to_non_nullable
              as String?,
      dividerColor: freezed == dividerColor
          ? _self.dividerColor
          : dividerColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightColor: freezed == highlightColor
          ? _self.highlightColor
          : highlightColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hintColor: freezed == hintColor
          ? _self.hintColor
          : hintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryColor: freezed == primaryColor
          ? _self.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryColorDark: freezed == primaryColorDark
          ? _self.primaryColorDark
          : primaryColorDark // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryColorLight: freezed == primaryColorLight
          ? _self.primaryColorLight
          : primaryColorLight // ignore: cast_nullable_to_non_nullable
              as String?,
      primarySwatch: freezed == primarySwatch
          ? _self.primarySwatch
          : primarySwatch // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      scaffoldBackgroundColor: freezed == scaffoldBackgroundColor
          ? _self.scaffoldBackgroundColor
          : scaffoldBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryHeaderColor: freezed == secondaryHeaderColor
          ? _self.secondaryHeaderColor
          : secondaryHeaderColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashColor: freezed == splashColor
          ? _self.splashColor
          : splashColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedWidgetColor: freezed == unselectedWidgetColor
          ? _self.unselectedWidgetColor
          : unselectedWidgetColor // ignore: cast_nullable_to_non_nullable
              as String?,
      fontFamily: freezed == fontFamily
          ? _self.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      fontFamilyFallback: freezed == fontFamilyFallback
          ? _self._fontFamilyFallback
          : fontFamilyFallback // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      package: freezed == package
          ? _self.package
          : package // ignore: cast_nullable_to_non_nullable
              as String?,
      iconTheme: freezed == iconTheme
          ? _self.iconTheme
          : iconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      primaryIconTheme: freezed == primaryIconTheme
          ? _self.primaryIconTheme
          : primaryIconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      primaryTextTheme: freezed == primaryTextTheme
          ? _self.primaryTextTheme
          : primaryTextTheme // ignore: cast_nullable_to_non_nullable
              as StacTextTheme?,
      textTheme: freezed == textTheme
          ? _self.textTheme
          : textTheme // ignore: cast_nullable_to_non_nullable
              as StacTextTheme?,
      appBarTheme: freezed == appBarTheme
          ? _self.appBarTheme
          : appBarTheme // ignore: cast_nullable_to_non_nullable
              as StacAppBarTheme?,
      badgeTheme: freezed == badgeTheme
          ? _self.badgeTheme
          : badgeTheme // ignore: cast_nullable_to_non_nullable
              as StacBadgeThemeData?,
      bannerTheme: freezed == bannerTheme
          ? _self.bannerTheme
          : bannerTheme // ignore: cast_nullable_to_non_nullable
              as StacMaterialBannerThemeData?,
      bottomAppBarTheme: freezed == bottomAppBarTheme
          ? _self.bottomAppBarTheme
          : bottomAppBarTheme // ignore: cast_nullable_to_non_nullable
              as StacBottomAppBarTheme?,
      bottomNavigationBarTheme: freezed == bottomNavigationBarTheme
          ? _self.bottomNavigationBarTheme
          : bottomNavigationBarTheme // ignore: cast_nullable_to_non_nullable
              as StacBottomNavBarThemeData?,
      bottomSheetTheme: freezed == bottomSheetTheme
          ? _self.bottomSheetTheme
          : bottomSheetTheme // ignore: cast_nullable_to_non_nullable
              as StacBottomSheetThemeData?,
      buttonTheme: freezed == buttonTheme
          ? _self.buttonTheme
          : buttonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonThemeData?,
      cardTheme: freezed == cardTheme
          ? _self.cardTheme
          : cardTheme // ignore: cast_nullable_to_non_nullable
              as StacCardThemeData?,
      checkboxTheme: freezed == checkboxTheme
          ? _self.checkboxTheme
          : checkboxTheme // ignore: cast_nullable_to_non_nullable
              as StacCheckboxThemeData?,
      chipTheme: freezed == chipTheme
          ? _self.chipTheme
          : chipTheme // ignore: cast_nullable_to_non_nullable
              as StacChipThemeData?,
      datePickerTheme: freezed == datePickerTheme
          ? _self.datePickerTheme
          : datePickerTheme // ignore: cast_nullable_to_non_nullable
              as StacDatePickerThemeData?,
      dialogTheme: freezed == dialogTheme
          ? _self.dialogTheme
          : dialogTheme // ignore: cast_nullable_to_non_nullable
              as StacDialogTheme?,
      dividerTheme: freezed == dividerTheme
          ? _self.dividerTheme
          : dividerTheme // ignore: cast_nullable_to_non_nullable
              as StacDividerThemeData?,
      drawerTheme: freezed == drawerTheme
          ? _self.drawerTheme
          : drawerTheme // ignore: cast_nullable_to_non_nullable
              as StacDrawerThemeData?,
      elevatedButtonTheme: freezed == elevatedButtonTheme
          ? _self.elevatedButtonTheme
          : elevatedButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      filledButtonTheme: freezed == filledButtonTheme
          ? _self.filledButtonTheme
          : filledButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      floatingActionButtonTheme: freezed == floatingActionButtonTheme
          ? _self.floatingActionButtonTheme
          : floatingActionButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacFloatingActionButtonThemeData?,
      iconButtonTheme: freezed == iconButtonTheme
          ? _self.iconButtonTheme
          : iconButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      listTileTheme: freezed == listTileTheme
          ? _self.listTileTheme
          : listTileTheme // ignore: cast_nullable_to_non_nullable
              as StacListTileThemeData?,
      menuButtonTheme: freezed == menuButtonTheme
          ? _self.menuButtonTheme
          : menuButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      navigationBarTheme: freezed == navigationBarTheme
          ? _self.navigationBarTheme
          : navigationBarTheme // ignore: cast_nullable_to_non_nullable
              as StacNavigationBarThemeData?,
      navigationDrawerTheme: freezed == navigationDrawerTheme
          ? _self.navigationDrawerTheme
          : navigationDrawerTheme // ignore: cast_nullable_to_non_nullable
              as StacNavigationDrawerThemeData?,
      outlinedButtonTheme: freezed == outlinedButtonTheme
          ? _self.outlinedButtonTheme
          : outlinedButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      segmentedButtonTheme: freezed == segmentedButtonTheme
          ? _self.segmentedButtonTheme
          : segmentedButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      tabBarTheme: freezed == tabBarTheme
          ? _self.tabBarTheme
          : tabBarTheme // ignore: cast_nullable_to_non_nullable
              as StacTabBarThemeData?,
      textButtonTheme: freezed == textButtonTheme
          ? _self.textButtonTheme
          : textButtonTheme // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
    ));
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputDecorationThemeCopyWith<$Res>? get inputDecorationTheme {
    if (_self.inputDecorationTheme == null) {
      return null;
    }

    return $StacInputDecorationThemeCopyWith<$Res>(_self.inputDecorationTheme!,
        (value) {
      return _then(_self.copyWith(inputDecorationTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacScrollbarThemeDataCopyWith<$Res>? get scrollbarTheme {
    if (_self.scrollbarTheme == null) {
      return null;
    }

    return $StacScrollbarThemeDataCopyWith<$Res>(_self.scrollbarTheme!,
        (value) {
      return _then(_self.copyWith(scrollbarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacColorSchemeCopyWith<$Res>? get colorScheme {
    if (_self.colorScheme == null) {
      return null;
    }

    return $StacColorSchemeCopyWith<$Res>(_self.colorScheme!, (value) {
      return _then(_self.copyWith(colorScheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get primarySwatch {
    if (_self.primarySwatch == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.primarySwatch!, (value) {
      return _then(_self.copyWith(primarySwatch: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get iconTheme {
    if (_self.iconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.iconTheme!, (value) {
      return _then(_self.copyWith(iconTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get primaryIconTheme {
    if (_self.primaryIconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.primaryIconTheme!, (value) {
      return _then(_self.copyWith(primaryIconTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextThemeCopyWith<$Res>? get primaryTextTheme {
    if (_self.primaryTextTheme == null) {
      return null;
    }

    return $StacTextThemeCopyWith<$Res>(_self.primaryTextTheme!, (value) {
      return _then(_self.copyWith(primaryTextTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextThemeCopyWith<$Res>? get textTheme {
    if (_self.textTheme == null) {
      return null;
    }

    return $StacTextThemeCopyWith<$Res>(_self.textTheme!, (value) {
      return _then(_self.copyWith(textTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacAppBarThemeCopyWith<$Res>? get appBarTheme {
    if (_self.appBarTheme == null) {
      return null;
    }

    return $StacAppBarThemeCopyWith<$Res>(_self.appBarTheme!, (value) {
      return _then(_self.copyWith(appBarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBadgeThemeDataCopyWith<$Res>? get badgeTheme {
    if (_self.badgeTheme == null) {
      return null;
    }

    return $StacBadgeThemeDataCopyWith<$Res>(_self.badgeTheme!, (value) {
      return _then(_self.copyWith(badgeTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialBannerThemeDataCopyWith<$Res>? get bannerTheme {
    if (_self.bannerTheme == null) {
      return null;
    }

    return $StacMaterialBannerThemeDataCopyWith<$Res>(_self.bannerTheme!,
        (value) {
      return _then(_self.copyWith(bannerTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBottomAppBarThemeCopyWith<$Res>? get bottomAppBarTheme {
    if (_self.bottomAppBarTheme == null) {
      return null;
    }

    return $StacBottomAppBarThemeCopyWith<$Res>(_self.bottomAppBarTheme!,
        (value) {
      return _then(_self.copyWith(bottomAppBarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBottomNavBarThemeDataCopyWith<$Res>? get bottomNavigationBarTheme {
    if (_self.bottomNavigationBarTheme == null) {
      return null;
    }

    return $StacBottomNavBarThemeDataCopyWith<$Res>(
        _self.bottomNavigationBarTheme!, (value) {
      return _then(_self.copyWith(bottomNavigationBarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBottomSheetThemeDataCopyWith<$Res>? get bottomSheetTheme {
    if (_self.bottomSheetTheme == null) {
      return null;
    }

    return $StacBottomSheetThemeDataCopyWith<$Res>(_self.bottomSheetTheme!,
        (value) {
      return _then(_self.copyWith(bottomSheetTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonThemeDataCopyWith<$Res>? get buttonTheme {
    if (_self.buttonTheme == null) {
      return null;
    }

    return $StacButtonThemeDataCopyWith<$Res>(_self.buttonTheme!, (value) {
      return _then(_self.copyWith(buttonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacCardThemeDataCopyWith<$Res>? get cardTheme {
    if (_self.cardTheme == null) {
      return null;
    }

    return $StacCardThemeDataCopyWith<$Res>(_self.cardTheme!, (value) {
      return _then(_self.copyWith(cardTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacCheckboxThemeDataCopyWith<$Res>? get checkboxTheme {
    if (_self.checkboxTheme == null) {
      return null;
    }

    return $StacCheckboxThemeDataCopyWith<$Res>(_self.checkboxTheme!, (value) {
      return _then(_self.copyWith(checkboxTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacChipThemeDataCopyWith<$Res>? get chipTheme {
    if (_self.chipTheme == null) {
      return null;
    }

    return $StacChipThemeDataCopyWith<$Res>(_self.chipTheme!, (value) {
      return _then(_self.copyWith(chipTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDatePickerThemeDataCopyWith<$Res>? get datePickerTheme {
    if (_self.datePickerTheme == null) {
      return null;
    }

    return $StacDatePickerThemeDataCopyWith<$Res>(_self.datePickerTheme!,
        (value) {
      return _then(_self.copyWith(datePickerTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDialogThemeCopyWith<$Res>? get dialogTheme {
    if (_self.dialogTheme == null) {
      return null;
    }

    return $StacDialogThemeCopyWith<$Res>(_self.dialogTheme!, (value) {
      return _then(_self.copyWith(dialogTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDividerThemeDataCopyWith<$Res>? get dividerTheme {
    if (_self.dividerTheme == null) {
      return null;
    }

    return $StacDividerThemeDataCopyWith<$Res>(_self.dividerTheme!, (value) {
      return _then(_self.copyWith(dividerTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDrawerThemeDataCopyWith<$Res>? get drawerTheme {
    if (_self.drawerTheme == null) {
      return null;
    }

    return $StacDrawerThemeDataCopyWith<$Res>(_self.drawerTheme!, (value) {
      return _then(_self.copyWith(drawerTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get elevatedButtonTheme {
    if (_self.elevatedButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.elevatedButtonTheme!, (value) {
      return _then(_self.copyWith(elevatedButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get filledButtonTheme {
    if (_self.filledButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.filledButtonTheme!, (value) {
      return _then(_self.copyWith(filledButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacFloatingActionButtonThemeDataCopyWith<$Res>?
      get floatingActionButtonTheme {
    if (_self.floatingActionButtonTheme == null) {
      return null;
    }

    return $StacFloatingActionButtonThemeDataCopyWith<$Res>(
        _self.floatingActionButtonTheme!, (value) {
      return _then(_self.copyWith(floatingActionButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get iconButtonTheme {
    if (_self.iconButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.iconButtonTheme!, (value) {
      return _then(_self.copyWith(iconButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacListTileThemeDataCopyWith<$Res>? get listTileTheme {
    if (_self.listTileTheme == null) {
      return null;
    }

    return $StacListTileThemeDataCopyWith<$Res>(_self.listTileTheme!, (value) {
      return _then(_self.copyWith(listTileTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get menuButtonTheme {
    if (_self.menuButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.menuButtonTheme!, (value) {
      return _then(_self.copyWith(menuButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNavigationBarThemeDataCopyWith<$Res>? get navigationBarTheme {
    if (_self.navigationBarTheme == null) {
      return null;
    }

    return $StacNavigationBarThemeDataCopyWith<$Res>(_self.navigationBarTheme!,
        (value) {
      return _then(_self.copyWith(navigationBarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNavigationDrawerThemeDataCopyWith<$Res>? get navigationDrawerTheme {
    if (_self.navigationDrawerTheme == null) {
      return null;
    }

    return $StacNavigationDrawerThemeDataCopyWith<$Res>(
        _self.navigationDrawerTheme!, (value) {
      return _then(_self.copyWith(navigationDrawerTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get outlinedButtonTheme {
    if (_self.outlinedButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.outlinedButtonTheme!, (value) {
      return _then(_self.copyWith(outlinedButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get segmentedButtonTheme {
    if (_self.segmentedButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.segmentedButtonTheme!, (value) {
      return _then(_self.copyWith(segmentedButtonTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTabBarThemeDataCopyWith<$Res>? get tabBarTheme {
    if (_self.tabBarTheme == null) {
      return null;
    }

    return $StacTabBarThemeDataCopyWith<$Res>(_self.tabBarTheme!, (value) {
      return _then(_self.copyWith(tabBarTheme: value));
    });
  }

  /// Create a copy of StacTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get textButtonTheme {
    if (_self.textButtonTheme == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.textButtonTheme!, (value) {
      return _then(_self.copyWith(textButtonTheme: value));
    });
  }
}

// dart format on
