// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_bottom_sheet_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacBottomSheetThemeData _$StacBottomSheetThemeDataFromJson(
    Map<String, dynamic> json) {
  return _StacBottomSheetThemeData.fromJson(json);
}

/// @nodoc
mixin _$StacBottomSheetThemeData {
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get surfaceTintColor => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  String? get modalBackgroundColor => throw _privateConstructorUsedError;
  String? get modalBarrierColor => throw _privateConstructorUsedError;
  String? get shadowColor => throw _privateConstructorUsedError;
  double? get modalElevation => throw _privateConstructorUsedError;
  StacBorder? get shape => throw _privateConstructorUsedError;
  bool? get showDragHandle => throw _privateConstructorUsedError;
  String? get dragHandleColor => throw _privateConstructorUsedError;
  StacSize? get dragHandleSize => throw _privateConstructorUsedError;
  Clip? get clipBehavior => throw _privateConstructorUsedError;
  StacBoxConstraints? get constraints => throw _privateConstructorUsedError;

  /// Serializes this StacBottomSheetThemeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacBottomSheetThemeDataCopyWith<StacBottomSheetThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacBottomSheetThemeDataCopyWith<$Res> {
  factory $StacBottomSheetThemeDataCopyWith(StacBottomSheetThemeData value,
          $Res Function(StacBottomSheetThemeData) then) =
      _$StacBottomSheetThemeDataCopyWithImpl<$Res, StacBottomSheetThemeData>;
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
class _$StacBottomSheetThemeDataCopyWithImpl<$Res,
        $Val extends StacBottomSheetThemeData>
    implements $StacBottomSheetThemeDataCopyWith<$Res> {
  _$StacBottomSheetThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _value.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      modalBackgroundColor: freezed == modalBackgroundColor
          ? _value.modalBackgroundColor
          : modalBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      modalBarrierColor: freezed == modalBarrierColor
          ? _value.modalBarrierColor
          : modalBarrierColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      modalElevation: freezed == modalElevation
          ? _value.modalElevation
          : modalElevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      showDragHandle: freezed == showDragHandle
          ? _value.showDragHandle
          : showDragHandle // ignore: cast_nullable_to_non_nullable
              as bool?,
      dragHandleColor: freezed == dragHandleColor
          ? _value.dragHandleColor
          : dragHandleColor // ignore: cast_nullable_to_non_nullable
              as String?,
      dragHandleSize: freezed == dragHandleSize
          ? _value.dragHandleSize
          : dragHandleSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      clipBehavior: freezed == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
      constraints: freezed == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
    ) as $Val);
  }

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderCopyWith<$Res>? get shape {
    if (_value.shape == null) {
      return null;
    }

    return $StacBorderCopyWith<$Res>(_value.shape!, (value) {
      return _then(_value.copyWith(shape: value) as $Val);
    });
  }

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get dragHandleSize {
    if (_value.dragHandleSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_value.dragHandleSize!, (value) {
      return _then(_value.copyWith(dragHandleSize: value) as $Val);
    });
  }

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get constraints {
    if (_value.constraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_value.constraints!, (value) {
      return _then(_value.copyWith(constraints: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacBottomSheetThemeDataImplCopyWith<$Res>
    implements $StacBottomSheetThemeDataCopyWith<$Res> {
  factory _$$StacBottomSheetThemeDataImplCopyWith(
          _$StacBottomSheetThemeDataImpl value,
          $Res Function(_$StacBottomSheetThemeDataImpl) then) =
      __$$StacBottomSheetThemeDataImplCopyWithImpl<$Res>;
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
class __$$StacBottomSheetThemeDataImplCopyWithImpl<$Res>
    extends _$StacBottomSheetThemeDataCopyWithImpl<$Res,
        _$StacBottomSheetThemeDataImpl>
    implements _$$StacBottomSheetThemeDataImplCopyWith<$Res> {
  __$$StacBottomSheetThemeDataImplCopyWithImpl(
      _$StacBottomSheetThemeDataImpl _value,
      $Res Function(_$StacBottomSheetThemeDataImpl) _then)
      : super(_value, _then);

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
    return _then(_$StacBottomSheetThemeDataImpl(
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _value.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      modalBackgroundColor: freezed == modalBackgroundColor
          ? _value.modalBackgroundColor
          : modalBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      modalBarrierColor: freezed == modalBarrierColor
          ? _value.modalBarrierColor
          : modalBarrierColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      modalElevation: freezed == modalElevation
          ? _value.modalElevation
          : modalElevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      showDragHandle: freezed == showDragHandle
          ? _value.showDragHandle
          : showDragHandle // ignore: cast_nullable_to_non_nullable
              as bool?,
      dragHandleColor: freezed == dragHandleColor
          ? _value.dragHandleColor
          : dragHandleColor // ignore: cast_nullable_to_non_nullable
              as String?,
      dragHandleSize: freezed == dragHandleSize
          ? _value.dragHandleSize
          : dragHandleSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      clipBehavior: freezed == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
      constraints: freezed == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacBottomSheetThemeDataImpl implements _StacBottomSheetThemeData {
  const _$StacBottomSheetThemeDataImpl(
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

  factory _$StacBottomSheetThemeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacBottomSheetThemeDataImplFromJson(json);

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

  @override
  String toString() {
    return 'StacBottomSheetThemeData(backgroundColor: $backgroundColor, surfaceTintColor: $surfaceTintColor, elevation: $elevation, modalBackgroundColor: $modalBackgroundColor, modalBarrierColor: $modalBarrierColor, shadowColor: $shadowColor, modalElevation: $modalElevation, shape: $shape, showDragHandle: $showDragHandle, dragHandleColor: $dragHandleColor, dragHandleSize: $dragHandleSize, clipBehavior: $clipBehavior, constraints: $constraints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacBottomSheetThemeDataImpl &&
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

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacBottomSheetThemeDataImplCopyWith<_$StacBottomSheetThemeDataImpl>
      get copyWith => __$$StacBottomSheetThemeDataImplCopyWithImpl<
          _$StacBottomSheetThemeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacBottomSheetThemeDataImplToJson(
      this,
    );
  }
}

abstract class _StacBottomSheetThemeData implements StacBottomSheetThemeData {
  const factory _StacBottomSheetThemeData(
      {final String? backgroundColor,
      final String? surfaceTintColor,
      final double? elevation,
      final String? modalBackgroundColor,
      final String? modalBarrierColor,
      final String? shadowColor,
      final double? modalElevation,
      final StacBorder? shape,
      final bool? showDragHandle,
      final String? dragHandleColor,
      final StacSize? dragHandleSize,
      final Clip? clipBehavior,
      final StacBoxConstraints? constraints}) = _$StacBottomSheetThemeDataImpl;

  factory _StacBottomSheetThemeData.fromJson(Map<String, dynamic> json) =
      _$StacBottomSheetThemeDataImpl.fromJson;

  @override
  String? get backgroundColor;
  @override
  String? get surfaceTintColor;
  @override
  double? get elevation;
  @override
  String? get modalBackgroundColor;
  @override
  String? get modalBarrierColor;
  @override
  String? get shadowColor;
  @override
  double? get modalElevation;
  @override
  StacBorder? get shape;
  @override
  bool? get showDragHandle;
  @override
  String? get dragHandleColor;
  @override
  StacSize? get dragHandleSize;
  @override
  Clip? get clipBehavior;
  @override
  StacBoxConstraints? get constraints;

  /// Create a copy of StacBottomSheetThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacBottomSheetThemeDataImplCopyWith<_$StacBottomSheetThemeDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
