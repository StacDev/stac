// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_rect_tween.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiRectTween _$MiraiRectTweenFromJson(Map<String, dynamic> json) {
  return _MiraiRectTween.fromJson(json);
}

/// @nodoc
mixin _$MiraiRectTween {
  String get type => throw _privateConstructorUsedError;
  MiraiRect? get begin => throw _privateConstructorUsedError;
  MiraiRect? get end => throw _privateConstructorUsedError;

  /// Serializes this MiraiRectTween to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiRectTween
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiRectTweenCopyWith<MiraiRectTween> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiRectTweenCopyWith<$Res> {
  factory $MiraiRectTweenCopyWith(
          MiraiRectTween value, $Res Function(MiraiRectTween) then) =
      _$MiraiRectTweenCopyWithImpl<$Res, MiraiRectTween>;
  @useResult
  $Res call({String type, MiraiRect? begin, MiraiRect? end});

  $MiraiRectCopyWith<$Res>? get begin;
  $MiraiRectCopyWith<$Res>? get end;
}

/// @nodoc
class _$MiraiRectTweenCopyWithImpl<$Res, $Val extends MiraiRectTween>
    implements $MiraiRectTweenCopyWith<$Res> {
  _$MiraiRectTweenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiRectTween
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
              as MiraiRect?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as MiraiRect?,
    ) as $Val);
  }

  /// Create a copy of MiraiRectTween
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiRectCopyWith<$Res>? get begin {
    if (_value.begin == null) {
      return null;
    }

    return $MiraiRectCopyWith<$Res>(_value.begin!, (value) {
      return _then(_value.copyWith(begin: value) as $Val);
    });
  }

  /// Create a copy of MiraiRectTween
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiRectCopyWith<$Res>? get end {
    if (_value.end == null) {
      return null;
    }

    return $MiraiRectCopyWith<$Res>(_value.end!, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiRectTweenImplCopyWith<$Res>
    implements $MiraiRectTweenCopyWith<$Res> {
  factory _$$MiraiRectTweenImplCopyWith(_$MiraiRectTweenImpl value,
          $Res Function(_$MiraiRectTweenImpl) then) =
      __$$MiraiRectTweenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, MiraiRect? begin, MiraiRect? end});

  @override
  $MiraiRectCopyWith<$Res>? get begin;
  @override
  $MiraiRectCopyWith<$Res>? get end;
}

/// @nodoc
class __$$MiraiRectTweenImplCopyWithImpl<$Res>
    extends _$MiraiRectTweenCopyWithImpl<$Res, _$MiraiRectTweenImpl>
    implements _$$MiraiRectTweenImplCopyWith<$Res> {
  __$$MiraiRectTweenImplCopyWithImpl(
      _$MiraiRectTweenImpl _value, $Res Function(_$MiraiRectTweenImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiRectTween
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? begin = freezed,
    Object? end = freezed,
  }) {
    return _then(_$MiraiRectTweenImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      begin: freezed == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as MiraiRect?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as MiraiRect?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiRectTweenImpl implements _MiraiRectTween {
  const _$MiraiRectTweenImpl({required this.type, this.begin, this.end});

  factory _$MiraiRectTweenImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiRectTweenImplFromJson(json);

  @override
  final String type;
  @override
  final MiraiRect? begin;
  @override
  final MiraiRect? end;

  @override
  String toString() {
    return 'MiraiRectTween(type: $type, begin: $begin, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiRectTweenImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.begin, begin) || other.begin == begin) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, begin, end);

  /// Create a copy of MiraiRectTween
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiRectTweenImplCopyWith<_$MiraiRectTweenImpl> get copyWith =>
      __$$MiraiRectTweenImplCopyWithImpl<_$MiraiRectTweenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiRectTweenImplToJson(
      this,
    );
  }
}

abstract class _MiraiRectTween implements MiraiRectTween {
  const factory _MiraiRectTween(
      {required final String type,
      final MiraiRect? begin,
      final MiraiRect? end}) = _$MiraiRectTweenImpl;

  factory _MiraiRectTween.fromJson(Map<String, dynamic> json) =
      _$MiraiRectTweenImpl.fromJson;

  @override
  String get type;
  @override
  MiraiRect? get begin;
  @override
  MiraiRect? get end;

  /// Create a copy of MiraiRectTween
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiRectTweenImplCopyWith<_$MiraiRectTweenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
