// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_shape_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacShapeBorder {
  StacShapeBorderType get borderType;
  Map<String, dynamic> get data;

  /// Create a copy of StacShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<StacShapeBorder> get copyWith =>
      _$StacShapeBorderCopyWithImpl<StacShapeBorder>(
          this as StacShapeBorder, _$identity);

  /// Serializes this StacShapeBorder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacShapeBorder &&
            (identical(other.borderType, borderType) ||
                other.borderType == borderType) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, borderType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'StacShapeBorder(borderType: $borderType, data: $data)';
  }
}

/// @nodoc
abstract mixin class $StacShapeBorderCopyWith<$Res> {
  factory $StacShapeBorderCopyWith(
          StacShapeBorder value, $Res Function(StacShapeBorder) _then) =
      _$StacShapeBorderCopyWithImpl;
  @useResult
  $Res call({StacShapeBorderType borderType, Map<String, dynamic> data});
}

/// @nodoc
class _$StacShapeBorderCopyWithImpl<$Res>
    implements $StacShapeBorderCopyWith<$Res> {
  _$StacShapeBorderCopyWithImpl(this._self, this._then);

  final StacShapeBorder _self;
  final $Res Function(StacShapeBorder) _then;

  /// Create a copy of StacShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borderType = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      borderType: null == borderType
          ? _self.borderType
          : borderType // ignore: cast_nullable_to_non_nullable
              as StacShapeBorderType,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacShapeBorder implements StacShapeBorder {
  const _StacShapeBorder(
      {required this.borderType, required final Map<String, dynamic> data})
      : _data = data;
  factory _StacShapeBorder.fromJson(Map<String, dynamic> json) =>
      _$StacShapeBorderFromJson(json);

  @override
  final StacShapeBorderType borderType;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// Create a copy of StacShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacShapeBorderCopyWith<_StacShapeBorder> get copyWith =>
      __$StacShapeBorderCopyWithImpl<_StacShapeBorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacShapeBorderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacShapeBorder &&
            (identical(other.borderType, borderType) ||
                other.borderType == borderType) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, borderType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'StacShapeBorder(borderType: $borderType, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$StacShapeBorderCopyWith<$Res>
    implements $StacShapeBorderCopyWith<$Res> {
  factory _$StacShapeBorderCopyWith(
          _StacShapeBorder value, $Res Function(_StacShapeBorder) _then) =
      __$StacShapeBorderCopyWithImpl;
  @override
  @useResult
  $Res call({StacShapeBorderType borderType, Map<String, dynamic> data});
}

/// @nodoc
class __$StacShapeBorderCopyWithImpl<$Res>
    implements _$StacShapeBorderCopyWith<$Res> {
  __$StacShapeBorderCopyWithImpl(this._self, this._then);

  final _StacShapeBorder _self;
  final $Res Function(_StacShapeBorder) _then;

  /// Create a copy of StacShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? borderType = null,
    Object? data = null,
  }) {
    return _then(_StacShapeBorder(
      borderType: null == borderType
          ? _self.borderType
          : borderType // ignore: cast_nullable_to_non_nullable
              as StacShapeBorderType,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
