// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_align.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacAlign {
  StacAlignmentDirectional get alignment;
  double? get widthFactor;
  double? get heightFactor;
  Map<String, dynamic>? get child;

  /// Create a copy of StacAlign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacAlignCopyWith<StacAlign> get copyWith =>
      _$StacAlignCopyWithImpl<StacAlign>(this as StacAlign, _$identity);

  /// Serializes this StacAlign to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacAlign &&
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
    return 'StacAlign(alignment: $alignment, widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacAlignCopyWith<$Res> {
  factory $StacAlignCopyWith(StacAlign value, $Res Function(StacAlign) _then) =
      _$StacAlignCopyWithImpl;
  @useResult
  $Res call(
      {StacAlignmentDirectional alignment,
      double? widthFactor,
      double? heightFactor,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$StacAlignCopyWithImpl<$Res> implements $StacAlignCopyWith<$Res> {
  _$StacAlignCopyWithImpl(this._self, this._then);

  final StacAlign _self;
  final $Res Function(StacAlign) _then;

  /// Create a copy of StacAlign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignment = null,
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      alignment: null == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentDirectional,
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
class _StacAlign implements StacAlign {
  const _StacAlign(
      {this.alignment = StacAlignmentDirectional.center,
      this.widthFactor,
      this.heightFactor,
      final Map<String, dynamic>? child})
      : _child = child;
  factory _StacAlign.fromJson(Map<String, dynamic> json) =>
      _$StacAlignFromJson(json);

  @override
  @JsonKey()
  final StacAlignmentDirectional alignment;
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

  /// Create a copy of StacAlign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacAlignCopyWith<_StacAlign> get copyWith =>
      __$StacAlignCopyWithImpl<_StacAlign>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacAlignToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacAlign &&
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
    return 'StacAlign(alignment: $alignment, widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacAlignCopyWith<$Res>
    implements $StacAlignCopyWith<$Res> {
  factory _$StacAlignCopyWith(
          _StacAlign value, $Res Function(_StacAlign) _then) =
      __$StacAlignCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacAlignmentDirectional alignment,
      double? widthFactor,
      double? heightFactor,
      Map<String, dynamic>? child});
}

/// @nodoc
class __$StacAlignCopyWithImpl<$Res> implements _$StacAlignCopyWith<$Res> {
  __$StacAlignCopyWithImpl(this._self, this._then);

  final _StacAlign _self;
  final $Res Function(_StacAlign) _then;

  /// Create a copy of StacAlign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? alignment = null,
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_StacAlign(
      alignment: null == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentDirectional,
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
