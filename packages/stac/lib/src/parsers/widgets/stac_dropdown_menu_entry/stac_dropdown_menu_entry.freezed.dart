// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_dropdown_menu_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
StacDropdownMenuEntry _$StacDropdownMenuEntryFromJson(
    Map<String, dynamic> json) {
  return _StacBDropdownMenuEntry.fromJson(json);
}

/// @nodoc
mixin _$StacDropdownMenuEntry {
  dynamic get value;
  String get label;
  Map<String, dynamic>? get labelWidget;
  Map<String, dynamic>? get leadingIcon;
  Map<String, dynamic>? get trailingIcon;
  bool get enabled;
  StacButtonStyle? get style;

  /// Create a copy of StacDropdownMenuEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDropdownMenuEntryCopyWith<StacDropdownMenuEntry> get copyWith =>
      _$StacDropdownMenuEntryCopyWithImpl<StacDropdownMenuEntry>(
          this as StacDropdownMenuEntry, _$identity);

  /// Serializes this StacDropdownMenuEntry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDropdownMenuEntry &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other.labelWidget, labelWidget) &&
            const DeepCollectionEquality()
                .equals(other.leadingIcon, leadingIcon) &&
            const DeepCollectionEquality()
                .equals(other.trailingIcon, trailingIcon) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      label,
      const DeepCollectionEquality().hash(labelWidget),
      const DeepCollectionEquality().hash(leadingIcon),
      const DeepCollectionEquality().hash(trailingIcon),
      enabled,
      style);

  @override
  String toString() {
    return 'StacDropdownMenuEntry(value: $value, label: $label, labelWidget: $labelWidget, leadingIcon: $leadingIcon, trailingIcon: $trailingIcon, enabled: $enabled, style: $style)';
  }
}

/// @nodoc
abstract mixin class $StacDropdownMenuEntryCopyWith<$Res> {
  factory $StacDropdownMenuEntryCopyWith(StacDropdownMenuEntry value,
          $Res Function(StacDropdownMenuEntry) _then) =
      _$StacDropdownMenuEntryCopyWithImpl;
  @useResult
  $Res call(
      {dynamic value,
      String label,
      Map<String, dynamic>? labelWidget,
      Map<String, dynamic>? leadingIcon,
      Map<String, dynamic>? trailingIcon,
      bool enabled,
      StacButtonStyle? style});

  $StacButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$StacDropdownMenuEntryCopyWithImpl<$Res>
    implements $StacDropdownMenuEntryCopyWith<$Res> {
  _$StacDropdownMenuEntryCopyWithImpl(this._self, this._then);

  final StacDropdownMenuEntry _self;
  final $Res Function(StacDropdownMenuEntry) _then;

  /// Create a copy of StacDropdownMenuEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? label = null,
    Object? labelWidget = freezed,
    Object? leadingIcon = freezed,
    Object? trailingIcon = freezed,
    Object? enabled = null,
    Object? style = freezed,
  }) {
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      labelWidget: freezed == labelWidget
          ? _self.labelWidget
          : labelWidget // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      leadingIcon: freezed == leadingIcon
          ? _self.leadingIcon
          : leadingIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      trailingIcon: freezed == trailingIcon
          ? _self.trailingIcon
          : trailingIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
    ));
  }

  /// Create a copy of StacDropdownMenuEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get style {
    if (_self.style == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.style!, (value) {
      return _then(_self.copyWith(style: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacBDropdownMenuEntry implements StacDropdownMenuEntry {
  const _StacBDropdownMenuEntry(
      {this.value,
      this.label = "",
      final Map<String, dynamic>? labelWidget,
      final Map<String, dynamic>? leadingIcon,
      final Map<String, dynamic>? trailingIcon,
      this.enabled = true,
      this.style})
      : _labelWidget = labelWidget,
        _leadingIcon = leadingIcon,
        _trailingIcon = trailingIcon;
  factory _StacBDropdownMenuEntry.fromJson(Map<String, dynamic> json) =>
      _$StacBDropdownMenuEntryFromJson(json);

  @override
  final dynamic value;
  @override
  @JsonKey()
  final String label;
  final Map<String, dynamic>? _labelWidget;
  @override
  Map<String, dynamic>? get labelWidget {
    final value = _labelWidget;
    if (value == null) return null;
    if (_labelWidget is EqualUnmodifiableMapView) return _labelWidget;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _leadingIcon;
  @override
  Map<String, dynamic>? get leadingIcon {
    final value = _leadingIcon;
    if (value == null) return null;
    if (_leadingIcon is EqualUnmodifiableMapView) return _leadingIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _trailingIcon;
  @override
  Map<String, dynamic>? get trailingIcon {
    final value = _trailingIcon;
    if (value == null) return null;
    if (_trailingIcon is EqualUnmodifiableMapView) return _trailingIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool enabled;
  @override
  final StacButtonStyle? style;

  /// Create a copy of StacDropdownMenuEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBDropdownMenuEntryCopyWith<_StacBDropdownMenuEntry> get copyWith =>
      __$StacBDropdownMenuEntryCopyWithImpl<_StacBDropdownMenuEntry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBDropdownMenuEntryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBDropdownMenuEntry &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other._labelWidget, _labelWidget) &&
            const DeepCollectionEquality()
                .equals(other._leadingIcon, _leadingIcon) &&
            const DeepCollectionEquality()
                .equals(other._trailingIcon, _trailingIcon) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      label,
      const DeepCollectionEquality().hash(_labelWidget),
      const DeepCollectionEquality().hash(_leadingIcon),
      const DeepCollectionEquality().hash(_trailingIcon),
      enabled,
      style);

  @override
  String toString() {
    return 'StacDropdownMenuEntry(value: $value, label: $label, labelWidget: $labelWidget, leadingIcon: $leadingIcon, trailingIcon: $trailingIcon, enabled: $enabled, style: $style)';
  }
}

/// @nodoc
abstract mixin class _$StacBDropdownMenuEntryCopyWith<$Res>
    implements $StacDropdownMenuEntryCopyWith<$Res> {
  factory _$StacBDropdownMenuEntryCopyWith(_StacBDropdownMenuEntry value,
          $Res Function(_StacBDropdownMenuEntry) _then) =
      __$StacBDropdownMenuEntryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic value,
      String label,
      Map<String, dynamic>? labelWidget,
      Map<String, dynamic>? leadingIcon,
      Map<String, dynamic>? trailingIcon,
      bool enabled,
      StacButtonStyle? style});

  @override
  $StacButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$StacBDropdownMenuEntryCopyWithImpl<$Res>
    implements _$StacBDropdownMenuEntryCopyWith<$Res> {
  __$StacBDropdownMenuEntryCopyWithImpl(this._self, this._then);

  final _StacBDropdownMenuEntry _self;
  final $Res Function(_StacBDropdownMenuEntry) _then;

  /// Create a copy of StacDropdownMenuEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
    Object? label = null,
    Object? labelWidget = freezed,
    Object? leadingIcon = freezed,
    Object? trailingIcon = freezed,
    Object? enabled = null,
    Object? style = freezed,
  }) {
    return _then(_StacBDropdownMenuEntry(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      labelWidget: freezed == labelWidget
          ? _self._labelWidget
          : labelWidget // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      leadingIcon: freezed == leadingIcon
          ? _self._leadingIcon
          : leadingIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      trailingIcon: freezed == trailingIcon
          ? _self._trailingIcon
          : trailingIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
    ));
  }

  /// Create a copy of StacDropdownMenuEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get style {
    if (_self.style == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.style!, (value) {
      return _then(_self.copyWith(style: value));
    });
  }
}

// dart format on
