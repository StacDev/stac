// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_default_bottom_navigation_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiDefaultBottomNavigationController
    _$MiraiDefaultBottomNavigationControllerFromJson(
        Map<String, dynamic> json) {
  return _MiraiDefaultBottomNavigationController.fromJson(json);
}

/// @nodoc
mixin _$MiraiDefaultBottomNavigationController {
  int get length => throw _privateConstructorUsedError;
  int? get initialIndex => throw _privateConstructorUsedError;
  Map<String, dynamic> get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiDefaultBottomNavigationController to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiDefaultBottomNavigationControllerCopyWith<
          MiraiDefaultBottomNavigationController>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiDefaultBottomNavigationControllerCopyWith<$Res> {
  factory $MiraiDefaultBottomNavigationControllerCopyWith(
          MiraiDefaultBottomNavigationController value,
          $Res Function(MiraiDefaultBottomNavigationController) then) =
      _$MiraiDefaultBottomNavigationControllerCopyWithImpl<$Res,
          MiraiDefaultBottomNavigationController>;
  @useResult
  $Res call({int length, int? initialIndex, Map<String, dynamic> child});
}

/// @nodoc
class _$MiraiDefaultBottomNavigationControllerCopyWithImpl<$Res,
        $Val extends MiraiDefaultBottomNavigationController>
    implements $MiraiDefaultBottomNavigationControllerCopyWith<$Res> {
  _$MiraiDefaultBottomNavigationControllerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? initialIndex = freezed,
    Object? child = null,
  }) {
    return _then(_value.copyWith(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      initialIndex: freezed == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiDefaultBottomNavigationControllerImplCopyWith<$Res>
    implements $MiraiDefaultBottomNavigationControllerCopyWith<$Res> {
  factory _$$MiraiDefaultBottomNavigationControllerImplCopyWith(
          _$MiraiDefaultBottomNavigationControllerImpl value,
          $Res Function(_$MiraiDefaultBottomNavigationControllerImpl) then) =
      __$$MiraiDefaultBottomNavigationControllerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int length, int? initialIndex, Map<String, dynamic> child});
}

/// @nodoc
class __$$MiraiDefaultBottomNavigationControllerImplCopyWithImpl<$Res>
    extends _$MiraiDefaultBottomNavigationControllerCopyWithImpl<$Res,
        _$MiraiDefaultBottomNavigationControllerImpl>
    implements _$$MiraiDefaultBottomNavigationControllerImplCopyWith<$Res> {
  __$$MiraiDefaultBottomNavigationControllerImplCopyWithImpl(
      _$MiraiDefaultBottomNavigationControllerImpl _value,
      $Res Function(_$MiraiDefaultBottomNavigationControllerImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? initialIndex = freezed,
    Object? child = null,
  }) {
    return _then(_$MiraiDefaultBottomNavigationControllerImpl(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      initialIndex: freezed == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiDefaultBottomNavigationControllerImpl
    implements _MiraiDefaultBottomNavigationController {
  const _$MiraiDefaultBottomNavigationControllerImpl(
      {required this.length,
      this.initialIndex,
      required final Map<String, dynamic> child})
      : _child = child;

  factory _$MiraiDefaultBottomNavigationControllerImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MiraiDefaultBottomNavigationControllerImplFromJson(json);

  @override
  final int length;
  @override
  final int? initialIndex;
  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  String toString() {
    return 'MiraiDefaultBottomNavigationController(length: $length, initialIndex: $initialIndex, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiDefaultBottomNavigationControllerImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, length, initialIndex,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of MiraiDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiDefaultBottomNavigationControllerImplCopyWith<
          _$MiraiDefaultBottomNavigationControllerImpl>
      get copyWith =>
          __$$MiraiDefaultBottomNavigationControllerImplCopyWithImpl<
              _$MiraiDefaultBottomNavigationControllerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiDefaultBottomNavigationControllerImplToJson(
      this,
    );
  }
}

abstract class _MiraiDefaultBottomNavigationController
    implements MiraiDefaultBottomNavigationController {
  const factory _MiraiDefaultBottomNavigationController(
          {required final int length,
          final int? initialIndex,
          required final Map<String, dynamic> child}) =
      _$MiraiDefaultBottomNavigationControllerImpl;

  factory _MiraiDefaultBottomNavigationController.fromJson(
          Map<String, dynamic> json) =
      _$MiraiDefaultBottomNavigationControllerImpl.fromJson;

  @override
  int get length;
  @override
  int? get initialIndex;
  @override
  Map<String, dynamic> get child;

  /// Create a copy of MiraiDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiDefaultBottomNavigationControllerImplCopyWith<
          _$MiraiDefaultBottomNavigationControllerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
