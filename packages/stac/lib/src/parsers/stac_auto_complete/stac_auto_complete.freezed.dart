// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_auto_complete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacAutoComplete {
  List<String> get options;
  Map<String, dynamic>? get onSelected;
  double get optionsMaxHeight;
  OptionsViewOpenDirection get optionsViewOpenDirection;
  String? get initialValue;

  /// Create a copy of StacAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacAutoCompleteCopyWith<StacAutoComplete> get copyWith =>
      _$StacAutoCompleteCopyWithImpl<StacAutoComplete>(
          this as StacAutoComplete, _$identity);

  /// Serializes this StacAutoComplete to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacAutoComplete &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality()
                .equals(other.onSelected, onSelected) &&
            (identical(other.optionsMaxHeight, optionsMaxHeight) ||
                other.optionsMaxHeight == optionsMaxHeight) &&
            (identical(
                    other.optionsViewOpenDirection, optionsViewOpenDirection) ||
                other.optionsViewOpenDirection == optionsViewOpenDirection) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(onSelected),
      optionsMaxHeight,
      optionsViewOpenDirection,
      initialValue);

  @override
  String toString() {
    return 'StacAutoComplete(options: $options, onSelected: $onSelected, optionsMaxHeight: $optionsMaxHeight, optionsViewOpenDirection: $optionsViewOpenDirection, initialValue: $initialValue)';
  }
}

/// @nodoc
abstract mixin class $StacAutoCompleteCopyWith<$Res> {
  factory $StacAutoCompleteCopyWith(
          StacAutoComplete value, $Res Function(StacAutoComplete) _then) =
      _$StacAutoCompleteCopyWithImpl;
  @useResult
  $Res call(
      {List<String> options,
      Map<String, dynamic>? onSelected,
      double optionsMaxHeight,
      OptionsViewOpenDirection optionsViewOpenDirection,
      String? initialValue});
}

/// @nodoc
class _$StacAutoCompleteCopyWithImpl<$Res>
    implements $StacAutoCompleteCopyWith<$Res> {
  _$StacAutoCompleteCopyWithImpl(this._self, this._then);

  final StacAutoComplete _self;
  final $Res Function(StacAutoComplete) _then;

  /// Create a copy of StacAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? onSelected = freezed,
    Object? optionsMaxHeight = null,
    Object? optionsViewOpenDirection = null,
    Object? initialValue = freezed,
  }) {
    return _then(_self.copyWith(
      options: null == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      onSelected: freezed == onSelected
          ? _self.onSelected
          : onSelected // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      optionsMaxHeight: null == optionsMaxHeight
          ? _self.optionsMaxHeight
          : optionsMaxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      optionsViewOpenDirection: null == optionsViewOpenDirection
          ? _self.optionsViewOpenDirection
          : optionsViewOpenDirection // ignore: cast_nullable_to_non_nullable
              as OptionsViewOpenDirection,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacAutoComplete implements StacAutoComplete {
  const _StacAutoComplete(
      {required final List<String> options,
      final Map<String, dynamic>? onSelected,
      this.optionsMaxHeight = 200,
      this.optionsViewOpenDirection = OptionsViewOpenDirection.down,
      this.initialValue})
      : _options = options,
        _onSelected = onSelected;
  factory _StacAutoComplete.fromJson(Map<String, dynamic> json) =>
      _$StacAutoCompleteFromJson(json);

  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  final Map<String, dynamic>? _onSelected;
  @override
  Map<String, dynamic>? get onSelected {
    final value = _onSelected;
    if (value == null) return null;
    if (_onSelected is EqualUnmodifiableMapView) return _onSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final double optionsMaxHeight;
  @override
  @JsonKey()
  final OptionsViewOpenDirection optionsViewOpenDirection;
  @override
  final String? initialValue;

  /// Create a copy of StacAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacAutoCompleteCopyWith<_StacAutoComplete> get copyWith =>
      __$StacAutoCompleteCopyWithImpl<_StacAutoComplete>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacAutoCompleteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacAutoComplete &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality()
                .equals(other._onSelected, _onSelected) &&
            (identical(other.optionsMaxHeight, optionsMaxHeight) ||
                other.optionsMaxHeight == optionsMaxHeight) &&
            (identical(
                    other.optionsViewOpenDirection, optionsViewOpenDirection) ||
                other.optionsViewOpenDirection == optionsViewOpenDirection) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_onSelected),
      optionsMaxHeight,
      optionsViewOpenDirection,
      initialValue);

  @override
  String toString() {
    return 'StacAutoComplete(options: $options, onSelected: $onSelected, optionsMaxHeight: $optionsMaxHeight, optionsViewOpenDirection: $optionsViewOpenDirection, initialValue: $initialValue)';
  }
}

/// @nodoc
abstract mixin class _$StacAutoCompleteCopyWith<$Res>
    implements $StacAutoCompleteCopyWith<$Res> {
  factory _$StacAutoCompleteCopyWith(
          _StacAutoComplete value, $Res Function(_StacAutoComplete) _then) =
      __$StacAutoCompleteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> options,
      Map<String, dynamic>? onSelected,
      double optionsMaxHeight,
      OptionsViewOpenDirection optionsViewOpenDirection,
      String? initialValue});
}

/// @nodoc
class __$StacAutoCompleteCopyWithImpl<$Res>
    implements _$StacAutoCompleteCopyWith<$Res> {
  __$StacAutoCompleteCopyWithImpl(this._self, this._then);

  final _StacAutoComplete _self;
  final $Res Function(_StacAutoComplete) _then;

  /// Create a copy of StacAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? options = null,
    Object? onSelected = freezed,
    Object? optionsMaxHeight = null,
    Object? optionsViewOpenDirection = null,
    Object? initialValue = freezed,
  }) {
    return _then(_StacAutoComplete(
      options: null == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      onSelected: freezed == onSelected
          ? _self._onSelected
          : onSelected // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      optionsMaxHeight: null == optionsMaxHeight
          ? _self.optionsMaxHeight
          : optionsMaxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      optionsViewOpenDirection: null == optionsViewOpenDirection
          ? _self.optionsViewOpenDirection
          : optionsViewOpenDirection // ignore: cast_nullable_to_non_nullable
              as OptionsViewOpenDirection,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
