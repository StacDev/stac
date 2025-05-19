// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_shadow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacShadow {
  String get color;
  StacOffset get offset;
  StacDouble get blurRadius;

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacShadowCopyWith<StacShadow> get copyWith =>
      _$StacShadowCopyWithImpl<StacShadow>(this as StacShadow, _$identity);

  /// Serializes this StacShadow to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacShadow &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.blurRadius, blurRadius) ||
                other.blurRadius == blurRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color, offset, blurRadius);

  @override
  String toString() {
    return 'StacShadow(color: $color, offset: $offset, blurRadius: $blurRadius)';
  }
}

/// @nodoc
abstract mixin class $StacShadowCopyWith<$Res> {
  factory $StacShadowCopyWith(
          StacShadow value, $Res Function(StacShadow) _then) =
      _$StacShadowCopyWithImpl;
  @useResult
  $Res call({String color, StacOffset offset, StacDouble blurRadius});

  $StacOffsetCopyWith<$Res> get offset;
}

/// @nodoc
class _$StacShadowCopyWithImpl<$Res> implements $StacShadowCopyWith<$Res> {
  _$StacShadowCopyWithImpl(this._self, this._then);

  final StacShadow _self;
  final $Res Function(StacShadow) _then;

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? offset = null,
    Object? blurRadius = null,
  }) {
    return _then(_self.copyWith(
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as StacOffset,
      blurRadius: null == blurRadius
          ? _self.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res> get offset {
    return $StacOffsetCopyWith<$Res>(_self.offset, (value) {
      return _then(_self.copyWith(offset: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacShadow implements StacShadow {
  const _StacShadow(
      {this.color = '#000000',
      this.offset = const StacOffset(dx: StacDouble.zero, dy: StacDouble.zero),
      this.blurRadius = StacDouble.zero});
  factory _StacShadow.fromJson(Map<String, dynamic> json) =>
      _$StacShadowFromJson(json);

  @override
  @JsonKey()
  final String color;
  @override
  @JsonKey()
  final StacOffset offset;
  @override
  @JsonKey()
  final StacDouble blurRadius;

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacShadowCopyWith<_StacShadow> get copyWith =>
      __$StacShadowCopyWithImpl<_StacShadow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacShadowToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacShadow &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.blurRadius, blurRadius) ||
                other.blurRadius == blurRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color, offset, blurRadius);

  @override
  String toString() {
    return 'StacShadow(color: $color, offset: $offset, blurRadius: $blurRadius)';
  }
}

/// @nodoc
abstract mixin class _$StacShadowCopyWith<$Res>
    implements $StacShadowCopyWith<$Res> {
  factory _$StacShadowCopyWith(
          _StacShadow value, $Res Function(_StacShadow) _then) =
      __$StacShadowCopyWithImpl;
  @override
  @useResult
  $Res call({String color, StacOffset offset, StacDouble blurRadius});

  @override
  $StacOffsetCopyWith<$Res> get offset;
}

/// @nodoc
class __$StacShadowCopyWithImpl<$Res> implements _$StacShadowCopyWith<$Res> {
  __$StacShadowCopyWithImpl(this._self, this._then);

  final _StacShadow _self;
  final $Res Function(_StacShadow) _then;

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? color = null,
    Object? offset = null,
    Object? blurRadius = null,
  }) {
    return _then(_StacShadow(
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as StacOffset,
      blurRadius: null == blurRadius
          ? _self.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res> get offset {
    return $StacOffsetCopyWith<$Res>(_self.offset, (value) {
      return _then(_self.copyWith(offset: value));
    });
  }
}

// dart format on
