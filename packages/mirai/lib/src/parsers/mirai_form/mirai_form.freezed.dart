// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiForm _$MiraiFormFromJson(Map<String, dynamic> json) {
  return _MiraiForm.fromJson(json);
}

/// @nodoc
mixin _$MiraiForm {
  AutovalidateMode? get autovalidateMode => throw _privateConstructorUsedError;
  Map<String, dynamic> get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiFormCopyWith<MiraiForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiFormCopyWith<$Res> {
  factory $MiraiFormCopyWith(MiraiForm value, $Res Function(MiraiForm) then) =
      _$MiraiFormCopyWithImpl<$Res, MiraiForm>;
  @useResult
  $Res call({AutovalidateMode? autovalidateMode, Map<String, dynamic> child});
}

/// @nodoc
class _$MiraiFormCopyWithImpl<$Res, $Val extends MiraiForm>
    implements $MiraiFormCopyWith<$Res> {
  _$MiraiFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autovalidateMode = freezed,
    Object? child = null,
  }) {
    return _then(_value.copyWith(
      autovalidateMode: freezed == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiFormImplCopyWith<$Res>
    implements $MiraiFormCopyWith<$Res> {
  factory _$$MiraiFormImplCopyWith(
          _$MiraiFormImpl value, $Res Function(_$MiraiFormImpl) then) =
      __$$MiraiFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AutovalidateMode? autovalidateMode, Map<String, dynamic> child});
}

/// @nodoc
class __$$MiraiFormImplCopyWithImpl<$Res>
    extends _$MiraiFormCopyWithImpl<$Res, _$MiraiFormImpl>
    implements _$$MiraiFormImplCopyWith<$Res> {
  __$$MiraiFormImplCopyWithImpl(
      _$MiraiFormImpl _value, $Res Function(_$MiraiFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autovalidateMode = freezed,
    Object? child = null,
  }) {
    return _then(_$MiraiFormImpl(
      autovalidateMode: freezed == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiFormImpl implements _MiraiForm {
  const _$MiraiFormImpl(
      {this.autovalidateMode, required final Map<String, dynamic> child})
      : _child = child;

  factory _$MiraiFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiFormImplFromJson(json);

  @override
  final AutovalidateMode? autovalidateMode;
  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  String toString() {
    return 'MiraiForm(autovalidateMode: $autovalidateMode, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiFormImpl &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, autovalidateMode,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of MiraiForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiFormImplCopyWith<_$MiraiFormImpl> get copyWith =>
      __$$MiraiFormImplCopyWithImpl<_$MiraiFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiFormImplToJson(
      this,
    );
  }
}

abstract class _MiraiForm implements MiraiForm {
  const factory _MiraiForm(
      {final AutovalidateMode? autovalidateMode,
      required final Map<String, dynamic> child}) = _$MiraiFormImpl;

  factory _MiraiForm.fromJson(Map<String, dynamic> json) =
      _$MiraiFormImpl.fromJson;

  @override
  AutovalidateMode? get autovalidateMode;
  @override
  Map<String, dynamic> get child;

  /// Create a copy of MiraiForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiFormImplCopyWith<_$MiraiFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
