// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_padding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacPadding {
  StacEdgeInsets get padding;
  Map<String, dynamic>? get child;

  /// Create a copy of StacPadding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacPaddingCopyWith<StacPadding> get copyWith =>
      _$StacPaddingCopyWithImpl<StacPadding>(this as StacPadding, _$identity);

  /// Serializes this StacPadding to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacPadding &&
            (identical(other.padding, padding) || other.padding == padding) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, padding, const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacPadding(padding: $padding, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacPaddingCopyWith<$Res> {
  factory $StacPaddingCopyWith(
          StacPadding value, $Res Function(StacPadding) _then) =
      _$StacPaddingCopyWithImpl;
  @useResult
  $Res call({StacEdgeInsets padding, Map<String, dynamic>? child});

  $StacEdgeInsetsCopyWith<$Res> get padding;
}

/// @nodoc
class _$StacPaddingCopyWithImpl<$Res> implements $StacPaddingCopyWith<$Res> {
  _$StacPaddingCopyWithImpl(this._self, this._then);

  final StacPadding _self;
  final $Res Function(StacPadding) _then;

  /// Create a copy of StacPadding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? padding = null,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      padding: null == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacPadding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res> get padding {
    return $StacEdgeInsetsCopyWith<$Res>(_self.padding, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacPadding implements StacPadding {
  const _StacPadding({required this.padding, final Map<String, dynamic>? child})
      : _child = child;
  factory _StacPadding.fromJson(Map<String, dynamic> json) =>
      _$StacPaddingFromJson(json);

  @override
  final StacEdgeInsets padding;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacPadding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacPaddingCopyWith<_StacPadding> get copyWith =>
      __$StacPaddingCopyWithImpl<_StacPadding>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacPaddingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacPadding &&
            (identical(other.padding, padding) || other.padding == padding) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, padding, const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacPadding(padding: $padding, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacPaddingCopyWith<$Res>
    implements $StacPaddingCopyWith<$Res> {
  factory _$StacPaddingCopyWith(
          _StacPadding value, $Res Function(_StacPadding) _then) =
      __$StacPaddingCopyWithImpl;
  @override
  @useResult
  $Res call({StacEdgeInsets padding, Map<String, dynamic>? child});

  @override
  $StacEdgeInsetsCopyWith<$Res> get padding;
}

/// @nodoc
class __$StacPaddingCopyWithImpl<$Res> implements _$StacPaddingCopyWith<$Res> {
  __$StacPaddingCopyWithImpl(this._self, this._then);

  final _StacPadding _self;
  final $Res Function(_StacPadding) _then;

  /// Create a copy of StacPadding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? padding = null,
    Object? child = freezed,
  }) {
    return _then(_StacPadding(
      padding: null == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacPadding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res> get padding {
    return $StacEdgeInsetsCopyWith<$Res>(_self.padding, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }
}

// dart format on
