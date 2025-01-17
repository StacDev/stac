// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_fitted_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiFittedBox _$MiraiFittedBoxFromJson(Map<String, dynamic> json) {
  return _MiraiFittedBox.fromJson(json);
}

/// @nodoc
mixin _$MiraiFittedBox {
  BoxFit get fit => throw _privateConstructorUsedError;
  MiraiAlignmentDirectional get alignment => throw _privateConstructorUsedError;
  Clip get clipBehavior => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiFittedBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiFittedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiFittedBoxCopyWith<MiraiFittedBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiFittedBoxCopyWith<$Res> {
  factory $MiraiFittedBoxCopyWith(
          MiraiFittedBox value, $Res Function(MiraiFittedBox) then) =
      _$MiraiFittedBoxCopyWithImpl<$Res, MiraiFittedBox>;
  @useResult
  $Res call(
      {BoxFit fit,
      MiraiAlignmentDirectional alignment,
      Clip clipBehavior,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$MiraiFittedBoxCopyWithImpl<$Res, $Val extends MiraiFittedBox>
    implements $MiraiFittedBoxCopyWith<$Res> {
  _$MiraiFittedBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiFittedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fit = null,
    Object? alignment = null,
    Object? clipBehavior = null,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      fit: null == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as MiraiAlignmentDirectional,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiFittedBoxImplCopyWith<$Res>
    implements $MiraiFittedBoxCopyWith<$Res> {
  factory _$$MiraiFittedBoxImplCopyWith(_$MiraiFittedBoxImpl value,
          $Res Function(_$MiraiFittedBoxImpl) then) =
      __$$MiraiFittedBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BoxFit fit,
      MiraiAlignmentDirectional alignment,
      Clip clipBehavior,
      Map<String, dynamic>? child});
}

/// @nodoc
class __$$MiraiFittedBoxImplCopyWithImpl<$Res>
    extends _$MiraiFittedBoxCopyWithImpl<$Res, _$MiraiFittedBoxImpl>
    implements _$$MiraiFittedBoxImplCopyWith<$Res> {
  __$$MiraiFittedBoxImplCopyWithImpl(
      _$MiraiFittedBoxImpl _value, $Res Function(_$MiraiFittedBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiFittedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fit = null,
    Object? alignment = null,
    Object? clipBehavior = null,
    Object? child = freezed,
  }) {
    return _then(_$MiraiFittedBoxImpl(
      fit: null == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as MiraiAlignmentDirectional,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiFittedBoxImpl implements _MiraiFittedBox {
  const _$MiraiFittedBoxImpl(
      {this.fit = BoxFit.contain,
      this.alignment = MiraiAlignmentDirectional.center,
      this.clipBehavior = Clip.none,
      final Map<String, dynamic>? child})
      : _child = child;

  factory _$MiraiFittedBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiFittedBoxImplFromJson(json);

  @override
  @JsonKey()
  final BoxFit fit;
  @override
  @JsonKey()
  final MiraiAlignmentDirectional alignment;
  @override
  @JsonKey()
  final Clip clipBehavior;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MiraiFittedBox(fit: $fit, alignment: $alignment, clipBehavior: $clipBehavior, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiFittedBoxImpl &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fit, alignment, clipBehavior,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of MiraiFittedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiFittedBoxImplCopyWith<_$MiraiFittedBoxImpl> get copyWith =>
      __$$MiraiFittedBoxImplCopyWithImpl<_$MiraiFittedBoxImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiFittedBoxImplToJson(
      this,
    );
  }
}

abstract class _MiraiFittedBox implements MiraiFittedBox {
  const factory _MiraiFittedBox(
      {final BoxFit fit,
      final MiraiAlignmentDirectional alignment,
      final Clip clipBehavior,
      final Map<String, dynamic>? child}) = _$MiraiFittedBoxImpl;

  factory _MiraiFittedBox.fromJson(Map<String, dynamic> json) =
      _$MiraiFittedBoxImpl.fromJson;

  @override
  BoxFit get fit;
  @override
  MiraiAlignmentDirectional get alignment;
  @override
  Clip get clipBehavior;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of MiraiFittedBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiFittedBoxImplCopyWith<_$MiraiFittedBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
