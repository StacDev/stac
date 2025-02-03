// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_default_bottom_navigation_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacDefaultBottomNavigationController
    _$StacDefaultBottomNavigationControllerFromJson(Map<String, dynamic> json) {
  return _StacDefaultBottomNavigationController.fromJson(json);
}

/// @nodoc
mixin _$StacDefaultBottomNavigationController {
  int get length => throw _privateConstructorUsedError;
  int? get initialIndex => throw _privateConstructorUsedError;
  Map<String, dynamic> get child => throw _privateConstructorUsedError;

  /// Serializes this StacDefaultBottomNavigationController to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacDefaultBottomNavigationControllerCopyWith<
          StacDefaultBottomNavigationController>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacDefaultBottomNavigationControllerCopyWith<$Res> {
  factory $StacDefaultBottomNavigationControllerCopyWith(
          StacDefaultBottomNavigationController value,
          $Res Function(StacDefaultBottomNavigationController) then) =
      _$StacDefaultBottomNavigationControllerCopyWithImpl<$Res,
          StacDefaultBottomNavigationController>;
  @useResult
  $Res call({int length, int? initialIndex, Map<String, dynamic> child});
}

/// @nodoc
class _$StacDefaultBottomNavigationControllerCopyWithImpl<$Res,
        $Val extends StacDefaultBottomNavigationController>
    implements $StacDefaultBottomNavigationControllerCopyWith<$Res> {
  _$StacDefaultBottomNavigationControllerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacDefaultBottomNavigationController
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
abstract class _$$StacDefaultBottomNavigationControllerImplCopyWith<$Res>
    implements $StacDefaultBottomNavigationControllerCopyWith<$Res> {
  factory _$$StacDefaultBottomNavigationControllerImplCopyWith(
          _$StacDefaultBottomNavigationControllerImpl value,
          $Res Function(_$StacDefaultBottomNavigationControllerImpl) then) =
      __$$StacDefaultBottomNavigationControllerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int length, int? initialIndex, Map<String, dynamic> child});
}

/// @nodoc
class __$$StacDefaultBottomNavigationControllerImplCopyWithImpl<$Res>
    extends _$StacDefaultBottomNavigationControllerCopyWithImpl<$Res,
        _$StacDefaultBottomNavigationControllerImpl>
    implements _$$StacDefaultBottomNavigationControllerImplCopyWith<$Res> {
  __$$StacDefaultBottomNavigationControllerImplCopyWithImpl(
      _$StacDefaultBottomNavigationControllerImpl _value,
      $Res Function(_$StacDefaultBottomNavigationControllerImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? initialIndex = freezed,
    Object? child = null,
  }) {
    return _then(_$StacDefaultBottomNavigationControllerImpl(
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
class _$StacDefaultBottomNavigationControllerImpl
    implements _StacDefaultBottomNavigationController {
  const _$StacDefaultBottomNavigationControllerImpl(
      {required this.length,
      this.initialIndex,
      required final Map<String, dynamic> child})
      : _child = child;

  factory _$StacDefaultBottomNavigationControllerImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StacDefaultBottomNavigationControllerImplFromJson(json);

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
    return 'StacDefaultBottomNavigationController(length: $length, initialIndex: $initialIndex, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacDefaultBottomNavigationControllerImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, length, initialIndex,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of StacDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacDefaultBottomNavigationControllerImplCopyWith<
          _$StacDefaultBottomNavigationControllerImpl>
      get copyWith => __$$StacDefaultBottomNavigationControllerImplCopyWithImpl<
          _$StacDefaultBottomNavigationControllerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacDefaultBottomNavigationControllerImplToJson(
      this,
    );
  }
}

abstract class _StacDefaultBottomNavigationController
    implements StacDefaultBottomNavigationController {
  const factory _StacDefaultBottomNavigationController(
          {required final int length,
          final int? initialIndex,
          required final Map<String, dynamic> child}) =
      _$StacDefaultBottomNavigationControllerImpl;

  factory _StacDefaultBottomNavigationController.fromJson(
          Map<String, dynamic> json) =
      _$StacDefaultBottomNavigationControllerImpl.fromJson;

  @override
  int get length;
  @override
  int? get initialIndex;
  @override
  Map<String, dynamic> get child;

  /// Create a copy of StacDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacDefaultBottomNavigationControllerImplCopyWith<
          _$StacDefaultBottomNavigationControllerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
