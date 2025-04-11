// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_input_formatter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacInputFormatter {
  InputFormatterType get type;
  String? get rule;

  /// Create a copy of StacInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacInputFormatterCopyWith<StacInputFormatter> get copyWith =>
      _$StacInputFormatterCopyWithImpl<StacInputFormatter>(
          this as StacInputFormatter, _$identity);

  /// Serializes this StacInputFormatter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacInputFormatter &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rule, rule) || other.rule == rule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, rule);

  @override
  String toString() {
    return 'StacInputFormatter(type: $type, rule: $rule)';
  }
}

/// @nodoc
abstract mixin class $StacInputFormatterCopyWith<$Res> {
  factory $StacInputFormatterCopyWith(
          StacInputFormatter value, $Res Function(StacInputFormatter) _then) =
      _$StacInputFormatterCopyWithImpl;
  @useResult
  $Res call({InputFormatterType type, String? rule});
}

/// @nodoc
class _$StacInputFormatterCopyWithImpl<$Res>
    implements $StacInputFormatterCopyWith<$Res> {
  _$StacInputFormatterCopyWithImpl(this._self, this._then);

  final StacInputFormatter _self;
  final $Res Function(StacInputFormatter) _then;

  /// Create a copy of StacInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? rule = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputFormatterType,
      rule: freezed == rule
          ? _self.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacInputFormatter implements StacInputFormatter {
  const _StacInputFormatter({required this.type, this.rule});
  factory _StacInputFormatter.fromJson(Map<String, dynamic> json) =>
      _$StacInputFormatterFromJson(json);

  @override
  final InputFormatterType type;
  @override
  final String? rule;

  /// Create a copy of StacInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacInputFormatterCopyWith<_StacInputFormatter> get copyWith =>
      __$StacInputFormatterCopyWithImpl<_StacInputFormatter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacInputFormatterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacInputFormatter &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rule, rule) || other.rule == rule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, rule);

  @override
  String toString() {
    return 'StacInputFormatter(type: $type, rule: $rule)';
  }
}

/// @nodoc
abstract mixin class _$StacInputFormatterCopyWith<$Res>
    implements $StacInputFormatterCopyWith<$Res> {
  factory _$StacInputFormatterCopyWith(
          _StacInputFormatter value, $Res Function(_StacInputFormatter) _then) =
      __$StacInputFormatterCopyWithImpl;
  @override
  @useResult
  $Res call({InputFormatterType type, String? rule});
}

/// @nodoc
class __$StacInputFormatterCopyWithImpl<$Res>
    implements _$StacInputFormatterCopyWith<$Res> {
  __$StacInputFormatterCopyWithImpl(this._self, this._then);

  final _StacInputFormatter _self;
  final $Res Function(_StacInputFormatter) _then;

  /// Create a copy of StacInputFormatter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? rule = freezed,
  }) {
    return _then(_StacInputFormatter(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputFormatterType,
      rule: freezed == rule
          ? _self.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
