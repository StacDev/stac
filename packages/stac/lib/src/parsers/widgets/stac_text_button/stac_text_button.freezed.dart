// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_text_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacTextButton {
  Map<String, dynamic>? get onPressed;
  Map<String, dynamic>? get onLongPress;
  Map<String, dynamic>? get onHover;
  Map<String, dynamic>? get onFocusChange;
  StacButtonStyle? get style;
  dynamic get autofocus;
  Clip get clipBehavior;
  bool get isSemanticButton;
  Map<String, dynamic> get child;

  /// Create a copy of StacTextButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTextButtonCopyWith<StacTextButton> get copyWith =>
      _$StacTextButtonCopyWithImpl<StacTextButton>(
          this as StacTextButton, _$identity);

  /// Serializes this StacTextButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTextButton &&
            const DeepCollectionEquality().equals(other.onPressed, onPressed) &&
            const DeepCollectionEquality()
                .equals(other.onLongPress, onLongPress) &&
            const DeepCollectionEquality().equals(other.onHover, onHover) &&
            const DeepCollectionEquality()
                .equals(other.onFocusChange, onFocusChange) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other.autofocus, autofocus) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.isSemanticButton, isSemanticButton) ||
                other.isSemanticButton == isSemanticButton) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(onPressed),
      const DeepCollectionEquality().hash(onLongPress),
      const DeepCollectionEquality().hash(onHover),
      const DeepCollectionEquality().hash(onFocusChange),
      style,
      const DeepCollectionEquality().hash(autofocus),
      clipBehavior,
      isSemanticButton,
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacTextButton(onPressed: $onPressed, onLongPress: $onLongPress, onHover: $onHover, onFocusChange: $onFocusChange, style: $style, autofocus: $autofocus, clipBehavior: $clipBehavior, isSemanticButton: $isSemanticButton, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacTextButtonCopyWith<$Res> {
  factory $StacTextButtonCopyWith(
          StacTextButton value, $Res Function(StacTextButton) _then) =
      _$StacTextButtonCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? onPressed,
      Map<String, dynamic>? onLongPress,
      Map<String, dynamic>? onHover,
      Map<String, dynamic>? onFocusChange,
      StacButtonStyle? style,
      dynamic autofocus,
      Clip clipBehavior,
      bool isSemanticButton,
      Map<String, dynamic> child});

  $StacButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$StacTextButtonCopyWithImpl<$Res>
    implements $StacTextButtonCopyWith<$Res> {
  _$StacTextButtonCopyWithImpl(this._self, this._then);

  final StacTextButton _self;
  final $Res Function(StacTextButton) _then;

  /// Create a copy of StacTextButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onPressed = freezed,
    Object? onLongPress = freezed,
    Object? onHover = freezed,
    Object? onFocusChange = freezed,
    Object? style = freezed,
    Object? autofocus = freezed,
    Object? clipBehavior = null,
    Object? isSemanticButton = null,
    Object? child = null,
  }) {
    return _then(_self.copyWith(
      onPressed: freezed == onPressed
          ? _self.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onLongPress: freezed == onLongPress
          ? _self.onLongPress
          : onLongPress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onHover: freezed == onHover
          ? _self.onHover
          : onHover // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onFocusChange: freezed == onFocusChange
          ? _self.onFocusChange
          : onFocusChange // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      autofocus: freezed == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      isSemanticButton: null == isSemanticButton
          ? _self.isSemanticButton
          : isSemanticButton // ignore: cast_nullable_to_non_nullable
              as bool,
      child: null == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  /// Create a copy of StacTextButton
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
class _StacTextButton implements StacTextButton {
  const _StacTextButton(
      {final Map<String, dynamic>? onPressed,
      final Map<String, dynamic>? onLongPress,
      final Map<String, dynamic>? onHover,
      final Map<String, dynamic>? onFocusChange,
      this.style,
      this.autofocus = false,
      this.clipBehavior = Clip.none,
      this.isSemanticButton = true,
      required final Map<String, dynamic> child})
      : _onPressed = onPressed,
        _onLongPress = onLongPress,
        _onHover = onHover,
        _onFocusChange = onFocusChange,
        _child = child;
  factory _StacTextButton.fromJson(Map<String, dynamic> json) =>
      _$StacTextButtonFromJson(json);

  final Map<String, dynamic>? _onPressed;
  @override
  Map<String, dynamic>? get onPressed {
    final value = _onPressed;
    if (value == null) return null;
    if (_onPressed is EqualUnmodifiableMapView) return _onPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onLongPress;
  @override
  Map<String, dynamic>? get onLongPress {
    final value = _onLongPress;
    if (value == null) return null;
    if (_onLongPress is EqualUnmodifiableMapView) return _onLongPress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onHover;
  @override
  Map<String, dynamic>? get onHover {
    final value = _onHover;
    if (value == null) return null;
    if (_onHover is EqualUnmodifiableMapView) return _onHover;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onFocusChange;
  @override
  Map<String, dynamic>? get onFocusChange {
    final value = _onFocusChange;
    if (value == null) return null;
    if (_onFocusChange is EqualUnmodifiableMapView) return _onFocusChange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacButtonStyle? style;
  @override
  @JsonKey()
  final dynamic autofocus;
  @override
  @JsonKey()
  final Clip clipBehavior;
  @override
  @JsonKey()
  final bool isSemanticButton;
  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  /// Create a copy of StacTextButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTextButtonCopyWith<_StacTextButton> get copyWith =>
      __$StacTextButtonCopyWithImpl<_StacTextButton>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTextButtonToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTextButton &&
            const DeepCollectionEquality()
                .equals(other._onPressed, _onPressed) &&
            const DeepCollectionEquality()
                .equals(other._onLongPress, _onLongPress) &&
            const DeepCollectionEquality().equals(other._onHover, _onHover) &&
            const DeepCollectionEquality()
                .equals(other._onFocusChange, _onFocusChange) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other.autofocus, autofocus) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.isSemanticButton, isSemanticButton) ||
                other.isSemanticButton == isSemanticButton) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_onPressed),
      const DeepCollectionEquality().hash(_onLongPress),
      const DeepCollectionEquality().hash(_onHover),
      const DeepCollectionEquality().hash(_onFocusChange),
      style,
      const DeepCollectionEquality().hash(autofocus),
      clipBehavior,
      isSemanticButton,
      const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacTextButton(onPressed: $onPressed, onLongPress: $onLongPress, onHover: $onHover, onFocusChange: $onFocusChange, style: $style, autofocus: $autofocus, clipBehavior: $clipBehavior, isSemanticButton: $isSemanticButton, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacTextButtonCopyWith<$Res>
    implements $StacTextButtonCopyWith<$Res> {
  factory _$StacTextButtonCopyWith(
          _StacTextButton value, $Res Function(_StacTextButton) _then) =
      __$StacTextButtonCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? onPressed,
      Map<String, dynamic>? onLongPress,
      Map<String, dynamic>? onHover,
      Map<String, dynamic>? onFocusChange,
      StacButtonStyle? style,
      dynamic autofocus,
      Clip clipBehavior,
      bool isSemanticButton,
      Map<String, dynamic> child});

  @override
  $StacButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$StacTextButtonCopyWithImpl<$Res>
    implements _$StacTextButtonCopyWith<$Res> {
  __$StacTextButtonCopyWithImpl(this._self, this._then);

  final _StacTextButton _self;
  final $Res Function(_StacTextButton) _then;

  /// Create a copy of StacTextButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? onPressed = freezed,
    Object? onLongPress = freezed,
    Object? onHover = freezed,
    Object? onFocusChange = freezed,
    Object? style = freezed,
    Object? autofocus = freezed,
    Object? clipBehavior = null,
    Object? isSemanticButton = null,
    Object? child = null,
  }) {
    return _then(_StacTextButton(
      onPressed: freezed == onPressed
          ? _self._onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onLongPress: freezed == onLongPress
          ? _self._onLongPress
          : onLongPress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onHover: freezed == onHover
          ? _self._onHover
          : onHover // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onFocusChange: freezed == onFocusChange
          ? _self._onFocusChange
          : onFocusChange // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      autofocus: freezed == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      isSemanticButton: null == isSemanticButton
          ? _self.isSemanticButton
          : isSemanticButton // ignore: cast_nullable_to_non_nullable
              as bool,
      child: null == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  /// Create a copy of StacTextButton
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
