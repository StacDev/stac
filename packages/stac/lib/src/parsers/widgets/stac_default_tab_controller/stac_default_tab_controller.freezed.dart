// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_default_tab_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDefaultTabController {
  int get length;
  int get initialIndex;
  Map<String, dynamic> get child;

  /// Create a copy of StacDefaultTabController
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDefaultTabControllerCopyWith<StacDefaultTabController> get copyWith =>
      _$StacDefaultTabControllerCopyWithImpl<StacDefaultTabController>(
          this as StacDefaultTabController, _$identity);

  /// Serializes this StacDefaultTabController to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDefaultTabController &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, length, initialIndex,
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacDefaultTabController(length: $length, initialIndex: $initialIndex, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacDefaultTabControllerCopyWith<$Res> {
  factory $StacDefaultTabControllerCopyWith(StacDefaultTabController value,
          $Res Function(StacDefaultTabController) _then) =
      _$StacDefaultTabControllerCopyWithImpl;
  @useResult
  $Res call({int length, int initialIndex, Map<String, dynamic> child});
}

/// @nodoc
class _$StacDefaultTabControllerCopyWithImpl<$Res>
    implements $StacDefaultTabControllerCopyWith<$Res> {
  _$StacDefaultTabControllerCopyWithImpl(this._self, this._then);

  final StacDefaultTabController _self;
  final $Res Function(StacDefaultTabController) _then;

  /// Create a copy of StacDefaultTabController
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? initialIndex = null,
    Object? child = null,
  }) {
    return _then(_self.copyWith(
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      initialIndex: null == initialIndex
          ? _self.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
      child: null == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacDefaultTabController implements StacDefaultTabController {
  const _StacDefaultTabController(
      {required this.length,
      this.initialIndex = 0,
      required final Map<String, dynamic> child})
      : _child = child;
  factory _StacDefaultTabController.fromJson(Map<String, dynamic> json) =>
      _$StacDefaultTabControllerFromJson(json);

  @override
  final int length;
  @override
  @JsonKey()
  final int initialIndex;
  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  /// Create a copy of StacDefaultTabController
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDefaultTabControllerCopyWith<_StacDefaultTabController> get copyWith =>
      __$StacDefaultTabControllerCopyWithImpl<_StacDefaultTabController>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDefaultTabControllerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDefaultTabController &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, length, initialIndex,
      const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacDefaultTabController(length: $length, initialIndex: $initialIndex, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacDefaultTabControllerCopyWith<$Res>
    implements $StacDefaultTabControllerCopyWith<$Res> {
  factory _$StacDefaultTabControllerCopyWith(_StacDefaultTabController value,
          $Res Function(_StacDefaultTabController) _then) =
      __$StacDefaultTabControllerCopyWithImpl;
  @override
  @useResult
  $Res call({int length, int initialIndex, Map<String, dynamic> child});
}

/// @nodoc
class __$StacDefaultTabControllerCopyWithImpl<$Res>
    implements _$StacDefaultTabControllerCopyWith<$Res> {
  __$StacDefaultTabControllerCopyWithImpl(this._self, this._then);

  final _StacDefaultTabController _self;
  final $Res Function(_StacDefaultTabController) _then;

  /// Create a copy of StacDefaultTabController
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? length = null,
    Object? initialIndex = null,
    Object? child = null,
  }) {
    return _then(_StacDefaultTabController(
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      initialIndex: null == initialIndex
          ? _self.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
      child: null == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
