// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_navigate_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacNavigateAction {
  StacNetworkRequest? get request;
  Map<String, dynamic>? get widgetJson;
  String? get assetPath;
  String? get routeName;
  NavigationStyle? get navigationStyle;
  Map<String, dynamic>? get result;
  Map<String, dynamic>? get arguments;

  /// Create a copy of StacNavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacNavigateActionCopyWith<StacNavigateAction> get copyWith =>
      _$StacNavigateActionCopyWithImpl<StacNavigateAction>(
          this as StacNavigateAction, _$identity);

  /// Serializes this StacNavigateAction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacNavigateAction &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality()
                .equals(other.widgetJson, widgetJson) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.navigationStyle, navigationStyle) ||
                other.navigationStyle == navigationStyle) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      request,
      const DeepCollectionEquality().hash(widgetJson),
      assetPath,
      routeName,
      navigationStyle,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(arguments));

  @override
  String toString() {
    return 'StacNavigateAction(request: $request, widgetJson: $widgetJson, assetPath: $assetPath, routeName: $routeName, navigationStyle: $navigationStyle, result: $result, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class $StacNavigateActionCopyWith<$Res> {
  factory $StacNavigateActionCopyWith(
          StacNavigateAction value, $Res Function(StacNavigateAction) _then) =
      _$StacNavigateActionCopyWithImpl;
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
class _$StacNavigateActionCopyWithImpl<$Res>
    implements $StacNavigateActionCopyWith<$Res> {
  _$StacNavigateActionCopyWithImpl(this._self, this._then);

  final StacNavigateAction _self;
  final $Res Function(StacNavigateAction) _then;

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
    return _then(_self.copyWith(
      request: freezed == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest?,
      widgetJson: freezed == widgetJson
          ? _self.widgetJson
          : widgetJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      assetPath: freezed == assetPath
          ? _self.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      routeName: freezed == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
      navigationStyle: freezed == navigationStyle
          ? _self.navigationStyle
          : navigationStyle // ignore: cast_nullable_to_non_nullable
              as NavigationStyle?,
      result: freezed == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      arguments: freezed == arguments
          ? _self.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacNavigateAction
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
class _StacNavigateAction extends StacNavigateAction {
  _StacNavigateAction(
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
  factory _StacNavigateAction.fromJson(Map<String, dynamic> json) =>
      _$StacNavigateActionFromJson(json);

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

  /// Create a copy of StacNavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacNavigateActionCopyWith<_StacNavigateAction> get copyWith =>
      __$StacNavigateActionCopyWithImpl<_StacNavigateAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacNavigateActionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacNavigateAction &&
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

  @override
  String toString() {
    return 'StacNavigateAction(request: $request, widgetJson: $widgetJson, assetPath: $assetPath, routeName: $routeName, navigationStyle: $navigationStyle, result: $result, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class _$StacNavigateActionCopyWith<$Res>
    implements $StacNavigateActionCopyWith<$Res> {
  factory _$StacNavigateActionCopyWith(
          _StacNavigateAction value, $Res Function(_StacNavigateAction) _then) =
      __$StacNavigateActionCopyWithImpl;
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
class __$StacNavigateActionCopyWithImpl<$Res>
    implements _$StacNavigateActionCopyWith<$Res> {
  __$StacNavigateActionCopyWithImpl(this._self, this._then);

  final _StacNavigateAction _self;
  final $Res Function(_StacNavigateAction) _then;

  /// Create a copy of StacNavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = freezed,
    Object? widgetJson = freezed,
    Object? assetPath = freezed,
    Object? routeName = freezed,
    Object? navigationStyle = freezed,
    Object? result = freezed,
    Object? arguments = freezed,
  }) {
    return _then(_StacNavigateAction(
      request: freezed == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest?,
      widgetJson: freezed == widgetJson
          ? _self._widgetJson
          : widgetJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      assetPath: freezed == assetPath
          ? _self.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      routeName: freezed == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
      navigationStyle: freezed == navigationStyle
          ? _self.navigationStyle
          : navigationStyle // ignore: cast_nullable_to_non_nullable
              as NavigationStyle?,
      result: freezed == result
          ? _self._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      arguments: freezed == arguments
          ? _self._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacNavigateAction
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
