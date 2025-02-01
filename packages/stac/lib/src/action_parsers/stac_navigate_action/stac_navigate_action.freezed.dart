// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_navigate_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacNavigateAction _$StacNavigateActionFromJson(Map<String, dynamic> json) {
  return _StacNavigateAction.fromJson(json);
}

/// @nodoc
mixin _$StacNavigateAction {
  StacNetworkRequest? get request => throw _privateConstructorUsedError;
  Map<String, dynamic>? get widgetJson => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;
  String? get routeName => throw _privateConstructorUsedError;
  NavigationStyle? get navigationStyle => throw _privateConstructorUsedError;
  Map<String, dynamic>? get result => throw _privateConstructorUsedError;
  Map<String, dynamic>? get arguments => throw _privateConstructorUsedError;

  /// Serializes this StacNavigateAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacNavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacNavigateActionCopyWith<StacNavigateAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacNavigateActionCopyWith<$Res> {
  factory $StacNavigateActionCopyWith(
          StacNavigateAction value, $Res Function(StacNavigateAction) then) =
      _$StacNavigateActionCopyWithImpl<$Res, StacNavigateAction>;
  @useResult
  $Res call(
      {StacNetworkRequest? request,
      Map<String, dynamic>? widgetJson,
      String? assetPath,
      String? routeName,
      NavigationStyle? navigationStyle,
      Map<String, dynamic>? result,
      Map<String, dynamic>? arguments});

  $StacNetworkRequestCopyWith<$Res>? get request;
}

/// @nodoc
class _$StacNavigateActionCopyWithImpl<$Res, $Val extends StacNavigateAction>
    implements $StacNavigateActionCopyWith<$Res> {
  _$StacNavigateActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacNavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = freezed,
    Object? widgetJson = freezed,
    Object? assetPath = freezed,
    Object? routeName = freezed,
    Object? navigationStyle = freezed,
    Object? result = freezed,
    Object? arguments = freezed,
  }) {
    return _then(_value.copyWith(
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest?,
      widgetJson: freezed == widgetJson
          ? _value.widgetJson
          : widgetJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      routeName: freezed == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
      navigationStyle: freezed == navigationStyle
          ? _value.navigationStyle
          : navigationStyle // ignore: cast_nullable_to_non_nullable
              as NavigationStyle?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      arguments: freezed == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of StacNavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNetworkRequestCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $StacNetworkRequestCopyWith<$Res>(_value.request!, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacNavigateActionImplCopyWith<$Res>
    implements $StacNavigateActionCopyWith<$Res> {
  factory _$$StacNavigateActionImplCopyWith(_$StacNavigateActionImpl value,
          $Res Function(_$StacNavigateActionImpl) then) =
      __$$StacNavigateActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StacNetworkRequest? request,
      Map<String, dynamic>? widgetJson,
      String? assetPath,
      String? routeName,
      NavigationStyle? navigationStyle,
      Map<String, dynamic>? result,
      Map<String, dynamic>? arguments});

  @override
  $StacNetworkRequestCopyWith<$Res>? get request;
}

/// @nodoc
class __$$StacNavigateActionImplCopyWithImpl<$Res>
    extends _$StacNavigateActionCopyWithImpl<$Res, _$StacNavigateActionImpl>
    implements _$$StacNavigateActionImplCopyWith<$Res> {
  __$$StacNavigateActionImplCopyWithImpl(_$StacNavigateActionImpl _value,
      $Res Function(_$StacNavigateActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacNavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = freezed,
    Object? widgetJson = freezed,
    Object? assetPath = freezed,
    Object? routeName = freezed,
    Object? navigationStyle = freezed,
    Object? result = freezed,
    Object? arguments = freezed,
  }) {
    return _then(_$StacNavigateActionImpl(
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest?,
      widgetJson: freezed == widgetJson
          ? _value._widgetJson
          : widgetJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      routeName: freezed == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
      navigationStyle: freezed == navigationStyle
          ? _value.navigationStyle
          : navigationStyle // ignore: cast_nullable_to_non_nullable
              as NavigationStyle?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      arguments: freezed == arguments
          ? _value._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacNavigateActionImpl extends _StacNavigateAction {
  _$StacNavigateActionImpl(
      {this.request,
      final Map<String, dynamic>? widgetJson,
      this.assetPath,
      this.routeName,
      this.navigationStyle,
      final Map<String, dynamic>? result,
      final Map<String, dynamic>? arguments})
      : _widgetJson = widgetJson,
        _result = result,
        _arguments = arguments,
        super._();

  factory _$StacNavigateActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacNavigateActionImplFromJson(json);

  @override
  final StacNetworkRequest? request;
  final Map<String, dynamic>? _widgetJson;
  @override
  Map<String, dynamic>? get widgetJson {
    final value = _widgetJson;
    if (value == null) return null;
    if (_widgetJson is EqualUnmodifiableMapView) return _widgetJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? assetPath;
  @override
  final String? routeName;
  @override
  final NavigationStyle? navigationStyle;
  final Map<String, dynamic>? _result;
  @override
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _arguments;
  @override
  Map<String, dynamic>? get arguments {
    final value = _arguments;
    if (value == null) return null;
    if (_arguments is EqualUnmodifiableMapView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'StacNavigateAction(request: $request, widgetJson: $widgetJson, assetPath: $assetPath, routeName: $routeName, navigationStyle: $navigationStyle, result: $result, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacNavigateActionImpl &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality()
                .equals(other._widgetJson, _widgetJson) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.navigationStyle, navigationStyle) ||
                other.navigationStyle == navigationStyle) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      request,
      const DeepCollectionEquality().hash(_widgetJson),
      assetPath,
      routeName,
      navigationStyle,
      const DeepCollectionEquality().hash(_result),
      const DeepCollectionEquality().hash(_arguments));

  /// Create a copy of StacNavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacNavigateActionImplCopyWith<_$StacNavigateActionImpl> get copyWith =>
      __$$StacNavigateActionImplCopyWithImpl<_$StacNavigateActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacNavigateActionImplToJson(
      this,
    );
  }
}

abstract class _StacNavigateAction extends StacNavigateAction {
  factory _StacNavigateAction(
      {final StacNetworkRequest? request,
      final Map<String, dynamic>? widgetJson,
      final String? assetPath,
      final String? routeName,
      final NavigationStyle? navigationStyle,
      final Map<String, dynamic>? result,
      final Map<String, dynamic>? arguments}) = _$StacNavigateActionImpl;
  _StacNavigateAction._() : super._();

  factory _StacNavigateAction.fromJson(Map<String, dynamic> json) =
      _$StacNavigateActionImpl.fromJson;

  @override
  StacNetworkRequest? get request;
  @override
  Map<String, dynamic>? get widgetJson;
  @override
  String? get assetPath;
  @override
  String? get routeName;
  @override
  NavigationStyle? get navigationStyle;
  @override
  Map<String, dynamic>? get result;
  @override
  Map<String, dynamic>? get arguments;

  /// Create a copy of StacNavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacNavigateActionImplCopyWith<_$StacNavigateActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
