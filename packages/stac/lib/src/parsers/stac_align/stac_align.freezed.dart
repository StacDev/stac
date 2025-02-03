// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_align.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacAlign _$StacAlignFromJson(Map<String, dynamic> json) {
  return _StacAlign.fromJson(json);
}

/// @nodoc
mixin _$StacAlign {
  StacAlignmentDirectional get alignment => throw _privateConstructorUsedError;
  double? get widthFactor => throw _privateConstructorUsedError;
  double? get heightFactor => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this StacAlign to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacAlign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacAlignCopyWith<StacAlign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacAlignCopyWith<$Res> {
  factory $StacAlignCopyWith(StacAlign value, $Res Function(StacAlign) then) =
      _$StacAlignCopyWithImpl<$Res, StacAlign>;
  @useResult
  $Res call(
      {StacAlignmentDirectional alignment,
      double? widthFactor,
      double? heightFactor,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$StacAlignCopyWithImpl<$Res, $Val extends StacAlign>
    implements $StacAlignCopyWith<$Res> {
  _$StacAlignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentDirectional,
      widthFactor: freezed == widthFactor
          ? _value.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      heightFactor: freezed == heightFactor
          ? _value.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacAlignImplCopyWith<$Res>
    implements $StacAlignCopyWith<$Res> {
  factory _$$StacAlignImplCopyWith(
          _$StacAlignImpl value, $Res Function(_$StacAlignImpl) then) =
      __$$StacAlignImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StacAlignmentDirectional alignment,
      double? widthFactor,
      double? heightFactor,
      Map<String, dynamic>? child});
}

/// @nodoc
class __$$StacAlignImplCopyWithImpl<$Res>
    extends _$StacAlignCopyWithImpl<$Res, _$StacAlignImpl>
    implements _$$StacAlignImplCopyWith<$Res> {
  __$$StacAlignImplCopyWithImpl(
      _$StacAlignImpl _value, $Res Function(_$StacAlignImpl) _then)
      : super(_value, _then);

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
    return _then(_$StacAlignImpl(
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentDirectional,
      widthFactor: freezed == widthFactor
          ? _value.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      heightFactor: freezed == heightFactor
          ? _value.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacAlignImpl implements _StacAlign {
  const _$StacAlignImpl(
      {this.alignment = StacAlignmentDirectional.center,
      this.widthFactor,
      this.heightFactor,
      final Map<String, dynamic>? child})
      : _child = child;

  factory _$StacAlignImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacAlignImplFromJson(json);

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

  @override
  String toString() {
    return 'StacAlign(alignment: $alignment, widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacAlignImpl &&
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

  /// Create a copy of StacAlign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacAlignImplCopyWith<_$StacAlignImpl> get copyWith =>
      __$$StacAlignImplCopyWithImpl<_$StacAlignImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacAlignImplToJson(
      this,
    );
  }
}

abstract class _StacAlign implements StacAlign {
  const factory _StacAlign(
      {final StacAlignmentDirectional alignment,
      final double? widthFactor,
      final double? heightFactor,
      final Map<String, dynamic>? child}) = _$StacAlignImpl;

  factory _StacAlign.fromJson(Map<String, dynamic> json) =
      _$StacAlignImpl.fromJson;

  @override
  StacAlignmentDirectional get alignment;
  @override
  double? get widthFactor;
  @override
  double? get heightFactor;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of StacAlign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacAlignImplCopyWith<_$StacAlignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
