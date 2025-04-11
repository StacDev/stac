// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_bottom_navigation_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBottomNavigationView {
  List<Map<String, dynamic>> get children;

  /// Create a copy of StacBottomNavigationView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBottomNavigationViewCopyWith<StacBottomNavigationView> get copyWith =>
      _$StacBottomNavigationViewCopyWithImpl<StacBottomNavigationView>(
          this as StacBottomNavigationView, _$identity);

  /// Serializes this StacBottomNavigationView to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBottomNavigationView &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(children));

  @override
  String toString() {
    return 'StacBottomNavigationView(children: $children)';
  }
}

/// @nodoc
abstract mixin class $StacBottomNavigationViewCopyWith<$Res> {
  factory $StacBottomNavigationViewCopyWith(StacBottomNavigationView value,
          $Res Function(StacBottomNavigationView) _then) =
      _$StacBottomNavigationViewCopyWithImpl;
  @useResult
  $Res call({List<Map<String, dynamic>> children});
}

/// @nodoc
class _$StacBottomNavigationViewCopyWithImpl<$Res>
    implements $StacBottomNavigationViewCopyWith<$Res> {
  _$StacBottomNavigationViewCopyWithImpl(this._self, this._then);

  final StacBottomNavigationView _self;
  final $Res Function(StacBottomNavigationView) _then;

  /// Create a copy of StacBottomNavigationView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_self.copyWith(
      children: null == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacBottomNavigationView implements StacBottomNavigationView {
  const _StacBottomNavigationView(
      {final List<Map<String, dynamic>> children = const []})
      : _children = children;
  factory _StacBottomNavigationView.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavigationViewFromJson(json);

  final List<Map<String, dynamic>> _children;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  /// Create a copy of StacBottomNavigationView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBottomNavigationViewCopyWith<_StacBottomNavigationView> get copyWith =>
      __$StacBottomNavigationViewCopyWithImpl<_StacBottomNavigationView>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBottomNavigationViewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBottomNavigationView &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @override
  String toString() {
    return 'StacBottomNavigationView(children: $children)';
  }
}

/// @nodoc
abstract mixin class _$StacBottomNavigationViewCopyWith<$Res>
    implements $StacBottomNavigationViewCopyWith<$Res> {
  factory _$StacBottomNavigationViewCopyWith(_StacBottomNavigationView value,
          $Res Function(_StacBottomNavigationView) _then) =
      __$StacBottomNavigationViewCopyWithImpl;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> children});
}

/// @nodoc
class __$StacBottomNavigationViewCopyWithImpl<$Res>
    implements _$StacBottomNavigationViewCopyWith<$Res> {
  __$StacBottomNavigationViewCopyWithImpl(this._self, this._then);

  final _StacBottomNavigationView _self;
  final $Res Function(_StacBottomNavigationView) _then;

  /// Create a copy of StacBottomNavigationView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? children = null,
  }) {
    return _then(_StacBottomNavigationView(
      children: null == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

// dart format on
