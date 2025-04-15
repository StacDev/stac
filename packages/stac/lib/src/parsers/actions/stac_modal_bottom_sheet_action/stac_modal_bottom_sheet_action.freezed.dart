// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_modal_bottom_sheet_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacModalBottomSheetAction {
  Map<String, dynamic>? get widget;
  StacNetworkRequest? get request;
  String? get assetPath;
  String? get backgroundColor;
  String? get barrierLabel;
  double? get elevation;
  StacBorder? get shape;
  StacBoxConstraints? get constraints;
  String? get barrierColor;
  bool get isScrollControlled;
  bool get useRootNavigator;
  bool get isDismissible;
  bool get enableDrag;
  bool? get showDragHandle;
  bool get useSafeArea;

  /// Create a copy of StacModalBottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacModalBottomSheetActionCopyWith<StacModalBottomSheetAction>
      get copyWith =>
          _$StacModalBottomSheetActionCopyWithImpl<StacModalBottomSheetAction>(
              this as StacModalBottomSheetAction, _$identity);

  /// Serializes this StacModalBottomSheetAction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacModalBottomSheetAction &&
            const DeepCollectionEquality().equals(other.widget, widget) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.barrierLabel, barrierLabel) ||
                other.barrierLabel == barrierLabel) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints) &&
            (identical(other.barrierColor, barrierColor) ||
                other.barrierColor == barrierColor) &&
            (identical(other.isScrollControlled, isScrollControlled) ||
                other.isScrollControlled == isScrollControlled) &&
            (identical(other.useRootNavigator, useRootNavigator) ||
                other.useRootNavigator == useRootNavigator) &&
            (identical(other.isDismissible, isDismissible) ||
                other.isDismissible == isDismissible) &&
            (identical(other.enableDrag, enableDrag) ||
                other.enableDrag == enableDrag) &&
            (identical(other.showDragHandle, showDragHandle) ||
                other.showDragHandle == showDragHandle) &&
            (identical(other.useSafeArea, useSafeArea) ||
                other.useSafeArea == useSafeArea));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(widget),
      request,
      assetPath,
      backgroundColor,
      barrierLabel,
      elevation,
      shape,
      constraints,
      barrierColor,
      isScrollControlled,
      useRootNavigator,
      isDismissible,
      enableDrag,
      showDragHandle,
      useSafeArea);

  @override
  String toString() {
    return 'StacModalBottomSheetAction(widget: $widget, request: $request, assetPath: $assetPath, backgroundColor: $backgroundColor, barrierLabel: $barrierLabel, elevation: $elevation, shape: $shape, constraints: $constraints, barrierColor: $barrierColor, isScrollControlled: $isScrollControlled, useRootNavigator: $useRootNavigator, isDismissible: $isDismissible, enableDrag: $enableDrag, showDragHandle: $showDragHandle, useSafeArea: $useSafeArea)';
  }
}

