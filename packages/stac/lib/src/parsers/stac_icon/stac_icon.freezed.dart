// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_icon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacIcon _$StacIconFromJson(Map<String, dynamic> json) {
  return _StacIcon.fromJson(json);
}

/// @nodoc
mixin _$StacIcon {
  String get icon => throw _privateConstructorUsedError;
  IconType get iconType => throw _privateConstructorUsedError;
  double? get size => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get semanticLabel => throw _privateConstructorUsedError;
  TextDirection? get textDirection => throw _privateConstructorUsedError;

  /// Serializes this StacIcon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacIconCopyWith<StacIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacIconCopyWith<$Res> {
  factory $StacIconCopyWith(StacIcon value, $Res Function(StacIcon) then) =
      _$StacIconCopyWithImpl<$Res, StacIcon>;
  @useResult
  $Res call(
      {String icon,
      IconType iconType,
      double? size,
      String? color,
      String? semanticLabel,
      TextDirection? textDirection});
}

/// @nodoc
class _$StacIconCopyWithImpl<$Res, $Val extends StacIcon>
    implements $StacIconCopyWith<$Res> {
  _$StacIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? iconType = null,
    Object? size = freezed,
    Object? color = freezed,
    Object? semanticLabel = freezed,
    Object? textDirection = freezed,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      iconType: null == iconType
          ? _value.iconType
          : iconType // ignore: cast_nullable_to_non_nullable
              as IconType,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticLabel: freezed == semanticLabel
          ? _value.semanticLabel
          : semanticLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacIconImplCopyWith<$Res>
    implements $StacIconCopyWith<$Res> {
  factory _$$StacIconImplCopyWith(
          _$StacIconImpl value, $Res Function(_$StacIconImpl) then) =
      __$$StacIconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String icon,
      IconType iconType,
      double? size,
      String? color,
      String? semanticLabel,
      TextDirection? textDirection});
}

/// @nodoc
class __$$StacIconImplCopyWithImpl<$Res>
    extends _$StacIconCopyWithImpl<$Res, _$StacIconImpl>
    implements _$$StacIconImplCopyWith<$Res> {
  __$$StacIconImplCopyWithImpl(
      _$StacIconImpl _value, $Res Function(_$StacIconImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? iconType = null,
    Object? size = freezed,
    Object? color = freezed,
    Object? semanticLabel = freezed,
    Object? textDirection = freezed,
  }) {
    return _then(_$StacIconImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      iconType: null == iconType
          ? _value.iconType
          : iconType // ignore: cast_nullable_to_non_nullable
              as IconType,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticLabel: freezed == semanticLabel
          ? _value.semanticLabel
          : semanticLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacIconImpl implements _StacIcon {
  const _$StacIconImpl(
      {required this.icon,
      this.iconType = IconType.material,
      this.size,
      this.color,
      this.semanticLabel,
      this.textDirection});

  factory _$StacIconImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacIconImplFromJson(json);

  @override
  final String icon;
  @override
  @JsonKey()
  final IconType iconType;
  @override
  final double? size;
  @override
  final String? color;
  @override
  final String? semanticLabel;
  @override
  final TextDirection? textDirection;

  @override
  String toString() {
    return 'StacIcon(icon: $icon, iconType: $iconType, size: $size, color: $color, semanticLabel: $semanticLabel, textDirection: $textDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacIconImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconType, iconType) ||
                other.iconType == iconType) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, icon, iconType, size, color, semanticLabel, textDirection);

  /// Create a copy of StacIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacIconImplCopyWith<_$StacIconImpl> get copyWith =>
      __$$StacIconImplCopyWithImpl<_$StacIconImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacIconImplToJson(
      this,
    );
  }
}

abstract class _StacIcon implements StacIcon {
  const factory _StacIcon(
      {required final String icon,
      final IconType iconType,
      final double? size,
      final String? color,
      final String? semanticLabel,
      final TextDirection? textDirection}) = _$StacIconImpl;

  factory _StacIcon.fromJson(Map<String, dynamic> json) =
      _$StacIconImpl.fromJson;

  @override
  String get icon;
  @override
  IconType get iconType;
  @override
  double? get size;
  @override
  String? get color;
  @override
  String? get semanticLabel;
  @override
  TextDirection? get textDirection;

  /// Create a copy of StacIcon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacIconImplCopyWith<_$StacIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
