// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_input_formatter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacInputFormatter _$StacInputFormatterFromJson(Map<String, dynamic> json) {
  return _StacInputFormatter.fromJson(json);
}

/// @nodoc
mixin _$StacInputFormatter {
  InputFormatterType get type => throw _privateConstructorUsedError;
  String? get rule => throw _privateConstructorUsedError;

  /// Serializes this StacInputFormatter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacInputFormatterCopyWith<StacInputFormatter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacInputFormatterCopyWith<$Res> {
  factory $StacInputFormatterCopyWith(
          StacInputFormatter value, $Res Function(StacInputFormatter) then) =
      _$StacInputFormatterCopyWithImpl<$Res, StacInputFormatter>;
  @useResult
  $Res call({InputFormatterType type, String? rule});
}

/// @nodoc
class _$StacInputFormatterCopyWithImpl<$Res, $Val extends StacInputFormatter>
    implements $StacInputFormatterCopyWith<$Res> {
  _$StacInputFormatterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? rule = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputFormatterType,
      rule: freezed == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacInputFormatterImplCopyWith<$Res>
    implements $StacInputFormatterCopyWith<$Res> {
  factory _$$StacInputFormatterImplCopyWith(_$StacInputFormatterImpl value,
          $Res Function(_$StacInputFormatterImpl) then) =
      __$$StacInputFormatterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputFormatterType type, String? rule});
}

/// @nodoc
class __$$StacInputFormatterImplCopyWithImpl<$Res>
    extends _$StacInputFormatterCopyWithImpl<$Res, _$StacInputFormatterImpl>
    implements _$$StacInputFormatterImplCopyWith<$Res> {
  __$$StacInputFormatterImplCopyWithImpl(_$StacInputFormatterImpl _value,
      $Res Function(_$StacInputFormatterImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? rule = freezed,
  }) {
    return _then(_$StacInputFormatterImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputFormatterType,
      rule: freezed == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacInputFormatterImpl implements _StacInputFormatter {
  const _$StacInputFormatterImpl({required this.type, this.rule});

  factory _$StacInputFormatterImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacInputFormatterImplFromJson(json);

  @override
  final InputFormatterType type;
  @override
  final String? rule;

  @override
  String toString() {
    return 'StacInputFormatter(type: $type, rule: $rule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacInputFormatterImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rule, rule) || other.rule == rule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, rule);

  /// Create a copy of StacInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacInputFormatterImplCopyWith<_$StacInputFormatterImpl> get copyWith =>
      __$$StacInputFormatterImplCopyWithImpl<_$StacInputFormatterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacInputFormatterImplToJson(
      this,
    );
  }
}

abstract class _StacInputFormatter implements StacInputFormatter {
  const factory _StacInputFormatter(
      {required final InputFormatterType type,
      final String? rule}) = _$StacInputFormatterImpl;

  factory _StacInputFormatter.fromJson(Map<String, dynamic> json) =
      _$StacInputFormatterImpl.fromJson;

  @override
  InputFormatterType get type;
  @override
  String? get rule;

  /// Create a copy of StacInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacInputFormatterImplCopyWith<_$StacInputFormatterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
