// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_box_constraints.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBoxConstraints {
  double get minWidth;
  double get maxWidth;
  double get minHeight;
  double get maxHeight;

  /// Create a copy of StacBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<StacBoxConstraints> get copyWith =>
      _$StacBoxConstraintsCopyWithImpl<StacBoxConstraints>(
          this as StacBoxConstraints, _$identity);

  /// Serializes this StacBoxConstraints to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBoxConstraints &&
            (identical(other.minWidth, minWidth) ||
                other.minWidth == minWidth) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minWidth, maxWidth, minHeight, maxHeight);

  @override
  String toString() {
    return 'StacBoxConstraints(minWidth: $minWidth, maxWidth: $maxWidth, minHeight: $minHeight, maxHeight: $maxHeight)';
  }
}

/// @nodoc
abstract mixin class $StacBoxConstraintsCopyWith<$Res> {
  factory $StacBoxConstraintsCopyWith(
          StacBoxConstraints value, $Res Function(StacBoxConstraints) _then) =
      _$StacBoxConstraintsCopyWithImpl;
  @useResult
  $Res call(
      {double minWidth, double maxWidth, double minHeight, double maxHeight});
}

/// @nodoc
class _$StacBoxConstraintsCopyWithImpl<$Res>
    implements $StacBoxConstraintsCopyWith<$Res> {
  _$StacBoxConstraintsCopyWithImpl(this._self, this._then);

  final StacBoxConstraints _self;
  final $Res Function(StacBoxConstraints) _then;

  /// Create a copy of StacBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWidth = null,
    Object? maxWidth = null,
    Object? minHeight = null,
    Object? maxHeight = null,
  }) {
    return _then(_self.copyWith(
      minWidth: null == minWidth
          ? _self.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: null == maxWidth
          ? _self.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
      minHeight: null == minHeight
          ? _self.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxHeight: null == maxHeight
          ? _self.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacBoxConstraints implements StacBoxConstraints {
  const _StacBoxConstraints(
      {required this.minWidth,
      required this.maxWidth,
      required this.minHeight,
      required this.maxHeight});
  factory _StacBoxConstraints.fromJson(Map<String, dynamic> json) =>
      _$StacBoxConstraintsFromJson(json);

  @override
  final double minWidth;
  @override
  final double maxWidth;
  @override
  final double minHeight;
  @override
  final double maxHeight;

  /// Create a copy of StacBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBoxConstraintsCopyWith<_StacBoxConstraints> get copyWith =>
      __$StacBoxConstraintsCopyWithImpl<_StacBoxConstraints>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBoxConstraintsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBoxConstraints &&
            (identical(other.minWidth, minWidth) ||
                other.minWidth == minWidth) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minWidth, maxWidth, minHeight, maxHeight);

  @override
  String toString() {
    return 'StacBoxConstraints(minWidth: $minWidth, maxWidth: $maxWidth, minHeight: $minHeight, maxHeight: $maxHeight)';
  }
}

/// @nodoc
abstract mixin class _$StacBoxConstraintsCopyWith<$Res>
    implements $StacBoxConstraintsCopyWith<$Res> {
  factory _$StacBoxConstraintsCopyWith(
          _StacBoxConstraints value, $Res Function(_StacBoxConstraints) _then) =
      __$StacBoxConstraintsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double minWidth, double maxWidth, double minHeight, double maxHeight});
}

/// @nodoc
class __$StacBoxConstraintsCopyWithImpl<$Res>
    implements _$StacBoxConstraintsCopyWith<$Res> {
  __$StacBoxConstraintsCopyWithImpl(this._self, this._then);

  final _StacBoxConstraints _self;
  final $Res Function(_StacBoxConstraints) _then;

  /// Create a copy of StacBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? minWidth = null,
    Object? maxWidth = null,
    Object? minHeight = null,
    Object? maxHeight = null,
  }) {
    return _then(_StacBoxConstraints(
      minWidth: null == minWidth
          ? _self.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: null == maxWidth
          ? _self.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
      minHeight: null == minHeight
          ? _self.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxHeight: null == maxHeight
          ? _self.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
