// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_rect_tween.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacRectTween _$StacRectTweenFromJson(Map<String, dynamic> json) {
  return _StacRectTween.fromJson(json);
}

/// @nodoc
mixin _$StacRectTween {
  String get type => throw _privateConstructorUsedError;
  StacRect? get begin => throw _privateConstructorUsedError;
  StacRect? get end => throw _privateConstructorUsedError;

  /// Serializes this StacRectTween to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacRectTween
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacRectTweenCopyWith<StacRectTween> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacRectTweenCopyWith<$Res> {
  factory $StacRectTweenCopyWith(
          StacRectTween value, $Res Function(StacRectTween) then) =
      _$StacRectTweenCopyWithImpl<$Res, StacRectTween>;
  @useResult
  $Res call({String type, StacRect? begin, StacRect? end});

  $StacRectCopyWith<$Res>? get begin;
  $StacRectCopyWith<$Res>? get end;
}

/// @nodoc
class _$StacRectTweenCopyWithImpl<$Res, $Val extends StacRectTween>
    implements $StacRectTweenCopyWith<$Res> {
  _$StacRectTweenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacRectTween
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? begin = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      begin: freezed == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as StacRect?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as StacRect?,
    ) as $Val);
  }

  /// Create a copy of StacRectTween
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRectCopyWith<$Res>? get begin {
    if (_value.begin == null) {
      return null;
    }

    return $StacRectCopyWith<$Res>(_value.begin!, (value) {
      return _then(_value.copyWith(begin: value) as $Val);
    });
  }

  /// Create a copy of StacRectTween
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRectCopyWith<$Res>? get end {
    if (_value.end == null) {
      return null;
    }

    return $StacRectCopyWith<$Res>(_value.end!, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacRectTweenImplCopyWith<$Res>
    implements $StacRectTweenCopyWith<$Res> {
  factory _$$StacRectTweenImplCopyWith(
          _$StacRectTweenImpl value, $Res Function(_$StacRectTweenImpl) then) =
      __$$StacRectTweenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, StacRect? begin, StacRect? end});

  @override
  $StacRectCopyWith<$Res>? get begin;
  @override
  $StacRectCopyWith<$Res>? get end;
}

/// @nodoc
class __$$StacRectTweenImplCopyWithImpl<$Res>
    extends _$StacRectTweenCopyWithImpl<$Res, _$StacRectTweenImpl>
    implements _$$StacRectTweenImplCopyWith<$Res> {
  __$$StacRectTweenImplCopyWithImpl(
      _$StacRectTweenImpl _value, $Res Function(_$StacRectTweenImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacRectTween
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? begin = freezed,
    Object? end = freezed,
  }) {
    return _then(_$StacRectTweenImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      begin: freezed == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as StacRect?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as StacRect?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacRectTweenImpl implements _StacRectTween {
  const _$StacRectTweenImpl({required this.type, this.begin, this.end});

  factory _$StacRectTweenImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacRectTweenImplFromJson(json);

  @override
  final String type;
  @override
  final StacRect? begin;
  @override
  final StacRect? end;

  @override
  String toString() {
    return 'StacRectTween(type: $type, begin: $begin, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacRectTweenImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.begin, begin) || other.begin == begin) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, begin, end);

  /// Create a copy of StacRectTween
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacRectTweenImplCopyWith<_$StacRectTweenImpl> get copyWith =>
      __$$StacRectTweenImplCopyWithImpl<_$StacRectTweenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacRectTweenImplToJson(
      this,
    );
  }
}

abstract class _StacRectTween implements StacRectTween {
  const factory _StacRectTween(
      {required final String type,
      final StacRect? begin,
      final StacRect? end}) = _$StacRectTweenImpl;

  factory _StacRectTween.fromJson(Map<String, dynamic> json) =
      _$StacRectTweenImpl.fromJson;

  @override
  String get type;
  @override
  StacRect? get begin;
  @override
  StacRect? get end;

  /// Create a copy of StacRectTween
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacRectTweenImplCopyWith<_$StacRectTweenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
