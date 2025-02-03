// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_border_side.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacBorderSide _$StacBorderSideFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _StacBorderSide.fromJson(json);
    case 'none':
      return _StacBorderSideNone.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'StacBorderSide',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$StacBorderSide {
  String? get color => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get strokeAlign => throw _privateConstructorUsedError;
  BorderStyle get borderStyle => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? color, double width, double strokeAlign,
            BorderStyle borderStyle)
        $default, {
    required TResult Function(String color, double width, double strokeAlign,
            BorderStyle borderStyle)
        none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        $default, {
    TResult? Function(String color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        $default, {
    TResult Function(String color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StacBorderSide value) $default, {
    required TResult Function(_StacBorderSideNone value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StacBorderSide value)? $default, {
    TResult? Function(_StacBorderSideNone value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StacBorderSide value)? $default, {
    TResult Function(_StacBorderSideNone value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this StacBorderSide to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacBorderSideCopyWith<StacBorderSide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacBorderSideCopyWith<$Res> {
  factory $StacBorderSideCopyWith(
          StacBorderSide value, $Res Function(StacBorderSide) then) =
      _$StacBorderSideCopyWithImpl<$Res, StacBorderSide>;
  @useResult
  $Res call(
      {String color,
      double width,
      double strokeAlign,
      BorderStyle borderStyle});
}

/// @nodoc
class _$StacBorderSideCopyWithImpl<$Res, $Val extends StacBorderSide>
    implements $StacBorderSideCopyWith<$Res> {
  _$StacBorderSideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? width = null,
    Object? strokeAlign = null,
    Object? borderStyle = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color!
          : color // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$StacBorderSideImplCopyWith<$Res>
    implements $StacBorderSideCopyWith<$Res> {
  factory _$$StacBorderSideImplCopyWith(_$StacBorderSideImpl value,
          $Res Function(_$StacBorderSideImpl) then) =
      __$$StacBorderSideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      double width,
      double strokeAlign,
      BorderStyle borderStyle});
}

/// @nodoc
class __$$StacBorderSideImplCopyWithImpl<$Res>
    extends _$StacBorderSideCopyWithImpl<$Res, _$StacBorderSideImpl>
    implements _$$StacBorderSideImplCopyWith<$Res> {
  __$$StacBorderSideImplCopyWithImpl(
      _$StacBorderSideImpl _value, $Res Function(_$StacBorderSideImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? width = null,
    Object? strokeAlign = null,
    Object? borderStyle = null,
  }) {
    return _then(_$StacBorderSideImpl(
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
class _$StacBorderSideImpl implements _StacBorderSide {
  const _$StacBorderSideImpl(
      {this.color,
      this.width = 0.0,
      this.strokeAlign = 0.0,
      this.borderStyle = BorderStyle.solid,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$StacBorderSideImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacBorderSideImplFromJson(json);

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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StacBorderSide(color: $color, width: $width, strokeAlign: $strokeAlign, borderStyle: $borderStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacBorderSideImpl &&
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

  /// Create a copy of StacBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacBorderSideImplCopyWith<_$StacBorderSideImpl> get copyWith =>
      __$$StacBorderSideImplCopyWithImpl<_$StacBorderSideImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? color, double width, double strokeAlign,
            BorderStyle borderStyle)
        $default, {
    required TResult Function(String color, double width, double strokeAlign,
            BorderStyle borderStyle)
        none,
  }) {
    return $default(color, width, strokeAlign, borderStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        $default, {
    TResult? Function(String color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        none,
  }) {
    return $default?.call(color, width, strokeAlign, borderStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        $default, {
    TResult Function(String color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        none,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(color, width, strokeAlign, borderStyle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StacBorderSide value) $default, {
    required TResult Function(_StacBorderSideNone value) none,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StacBorderSide value)? $default, {
    TResult? Function(_StacBorderSideNone value)? none,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StacBorderSide value)? $default, {
    TResult Function(_StacBorderSideNone value)? none,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StacBorderSideImplToJson(
      this,
    );
  }
}

abstract class _StacBorderSide implements StacBorderSide {
  const factory _StacBorderSide(
      {final String? color,
      final double width,
      final double strokeAlign,
      final BorderStyle borderStyle}) = _$StacBorderSideImpl;

  factory _StacBorderSide.fromJson(Map<String, dynamic> json) =
      _$StacBorderSideImpl.fromJson;

  @override
  String? get color;
  @override
  double get width;
  @override
  double get strokeAlign;
  @override
  BorderStyle get borderStyle;

  /// Create a copy of StacBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacBorderSideImplCopyWith<_$StacBorderSideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StacBorderSideNoneImplCopyWith<$Res>
    implements $StacBorderSideCopyWith<$Res> {
  factory _$$StacBorderSideNoneImplCopyWith(_$StacBorderSideNoneImpl value,
          $Res Function(_$StacBorderSideNoneImpl) then) =
      __$$StacBorderSideNoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String color,
      double width,
      double strokeAlign,
      BorderStyle borderStyle});
}

/// @nodoc
class __$$StacBorderSideNoneImplCopyWithImpl<$Res>
    extends _$StacBorderSideCopyWithImpl<$Res, _$StacBorderSideNoneImpl>
    implements _$$StacBorderSideNoneImplCopyWith<$Res> {
  __$$StacBorderSideNoneImplCopyWithImpl(_$StacBorderSideNoneImpl _value,
      $Res Function(_$StacBorderSideNoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? width = null,
    Object? strokeAlign = null,
    Object? borderStyle = null,
  }) {
    return _then(_$StacBorderSideNoneImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$StacBorderSideNoneImpl implements _StacBorderSideNone {
  const _$StacBorderSideNoneImpl(
      {this.color = "000000",
      this.width = 0.0,
      this.strokeAlign = -1.0,
      this.borderStyle = BorderStyle.none,
      final String? $type})
      : $type = $type ?? 'none';

  factory _$StacBorderSideNoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacBorderSideNoneImplFromJson(json);

  @override
  @JsonKey()
  final String color;
  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double strokeAlign;
  @override
  @JsonKey()
  final BorderStyle borderStyle;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StacBorderSide.none(color: $color, width: $width, strokeAlign: $strokeAlign, borderStyle: $borderStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacBorderSideNoneImpl &&
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

  /// Create a copy of StacBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacBorderSideNoneImplCopyWith<_$StacBorderSideNoneImpl> get copyWith =>
      __$$StacBorderSideNoneImplCopyWithImpl<_$StacBorderSideNoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? color, double width, double strokeAlign,
            BorderStyle borderStyle)
        $default, {
    required TResult Function(String color, double width, double strokeAlign,
            BorderStyle borderStyle)
        none,
  }) {
    return none(color, width, strokeAlign, borderStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        $default, {
    TResult? Function(String color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        none,
  }) {
    return none?.call(color, width, strokeAlign, borderStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        $default, {
    TResult Function(String color, double width, double strokeAlign,
            BorderStyle borderStyle)?
        none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(color, width, strokeAlign, borderStyle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StacBorderSide value) $default, {
    required TResult Function(_StacBorderSideNone value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StacBorderSide value)? $default, {
    TResult? Function(_StacBorderSideNone value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StacBorderSide value)? $default, {
    TResult Function(_StacBorderSideNone value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StacBorderSideNoneImplToJson(
      this,
    );
  }
}

abstract class _StacBorderSideNone implements StacBorderSide {
  const factory _StacBorderSideNone(
      {final String color,
      final double width,
      final double strokeAlign,
      final BorderStyle borderStyle}) = _$StacBorderSideNoneImpl;

  factory _StacBorderSideNone.fromJson(Map<String, dynamic> json) =
      _$StacBorderSideNoneImpl.fromJson;

  @override
  String get color;
  @override
  double get width;
  @override
  double get strokeAlign;
  @override
  BorderStyle get borderStyle;

  /// Create a copy of StacBorderSide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacBorderSideNoneImplCopyWith<_$StacBorderSideNoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
