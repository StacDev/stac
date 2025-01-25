// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_elevated_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiElevatedButton _$MiraiElevatedButtonFromJson(Map<String, dynamic> json) {
  return _MiraiElevatedButton.fromJson(json);
}

/// @nodoc
mixin _$MiraiElevatedButton {
  Map<String, dynamic>? get onPressed => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onLongPress => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onHover => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onFocusChange => throw _privateConstructorUsedError;
  MiraiButtonStyle? get style => throw _privateConstructorUsedError;
  bool get autofocus => throw _privateConstructorUsedError;
  Clip get clipBehavior => throw _privateConstructorUsedError;
  Map<String, dynamic> get child => throw _privateConstructorUsedError;
  IconAlignment get iconAlignment => throw _privateConstructorUsedError;

  /// Serializes this MiraiElevatedButton to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiElevatedButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiElevatedButtonCopyWith<MiraiElevatedButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiElevatedButtonCopyWith<$Res> {
  factory $MiraiElevatedButtonCopyWith(
          MiraiElevatedButton value, $Res Function(MiraiElevatedButton) then) =
      _$MiraiElevatedButtonCopyWithImpl<$Res, MiraiElevatedButton>;
  @useResult
  $Res call(
      {Map<String, dynamic>? onPressed,
      Map<String, dynamic>? onLongPress,
      Map<String, dynamic>? onHover,
      Map<String, dynamic>? onFocusChange,
      MiraiButtonStyle? style,
      bool autofocus,
      Clip clipBehavior,
      Map<String, dynamic> child,
      IconAlignment iconAlignment});

  $MiraiButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$MiraiElevatedButtonCopyWithImpl<$Res, $Val extends MiraiElevatedButton>
    implements $MiraiElevatedButtonCopyWith<$Res> {
  _$MiraiElevatedButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiElevatedButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onPressed = freezed,
    Object? onLongPress = freezed,
    Object? onHover = freezed,
    Object? onFocusChange = freezed,
    Object? style = freezed,
    Object? autofocus = null,
    Object? clipBehavior = null,
    Object? child = null,
    Object? iconAlignment = null,
  }) {
    return _then(_value.copyWith(
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onLongPress: freezed == onLongPress
          ? _value.onLongPress
          : onLongPress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onHover: freezed == onHover
          ? _value.onHover
          : onHover // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onFocusChange: freezed == onFocusChange
          ? _value.onFocusChange
          : onFocusChange // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MiraiButtonStyle?,
      autofocus: null == autofocus
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      iconAlignment: null == iconAlignment
          ? _value.iconAlignment
          : iconAlignment // ignore: cast_nullable_to_non_nullable
              as IconAlignment,
    ) as $Val);
  }

  /// Create a copy of MiraiElevatedButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiButtonStyleCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $MiraiButtonStyleCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiElevatedButtonImplCopyWith<$Res>
    implements $MiraiElevatedButtonCopyWith<$Res> {
  factory _$$MiraiElevatedButtonImplCopyWith(_$MiraiElevatedButtonImpl value,
          $Res Function(_$MiraiElevatedButtonImpl) then) =
      __$$MiraiElevatedButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? onPressed,
      Map<String, dynamic>? onLongPress,
      Map<String, dynamic>? onHover,
      Map<String, dynamic>? onFocusChange,
      MiraiButtonStyle? style,
      bool autofocus,
      Clip clipBehavior,
      Map<String, dynamic> child,
      IconAlignment iconAlignment});

  @override
  $MiraiButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$$MiraiElevatedButtonImplCopyWithImpl<$Res>
    extends _$MiraiElevatedButtonCopyWithImpl<$Res, _$MiraiElevatedButtonImpl>
    implements _$$MiraiElevatedButtonImplCopyWith<$Res> {
  __$$MiraiElevatedButtonImplCopyWithImpl(_$MiraiElevatedButtonImpl _value,
      $Res Function(_$MiraiElevatedButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiElevatedButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onPressed = freezed,
    Object? onLongPress = freezed,
    Object? onHover = freezed,
    Object? onFocusChange = freezed,
    Object? style = freezed,
    Object? autofocus = null,
    Object? clipBehavior = null,
    Object? child = null,
    Object? iconAlignment = null,
  }) {
    return _then(_$MiraiElevatedButtonImpl(
      onPressed: freezed == onPressed
          ? _value._onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onLongPress: freezed == onLongPress
          ? _value._onLongPress
          : onLongPress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onHover: freezed == onHover
          ? _value._onHover
          : onHover // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onFocusChange: freezed == onFocusChange
          ? _value._onFocusChange
          : onFocusChange // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MiraiButtonStyle?,
      autofocus: null == autofocus
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      iconAlignment: null == iconAlignment
          ? _value.iconAlignment
          : iconAlignment // ignore: cast_nullable_to_non_nullable
              as IconAlignment,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiElevatedButtonImpl implements _MiraiElevatedButton {
  const _$MiraiElevatedButtonImpl(
      {final Map<String, dynamic>? onPressed,
      final Map<String, dynamic>? onLongPress,
      final Map<String, dynamic>? onHover,
      final Map<String, dynamic>? onFocusChange,
      this.style,
      this.autofocus = false,
      this.clipBehavior = Clip.none,
      required final Map<String, dynamic> child,
      this.iconAlignment = IconAlignment.start})
      : _onPressed = onPressed,
        _onLongPress = onLongPress,
        _onHover = onHover,
        _onFocusChange = onFocusChange,
        _child = child;

  factory _$MiraiElevatedButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiElevatedButtonImplFromJson(json);

  final Map<String, dynamic>? _onPressed;
  @override
  Map<String, dynamic>? get onPressed {
    final value = _onPressed;
    if (value == null) return null;
    if (_onPressed is EqualUnmodifiableMapView) return _onPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onLongPress;
  @override
  Map<String, dynamic>? get onLongPress {
    final value = _onLongPress;
    if (value == null) return null;
    if (_onLongPress is EqualUnmodifiableMapView) return _onLongPress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onHover;
  @override
  Map<String, dynamic>? get onHover {
    final value = _onHover;
    if (value == null) return null;
    if (_onHover is EqualUnmodifiableMapView) return _onHover;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onFocusChange;
  @override
  Map<String, dynamic>? get onFocusChange {
    final value = _onFocusChange;
    if (value == null) return null;
    if (_onFocusChange is EqualUnmodifiableMapView) return _onFocusChange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final MiraiButtonStyle? style;
  @override
  @JsonKey()
  final bool autofocus;
  @override
  @JsonKey()
  final Clip clipBehavior;
  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  @JsonKey()
  final IconAlignment iconAlignment;

  @override
  String toString() {
    return 'MiraiElevatedButton(onPressed: $onPressed, onLongPress: $onLongPress, onHover: $onHover, onFocusChange: $onFocusChange, style: $style, autofocus: $autofocus, clipBehavior: $clipBehavior, child: $child, iconAlignment: $iconAlignment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiElevatedButtonImpl &&
            const DeepCollectionEquality()
                .equals(other._onPressed, _onPressed) &&
            const DeepCollectionEquality()
                .equals(other._onLongPress, _onLongPress) &&
            const DeepCollectionEquality().equals(other._onHover, _onHover) &&
            const DeepCollectionEquality()
                .equals(other._onFocusChange, _onFocusChange) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.iconAlignment, iconAlignment) ||
                other.iconAlignment == iconAlignment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_onPressed),
      const DeepCollectionEquality().hash(_onLongPress),
      const DeepCollectionEquality().hash(_onHover),
      const DeepCollectionEquality().hash(_onFocusChange),
      style,
      autofocus,
      clipBehavior,
      const DeepCollectionEquality().hash(_child),
      iconAlignment);

  /// Create a copy of MiraiElevatedButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiElevatedButtonImplCopyWith<_$MiraiElevatedButtonImpl> get copyWith =>
      __$$MiraiElevatedButtonImplCopyWithImpl<_$MiraiElevatedButtonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiElevatedButtonImplToJson(
      this,
    );
  }
}

abstract class _MiraiElevatedButton implements MiraiElevatedButton {
  const factory _MiraiElevatedButton(
      {final Map<String, dynamic>? onPressed,
      final Map<String, dynamic>? onLongPress,
      final Map<String, dynamic>? onHover,
      final Map<String, dynamic>? onFocusChange,
      final MiraiButtonStyle? style,
      final bool autofocus,
      final Clip clipBehavior,
      required final Map<String, dynamic> child,
      final IconAlignment iconAlignment}) = _$MiraiElevatedButtonImpl;

  factory _MiraiElevatedButton.fromJson(Map<String, dynamic> json) =
      _$MiraiElevatedButtonImpl.fromJson;

  @override
  Map<String, dynamic>? get onPressed;
  @override
  Map<String, dynamic>? get onLongPress;
  @override
  Map<String, dynamic>? get onHover;
  @override
  Map<String, dynamic>? get onFocusChange;
  @override
  MiraiButtonStyle? get style;
  @override
  bool get autofocus;
  @override
  Clip get clipBehavior;
  @override
  Map<String, dynamic> get child;
  @override
  IconAlignment get iconAlignment;

  /// Create a copy of MiraiElevatedButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiElevatedButtonImplCopyWith<_$MiraiElevatedButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
