// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_bottom_navigation_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacBottomNavigationView _$StacBottomNavigationViewFromJson(
    Map<String, dynamic> json) {
  return _StacBottomNavigationView.fromJson(json);
}

/// @nodoc
mixin _$StacBottomNavigationView {
  List<Map<String, dynamic>> get children => throw _privateConstructorUsedError;

  /// Serializes this StacBottomNavigationView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacBottomNavigationView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacBottomNavigationViewCopyWith<StacBottomNavigationView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacBottomNavigationViewCopyWith<$Res> {
  factory $StacBottomNavigationViewCopyWith(StacBottomNavigationView value,
          $Res Function(StacBottomNavigationView) then) =
      _$StacBottomNavigationViewCopyWithImpl<$Res, StacBottomNavigationView>;
  @useResult
  $Res call({List<Map<String, dynamic>> children});
}

/// @nodoc
class _$StacBottomNavigationViewCopyWithImpl<$Res,
        $Val extends StacBottomNavigationView>
    implements $StacBottomNavigationViewCopyWith<$Res> {
  _$StacBottomNavigationViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacBottomNavigationView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacBottomNavigationViewImplCopyWith<$Res>
    implements $StacBottomNavigationViewCopyWith<$Res> {
  factory _$$StacBottomNavigationViewImplCopyWith(
          _$StacBottomNavigationViewImpl value,
          $Res Function(_$StacBottomNavigationViewImpl) then) =
      __$$StacBottomNavigationViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> children});
}

/// @nodoc
class __$$StacBottomNavigationViewImplCopyWithImpl<$Res>
    extends _$StacBottomNavigationViewCopyWithImpl<$Res,
        _$StacBottomNavigationViewImpl>
    implements _$$StacBottomNavigationViewImplCopyWith<$Res> {
  __$$StacBottomNavigationViewImplCopyWithImpl(
      _$StacBottomNavigationViewImpl _value,
      $Res Function(_$StacBottomNavigationViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacBottomNavigationView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$StacBottomNavigationViewImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacBottomNavigationViewImpl implements _StacBottomNavigationView {
  const _$StacBottomNavigationViewImpl(
      {final List<Map<String, dynamic>> children = const []})
      : _children = children;

  factory _$StacBottomNavigationViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacBottomNavigationViewImplFromJson(json);

  final List<Map<String, dynamic>> _children;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'StacBottomNavigationView(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacBottomNavigationViewImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  /// Create a copy of StacBottomNavigationView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacBottomNavigationViewImplCopyWith<_$StacBottomNavigationViewImpl>
      get copyWith => __$$StacBottomNavigationViewImplCopyWithImpl<
          _$StacBottomNavigationViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacBottomNavigationViewImplToJson(
      this,
    );
  }
}

abstract class _StacBottomNavigationView implements StacBottomNavigationView {
  const factory _StacBottomNavigationView(
          {final List<Map<String, dynamic>> children}) =
      _$StacBottomNavigationViewImpl;

  factory _StacBottomNavigationView.fromJson(Map<String, dynamic> json) =
      _$StacBottomNavigationViewImpl.fromJson;

  @override
  List<Map<String, dynamic>> get children;

  /// Create a copy of StacBottomNavigationView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacBottomNavigationViewImplCopyWith<_$StacBottomNavigationViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}
