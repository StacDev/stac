// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_box_shadow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacBoxShadow _$StacBoxShadowFromJson(Map<String, dynamic> json) {
  return _StacBoxShadow.fromJson(json);
}

/// @nodoc
mixin _$StacBoxShadow {
  String? get color => throw _privateConstructorUsedError;
  double? get blurRadius => throw _privateConstructorUsedError;
  StacOffset get offset => throw _privateConstructorUsedError;
  double? get spreadRadius => throw _privateConstructorUsedError;
  BlurStyle? get blurStyle => throw _privateConstructorUsedError;

  /// Serializes this StacBoxShadow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacBoxShadowCopyWith<StacBoxShadow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacBoxShadowCopyWith<$Res> {
  factory $StacBoxShadowCopyWith(
          StacBoxShadow value, $Res Function(StacBoxShadow) then) =
      _$StacBoxShadowCopyWithImpl<$Res, StacBoxShadow>;
  @useResult
  $Res call(
      {String? color,
      double? blurRadius,
      StacOffset offset,
      double? spreadRadius,
      BlurStyle? blurStyle});

  $StacOffsetCopyWith<$Res> get offset;
}

/// @nodoc
class _$StacBoxShadowCopyWithImpl<$Res, $Val extends StacBoxShadow>
    implements $StacBoxShadowCopyWith<$Res> {
  _$StacBoxShadowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? blurRadius = freezed,
    Object? offset = null,
    Object? spreadRadius = freezed,
    Object? blurStyle = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurRadius: freezed == blurRadius
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as StacOffset,
      spreadRadius: freezed == spreadRadius
          ? _value.spreadRadius
          : spreadRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      blurStyle: freezed == blurStyle
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle?,
    ) as $Val);
  }

  /// Create a copy of StacBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res> get offset {
    return $StacOffsetCopyWith<$Res>(_value.offset, (value) {
      return _then(_value.copyWith(offset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacBoxShadowImplCopyWith<$Res>
    implements $StacBoxShadowCopyWith<$Res> {
  factory _$$StacBoxShadowImplCopyWith(
          _$StacBoxShadowImpl value, $Res Function(_$StacBoxShadowImpl) then) =
      __$$StacBoxShadowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      double? blurRadius,
      StacOffset offset,
      double? spreadRadius,
      BlurStyle? blurStyle});

  @override
  $StacOffsetCopyWith<$Res> get offset;
}

/// @nodoc
class __$$StacBoxShadowImplCopyWithImpl<$Res>
    extends _$StacBoxShadowCopyWithImpl<$Res, _$StacBoxShadowImpl>
    implements _$$StacBoxShadowImplCopyWith<$Res> {
  __$$StacBoxShadowImplCopyWithImpl(
      _$StacBoxShadowImpl _value, $Res Function(_$StacBoxShadowImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? blurRadius = freezed,
    Object? offset = null,
    Object? spreadRadius = freezed,
    Object? blurStyle = freezed,
  }) {
    return _then(_$StacBoxShadowImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurRadius: freezed == blurRadius
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as StacOffset,
      spreadRadius: freezed == spreadRadius
          ? _value.spreadRadius
          : spreadRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      blurStyle: freezed == blurStyle
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacBoxShadowImpl implements _StacBoxShadow {
  const _$StacBoxShadowImpl(
      {this.color,
      this.blurRadius = 0.0,
      this.offset = const StacOffset(dx: 0, dy: 0),
      this.spreadRadius = 0.0,
      this.blurStyle = BlurStyle.normal});

  factory _$StacBoxShadowImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacBoxShadowImplFromJson(json);

  @override
  final String? color;
  @override
  @JsonKey()
  final double? blurRadius;
  @override
  @JsonKey()
  final StacOffset offset;
  @override
  @JsonKey()
  final double? spreadRadius;
  @override
  @JsonKey()
  final BlurStyle? blurStyle;

  @override
  String toString() {
    return 'StacBoxShadow(color: $color, blurRadius: $blurRadius, offset: $offset, spreadRadius: $spreadRadius, blurStyle: $blurStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacBoxShadowImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.blurRadius, blurRadius) ||
                other.blurRadius == blurRadius) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.spreadRadius, spreadRadius) ||
                other.spreadRadius == spreadRadius) &&
            (identical(other.blurStyle, blurStyle) ||
                other.blurStyle == blurStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, color, blurRadius, offset, spreadRadius, blurStyle);

  /// Create a copy of StacBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacBoxShadowImplCopyWith<_$StacBoxShadowImpl> get copyWith =>
      __$$StacBoxShadowImplCopyWithImpl<_$StacBoxShadowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacBoxShadowImplToJson(
      this,
    );
  }
}

abstract class _StacBoxShadow implements StacBoxShadow {
  const factory _StacBoxShadow(
      {final String? color,
      final double? blurRadius,
      final StacOffset offset,
      final double? spreadRadius,
      final BlurStyle? blurStyle}) = _$StacBoxShadowImpl;

  factory _StacBoxShadow.fromJson(Map<String, dynamic> json) =
      _$StacBoxShadowImpl.fromJson;

  @override
  String? get color;
  @override
  double? get blurRadius;
  @override
  StacOffset get offset;
  @override
  double? get spreadRadius;
  @override
  BlurStyle? get blurStyle;

  /// Create a copy of StacBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacBoxShadowImplCopyWith<_$StacBoxShadowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
