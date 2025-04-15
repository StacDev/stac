// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_dialog_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDialogAction {
  Map<String, dynamic>? get widget;
  StacNetworkRequest? get request;
  String? get assetPath;
  bool get barrierDismissible;
  String? get barrierColor;
  String? get barrierLabel;
  bool get useSafeArea;
  TraversalEdgeBehavior? get traversalEdgeBehavior;

  /// Create a copy of StacDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDialogActionCopyWith<StacDialogAction> get copyWith =>
      _$StacDialogActionCopyWithImpl<StacDialogAction>(
          this as StacDialogAction, _$identity);

  /// Serializes this StacDialogAction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDialogAction &&
            const DeepCollectionEquality().equals(other.widget, widget) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.barrierDismissible, barrierDismissible) ||
                other.barrierDismissible == barrierDismissible) &&
            (identical(other.barrierColor, barrierColor) ||
                other.barrierColor == barrierColor) &&
            (identical(other.barrierLabel, barrierLabel) ||
                other.barrierLabel == barrierLabel) &&
            (identical(other.useSafeArea, useSafeArea) ||
                other.useSafeArea == useSafeArea) &&
            (identical(other.traversalEdgeBehavior, traversalEdgeBehavior) ||
                other.traversalEdgeBehavior == traversalEdgeBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(widget),
      request,
      assetPath,
      barrierDismissible,
      barrierColor,
      barrierLabel,
      useSafeArea,
      traversalEdgeBehavior);

  @override
  String toString() {
    return 'StacDialogAction(widget: $widget, request: $request, assetPath: $assetPath, barrierDismissible: $barrierDismissible, barrierColor: $barrierColor, barrierLabel: $barrierLabel, useSafeArea: $useSafeArea, traversalEdgeBehavior: $traversalEdgeBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacDialogActionCopyWith<$Res> {
  factory $StacDialogActionCopyWith(
          StacDialogAction value, $Res Function(StacDialogAction) _then) =
      _$StacDialogActionCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? widget,
      StacNetworkRequest? request,
      String? assetPath,
      bool barrierDismissible,
      String? barrierColor,
      String? barrierLabel,
      bool useSafeArea,
      TraversalEdgeBehavior? traversalEdgeBehavior});

  $StacNetworkRequestCopyWith<$Res>? get request;
}

/// @nodoc
class _$StacDialogActionCopyWithImpl<$Res>
    implements $StacDialogActionCopyWith<$Res> {
  _$StacDialogActionCopyWithImpl(this._self, this._then);

  final StacDialogAction _self;
  final $Res Function(StacDialogAction) _then;

  /// Create a copy of StacDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widget = freezed,
    Object? request = freezed,
    Object? assetPath = freezed,
    Object? barrierDismissible = null,
    Object? barrierColor = freezed,
    Object? barrierLabel = freezed,
    Object? useSafeArea = null,
    Object? traversalEdgeBehavior = freezed,
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
      barrierDismissible: null == barrierDismissible
          ? _self.barrierDismissible
          : barrierDismissible // ignore: cast_nullable_to_non_nullable
              as bool,
      barrierColor: freezed == barrierColor
          ? _self.barrierColor
          : barrierColor // ignore: cast_nullable_to_non_nullable
              as String?,
      barrierLabel: freezed == barrierLabel
          ? _self.barrierLabel
          : barrierLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      useSafeArea: null == useSafeArea
          ? _self.useSafeArea
          : useSafeArea // ignore: cast_nullable_to_non_nullable
              as bool,
      traversalEdgeBehavior: freezed == traversalEdgeBehavior
          ? _self.traversalEdgeBehavior
          : traversalEdgeBehavior // ignore: cast_nullable_to_non_nullable
              as TraversalEdgeBehavior?,
    ));
  }

  /// Create a copy of StacDialogAction
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
}

