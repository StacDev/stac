// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_fractionally_sized_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacFractionallySizedBox {
  StacAlignment? get alignment;
  StacDouble? get widthFactor;
  StacDouble? get heightFactor;
  Map<String, dynamic>? get child;

  /// Create a copy of StacFractionallySizedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacFractionallySizedBoxCopyWith<StacFractionallySizedBox> get copyWith =>
      _$StacFractionallySizedBoxCopyWithImpl<StacFractionallySizedBox>(
          this as StacFractionallySizedBox, _$identity);

  /// Serializes this StacFractionallySizedBox to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacFractionallySizedBox &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.widthFactor, widthFactor) ||
                other.widthFactor == widthFactor) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, alignment, widthFactor,
      heightFactor, const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacFractionallySizedBox(alignment: $alignment, widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacFractionallySizedBoxCopyWith<$Res> {
  factory $StacFractionallySizedBoxCopyWith(StacFractionallySizedBox value,
          $Res Function(StacFractionallySizedBox) _then) =
      _$StacFractionallySizedBoxCopyWithImpl;
  @useResult
  $Res call(
      {StacAlignment? alignment,
      StacDouble? widthFactor,
      StacDouble? heightFactor,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$StacFractionallySizedBoxCopyWithImpl<$Res>
    implements $StacFractionallySizedBoxCopyWith<$Res> {
  _$StacFractionallySizedBoxCopyWithImpl(this._self, this._then);

  final StacFractionallySizedBox _self;
  final $Res Function(StacFractionallySizedBox) _then;

  /// Create a copy of StacFractionallySizedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignment = freezed,
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment?,
      widthFactor: freezed == widthFactor
          ? _self.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      heightFactor: freezed == heightFactor
          ? _self.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacFractionallySizedBox implements StacFractionallySizedBox {
  const _StacFractionallySizedBox(
      {this.alignment,
      this.widthFactor,
      this.heightFactor,
      final Map<String, dynamic>? child})
      : _child = child;
  factory _StacFractionallySizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacFractionallySizedBoxFromJson(json);

  @override
  final StacAlignment? alignment;
  @override
  final StacDouble? widthFactor;
  @override
  final StacDouble? heightFactor;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacFractionallySizedBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacFractionallySizedBoxCopyWith<_StacFractionallySizedBox> get copyWith =>
      __$StacFractionallySizedBoxCopyWithImpl<_StacFractionallySizedBox>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacFractionallySizedBoxToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacFractionallySizedBox &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.widthFactor, widthFactor) ||
                other.widthFactor == widthFactor) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, alignment, widthFactor,
      heightFactor, const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacFractionallySizedBox(alignment: $alignment, widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacFractionallySizedBoxCopyWith<$Res>
    implements $StacFractionallySizedBoxCopyWith<$Res> {
  factory _$StacFractionallySizedBoxCopyWith(_StacFractionallySizedBox value,
          $Res Function(_StacFractionallySizedBox) _then) =
      __$StacFractionallySizedBoxCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacAlignment? alignment,
      StacDouble? widthFactor,
      StacDouble? heightFactor,
      Map<String, dynamic>? child});
}

/// @nodoc
class __$StacFractionallySizedBoxCopyWithImpl<$Res>
    implements _$StacFractionallySizedBoxCopyWith<$Res> {
  __$StacFractionallySizedBoxCopyWithImpl(this._self, this._then);

  final _StacFractionallySizedBox _self;
  final $Res Function(_StacFractionallySizedBox) _then;

  /// Create a copy of StacFractionallySizedBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? alignment = freezed,
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_StacFractionallySizedBox(
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment?,
      widthFactor: freezed == widthFactor
          ? _self.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      heightFactor: freezed == heightFactor
          ? _self.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
