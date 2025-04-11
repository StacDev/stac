// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_snack_bar_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSnackBarAction {
  String? get textColor;
  String? get disabledTextColor;
  String? get backgroundColor;
  String? get disabledBackgroundColor;
  String get label;
  Map<String, dynamic> get onPressed;

  /// Create a copy of StacSnackBarAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSnackBarActionCopyWith<StacSnackBarAction> get copyWith =>
      _$StacSnackBarActionCopyWithImpl<StacSnackBarAction>(
          this as StacSnackBarAction, _$identity);

  /// Serializes this StacSnackBarAction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSnackBarAction &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.disabledTextColor, disabledTextColor) ||
                other.disabledTextColor == disabledTextColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(
                    other.disabledBackgroundColor, disabledBackgroundColor) ||
                other.disabledBackgroundColor == disabledBackgroundColor) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.onPressed, onPressed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      textColor,
      disabledTextColor,
      backgroundColor,
      disabledBackgroundColor,
      label,
      const DeepCollectionEquality().hash(onPressed));

  @override
  String toString() {
    return 'StacSnackBarAction(textColor: $textColor, disabledTextColor: $disabledTextColor, backgroundColor: $backgroundColor, disabledBackgroundColor: $disabledBackgroundColor, label: $label, onPressed: $onPressed)';
  }
}

/// @nodoc
abstract mixin class $StacSnackBarActionCopyWith<$Res> {
  factory $StacSnackBarActionCopyWith(
          StacSnackBarAction value, $Res Function(StacSnackBarAction) _then) =
      _$StacSnackBarActionCopyWithImpl;
  @useResult
  $Res call(
      {String? textColor,
      String? disabledTextColor,
      String? backgroundColor,
      String? disabledBackgroundColor,
      String label,
      Map<String, dynamic> onPressed});
}

/// @nodoc
class _$StacSnackBarActionCopyWithImpl<$Res>
    implements $StacSnackBarActionCopyWith<$Res> {
  _$StacSnackBarActionCopyWithImpl(this._self, this._then);

  final StacSnackBarAction _self;
  final $Res Function(StacSnackBarAction) _then;

  /// Create a copy of StacSnackBarAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textColor = freezed,
    Object? disabledTextColor = freezed,
    Object? backgroundColor = freezed,
    Object? disabledBackgroundColor = freezed,
    Object? label = null,
    Object? onPressed = null,
  }) {
    return _then(_self.copyWith(
      textColor: freezed == textColor
          ? _self.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledTextColor: freezed == disabledTextColor
          ? _self.disabledTextColor
          : disabledTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledBackgroundColor: freezed == disabledBackgroundColor
          ? _self.disabledBackgroundColor
          : disabledBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _self.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacSnackBarAction implements StacSnackBarAction {
  const _StacSnackBarAction(
      {this.textColor,
      this.disabledTextColor,
      this.backgroundColor,
      this.disabledBackgroundColor,
      required this.label,
      required final Map<String, dynamic> onPressed})
      : _onPressed = onPressed;
  factory _StacSnackBarAction.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarActionFromJson(json);

  @override
  final String? textColor;
  @override
  final String? disabledTextColor;
  @override
  final String? backgroundColor;
  @override
  final String? disabledBackgroundColor;
  @override
  final String label;
  final Map<String, dynamic> _onPressed;
  @override
  Map<String, dynamic> get onPressed {
    if (_onPressed is EqualUnmodifiableMapView) return _onPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_onPressed);
  }

  /// Create a copy of StacSnackBarAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSnackBarActionCopyWith<_StacSnackBarAction> get copyWith =>
      __$StacSnackBarActionCopyWithImpl<_StacSnackBarAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSnackBarActionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSnackBarAction &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.disabledTextColor, disabledTextColor) ||
                other.disabledTextColor == disabledTextColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(
                    other.disabledBackgroundColor, disabledBackgroundColor) ||
                other.disabledBackgroundColor == disabledBackgroundColor) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other._onPressed, _onPressed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      textColor,
      disabledTextColor,
      backgroundColor,
      disabledBackgroundColor,
      label,
      const DeepCollectionEquality().hash(_onPressed));

  @override
  String toString() {
    return 'StacSnackBarAction(textColor: $textColor, disabledTextColor: $disabledTextColor, backgroundColor: $backgroundColor, disabledBackgroundColor: $disabledBackgroundColor, label: $label, onPressed: $onPressed)';
  }
}

/// @nodoc
abstract mixin class _$StacSnackBarActionCopyWith<$Res>
    implements $StacSnackBarActionCopyWith<$Res> {
  factory _$StacSnackBarActionCopyWith(
          _StacSnackBarAction value, $Res Function(_StacSnackBarAction) _then) =
      __$StacSnackBarActionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? textColor,
      String? disabledTextColor,
      String? backgroundColor,
      String? disabledBackgroundColor,
      String label,
      Map<String, dynamic> onPressed});
}

/// @nodoc
class __$StacSnackBarActionCopyWithImpl<$Res>
    implements _$StacSnackBarActionCopyWith<$Res> {
  __$StacSnackBarActionCopyWithImpl(this._self, this._then);

  final _StacSnackBarAction _self;
  final $Res Function(_StacSnackBarAction) _then;

  /// Create a copy of StacSnackBarAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? textColor = freezed,
    Object? disabledTextColor = freezed,
    Object? backgroundColor = freezed,
    Object? disabledBackgroundColor = freezed,
    Object? label = null,
    Object? onPressed = null,
  }) {
    return _then(_StacSnackBarAction(
      textColor: freezed == textColor
          ? _self.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledTextColor: freezed == disabledTextColor
          ? _self.disabledTextColor
          : disabledTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledBackgroundColor: freezed == disabledBackgroundColor
          ? _self.disabledBackgroundColor
          : disabledBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _self._onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
