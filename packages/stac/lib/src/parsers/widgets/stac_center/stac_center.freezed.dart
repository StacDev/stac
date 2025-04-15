// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacCenter {
  double? get widthFactor;
  double? get heightFactor;
  Map<String, dynamic>? get child;

  /// Create a copy of StacCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacCenterCopyWith<StacCenter> get copyWith =>
      _$StacCenterCopyWithImpl<StacCenter>(this as StacCenter, _$identity);

  /// Serializes this StacCenter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacCenter &&
            (identical(other.widthFactor, widthFactor) ||
                other.widthFactor == widthFactor) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, widthFactor, heightFactor,
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacCenter(widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacCenterCopyWith<$Res> {
  factory $StacCenterCopyWith(
          StacCenter value, $Res Function(StacCenter) _then) =
      _$StacCenterCopyWithImpl;
  @useResult
  $Res call(
      {double? widthFactor, double? heightFactor, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacCenterCopyWithImpl<$Res> implements $StacCenterCopyWith<$Res> {
  _$StacCenterCopyWithImpl(this._self, this._then);

  final StacCenter _self;
  final $Res Function(StacCenter) _then;

  /// Create a copy of StacCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      widthFactor: freezed == widthFactor
          ? _self.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      heightFactor: freezed == heightFactor
          ? _self.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacCenter implements StacCenter {
  const _StacCenter(
      {this.widthFactor, this.heightFactor, final Map<String, dynamic>? child})
      : _child = child;
  factory _StacCenter.fromJson(Map<String, dynamic> json) =>
      _$StacCenterFromJson(json);

  @override
  final double? widthFactor;
  @override
  final double? heightFactor;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacCenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacCenterCopyWith<_StacCenter> get copyWith =>
      __$StacCenterCopyWithImpl<_StacCenter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacCenterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacCenter &&
            (identical(other.widthFactor, widthFactor) ||
                other.widthFactor == widthFactor) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, widthFactor, heightFactor,
      const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacCenter(widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacCenterCopyWith<$Res>
    implements $StacCenterCopyWith<$Res> {
  factory _$StacCenterCopyWith(
          _StacCenter value, $Res Function(_StacCenter) _then) =
      __$StacCenterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? widthFactor, double? heightFactor, Map<String, dynamic>? child});
}

/// @nodoc
class __$StacCenterCopyWithImpl<$Res> implements _$StacCenterCopyWith<$Res> {
  __$StacCenterCopyWithImpl(this._self, this._then);

  final _StacCenter _self;
  final $Res Function(_StacCenter) _then;

  /// Create a copy of StacCenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_StacCenter(
      widthFactor: freezed == widthFactor
          ? _self.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      heightFactor: freezed == heightFactor
          ? _self.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