/// @nodoc
abstract mixin class $StacModalBottomSheetActionCopyWith<$Res> {
  factory $StacModalBottomSheetActionCopyWith(StacModalBottomSheetAction value,
          $Res Function(StacModalBottomSheetAction) _then) =
      _$StacModalBottomSheetActionCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? widget,
      StacNetworkRequest? request,
      String? assetPath,
      String? backgroundColor,
      String? barrierLabel,
      double? elevation,
      StacBorder? shape,
      StacBoxConstraints? constraints,
      String? barrierColor,
      bool isScrollControlled,
      bool useRootNavigator,
      bool isDismissible,
      bool enableDrag,
      bool? showDragHandle,
      bool useSafeArea});

  $StacNetworkRequestCopyWith<$Res>? get request;
  $StacBorderCopyWith<$Res>? get shape;
  $StacBoxConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class _$StacModalBottomSheetActionCopyWithImpl<$Res>
    implements $StacModalBottomSheetActionCopyWith<$Res> {
  _$StacModalBottomSheetActionCopyWithImpl(this._self, this._then);

  final StacModalBottomSheetAction _self;
  final $Res Function(StacModalBottomSheetAction) _then;

  /// Create a copy of StacModalBottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widget = freezed,
    Object? request = freezed,
    Object? assetPath = freezed,
    Object? backgroundColor = freezed,
    Object? barrierLabel = freezed,
    Object? elevation = freezed,
    Object? shape = freezed,
    Object? constraints = freezed,
    Object? barrierColor = freezed,
    Object? isScrollControlled = null,
    Object? useRootNavigator = null,
    Object? isDismissible = null,
    Object? enableDrag = null,
    Object? showDragHandle = freezed,
    Object? useSafeArea = null,
  }) {
    return _then(_self.copyWith(
      widget: freezed == widget
          ? _self.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      request: freezed == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest?,
      assetPath: freezed == assetPath
          ? _self.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      barrierLabel: freezed == barrierLabel
          ? _self.barrierLabel
          : barrierLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      constraints: freezed == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      barrierColor: freezed == barrierColor
          ? _self.barrierColor
          : barrierColor // ignore: cast_nullable_to_non_nullable
              as String?,
      isScrollControlled: null == isScrollControlled
          ? _self.isScrollControlled
          : isScrollControlled // ignore: cast_nullable_to_non_nullable
              as bool,
      useRootNavigator: null == useRootNavigator
          ? _self.useRootNavigator
          : useRootNavigator // ignore: cast_nullable_to_non_nullable
              as bool,
      isDismissible: null == isDismissible
          ? _self.isDismissible
          : isDismissible // ignore: cast_nullable_to_non_nullable
              as bool,
      enableDrag: null == enableDrag
          ? _self.enableDrag
          : enableDrag // ignore: cast_nullable_to_non_nullable
              as bool,
      showDragHandle: freezed == showDragHandle
          ? _self.showDragHandle
          : showDragHandle // ignore: cast_nullable_to_non_nullable
              as bool?,
      useSafeArea: null == useSafeArea
          ? _self.useSafeArea
          : useSafeArea // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacModalBottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNetworkRequestCopyWith<$Res>? get request {
    if (_self.request == null) {
      return null;
    }

    return $StacNetworkRequestCopyWith<$Res>(_self.request!, (value) {
      return _then(_self.copyWith(request: value));
    });
  }

  /// Create a copy of StacModalBottomSheetAction
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

  /// Create a copy of StacModalBottomSheetAction
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
class _StacModalBottomSheetAction implements StacModalBottomSheetAction {
  const _StacModalBottomSheetAction(
      {final Map<String, dynamic>? widget,
      this.request,
      this.assetPath,
      this.backgroundColor,
      this.barrierLabel,
      this.elevation,
      this.shape,
      this.constraints,
      this.barrierColor,
      this.isScrollControlled = false,
      this.useRootNavigator = false,
      this.isDismissible = true,
      this.enableDrag = true,
      this.showDragHandle,
      this.useSafeArea = false})
      : _widget = widget;
  factory _StacModalBottomSheetAction.fromJson(Map<String, dynamic> json) =>
      _$StacModalBottomSheetActionFromJson(json);

  final Map<String, dynamic>? _widget;
  @override
  Map<String, dynamic>? get widget {
    final value = _widget;
    if (value == null) return null;
    if (_widget is EqualUnmodifiableMapView) return _widget;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacNetworkRequest? request;
  @override
  final String? assetPath;
  @override
  final String? backgroundColor;
  @override
  final String? barrierLabel;
  @override
  final double? elevation;
  @override
  final StacBorder? shape;
  @override
  final StacBoxConstraints? constraints;
  @override
  final String? barrierColor;
  @override
  @JsonKey()
  final bool isScrollControlled;
  @override
  @JsonKey()
  final bool useRootNavigator;
  @override
  @JsonKey()
  final bool isDismissible;
  @override
  @JsonKey()
  final bool enableDrag;
  @override
  final bool? showDragHandle;
  @override
  @JsonKey()
  final bool useSafeArea;

  /// Create a copy of StacModalBottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacModalBottomSheetActionCopyWith<_StacModalBottomSheetAction>
      get copyWith => __$StacModalBottomSheetActionCopyWithImpl<
          _StacModalBottomSheetAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacModalBottomSheetActionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacModalBottomSheetAction &&
            const DeepCollectionEquality().equals(other._widget, _widget) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.barrierLabel, barrierLabel) ||
                other.barrierLabel == barrierLabel) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints) &&
            (identical(other.barrierColor, barrierColor) ||
                other.barrierColor == barrierColor) &&
            (identical(other.isScrollControlled, isScrollControlled) ||
                other.isScrollControlled == isScrollControlled) &&
            (identical(other.useRootNavigator, useRootNavigator) ||
                other.useRootNavigator == useRootNavigator) &&
            (identical(other.isDismissible, isDismissible) ||
                other.isDismissible == isDismissible) &&
            (identical(other.enableDrag, enableDrag) ||
                other.enableDrag == enableDrag) &&
            (identical(other.showDragHandle, showDragHandle) ||
                other.showDragHandle == showDragHandle) &&
            (identical(other.useSafeArea, useSafeArea) ||
                other.useSafeArea == useSafeArea));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_widget),
      request,
      assetPath,
      backgroundColor,
      barrierLabel,
      elevation,
      shape,
      constraints,
      barrierColor,
      isScrollControlled,
      useRootNavigator,
      isDismissible,
      enableDrag,
      showDragHandle,
      useSafeArea);

  @override
  String toString() {
    return 'StacModalBottomSheetAction(widget: $widget, request: $request, assetPath: $assetPath, backgroundColor: $backgroundColor, barrierLabel: $barrierLabel, elevation: $elevation, shape: $shape, constraints: $constraints, barrierColor: $barrierColor, isScrollControlled: $isScrollControlled, useRootNavigator: $useRootNavigator, isDismissible: $isDismissible, enableDrag: $enableDrag, showDragHandle: $showDragHandle, useSafeArea: $useSafeArea)';
  }
}

