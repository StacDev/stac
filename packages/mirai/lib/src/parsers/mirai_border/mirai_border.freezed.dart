// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiBorder _$MiraiBorderFromJson(Map<String, dynamic> json) {
  return _MiraiBorder.fromJson(json);
}

/// @nodoc
mixin _$MiraiBorder {
  String? get color => throw _privateConstructorUsedError;
  BorderStyle get borderStyle => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get strokeAlign => throw _privateConstructorUsedError;

  /// Serializes this MiraiBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiBorderCopyWith<MiraiBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiBorderCopyWith<$Res> {
  factory $MiraiBorderCopyWith(
          MiraiBorder value, $Res Function(MiraiBorder) then) =
      _$MiraiBorderCopyWithImpl<$Res, MiraiBorder>;
  @useResult
  $Res call(
      {String? color,
      BorderStyle borderStyle,
      double width,
      double strokeAlign});
}

/// @nodoc
class _$MiraiBorderCopyWithImpl<$Res, $Val extends MiraiBorder>
    implements $MiraiBorderCopyWith<$Res> {
  _$MiraiBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? borderStyle = null,
    Object? width = null,
    Object? strokeAlign = null,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      borderStyle: null == borderStyle
          ? _value.borderStyle
          : borderStyle // ignore: cast_nullable_to_non_nullable
              as BorderStyle,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      strokeAlign: null == strokeAlign
          ? _value.strokeAlign
          : strokeAlign // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiBorderImplCopyWith<$Res>
    implements $MiraiBorderCopyWith<$Res> {
  factory _$$MiraiBorderImplCopyWith(
          _$MiraiBorderImpl value, $Res Function(_$MiraiBorderImpl) then) =
      __$$MiraiBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      BorderStyle borderStyle,
      double width,
      double strokeAlign});
}

/// @nodoc
class __$$MiraiBorderImplCopyWithImpl<$Res>
    extends _$MiraiBorderCopyWithImpl<$Res, _$MiraiBorderImpl>
    implements _$$MiraiBorderImplCopyWith<$Res> {
  __$$MiraiBorderImplCopyWithImpl(
      _$MiraiBorderImpl _value, $Res Function(_$MiraiBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? borderStyle = null,
    Object? width = null,
    Object? strokeAlign = null,
  }) {
    return _then(_$MiraiBorderImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      borderStyle: null == borderStyle
          ? _value.borderStyle
          : borderStyle // ignore: cast_nullable_to_non_nullable
              as BorderStyle,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      strokeAlign: null == strokeAlign
          ? _value.strokeAlign
          : strokeAlign // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiBorderImpl implements _MiraiBorder {
  const _$MiraiBorderImpl(
      {this.color,
      this.borderStyle = BorderStyle.solid,
      this.width = 1.0,
      this.strokeAlign = BorderSide.strokeAlignInside});

  factory _$MiraiBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiBorderImplFromJson(json);

  @override
  final String? color;
  @override
  @JsonKey()
  final BorderStyle borderStyle;
  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double strokeAlign;

  @override
  String toString() {
    return 'MiraiBorder(color: $color, borderStyle: $borderStyle, width: $width, strokeAlign: $strokeAlign)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiBorderImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.borderStyle, borderStyle) ||
                other.borderStyle == borderStyle) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.strokeAlign, strokeAlign) ||
                other.strokeAlign == strokeAlign));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, color, borderStyle, width, strokeAlign);

  /// Create a copy of MiraiBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiBorderImplCopyWith<_$MiraiBorderImpl> get copyWith =>
      __$$MiraiBorderImplCopyWithImpl<_$MiraiBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiBorderImplToJson(
      this,
    );
  }
}

abstract class _MiraiBorder implements MiraiBorder {
  const factory _MiraiBorder(
      {final String? color,
      final BorderStyle borderStyle,
      final double width,
      final double strokeAlign}) = _$MiraiBorderImpl;

  factory _MiraiBorder.fromJson(Map<String, dynamic> json) =
      _$MiraiBorderImpl.fromJson;

  @override
  String? get color;
  @override
  BorderStyle get borderStyle;
  @override
  double get width;
  @override
  double get strokeAlign;

  /// Create a copy of MiraiBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiBorderImplCopyWith<_$MiraiBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
