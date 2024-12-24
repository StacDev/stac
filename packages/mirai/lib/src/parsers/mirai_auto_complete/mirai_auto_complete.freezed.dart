// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_auto_complete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiAutoComplete _$MiraiAutoCompleteFromJson(Map<String, dynamic> json) {
  return _MiraiAutoComplete.fromJson(json);
}

/// @nodoc
mixin _$MiraiAutoComplete {
  List<String> get options => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onSelected => throw _privateConstructorUsedError;
  double get optionsMaxHeight =>
      throw _privateConstructorUsedError; // optionsViewBuilder,
  OptionsViewOpenDirection get optionsViewOpenDirection =>
      throw _privateConstructorUsedError;
  String? get initialValue => throw _privateConstructorUsedError;

  /// Serializes this MiraiAutoComplete to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiAutoCompleteCopyWith<MiraiAutoComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiAutoCompleteCopyWith<$Res> {
  factory $MiraiAutoCompleteCopyWith(
          MiraiAutoComplete value, $Res Function(MiraiAutoComplete) then) =
      _$MiraiAutoCompleteCopyWithImpl<$Res, MiraiAutoComplete>;
  @useResult
  $Res call(
      {List<String> options,
      Map<String, dynamic>? onSelected,
      double optionsMaxHeight,
      OptionsViewOpenDirection optionsViewOpenDirection,
      String? initialValue});
}

/// @nodoc
class _$MiraiAutoCompleteCopyWithImpl<$Res, $Val extends MiraiAutoComplete>
    implements $MiraiAutoCompleteCopyWith<$Res> {
  _$MiraiAutoCompleteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiAutoComplete
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
    return _then(_value.copyWith(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      onSelected: freezed == onSelected
          ? _value.onSelected
          : onSelected // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      optionsMaxHeight: null == optionsMaxHeight
          ? _value.optionsMaxHeight
          : optionsMaxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      optionsViewOpenDirection: null == optionsViewOpenDirection
          ? _value.optionsViewOpenDirection
          : optionsViewOpenDirection // ignore: cast_nullable_to_non_nullable
              as OptionsViewOpenDirection,
      initialValue: freezed == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiAutoCompleteImplCopyWith<$Res>
    implements $MiraiAutoCompleteCopyWith<$Res> {
  factory _$$MiraiAutoCompleteImplCopyWith(_$MiraiAutoCompleteImpl value,
          $Res Function(_$MiraiAutoCompleteImpl) then) =
      __$$MiraiAutoCompleteImplCopyWithImpl<$Res>;
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
class __$$MiraiAutoCompleteImplCopyWithImpl<$Res>
    extends _$MiraiAutoCompleteCopyWithImpl<$Res, _$MiraiAutoCompleteImpl>
    implements _$$MiraiAutoCompleteImplCopyWith<$Res> {
  __$$MiraiAutoCompleteImplCopyWithImpl(_$MiraiAutoCompleteImpl _value,
      $Res Function(_$MiraiAutoCompleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiAutoComplete
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
    return _then(_$MiraiAutoCompleteImpl(
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      onSelected: freezed == onSelected
          ? _value._onSelected
          : onSelected // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      optionsMaxHeight: null == optionsMaxHeight
          ? _value.optionsMaxHeight
          : optionsMaxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      optionsViewOpenDirection: null == optionsViewOpenDirection
          ? _value.optionsViewOpenDirection
          : optionsViewOpenDirection // ignore: cast_nullable_to_non_nullable
              as OptionsViewOpenDirection,
      initialValue: freezed == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiAutoCompleteImpl implements _MiraiAutoComplete {
  const _$MiraiAutoCompleteImpl(
      {required final List<String> options,
      final Map<String, dynamic>? onSelected,
      this.optionsMaxHeight = 200,
      this.optionsViewOpenDirection = OptionsViewOpenDirection.down,
      this.initialValue})
      : _options = options,
        _onSelected = onSelected;

  factory _$MiraiAutoCompleteImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiAutoCompleteImplFromJson(json);

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
// optionsViewBuilder,
  @override
  @JsonKey()
  final OptionsViewOpenDirection optionsViewOpenDirection;
  @override
  final String? initialValue;

  @override
  String toString() {
    return 'MiraiAutoComplete(options: $options, onSelected: $onSelected, optionsMaxHeight: $optionsMaxHeight, optionsViewOpenDirection: $optionsViewOpenDirection, initialValue: $initialValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiAutoCompleteImpl &&
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

  /// Create a copy of MiraiAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiAutoCompleteImplCopyWith<_$MiraiAutoCompleteImpl> get copyWith =>
      __$$MiraiAutoCompleteImplCopyWithImpl<_$MiraiAutoCompleteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiAutoCompleteImplToJson(
      this,
    );
  }
}

abstract class _MiraiAutoComplete implements MiraiAutoComplete {
  const factory _MiraiAutoComplete(
      {required final List<String> options,
      final Map<String, dynamic>? onSelected,
      final double optionsMaxHeight,
      final OptionsViewOpenDirection optionsViewOpenDirection,
      final String? initialValue}) = _$MiraiAutoCompleteImpl;

  factory _MiraiAutoComplete.fromJson(Map<String, dynamic> json) =
      _$MiraiAutoCompleteImpl.fromJson;

  @override
  List<String> get options;
  @override
  Map<String, dynamic>? get onSelected;
  @override
  double get optionsMaxHeight; // optionsViewBuilder,
  @override
  OptionsViewOpenDirection get optionsViewOpenDirection;
  @override
  String? get initialValue;

  /// Create a copy of MiraiAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiAutoCompleteImplCopyWith<_$MiraiAutoCompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
