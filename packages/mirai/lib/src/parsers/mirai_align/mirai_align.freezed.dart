// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_align.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiAlign _$MiraiAlignFromJson(Map<String, dynamic> json) {
  return _MiraiAlign.fromJson(json);
}

/// @nodoc
mixin _$MiraiAlign {
  MiraiAlignmentDirectional get alignment => throw _privateConstructorUsedError;
  double? get widthFactor => throw _privateConstructorUsedError;
  double? get heightFactor => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiAlign to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiAlign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiAlignCopyWith<MiraiAlign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiAlignCopyWith<$Res> {
  factory $MiraiAlignCopyWith(
          MiraiAlign value, $Res Function(MiraiAlign) then) =
      _$MiraiAlignCopyWithImpl<$Res, MiraiAlign>;
  @useResult
  $Res call(
      {MiraiAlignmentDirectional alignment,
      double? widthFactor,
      double? heightFactor,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$MiraiAlignCopyWithImpl<$Res, $Val extends MiraiAlign>
    implements $MiraiAlignCopyWith<$Res> {
  _$MiraiAlignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiAlign
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
              as MiraiAlignmentDirectional,
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
abstract class _$$MiraiAlignImplCopyWith<$Res>
    implements $MiraiAlignCopyWith<$Res> {
  factory _$$MiraiAlignImplCopyWith(
          _$MiraiAlignImpl value, $Res Function(_$MiraiAlignImpl) then) =
      __$$MiraiAlignImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MiraiAlignmentDirectional alignment,
      double? widthFactor,
      double? heightFactor,
      Map<String, dynamic>? child});
}

/// @nodoc
class __$$MiraiAlignImplCopyWithImpl<$Res>
    extends _$MiraiAlignCopyWithImpl<$Res, _$MiraiAlignImpl>
    implements _$$MiraiAlignImplCopyWith<$Res> {
  __$$MiraiAlignImplCopyWithImpl(
      _$MiraiAlignImpl _value, $Res Function(_$MiraiAlignImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiAlign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignment = null,
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_$MiraiAlignImpl(
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as MiraiAlignmentDirectional,
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
class _$MiraiAlignImpl implements _MiraiAlign {
  const _$MiraiAlignImpl(
      {this.alignment = MiraiAlignmentDirectional.center,
      this.widthFactor,
      this.heightFactor,
      final Map<String, dynamic>? child})
      : _child = child;

  factory _$MiraiAlignImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiAlignImplFromJson(json);

  @override
  @JsonKey()
  final MiraiAlignmentDirectional alignment;
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
    return 'MiraiAlign(alignment: $alignment, widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiAlignImpl &&
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

  /// Create a copy of MiraiAlign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiAlignImplCopyWith<_$MiraiAlignImpl> get copyWith =>
      __$$MiraiAlignImplCopyWithImpl<_$MiraiAlignImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiAlignImplToJson(
      this,
    );
  }
}

abstract class _MiraiAlign implements MiraiAlign {
  const factory _MiraiAlign(
      {final MiraiAlignmentDirectional alignment,
      final double? widthFactor,
      final double? heightFactor,
      final Map<String, dynamic>? child}) = _$MiraiAlignImpl;

  factory _MiraiAlign.fromJson(Map<String, dynamic> json) =
      _$MiraiAlignImpl.fromJson;

  @override
  MiraiAlignmentDirectional get alignment;
  @override
  double? get widthFactor;
  @override
  double? get heightFactor;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of MiraiAlign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiAlignImplCopyWith<_$MiraiAlignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
