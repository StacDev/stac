// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_tab_bar_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacTabBarView _$StacTabBarViewFromJson(Map<String, dynamic> json) {
  return _StacTabBarView.fromJson(json);
}

/// @nodoc
mixin _$StacTabBarView {
  List<Map<String, dynamic>> get children => throw _privateConstructorUsedError;
  int get initialIndex => throw _privateConstructorUsedError;
  DragStartBehavior get dragStartBehavior => throw _privateConstructorUsedError;
  StacScrollPhysics? get physics => throw _privateConstructorUsedError;
  double get viewportFraction => throw _privateConstructorUsedError;
  Clip get clipBehavior => throw _privateConstructorUsedError;

  /// Serializes this StacTabBarView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacTabBarView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacTabBarViewCopyWith<StacTabBarView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacTabBarViewCopyWith<$Res> {
  factory $StacTabBarViewCopyWith(
          StacTabBarView value, $Res Function(StacTabBarView) then) =
      _$StacTabBarViewCopyWithImpl<$Res, StacTabBarView>;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> children,
      int initialIndex,
      DragStartBehavior dragStartBehavior,
      StacScrollPhysics? physics,
      double viewportFraction,
      Clip clipBehavior});
}

/// @nodoc
class _$StacTabBarViewCopyWithImpl<$Res, $Val extends StacTabBarView>
    implements $StacTabBarViewCopyWith<$Res> {
  _$StacTabBarViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacTabBarView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? initialIndex = null,
    Object? dragStartBehavior = null,
    Object? physics = freezed,
    Object? viewportFraction = null,
    Object? clipBehavior = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      initialIndex: null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
      dragStartBehavior: null == dragStartBehavior
          ? _value.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      physics: freezed == physics
          ? _value.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as StacScrollPhysics?,
      viewportFraction: null == viewportFraction
          ? _value.viewportFraction
          : viewportFraction // ignore: cast_nullable_to_non_nullable
              as double,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacTabBarViewImplCopyWith<$Res>
    implements $StacTabBarViewCopyWith<$Res> {
  factory _$$StacTabBarViewImplCopyWith(_$StacTabBarViewImpl value,
          $Res Function(_$StacTabBarViewImpl) then) =
      __$$StacTabBarViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>> children,
      int initialIndex,
      DragStartBehavior dragStartBehavior,
      StacScrollPhysics? physics,
      double viewportFraction,
      Clip clipBehavior});
}

/// @nodoc
class __$$StacTabBarViewImplCopyWithImpl<$Res>
    extends _$StacTabBarViewCopyWithImpl<$Res, _$StacTabBarViewImpl>
    implements _$$StacTabBarViewImplCopyWith<$Res> {
  __$$StacTabBarViewImplCopyWithImpl(
      _$StacTabBarViewImpl _value, $Res Function(_$StacTabBarViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacTabBarView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? initialIndex = null,
    Object? dragStartBehavior = null,
    Object? physics = freezed,
    Object? viewportFraction = null,
    Object? clipBehavior = null,
  }) {
    return _then(_$StacTabBarViewImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      initialIndex: null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
      dragStartBehavior: null == dragStartBehavior
          ? _value.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      physics: freezed == physics
          ? _value.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as StacScrollPhysics?,
      viewportFraction: null == viewportFraction
          ? _value.viewportFraction
          : viewportFraction // ignore: cast_nullable_to_non_nullable
              as double,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacTabBarViewImpl implements _StacTabBarView {
  const _$StacTabBarViewImpl(
      {required final List<Map<String, dynamic>> children,
      this.initialIndex = 0,
      this.dragStartBehavior = DragStartBehavior.start,
      this.physics,
      this.viewportFraction = 1.0,
      this.clipBehavior = Clip.hardEdge})
      : _children = children;

  factory _$StacTabBarViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacTabBarViewImplFromJson(json);

  final List<Map<String, dynamic>> _children;
  @override
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  @JsonKey()
  final int initialIndex;
  @override
  @JsonKey()
  final DragStartBehavior dragStartBehavior;
  @override
  final StacScrollPhysics? physics;
  @override
  @JsonKey()
  final double viewportFraction;
  @override
  @JsonKey()
  final Clip clipBehavior;

  @override
  String toString() {
    return 'StacTabBarView(children: $children, initialIndex: $initialIndex, dragStartBehavior: $dragStartBehavior, physics: $physics, viewportFraction: $viewportFraction, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacTabBarViewImpl &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.viewportFraction, viewportFraction) ||
                other.viewportFraction == viewportFraction) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_children),
      initialIndex,
      dragStartBehavior,
      physics,
      viewportFraction,
      clipBehavior);

  /// Create a copy of StacTabBarView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacTabBarViewImplCopyWith<_$StacTabBarViewImpl> get copyWith =>
      __$$StacTabBarViewImplCopyWithImpl<_$StacTabBarViewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacTabBarViewImplToJson(
      this,
    );
  }
}

abstract class _StacTabBarView implements StacTabBarView {
  const factory _StacTabBarView(
      {required final List<Map<String, dynamic>> children,
      final int initialIndex,
      final DragStartBehavior dragStartBehavior,
      final StacScrollPhysics? physics,
      final double viewportFraction,
      final Clip clipBehavior}) = _$StacTabBarViewImpl;

  factory _StacTabBarView.fromJson(Map<String, dynamic> json) =
      _$StacTabBarViewImpl.fromJson;

  @override
  List<Map<String, dynamic>> get children;
  @override
  int get initialIndex;
  @override
  DragStartBehavior get dragStartBehavior;
  @override
  StacScrollPhysics? get physics;
  @override
  double get viewportFraction;
  @override
  Clip get clipBehavior;

  /// Create a copy of StacTabBarView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacTabBarViewImplCopyWith<_$StacTabBarViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
