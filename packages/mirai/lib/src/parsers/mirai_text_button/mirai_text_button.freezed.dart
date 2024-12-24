// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_text_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiTextButton _$MiraiTextButtonFromJson(Map<String, dynamic> json) {
  return _MiraiTextButton.fromJson(json);
}

/// @nodoc
mixin _$MiraiTextButton {
  Map<String, dynamic>? get onPressed => throw _privateConstructorUsedError;
  MiraiButtonStyle? get style => throw _privateConstructorUsedError;
  dynamic get autofocus => throw _privateConstructorUsedError;
  Clip get clipBehavior => throw _privateConstructorUsedError;
  Map<String, dynamic> get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiTextButton to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiTextButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiTextButtonCopyWith<MiraiTextButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiTextButtonCopyWith<$Res> {
  factory $MiraiTextButtonCopyWith(
          MiraiTextButton value, $Res Function(MiraiTextButton) then) =
      _$MiraiTextButtonCopyWithImpl<$Res, MiraiTextButton>;
  @useResult
  $Res call(
      {Map<String, dynamic>? onPressed,
      MiraiButtonStyle? style,
      dynamic autofocus,
      Clip clipBehavior,
      Map<String, dynamic> child});

  $MiraiButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$MiraiTextButtonCopyWithImpl<$Res, $Val extends MiraiTextButton>
    implements $MiraiTextButtonCopyWith<$Res> {
  _$MiraiTextButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiTextButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onPressed = freezed,
    Object? style = freezed,
    Object? autofocus = freezed,
    Object? clipBehavior = null,
    Object? child = null,
  }) {
    return _then(_value.copyWith(
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MiraiButtonStyle?,
      autofocus: freezed == autofocus
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of MiraiTextButton
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
abstract class _$$MiraiTextButtonImplCopyWith<$Res>
    implements $MiraiTextButtonCopyWith<$Res> {
  factory _$$MiraiTextButtonImplCopyWith(_$MiraiTextButtonImpl value,
          $Res Function(_$MiraiTextButtonImpl) then) =
      __$$MiraiTextButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? onPressed,
      MiraiButtonStyle? style,
      dynamic autofocus,
      Clip clipBehavior,
      Map<String, dynamic> child});

  @override
  $MiraiButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$$MiraiTextButtonImplCopyWithImpl<$Res>
    extends _$MiraiTextButtonCopyWithImpl<$Res, _$MiraiTextButtonImpl>
    implements _$$MiraiTextButtonImplCopyWith<$Res> {
  __$$MiraiTextButtonImplCopyWithImpl(
      _$MiraiTextButtonImpl _value, $Res Function(_$MiraiTextButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiTextButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onPressed = freezed,
    Object? style = freezed,
    Object? autofocus = freezed,
    Object? clipBehavior = null,
    Object? child = null,
  }) {
    return _then(_$MiraiTextButtonImpl(
      onPressed: freezed == onPressed
          ? _value._onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MiraiButtonStyle?,
      autofocus: freezed == autofocus ? _value.autofocus! : autofocus,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiTextButtonImpl implements _MiraiTextButton {
  const _$MiraiTextButtonImpl(
      {final Map<String, dynamic>? onPressed,
      this.style,
      this.autofocus = false,
      this.clipBehavior = Clip.none,
      required final Map<String, dynamic> child})
      : _onPressed = onPressed,
        _child = child;

  factory _$MiraiTextButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiTextButtonImplFromJson(json);

  final Map<String, dynamic>? _onPressed;
  @override
  Map<String, dynamic>? get onPressed {
    final value = _onPressed;
    if (value == null) return null;
    if (_onPressed is EqualUnmodifiableMapView) return _onPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final MiraiButtonStyle? style;
  @override
  @JsonKey()
  final dynamic autofocus;
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
  String toString() {
    return 'MiraiTextButton(onPressed: $onPressed, style: $style, autofocus: $autofocus, clipBehavior: $clipBehavior, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiTextButtonImpl &&
            const DeepCollectionEquality()
                .equals(other._onPressed, _onPressed) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other.autofocus, autofocus) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_onPressed),
      style,
      const DeepCollectionEquality().hash(autofocus),
      clipBehavior,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of MiraiTextButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiTextButtonImplCopyWith<_$MiraiTextButtonImpl> get copyWith =>
      __$$MiraiTextButtonImplCopyWithImpl<_$MiraiTextButtonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiTextButtonImplToJson(
      this,
    );
  }
}

abstract class _MiraiTextButton implements MiraiTextButton {
  const factory _MiraiTextButton(
      {final Map<String, dynamic>? onPressed,
      final MiraiButtonStyle? style,
      final dynamic autofocus,
      final Clip clipBehavior,
      required final Map<String, dynamic> child}) = _$MiraiTextButtonImpl;

  factory _MiraiTextButton.fromJson(Map<String, dynamic> json) =
      _$MiraiTextButtonImpl.fromJson;

  @override
  Map<String, dynamic>? get onPressed;
  @override
  MiraiButtonStyle? get style;
  @override
  dynamic get autofocus;
  @override
  Clip get clipBehavior;
  @override
  Map<String, dynamic> get child;

  /// Create a copy of MiraiTextButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiTextButtonImplCopyWith<_$MiraiTextButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
