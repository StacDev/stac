// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_bottom_sheet_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBottomSheetThemeData {
  String? get backgroundColor;
  String? get surfaceTintColor;
  double? get elevation;
  String? get modalBackgroundColor;
  String? get modalBarrierColor;
  String? get shadowColor;
  double? get modalElevation;
  StacBorder? get shape;
  bool? get showDragHandle;
  String? get dragHandleColor;
  StacSize? get dragHandleSize;
  Clip? get clipBehavior;
  StacBoxConstraints? get constraints;

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBottomSheetThemeDataCopyWith<StacBottomSheetThemeData> get copyWith =>
      _$StacBottomSheetThemeDataCopyWithImpl<StacBottomSheetThemeData>(
          this as StacBottomSheetThemeData, _$identity);

  /// Serializes this StacBottomSheetThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBottomSheetThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.modalBackgroundColor, modalBackgroundColor) ||
                other.modalBackgroundColor == modalBackgroundColor) &&
            (identical(other.modalBarrierColor, modalBarrierColor) ||
                other.modalBarrierColor == modalBarrierColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.modalElevation, modalElevation) ||
                other.modalElevation == modalElevation) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.showDragHandle, showDragHandle) ||
                other.showDragHandle == showDragHandle) &&
            (identical(other.dragHandleColor, dragHandleColor) ||
                other.dragHandleColor == dragHandleColor) &&
            (identical(other.dragHandleSize, dragHandleSize) ||
                other.dragHandleSize == dragHandleSize) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      surfaceTintColor,
      elevation,
      modalBackgroundColor,
      modalBarrierColor,
      shadowColor,
      modalElevation,
      shape,
      showDragHandle,
      dragHandleColor,
      dragHandleSize,
      clipBehavior,
      constraints);

  @override
  String toString() {
    return 'StacBottomSheetThemeData(backgroundColor: $backgroundColor, surfaceTintColor: $surfaceTintColor, elevation: $elevation, modalBackgroundColor: $modalBackgroundColor, modalBarrierColor: $modalBarrierColor, shadowColor: $shadowColor, modalElevation: $modalElevation, shape: $shape, showDragHandle: $showDragHandle, dragHandleColor: $dragHandleColor, dragHandleSize: $dragHandleSize, clipBehavior: $clipBehavior, constraints: $constraints)';
  }
}

/// @nodoc
abstract mixin class $StacBottomSheetThemeDataCopyWith<$Res> {
  factory $StacBottomSheetThemeDataCopyWith(StacBottomSheetThemeData value,
          $Res Function(StacBottomSheetThemeData) _then) =
      _$StacBottomSheetThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {String? backgroundColor,
      String? surfaceTintColor,
      double? elevation,
      String? modalBackgroundColor,
      String? modalBarrierColor,
      String? shadowColor,
      double? modalElevation,
      StacBorder? shape,
      bool? showDragHandle,
      String? dragHandleColor,
      StacSize? dragHandleSize,
      Clip? clipBehavior,
      StacBoxConstraints? constraints});

  $StacBorderCopyWith<$Res>? get shape;
  $StacSizeCopyWith<$Res>? get dragHandleSize;
  $StacBoxConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class _$StacBottomSheetThemeDataCopyWithImpl<$Res>
    implements $StacBottomSheetThemeDataCopyWith<$Res> {
  _$StacBottomSheetThemeDataCopyWithImpl(this._self, this._then);

  final StacBottomSheetThemeData _self;
  final $Res Function(StacBottomSheetThemeData) _then;

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? elevation = freezed,
    Object? modalBackgroundColor = freezed,
    Object? modalBarrierColor = freezed,
    Object? shadowColor = freezed,
    Object? modalElevation = freezed,
    Object? shape = freezed,
    Object? showDragHandle = freezed,
    Object? dragHandleColor = freezed,
    Object? dragHandleSize = freezed,
    Object? clipBehavior = freezed,
    Object? constraints = freezed,
  }) {
    return _then(_self.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      modalBackgroundColor: freezed == modalBackgroundColor
          ? _self.modalBackgroundColor
          : modalBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      modalBarrierColor: freezed == modalBarrierColor
          ? _self.modalBarrierColor
          : modalBarrierColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      modalElevation: freezed == modalElevation
          ? _self.modalElevation
          : modalElevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      showDragHandle: freezed == showDragHandle
          ? _self.showDragHandle
          : showDragHandle // ignore: cast_nullable_to_non_nullable
              as bool?,
      dragHandleColor: freezed == dragHandleColor
          ? _self.dragHandleColor
          : dragHandleColor // ignore: cast_nullable_to_non_nullable
              as String?,
      dragHandleSize: freezed == dragHandleSize
          ? _self.dragHandleSize
          : dragHandleSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
      constraints: freezed == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
    ));
  }

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get dragHandleSize {
    if (_self.dragHandleSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_self.dragHandleSize!, (value) {
      return _then(_self.copyWith(dragHandleSize: value));
    });
  }

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.constraints!, (value) {
      return _then(_self.copyWith(constraints: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacBottomSheetThemeData implements StacBottomSheetThemeData {
  const _StacBottomSheetThemeData(
      {this.backgroundColor,
      this.surfaceTintColor,
      this.elevation,
      this.modalBackgroundColor,
      this.modalBarrierColor,
      this.shadowColor,
      this.modalElevation,
      this.shape,
      this.showDragHandle,
      this.dragHandleColor,
      this.dragHandleSize,
      this.clipBehavior,
      this.constraints});
  factory _StacBottomSheetThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBottomSheetThemeDataFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final String? surfaceTintColor;
  @override
  final double? elevation;
  @override
  final String? modalBackgroundColor;
  @override
  final String? modalBarrierColor;
  @override
  final String? shadowColor;
  @override
  final double? modalElevation;
  @override
  final StacBorder? shape;
  @override
  final bool? showDragHandle;
  @override
  final String? dragHandleColor;
  @override
  final StacSize? dragHandleSize;
  @override
  final Clip? clipBehavior;
  @override
  final StacBoxConstraints? constraints;

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBottomSheetThemeDataCopyWith<_StacBottomSheetThemeData> get copyWith =>
      __$StacBottomSheetThemeDataCopyWithImpl<_StacBottomSheetThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBottomSheetThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBottomSheetThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.modalBackgroundColor, modalBackgroundColor) ||
                other.modalBackgroundColor == modalBackgroundColor) &&
            (identical(other.modalBarrierColor, modalBarrierColor) ||
                other.modalBarrierColor == modalBarrierColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.modalElevation, modalElevation) ||
                other.modalElevation == modalElevation) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.showDragHandle, showDragHandle) ||
                other.showDragHandle == showDragHandle) &&
            (identical(other.dragHandleColor, dragHandleColor) ||
                other.dragHandleColor == dragHandleColor) &&
            (identical(other.dragHandleSize, dragHandleSize) ||
                other.dragHandleSize == dragHandleSize) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      surfaceTintColor,
      elevation,
      modalBackgroundColor,
      modalBarrierColor,
      shadowColor,
      modalElevation,
      shape,
      showDragHandle,
      dragHandleColor,
      dragHandleSize,
      clipBehavior,
      constraints);

  @override
  String toString() {
    return 'StacBottomSheetThemeData(backgroundColor: $backgroundColor, surfaceTintColor: $surfaceTintColor, elevation: $elevation, modalBackgroundColor: $modalBackgroundColor, modalBarrierColor: $modalBarrierColor, shadowColor: $shadowColor, modalElevation: $modalElevation, shape: $shape, showDragHandle: $showDragHandle, dragHandleColor: $dragHandleColor, dragHandleSize: $dragHandleSize, clipBehavior: $clipBehavior, constraints: $constraints)';
  }
}

