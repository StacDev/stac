// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CounterScreen _$CounterScreenFromJson(Map<String, dynamic> json) {
  return _CounterScreen.fromJson(json);
}

/// @nodoc
mixin _$CounterScreen {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get initialCount => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onIncrement => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onDecrement => throw _privateConstructorUsedError;

  /// Serializes this CounterScreen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CounterScreen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CounterScreenCopyWith<CounterScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterScreenCopyWith<$Res> {
  factory $CounterScreenCopyWith(
          CounterScreen value, $Res Function(CounterScreen) then) =
      _$CounterScreenCopyWithImpl<$Res, CounterScreen>;
  @useResult
  $Res call(
      {String title,
      String description,
      int initialCount,
      Map<String, dynamic>? onIncrement,
      Map<String, dynamic>? onDecrement});
}

/// @nodoc
class _$CounterScreenCopyWithImpl<$Res, $Val extends CounterScreen>
    implements $CounterScreenCopyWith<$Res> {
  _$CounterScreenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CounterScreen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? initialCount = null,
    Object? onIncrement = freezed,
    Object? onDecrement = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      initialCount: null == initialCount
          ? _value.initialCount
          : initialCount // ignore: cast_nullable_to_non_nullable
              as int,
      onIncrement: freezed == onIncrement
          ? _value.onIncrement
          : onIncrement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onDecrement: freezed == onDecrement
          ? _value.onDecrement
          : onDecrement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CounterScreenImplCopyWith<$Res>
    implements $CounterScreenCopyWith<$Res> {
  factory _$$CounterScreenImplCopyWith(
          _$CounterScreenImpl value, $Res Function(_$CounterScreenImpl) then) =
      __$$CounterScreenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      int initialCount,
      Map<String, dynamic>? onIncrement,
      Map<String, dynamic>? onDecrement});
}

/// @nodoc
class __$$CounterScreenImplCopyWithImpl<$Res>
    extends _$CounterScreenCopyWithImpl<$Res, _$CounterScreenImpl>
    implements _$$CounterScreenImplCopyWith<$Res> {
  __$$CounterScreenImplCopyWithImpl(
      _$CounterScreenImpl _value, $Res Function(_$CounterScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of CounterScreen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? initialCount = null,
    Object? onIncrement = freezed,
    Object? onDecrement = freezed,
  }) {
    return _then(_$CounterScreenImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      initialCount: null == initialCount
          ? _value.initialCount
          : initialCount // ignore: cast_nullable_to_non_nullable
              as int,
      onIncrement: freezed == onIncrement
          ? _value._onIncrement
          : onIncrement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onDecrement: freezed == onDecrement
          ? _value._onDecrement
          : onDecrement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CounterScreenImpl implements _CounterScreen {
  const _$CounterScreenImpl(
      {required this.title,
      required this.description,
      this.initialCount = 0,
      final Map<String, dynamic>? onIncrement,
      final Map<String, dynamic>? onDecrement})
      : _onIncrement = onIncrement,
        _onDecrement = onDecrement;

  factory _$CounterScreenImpl.fromJson(Map<String, dynamic> json) =>
      _$$CounterScreenImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final int initialCount;
  final Map<String, dynamic>? _onIncrement;
  @override
  Map<String, dynamic>? get onIncrement {
    final value = _onIncrement;
    if (value == null) return null;
    if (_onIncrement is EqualUnmodifiableMapView) return _onIncrement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onDecrement;
  @override
  Map<String, dynamic>? get onDecrement {
    final value = _onDecrement;
    if (value == null) return null;
    if (_onDecrement is EqualUnmodifiableMapView) return _onDecrement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CounterScreen(title: $title, description: $description, initialCount: $initialCount, onIncrement: $onIncrement, onDecrement: $onDecrement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterScreenImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.initialCount, initialCount) ||
                other.initialCount == initialCount) &&
            const DeepCollectionEquality()
                .equals(other._onIncrement, _onIncrement) &&
            const DeepCollectionEquality()
                .equals(other._onDecrement, _onDecrement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      initialCount,
      const DeepCollectionEquality().hash(_onIncrement),
      const DeepCollectionEquality().hash(_onDecrement));

  /// Create a copy of CounterScreen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterScreenImplCopyWith<_$CounterScreenImpl> get copyWith =>
      __$$CounterScreenImplCopyWithImpl<_$CounterScreenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CounterScreenImplToJson(
      this,
    );
  }
}

abstract class _CounterScreen implements CounterScreen {
  const factory _CounterScreen(
      {required final String title,
      required final String description,
      final int initialCount,
      final Map<String, dynamic>? onIncrement,
      final Map<String, dynamic>? onDecrement}) = _$CounterScreenImpl;

  factory _CounterScreen.fromJson(Map<String, dynamic> json) =
      _$CounterScreenImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int get initialCount;
  @override
  Map<String, dynamic>? get onIncrement;
  @override
  Map<String, dynamic>? get onDecrement;

  /// Create a copy of CounterScreen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CounterScreenImplCopyWith<_$CounterScreenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
