// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacTab _$StacTabFromJson(Map<String, dynamic> json) {
  return _StacTab.fromJson(json);
}

/// @nodoc
mixin _$StacTab {
  String? get text => throw _privateConstructorUsedError;
  Map<String, dynamic>? get icon => throw _privateConstructorUsedError;
  StacEdgeInsets? get iconMargin => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this StacTab to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacTab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacTabCopyWith<StacTab> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacTabCopyWith<$Res> {
  factory $StacTabCopyWith(StacTab value, $Res Function(StacTab) then) =
      _$StacTabCopyWithImpl<$Res, StacTab>;
  @useResult
  $Res call(
      {String? text,
      Map<String, dynamic>? icon,
      StacEdgeInsets? iconMargin,
      double? height,
      Map<String, dynamic>? child});

  $StacEdgeInsetsCopyWith<$Res>? get iconMargin;
}

/// @nodoc
class _$StacTabCopyWithImpl<$Res, $Val extends StacTab>
    implements $StacTabCopyWith<$Res> {
  _$StacTabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacTab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? iconMargin = freezed,
    Object? height = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      iconMargin: freezed == iconMargin
          ? _value.iconMargin
          : iconMargin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of StacTab
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get iconMargin {
    if (_value.iconMargin == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_value.iconMargin!, (value) {
      return _then(_value.copyWith(iconMargin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacTabImplCopyWith<$Res> implements $StacTabCopyWith<$Res> {
  factory _$$StacTabImplCopyWith(
          _$StacTabImpl value, $Res Function(_$StacTabImpl) then) =
      __$$StacTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? text,
      Map<String, dynamic>? icon,
      StacEdgeInsets? iconMargin,
      double? height,
      Map<String, dynamic>? child});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get iconMargin;
}

/// @nodoc
class __$$StacTabImplCopyWithImpl<$Res>
    extends _$StacTabCopyWithImpl<$Res, _$StacTabImpl>
    implements _$$StacTabImplCopyWith<$Res> {
  __$$StacTabImplCopyWithImpl(
      _$StacTabImpl _value, $Res Function(_$StacTabImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacTab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? iconMargin = freezed,
    Object? height = freezed,
    Object? child = freezed,
  }) {
    return _then(_$StacTabImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value._icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      iconMargin: freezed == iconMargin
          ? _value.iconMargin
          : iconMargin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
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
class _$StacTabImpl implements _StacTab {
  const _$StacTabImpl(
      {this.text,
      final Map<String, dynamic>? icon,
      this.iconMargin,
      this.height,
      final Map<String, dynamic>? child})
      : _icon = icon,
        _child = child;

  factory _$StacTabImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacTabImplFromJson(json);

  @override
  final String? text;
  final Map<String, dynamic>? _icon;
  @override
  Map<String, dynamic>? get icon {
    final value = _icon;
    if (value == null) return null;
    if (_icon is EqualUnmodifiableMapView) return _icon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacEdgeInsets? iconMargin;
  @override
  final double? height;
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
    return 'StacTab(text: $text, icon: $icon, iconMargin: $iconMargin, height: $height, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacTabImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._icon, _icon) &&
            (identical(other.iconMargin, iconMargin) ||
                other.iconMargin == iconMargin) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      const DeepCollectionEquality().hash(_icon),
      iconMargin,
      height,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of StacTab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacTabImplCopyWith<_$StacTabImpl> get copyWith =>
      __$$StacTabImplCopyWithImpl<_$StacTabImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacTabImplToJson(
      this,
    );
  }
}

abstract class _StacTab implements StacTab {
  const factory _StacTab(
      {final String? text,
      final Map<String, dynamic>? icon,
      final StacEdgeInsets? iconMargin,
      final double? height,
      final Map<String, dynamic>? child}) = _$StacTabImpl;

  factory _StacTab.fromJson(Map<String, dynamic> json) = _$StacTabImpl.fromJson;

  @override
  String? get text;
  @override
  Map<String, dynamic>? get icon;
  @override
  StacEdgeInsets? get iconMargin;
  @override
  double? get height;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of StacTab
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacTabImplCopyWith<_$StacTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
