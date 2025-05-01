// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_date_picker_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDatePickerThemeData _$StacDatePickerThemeDataFromJson(
        Map<String, dynamic> json) =>
    _StacDatePickerThemeData(
      backgroundColor: json['backgroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      headerBackgroundColor: json['headerBackgroundColor'] as String?,
      headerForegroundColor: json['headerForegroundColor'] as String?,
      headerHeadlineStyle: json['headerHeadlineStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['headerHeadlineStyle']),
      headerHelpStyle: json['headerHelpStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['headerHelpStyle']),
      weekdayStyle: json['weekdayStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['weekdayStyle']),
      dayStyle: json['dayStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['dayStyle']),
      dayForegroundColor: json['dayForegroundColor'] as String?,
      dayBackgroundColor: json['dayBackgroundColor'] as String?,
      dayOverlayColor: json['dayOverlayColor'] as String?,
      dayShape: json['dayShape'] == null
          ? null
          : StacShapeBorder.fromJson(json['dayShape'] as Map<String, dynamic>),
      todayForegroundColor: json['todayForegroundColor'] as String?,
      todayBackgroundColor: json['todayBackgroundColor'] as String?,
      todayBorder: json['todayBorder'] == null
          ? null
          : StacBorderSide.fromJson(
              json['todayBorder'] as Map<String, dynamic>),
      yearStyle: json['yearStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['yearStyle']),
      yearForegroundColor: json['yearForegroundColor'] as String?,
      yearBackgroundColor: json['yearBackgroundColor'] as String?,
      yearOverlayColor: json['yearOverlayColor'] as String?,
      rangePickerBackgroundColor: json['rangePickerBackgroundColor'] as String?,
      rangePickerElevation: (json['rangePickerElevation'] as num?)?.toDouble(),
      rangePickerShadowColor: json['rangePickerShadowColor'] as String?,
      rangePickerSurfaceTintColor:
          json['rangePickerSurfaceTintColor'] as String?,
      rangePickerShape: json['rangePickerShape'] == null
          ? null
          : StacShapeBorder.fromJson(
              json['rangePickerShape'] as Map<String, dynamic>),
      rangePickerHeaderBackgroundColor:
          json['rangePickerHeaderBackgroundColor'] as String?,
      rangePickerHeaderForegroundColor:
          json['rangePickerHeaderForegroundColor'] as String?,
      rangePickerHeaderHeadlineStyle:
          json['rangePickerHeaderHeadlineStyle'] == null
              ? null
              : StacTextStyle.fromJson(json['rangePickerHeaderHeadlineStyle']),
      rangePickerHeaderHelpStyle: json['rangePickerHeaderHelpStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['rangePickerHeaderHelpStyle']),
      rangeSelectionBackgroundColor:
          json['rangeSelectionBackgroundColor'] as String?,
      rangeSelectionOverlayColor: json['rangeSelectionOverlayColor'] as String?,
      dividerColor: json['dividerColor'] as String?,
      inputDecorationTheme: json['inputDecorationTheme'] == null
          ? null
          : StacInputDecorationTheme.fromJson(
              json['inputDecorationTheme'] as Map<String, dynamic>),
      cancelButtonStyle: json['cancelButtonStyle'] == null
          ? null
          : StacButtonStyle.fromJson(
              json['cancelButtonStyle'] as Map<String, dynamic>),
      confirmButtonStyle: json['confirmButtonStyle'] == null
          ? null
          : StacButtonStyle.fromJson(
              json['confirmButtonStyle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacDatePickerThemeDataToJson(
        _StacDatePickerThemeData instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': instance.shape,
      'headerBackgroundColor': instance.headerBackgroundColor,
      'headerForegroundColor': instance.headerForegroundColor,
      'headerHeadlineStyle': instance.headerHeadlineStyle,
      'headerHelpStyle': instance.headerHelpStyle,
      'weekdayStyle': instance.weekdayStyle,
      'dayStyle': instance.dayStyle,
      'dayForegroundColor': instance.dayForegroundColor,
      'dayBackgroundColor': instance.dayBackgroundColor,
      'dayOverlayColor': instance.dayOverlayColor,
      'dayShape': instance.dayShape,
      'todayForegroundColor': instance.todayForegroundColor,
      'todayBackgroundColor': instance.todayBackgroundColor,
      'todayBorder': instance.todayBorder,
      'yearStyle': instance.yearStyle,
      'yearForegroundColor': instance.yearForegroundColor,
      'yearBackgroundColor': instance.yearBackgroundColor,
      'yearOverlayColor': instance.yearOverlayColor,
      'rangePickerBackgroundColor': instance.rangePickerBackgroundColor,
      'rangePickerElevation': instance.rangePickerElevation,
      'rangePickerShadowColor': instance.rangePickerShadowColor,
      'rangePickerSurfaceTintColor': instance.rangePickerSurfaceTintColor,
      'rangePickerShape': instance.rangePickerShape,
      'rangePickerHeaderBackgroundColor':
          instance.rangePickerHeaderBackgroundColor,
      'rangePickerHeaderForegroundColor':
          instance.rangePickerHeaderForegroundColor,
      'rangePickerHeaderHeadlineStyle': instance.rangePickerHeaderHeadlineStyle,
      'rangePickerHeaderHelpStyle': instance.rangePickerHeaderHelpStyle,
      'rangeSelectionBackgroundColor': instance.rangeSelectionBackgroundColor,
      'rangeSelectionOverlayColor': instance.rangeSelectionOverlayColor,
      'dividerColor': instance.dividerColor,
      'inputDecorationTheme': instance.inputDecorationTheme,
      'cancelButtonStyle': instance.cancelButtonStyle,
      'confirmButtonStyle': instance.confirmButtonStyle,
    };
