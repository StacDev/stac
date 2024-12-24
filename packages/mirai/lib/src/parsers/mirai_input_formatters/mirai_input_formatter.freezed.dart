// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_input_formatter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiInputFormatter _$MiraiInputFormatterFromJson(Map<String, dynamic> json) {
  return _MiraiInputFormatter.fromJson(json);
}

/// @nodoc
mixin _$MiraiInputFormatter {
  InputFormatterType get type => throw _privateConstructorUsedError;
  String? get rule => throw _privateConstructorUsedError;

  /// Serializes this MiraiInputFormatter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiInputFormatterCopyWith<MiraiInputFormatter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiInputFormatterCopyWith<$Res> {
  factory $MiraiInputFormatterCopyWith(
          MiraiInputFormatter value, $Res Function(MiraiInputFormatter) then) =
      _$MiraiInputFormatterCopyWithImpl<$Res, MiraiInputFormatter>;
  @useResult
  $Res call({InputFormatterType type, String? rule});
}

/// @nodoc
class _$MiraiInputFormatterCopyWithImpl<$Res, $Val extends MiraiInputFormatter>
    implements $MiraiInputFormatterCopyWith<$Res> {
  _$MiraiInputFormatterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiInputFormatter
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
abstract class _$$MiraiInputFormatterImplCopyWith<$Res>
    implements $MiraiInputFormatterCopyWith<$Res> {
  factory _$$MiraiInputFormatterImplCopyWith(_$MiraiInputFormatterImpl value,
          $Res Function(_$MiraiInputFormatterImpl) then) =
      __$$MiraiInputFormatterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputFormatterType type, String? rule});
}

/// @nodoc
class __$$MiraiInputFormatterImplCopyWithImpl<$Res>
    extends _$MiraiInputFormatterCopyWithImpl<$Res, _$MiraiInputFormatterImpl>
    implements _$$MiraiInputFormatterImplCopyWith<$Res> {
  __$$MiraiInputFormatterImplCopyWithImpl(_$MiraiInputFormatterImpl _value,
      $Res Function(_$MiraiInputFormatterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? rule = freezed,
  }) {
    return _then(_$MiraiInputFormatterImpl(
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
class _$MiraiInputFormatterImpl implements _MiraiInputFormatter {
  const _$MiraiInputFormatterImpl({required this.type, this.rule});

  factory _$MiraiInputFormatterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiInputFormatterImplFromJson(json);

  @override
  final InputFormatterType type;
  @override
  final String? rule;

  @override
  String toString() {
    return 'MiraiInputFormatter(type: $type, rule: $rule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiInputFormatterImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rule, rule) || other.rule == rule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, rule);

  /// Create a copy of MiraiInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiInputFormatterImplCopyWith<_$MiraiInputFormatterImpl> get copyWith =>
      __$$MiraiInputFormatterImplCopyWithImpl<_$MiraiInputFormatterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiInputFormatterImplToJson(
      this,
    );
  }
}

abstract class _MiraiInputFormatter implements MiraiInputFormatter {
  const factory _MiraiInputFormatter(
      {required final InputFormatterType type,
      final String? rule}) = _$MiraiInputFormatterImpl;

  factory _MiraiInputFormatter.fromJson(Map<String, dynamic> json) =
      _$MiraiInputFormatterImpl.fromJson;

  @override
  InputFormatterType get type;
  @override
  String? get rule;

  /// Create a copy of MiraiInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiInputFormatterImplCopyWith<_$MiraiInputFormatterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
