// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_default_tab_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiDefaultTabController _$MiraiDefaultTabControllerFromJson(
    Map<String, dynamic> json) {
  return _MiraiDefaultTabController.fromJson(json);
}

/// @nodoc
mixin _$MiraiDefaultTabController {
  Map<String, dynamic> get child => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;

  /// Serializes this MiraiDefaultTabController to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiDefaultTabController
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiDefaultTabControllerCopyWith<MiraiDefaultTabController> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiDefaultTabControllerCopyWith<$Res> {
  factory $MiraiDefaultTabControllerCopyWith(MiraiDefaultTabController value,
          $Res Function(MiraiDefaultTabController) then) =
      _$MiraiDefaultTabControllerCopyWithImpl<$Res, MiraiDefaultTabController>;
  @useResult
  $Res call({Map<String, dynamic> child, int length});
}

/// @nodoc
class _$MiraiDefaultTabControllerCopyWithImpl<$Res,
        $Val extends MiraiDefaultTabController>
    implements $MiraiDefaultTabControllerCopyWith<$Res> {
  _$MiraiDefaultTabControllerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiDefaultTabController
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiDefaultTabControllerImplCopyWith<$Res>
    implements $MiraiDefaultTabControllerCopyWith<$Res> {
  factory _$$MiraiDefaultTabControllerImplCopyWith(
          _$MiraiDefaultTabControllerImpl value,
          $Res Function(_$MiraiDefaultTabControllerImpl) then) =
      __$$MiraiDefaultTabControllerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> child, int length});
}

/// @nodoc
class __$$MiraiDefaultTabControllerImplCopyWithImpl<$Res>
    extends _$MiraiDefaultTabControllerCopyWithImpl<$Res,
        _$MiraiDefaultTabControllerImpl>
    implements _$$MiraiDefaultTabControllerImplCopyWith<$Res> {
  __$$MiraiDefaultTabControllerImplCopyWithImpl(
      _$MiraiDefaultTabControllerImpl _value,
      $Res Function(_$MiraiDefaultTabControllerImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiDefaultTabController
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? length = null,
  }) {
    return _then(_$MiraiDefaultTabControllerImpl(
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiDefaultTabControllerImpl implements _MiraiDefaultTabController {
  const _$MiraiDefaultTabControllerImpl(
      {required final Map<String, dynamic> child, required this.length})
      : _child = child;

  factory _$MiraiDefaultTabControllerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiDefaultTabControllerImplFromJson(json);

  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  final int length;

  @override
  String toString() {
    return 'MiraiDefaultTabController(child: $child, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiDefaultTabControllerImpl &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_child), length);

  /// Create a copy of MiraiDefaultTabController
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiDefaultTabControllerImplCopyWith<_$MiraiDefaultTabControllerImpl>
      get copyWith => __$$MiraiDefaultTabControllerImplCopyWithImpl<
          _$MiraiDefaultTabControllerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiDefaultTabControllerImplToJson(
      this,
    );
  }
}

abstract class _MiraiDefaultTabController implements MiraiDefaultTabController {
  const factory _MiraiDefaultTabController(
      {required final Map<String, dynamic> child,
      required final int length}) = _$MiraiDefaultTabControllerImpl;

  factory _MiraiDefaultTabController.fromJson(Map<String, dynamic> json) =
      _$MiraiDefaultTabControllerImpl.fromJson;

  @override
  Map<String, dynamic> get child;
  @override
  int get length;

  /// Create a copy of MiraiDefaultTabController
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiDefaultTabControllerImplCopyWith<_$MiraiDefaultTabControllerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
