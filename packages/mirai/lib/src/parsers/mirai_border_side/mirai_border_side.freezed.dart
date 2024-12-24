// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_border_side.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiBorderSide _$MiraiBorderSideFromJson(Map<String, dynamic> json) {
  return _MiraiBorderSide.fromJson(json);
}

/// @nodoc
mixin _$MiraiBorderSide {
  String? get color => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get strokeAlign => throw _privateConstructorUsedError;
  BorderStyle get borderStyle => throw _privateConstructorUsedError;

  /// Serializes this MiraiBorderSide to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiBorderSideCopyWith<MiraiBorderSide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiBorderSideCopyWith<$Res> {
  factory $MiraiBorderSideCopyWith(
          MiraiBorderSide value, $Res Function(MiraiBorderSide) then) =
      _$MiraiBorderSideCopyWithImpl<$Res, MiraiBorderSide>;
  @useResult
  $Res call(
      {String? color,
      double width,
      double strokeAlign,
      BorderStyle borderStyle});
}

/// @nodoc
class _$MiraiBorderSideCopyWithImpl<$Res, $Val extends MiraiBorderSide>
    implements $MiraiBorderSideCopyWith<$Res> {
  _$MiraiBorderSideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? width = null,
    Object? strokeAlign = null,
    Object? borderStyle = null,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      strokeAlign: null == strokeAlign
          ? _value.strokeAlign
          : strokeAlign // ignore: cast_nullable_to_non_nullable
              as double,
      borderStyle: null == borderStyle
          ? _value.borderStyle
          : borderStyle // ignore: cast_nullable_to_non_nullable
              as BorderStyle,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiBorderSideImplCopyWith<$Res>
    implements $MiraiBorderSideCopyWith<$Res> {
  factory _$$MiraiBorderSideImplCopyWith(_$MiraiBorderSideImpl value,
          $Res Function(_$MiraiBorderSideImpl) then) =
      __$$MiraiBorderSideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      double width,
      double strokeAlign,
      BorderStyle borderStyle});
}

/// @nodoc
class __$$MiraiBorderSideImplCopyWithImpl<$Res>
    extends _$MiraiBorderSideCopyWithImpl<$Res, _$MiraiBorderSideImpl>
    implements _$$MiraiBorderSideImplCopyWith<$Res> {
  __$$MiraiBorderSideImplCopyWithImpl(
      _$MiraiBorderSideImpl _value, $Res Function(_$MiraiBorderSideImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? width = null,
    Object? strokeAlign = null,
    Object? borderStyle = null,
  }) {
    return _then(_$MiraiBorderSideImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      strokeAlign: null == strokeAlign
          ? _value.strokeAlign
          : strokeAlign // ignore: cast_nullable_to_non_nullable
              as double,
      borderStyle: null == borderStyle
          ? _value.borderStyle
          : borderStyle // ignore: cast_nullable_to_non_nullable
              as BorderStyle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiBorderSideImpl implements _MiraiBorderSide {
  const _$MiraiBorderSideImpl(
      {this.color,
      this.width = 0.0,
      this.strokeAlign = 0.0,
      this.borderStyle = BorderStyle.solid});

  factory _$MiraiBorderSideImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiBorderSideImplFromJson(json);

  @override
  final String? color;
  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double strokeAlign;
  @override
  @JsonKey()
  final BorderStyle borderStyle;

  @override
  String toString() {
    return 'MiraiBorderSide(color: $color, width: $width, strokeAlign: $strokeAlign, borderStyle: $borderStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiBorderSideImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.strokeAlign, strokeAlign) ||
                other.strokeAlign == strokeAlign) &&
            (identical(other.borderStyle, borderStyle) ||
                other.borderStyle == borderStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, color, width, strokeAlign, borderStyle);

  /// Create a copy of MiraiBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiBorderSideImplCopyWith<_$MiraiBorderSideImpl> get copyWith =>
      __$$MiraiBorderSideImplCopyWithImpl<_$MiraiBorderSideImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiBorderSideImplToJson(
      this,
    );
  }
}

abstract class _MiraiBorderSide implements MiraiBorderSide {
  const factory _MiraiBorderSide(
      {final String? color,
      final double width,
      final double strokeAlign,
      final BorderStyle borderStyle}) = _$MiraiBorderSideImpl;

  factory _MiraiBorderSide.fromJson(Map<String, dynamic> json) =
      _$MiraiBorderSideImpl.fromJson;

  @override
  String? get color;
  @override
  double get width;
  @override
  double get strokeAlign;
  @override
  BorderStyle get borderStyle;

  /// Create a copy of MiraiBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiBorderSideImplCopyWith<_$MiraiBorderSideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
