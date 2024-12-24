// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_dialog_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiDialogAction _$MiraiDialogActionFromJson(Map<String, dynamic> json) {
  return _MiraiDialogAction.fromJson(json);
}

/// @nodoc
mixin _$MiraiDialogAction {
  Map<String, dynamic>? get widget => throw _privateConstructorUsedError;
  MiraiNetworkRequest? get request => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;
  bool get barrierDismissible => throw _privateConstructorUsedError;
  String? get barrierColor => throw _privateConstructorUsedError;
  String? get barrierLabel => throw _privateConstructorUsedError;
  bool get useSafeArea => throw _privateConstructorUsedError;
  TraversalEdgeBehavior? get traversalEdgeBehavior =>
      throw _privateConstructorUsedError;

  /// Serializes this MiraiDialogAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiDialogActionCopyWith<MiraiDialogAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiDialogActionCopyWith<$Res> {
  factory $MiraiDialogActionCopyWith(
          MiraiDialogAction value, $Res Function(MiraiDialogAction) then) =
      _$MiraiDialogActionCopyWithImpl<$Res, MiraiDialogAction>;
  @useResult
  $Res call(
      {Map<String, dynamic>? widget,
      MiraiNetworkRequest? request,
      String? assetPath,
      bool barrierDismissible,
      String? barrierColor,
      String? barrierLabel,
      bool useSafeArea,
      TraversalEdgeBehavior? traversalEdgeBehavior});

  $MiraiNetworkRequestCopyWith<$Res>? get request;
}

/// @nodoc
class _$MiraiDialogActionCopyWithImpl<$Res, $Val extends MiraiDialogAction>
    implements $MiraiDialogActionCopyWith<$Res> {
  _$MiraiDialogActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiDialogAction
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
    return _then(_value.copyWith(
      widget: freezed == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as MiraiNetworkRequest?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      barrierDismissible: null == barrierDismissible
          ? _value.barrierDismissible
          : barrierDismissible // ignore: cast_nullable_to_non_nullable
              as bool,
      barrierColor: freezed == barrierColor
          ? _value.barrierColor
          : barrierColor // ignore: cast_nullable_to_non_nullable
              as String?,
      barrierLabel: freezed == barrierLabel
          ? _value.barrierLabel
          : barrierLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      useSafeArea: null == useSafeArea
          ? _value.useSafeArea
          : useSafeArea // ignore: cast_nullable_to_non_nullable
              as bool,
      traversalEdgeBehavior: freezed == traversalEdgeBehavior
          ? _value.traversalEdgeBehavior
          : traversalEdgeBehavior // ignore: cast_nullable_to_non_nullable
              as TraversalEdgeBehavior?,
    ) as $Val);
  }

  /// Create a copy of MiraiDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiNetworkRequestCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $MiraiNetworkRequestCopyWith<$Res>(_value.request!, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiDialogActionImplCopyWith<$Res>
    implements $MiraiDialogActionCopyWith<$Res> {
  factory _$$MiraiDialogActionImplCopyWith(_$MiraiDialogActionImpl value,
          $Res Function(_$MiraiDialogActionImpl) then) =
      __$$MiraiDialogActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? widget,
      MiraiNetworkRequest? request,
      String? assetPath,
      bool barrierDismissible,
      String? barrierColor,
      String? barrierLabel,
      bool useSafeArea,
      TraversalEdgeBehavior? traversalEdgeBehavior});

  @override
  $MiraiNetworkRequestCopyWith<$Res>? get request;
}

/// @nodoc
class __$$MiraiDialogActionImplCopyWithImpl<$Res>
    extends _$MiraiDialogActionCopyWithImpl<$Res, _$MiraiDialogActionImpl>
    implements _$$MiraiDialogActionImplCopyWith<$Res> {
  __$$MiraiDialogActionImplCopyWithImpl(_$MiraiDialogActionImpl _value,
      $Res Function(_$MiraiDialogActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiDialogAction
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
    return _then(_$MiraiDialogActionImpl(
      widget: freezed == widget
          ? _value._widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as MiraiNetworkRequest?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      barrierDismissible: null == barrierDismissible
          ? _value.barrierDismissible
          : barrierDismissible // ignore: cast_nullable_to_non_nullable
              as bool,
      barrierColor: freezed == barrierColor
          ? _value.barrierColor
          : barrierColor // ignore: cast_nullable_to_non_nullable
              as String?,
      barrierLabel: freezed == barrierLabel
          ? _value.barrierLabel
          : barrierLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      useSafeArea: null == useSafeArea
          ? _value.useSafeArea
          : useSafeArea // ignore: cast_nullable_to_non_nullable
              as bool,
      traversalEdgeBehavior: freezed == traversalEdgeBehavior
          ? _value.traversalEdgeBehavior
          : traversalEdgeBehavior // ignore: cast_nullable_to_non_nullable
              as TraversalEdgeBehavior?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiDialogActionImpl implements _MiraiDialogAction {
  const _$MiraiDialogActionImpl(
      {final Map<String, dynamic>? widget,
      this.request,
      this.assetPath,
      this.barrierDismissible = true,
      this.barrierColor,
      this.barrierLabel,
      this.useSafeArea = true,
      this.traversalEdgeBehavior})
      : _widget = widget;

  factory _$MiraiDialogActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiDialogActionImplFromJson(json);

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
  final MiraiNetworkRequest? request;
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

  @override
  String toString() {
    return 'MiraiDialogAction(widget: $widget, request: $request, assetPath: $assetPath, barrierDismissible: $barrierDismissible, barrierColor: $barrierColor, barrierLabel: $barrierLabel, useSafeArea: $useSafeArea, traversalEdgeBehavior: $traversalEdgeBehavior)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiDialogActionImpl &&
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

  /// Create a copy of MiraiDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiDialogActionImplCopyWith<_$MiraiDialogActionImpl> get copyWith =>
      __$$MiraiDialogActionImplCopyWithImpl<_$MiraiDialogActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiDialogActionImplToJson(
      this,
    );
  }
}

abstract class _MiraiDialogAction implements MiraiDialogAction {
  const factory _MiraiDialogAction(
          {final Map<String, dynamic>? widget,
          final MiraiNetworkRequest? request,
          final String? assetPath,
          final bool barrierDismissible,
          final String? barrierColor,
          final String? barrierLabel,
          final bool useSafeArea,
          final TraversalEdgeBehavior? traversalEdgeBehavior}) =
      _$MiraiDialogActionImpl;

  factory _MiraiDialogAction.fromJson(Map<String, dynamic> json) =
      _$MiraiDialogActionImpl.fromJson;

  @override
  Map<String, dynamic>? get widget;
  @override
  MiraiNetworkRequest? get request;
  @override
  String? get assetPath;
  @override
  bool get barrierDismissible;
  @override
  String? get barrierColor;
  @override
  String? get barrierLabel;
  @override
  bool get useSafeArea;
  @override
  TraversalEdgeBehavior? get traversalEdgeBehavior;

  /// Create a copy of MiraiDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiDialogActionImplCopyWith<_$MiraiDialogActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
