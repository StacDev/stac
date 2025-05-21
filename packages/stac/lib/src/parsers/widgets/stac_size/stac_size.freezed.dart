// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSize {
  StacDouble get width;
  StacDouble get height;

  /// Create a copy of StacSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<StacSize> get copyWith =>
      _$StacSizeCopyWithImpl<StacSize>(this as StacSize, _$identity);

  /// Serializes this StacSize to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSize &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @override
  String toString() {
    return 'StacSize(width: $width, height: $height)';
  }
}

/// @nodoc
abstract mixin class $StacSizeCopyWith<$Res> {
  factory $StacSizeCopyWith(StacSize value, $Res Function(StacSize) _then) =
      _$StacSizeCopyWithImpl;
  @useResult
  $Res call({StacDouble width, StacDouble height});
}

/// @nodoc
class _$StacSizeCopyWithImpl<$Res> implements $StacSizeCopyWith<$Res> {
  _$StacSizeCopyWithImpl(this._self, this._then);

  final StacSize _self;
  final $Res Function(StacSize) _then;

  /// Create a copy of StacSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_self.copyWith(
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacSize implements StacSize {
  const _StacSize({required this.width, required this.height});
  factory _StacSize.fromJson(Map<String, dynamic> json) =>
      _$StacSizeFromJson(json);

  @override
  final StacDouble width;
  @override
  final StacDouble height;

  /// Create a copy of StacSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSizeCopyWith<_StacSize> get copyWith =>
      __$StacSizeCopyWithImpl<_StacSize>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSizeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSize &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @override
  String toString() {
    return 'StacSize(width: $width, height: $height)';
  }
}

/// @nodoc
abstract mixin class _$StacSizeCopyWith<$Res>
    implements $StacSizeCopyWith<$Res> {
  factory _$StacSizeCopyWith(_StacSize value, $Res Function(_StacSize) _then) =
      __$StacSizeCopyWithImpl;
  @override
  @useResult
  $Res call({StacDouble width, StacDouble height});
}

/// @nodoc
class __$StacSizeCopyWithImpl<$Res> implements _$StacSizeCopyWith<$Res> {
  __$StacSizeCopyWithImpl(this._self, this._then);

  final _StacSize _self;
  final $Res Function(_StacSize) _then;

  /// Create a copy of StacSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_StacSize(
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }
}

// dart format on