/// @nodoc
abstract mixin class _$StacBottomSheetThemeDataCopyWith<$Res>
    implements $StacBottomSheetThemeDataCopyWith<$Res> {
  factory _$StacBottomSheetThemeDataCopyWith(_StacBottomSheetThemeData value,
          $Res Function(_StacBottomSheetThemeData) _then) =
      __$StacBottomSheetThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      String? surfaceTintColor,
      double? elevation,
      String? modalBackgroundColor,
      String? modalBarrierColor,
      String? shadowColor,
      double? modalElevation,
      StacBorder? shape,
      bool? showDragHandle,
      String? dragHandleColor,
      StacSize? dragHandleSize,
      Clip? clipBehavior,
      StacBoxConstraints? constraints});

  @override
  $StacBorderCopyWith<$Res>? get shape;
  @override
  $StacSizeCopyWith<$Res>? get dragHandleSize;
  @override
  $StacBoxConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class __$StacBottomSheetThemeDataCopyWithImpl<$Res>
    implements _$StacBottomSheetThemeDataCopyWith<$Res> {
  __$StacBottomSheetThemeDataCopyWithImpl(this._self, this._then);

  final _StacBottomSheetThemeData _self;
  final $Res Function(_StacBottomSheetThemeData) _then;

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backgroundColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? elevation = freezed,
    Object? modalBackgroundColor = freezed,
    Object? modalBarrierColor = freezed,
    Object? shadowColor = freezed,
    Object? modalElevation = freezed,
    Object? shape = freezed,
    Object? showDragHandle = freezed,
    Object? dragHandleColor = freezed,
    Object? dragHandleSize = freezed,
    Object? clipBehavior = freezed,
    Object? constraints = freezed,
  }) {
    return _then(_StacBottomSheetThemeData(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      modalBackgroundColor: freezed == modalBackgroundColor
          ? _self.modalBackgroundColor
          : modalBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      modalBarrierColor: freezed == modalBarrierColor
          ? _self.modalBarrierColor
          : modalBarrierColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      modalElevation: freezed == modalElevation
          ? _self.modalElevation
          : modalElevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      showDragHandle: freezed == showDragHandle
          ? _self.showDragHandle
          : showDragHandle // ignore: cast_nullable_to_non_nullable
              as bool?,
      dragHandleColor: freezed == dragHandleColor
          ? _self.dragHandleColor
          : dragHandleColor // ignore: cast_nullable_to_non_nullable
              as String?,
      dragHandleSize: freezed == dragHandleSize
          ? _self.dragHandleSize
          : dragHandleSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
      constraints: freezed == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
    ));
  }

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get dragHandleSize {
    if (_self.dragHandleSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_self.dragHandleSize!, (value) {
      return _then(_self.copyWith(dragHandleSize: value));
    });
  }

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.constraints!, (value) {
      return _then(_self.copyWith(constraints: value));
    });
  }
}

// dart format on