/// @nodoc
abstract mixin class _$StacModalBottomSheetActionCopyWith<$Res>
    implements $StacModalBottomSheetActionCopyWith<$Res> {
  factory _$StacModalBottomSheetActionCopyWith(
          _StacModalBottomSheetAction value,
          $Res Function(_StacModalBottomSheetAction) _then) =
      __$StacModalBottomSheetActionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? widget,
      StacNetworkRequest? request,
      String? assetPath,
      String? backgroundColor,
      String? barrierLabel,
      double? elevation,
      StacBorder? shape,
      StacBoxConstraints? constraints,
      String? barrierColor,
      bool isScrollControlled,
      bool useRootNavigator,
      bool isDismissible,
      bool enableDrag,
      bool? showDragHandle,
      bool useSafeArea});

  @override
  $StacNetworkRequestCopyWith<$Res>? get request;
  @override
  $StacBorderCopyWith<$Res>? get shape;
  @override
  $StacBoxConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class __$StacModalBottomSheetActionCopyWithImpl<$Res>
    implements _$StacModalBottomSheetActionCopyWith<$Res> {
  __$StacModalBottomSheetActionCopyWithImpl(this._self, this._then);

  final _StacModalBottomSheetAction _self;
  final $Res Function(_StacModalBottomSheetAction) _then;

  /// Create a copy of StacModalBottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? widget = freezed,
    Object? request = freezed,
    Object? assetPath = freezed,
    Object? backgroundColor = freezed,
    Object? barrierLabel = freezed,
    Object? elevation = freezed,
    Object? shape = freezed,
    Object? constraints = freezed,
    Object? barrierColor = freezed,
    Object? isScrollControlled = null,
    Object? useRootNavigator = null,
    Object? isDismissible = null,
    Object? enableDrag = null,
    Object? showDragHandle = freezed,
    Object? useSafeArea = null,
  }) {
    return _then(_StacModalBottomSheetAction(
      widget: freezed == widget
          ? _self._widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      request: freezed == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest?,
      assetPath: freezed == assetPath
          ? _self.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      barrierLabel: freezed == barrierLabel
          ? _self.barrierLabel
          : barrierLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      constraints: freezed == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      barrierColor: freezed == barrierColor
          ? _self.barrierColor
          : barrierColor // ignore: cast_nullable_to_non_nullable
              as String?,
      isScrollControlled: null == isScrollControlled
          ? _self.isScrollControlled
          : isScrollControlled // ignore: cast_nullable_to_non_nullable
              as bool,
      useRootNavigator: null == useRootNavigator
          ? _self.useRootNavigator
          : useRootNavigator // ignore: cast_nullable_to_non_nullable
              as bool,
      isDismissible: null == isDismissible
          ? _self.isDismissible
          : isDismissible // ignore: cast_nullable_to_non_nullable
              as bool,
      enableDrag: null == enableDrag
          ? _self.enableDrag
          : enableDrag // ignore: cast_nullable_to_non_nullable
              as bool,
      showDragHandle: freezed == showDragHandle
          ? _self.showDragHandle
          : showDragHandle // ignore: cast_nullable_to_non_nullable
              as bool?,
      useSafeArea: null == useSafeArea
          ? _self.useSafeArea
          : useSafeArea // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacModalBottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNetworkRequestCopyWith<$Res>? get request {
    if (_self.request == null) {
      return null;
    }

    return $StacNetworkRequestCopyWith<$Res>(_self.request!, (value) {
      return _then(_self.copyWith(request: value));
    });
  }

  /// Create a copy of StacModalBottomSheetAction
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

  /// Create a copy of StacModalBottomSheetAction
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