/// @nodoc
@JsonSerializable()
class _StacDialogAction implements StacDialogAction {
  const _StacDialogAction(
      {final Map<String, dynamic>? widget,
      this.request,
      this.assetPath,
      this.barrierDismissible = true,
      this.barrierColor,
      this.barrierLabel,
      this.useSafeArea = true,
      this.traversalEdgeBehavior})
      : _widget = widget;
  factory _StacDialogAction.fromJson(Map<String, dynamic> json) =>
      _$StacDialogActionFromJson(json);

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
  @JsonKey()
  final bool barrierDismissible;
  @override
  final String? barrierColor;
  @override
  final String? barrierLabel;
  @override
  @JsonKey()
  final bool useSafeArea;
  @override
  final TraversalEdgeBehavior? traversalEdgeBehavior;

  /// Create a copy of StacDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDialogActionCopyWith<_StacDialogAction> get copyWith =>
      __$StacDialogActionCopyWithImpl<_StacDialogAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDialogActionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDialogAction &&
            const DeepCollectionEquality().equals(other._widget, _widget) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.barrierDismissible, barrierDismissible) ||
                other.barrierDismissible == barrierDismissible) &&
            (identical(other.barrierColor, barrierColor) ||
                other.barrierColor == barrierColor) &&
            (identical(other.barrierLabel, barrierLabel) ||
                other.barrierLabel == barrierLabel) &&
            (identical(other.useSafeArea, useSafeArea) ||
                other.useSafeArea == useSafeArea) &&
            (identical(other.traversalEdgeBehavior, traversalEdgeBehavior) ||
                other.traversalEdgeBehavior == traversalEdgeBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_widget),
      request,
      assetPath,
      barrierDismissible,
      barrierColor,
      barrierLabel,
      useSafeArea,
      traversalEdgeBehavior);

  @override
  String toString() {
    return 'StacDialogAction(widget: $widget, request: $request, assetPath: $assetPath, barrierDismissible: $barrierDismissible, barrierColor: $barrierColor, barrierLabel: $barrierLabel, useSafeArea: $useSafeArea, traversalEdgeBehavior: $traversalEdgeBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacDialogActionCopyWith<$Res>
    implements $StacDialogActionCopyWith<$Res> {
  factory _$StacDialogActionCopyWith(
          _StacDialogAction value, $Res Function(_StacDialogAction) _then) =
      __$StacDialogActionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? widget,
      StacNetworkRequest? request,
      String? assetPath,
      bool barrierDismissible,
      String? barrierColor,
      String? barrierLabel,
      bool useSafeArea,
      TraversalEdgeBehavior? traversalEdgeBehavior});

  @override
  $StacNetworkRequestCopyWith<$Res>? get request;
}

/// @nodoc
class __$StacDialogActionCopyWithImpl<$Res>
    implements _$StacDialogActionCopyWith<$Res> {
  __$StacDialogActionCopyWithImpl(this._self, this._then);

  final _StacDialogAction _self;
  final $Res Function(_StacDialogAction) _then;

  /// Create a copy of StacDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? widget = freezed,
    Object? request = freezed,
    Object? assetPath = freezed,
    Object? barrierDismissible = null,
    Object? barrierColor = freezed,
    Object? barrierLabel = freezed,
    Object? useSafeArea = null,
    Object? traversalEdgeBehavior = freezed,
  }) {
    return _then(_StacDialogAction(
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
      barrierDismissible: null == barrierDismissible
          ? _self.barrierDismissible
          : barrierDismissible // ignore: cast_nullable_to_non_nullable
              as bool,
      barrierColor: freezed == barrierColor
          ? _self.barrierColor
          : barrierColor // ignore: cast_nullable_to_non_nullable
              as String?,
      barrierLabel: freezed == barrierLabel
          ? _self.barrierLabel
          : barrierLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      useSafeArea: null == useSafeArea
          ? _self.useSafeArea
          : useSafeArea // ignore: cast_nullable_to_non_nullable
              as bool,
      traversalEdgeBehavior: freezed == traversalEdgeBehavior
          ? _self.traversalEdgeBehavior
          : traversalEdgeBehavior // ignore: cast_nullable_to_non_nullable
              as TraversalEdgeBehavior?,
    ));
  }

  /// Create a copy of StacDialogAction
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
}

// dart format on
