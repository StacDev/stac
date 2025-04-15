// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacForm {
  AutovalidateMode? get autovalidateMode;
  Map<String, dynamic> get child;

  /// Create a copy of StacForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacFormCopyWith<StacForm> get copyWith =>
      _$StacFormCopyWithImpl<StacForm>(this as StacForm, _$identity);

  /// Serializes this StacForm to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacForm &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, autovalidateMode,
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacForm(autovalidateMode: $autovalidateMode, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacFormCopyWith<$Res> {
  factory $StacFormCopyWith(StacForm value, $Res Function(StacForm) _then) =
      _$StacFormCopyWithImpl;
  @useResult
  $Res call({AutovalidateMode? autovalidateMode, Map<String, dynamic> child});
}

/// @nodoc
class _$StacFormCopyWithImpl<$Res> implements $StacFormCopyWith<$Res> {
  _$StacFormCopyWithImpl(this._self, this._then);

  final StacForm _self;
  final $Res Function(StacForm) _then;

  /// Create a copy of StacForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autovalidateMode = freezed,
    Object? child = null,
  }) {
    return _then(_self.copyWith(
      autovalidateMode: freezed == autovalidateMode
          ? _self.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      child: null == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacForm implements StacForm {
  const _StacForm(
      {this.autovalidateMode, required final Map<String, dynamic> child})
      : _child = child;
  factory _StacForm.fromJson(Map<String, dynamic> json) =>
      _$StacFormFromJson(json);

  @override
  final AutovalidateMode? autovalidateMode;
  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  /// Create a copy of StacForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacFormCopyWith<_StacForm> get copyWith =>
      __$StacFormCopyWithImpl<_StacForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacFormToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacForm &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, autovalidateMode,
      const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacForm(autovalidateMode: $autovalidateMode, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacFormCopyWith<$Res>
    implements $StacFormCopyWith<$Res> {
  factory _$StacFormCopyWith(_StacForm value, $Res Function(_StacForm) _then) =
      __$StacFormCopyWithImpl;
  @override
  @useResult
  $Res call({AutovalidateMode? autovalidateMode, Map<String, dynamic> child});
}

/// @nodoc
class __$StacFormCopyWithImpl<$Res> implements _$StacFormCopyWith<$Res> {
  __$StacFormCopyWithImpl(this._self, this._then);

  final _StacForm _self;
  final $Res Function(_StacForm) _then;

  /// Create a copy of StacForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? autovalidateMode = freezed,
    Object? child = null,
  }) {
    return _then(_StacForm(
      autovalidateMode: freezed == autovalidateMode
          ? _self.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      child: null == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
