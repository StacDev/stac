// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_snack_bar_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiSnackBarAction _$MiraiSnackBarActionFromJson(Map<String, dynamic> json) {
  return _MiraiSnackBarAction.fromJson(json);
}

/// @nodoc
mixin _$MiraiSnackBarAction {
  String? get textColor => throw _privateConstructorUsedError;
  String? get disabledTextColor => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get disabledBackgroundColor => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  Map<String, dynamic> get onPressed => throw _privateConstructorUsedError;

  /// Serializes this MiraiSnackBarAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiSnackBarAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiSnackBarActionCopyWith<MiraiSnackBarAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiSnackBarActionCopyWith<$Res> {
  factory $MiraiSnackBarActionCopyWith(
          MiraiSnackBarAction value, $Res Function(MiraiSnackBarAction) then) =
      _$MiraiSnackBarActionCopyWithImpl<$Res, MiraiSnackBarAction>;
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
class _$MiraiSnackBarActionCopyWithImpl<$Res, $Val extends MiraiSnackBarAction>
    implements $MiraiSnackBarActionCopyWith<$Res> {
  _$MiraiSnackBarActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiSnackBarAction
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
    return _then(_value.copyWith(
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledTextColor: freezed == disabledTextColor
          ? _value.disabledTextColor
          : disabledTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledBackgroundColor: freezed == disabledBackgroundColor
          ? _value.disabledBackgroundColor
          : disabledBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiSnackBarActionImplCopyWith<$Res>
    implements $MiraiSnackBarActionCopyWith<$Res> {
  factory _$$MiraiSnackBarActionImplCopyWith(_$MiraiSnackBarActionImpl value,
          $Res Function(_$MiraiSnackBarActionImpl) then) =
      __$$MiraiSnackBarActionImplCopyWithImpl<$Res>;
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
class __$$MiraiSnackBarActionImplCopyWithImpl<$Res>
    extends _$MiraiSnackBarActionCopyWithImpl<$Res, _$MiraiSnackBarActionImpl>
    implements _$$MiraiSnackBarActionImplCopyWith<$Res> {
  __$$MiraiSnackBarActionImplCopyWithImpl(_$MiraiSnackBarActionImpl _value,
      $Res Function(_$MiraiSnackBarActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiSnackBarAction
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
    return _then(_$MiraiSnackBarActionImpl(
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledTextColor: freezed == disabledTextColor
          ? _value.disabledTextColor
          : disabledTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledBackgroundColor: freezed == disabledBackgroundColor
          ? _value.disabledBackgroundColor
          : disabledBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _value._onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiSnackBarActionImpl implements _MiraiSnackBarAction {
  const _$MiraiSnackBarActionImpl(
      {this.textColor,
      this.disabledTextColor,
      this.backgroundColor,
      this.disabledBackgroundColor,
      required this.label,
      required final Map<String, dynamic> onPressed})
      : _onPressed = onPressed;

  factory _$MiraiSnackBarActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiSnackBarActionImplFromJson(json);

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

  @override
  String toString() {
    return 'MiraiSnackBarAction(textColor: $textColor, disabledTextColor: $disabledTextColor, backgroundColor: $backgroundColor, disabledBackgroundColor: $disabledBackgroundColor, label: $label, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiSnackBarActionImpl &&
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

  /// Create a copy of MiraiSnackBarAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiSnackBarActionImplCopyWith<_$MiraiSnackBarActionImpl> get copyWith =>
      __$$MiraiSnackBarActionImplCopyWithImpl<_$MiraiSnackBarActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiSnackBarActionImplToJson(
      this,
    );
  }
}

abstract class _MiraiSnackBarAction implements MiraiSnackBarAction {
  const factory _MiraiSnackBarAction(
          {final String? textColor,
          final String? disabledTextColor,
          final String? backgroundColor,
          final String? disabledBackgroundColor,
          required final String label,
          required final Map<String, dynamic> onPressed}) =
      _$MiraiSnackBarActionImpl;

  factory _MiraiSnackBarAction.fromJson(Map<String, dynamic> json) =
      _$MiraiSnackBarActionImpl.fromJson;

  @override
  String? get textColor;
  @override
  String? get disabledTextColor;
  @override
  String? get backgroundColor;
  @override
  String? get disabledBackgroundColor;
  @override
  String get label;
  @override
  Map<String, dynamic> get onPressed;

  /// Create a copy of MiraiSnackBarAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiSnackBarActionImplCopyWith<_$MiraiSnackBarActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
