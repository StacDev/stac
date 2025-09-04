// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_rounded_rectangle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacRoundedRectangleBorder {
  StacBorderSide? get side;
  StacBorderRadius? get borderRadius;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacRoundedRectangleBorderCopyWith<StacRoundedRectangleBorder>
      get copyWith =>
          _$StacRoundedRectangleBorderCopyWithImpl<StacRoundedRectangleBorder>(
              this as StacRoundedRectangleBorder, _$identity);

  /// Serializes this StacRoundedRectangleBorder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacRoundedRectangleBorder &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  @override
  String toString() {
    return 'StacRoundedRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }
}

/// @nodoc
abstract mixin class $StacRoundedRectangleBorderCopyWith<$Res> {
  factory $StacRoundedRectangleBorderCopyWith(StacRoundedRectangleBorder value,
          $Res Function(StacRoundedRectangleBorder) _then) =
      _$StacRoundedRectangleBorderCopyWithImpl;
  @useResult
  $Res call({StacBorderSide? side, StacBorderRadius? borderRadius});
}

/// @nodoc
class _$StacRoundedRectangleBorderCopyWithImpl<$Res>
    implements $StacRoundedRectangleBorderCopyWith<$Res> {
  _$StacRoundedRectangleBorderCopyWithImpl(this._self, this._then);

  final StacRoundedRectangleBorder _self;
  final $Res Function(StacRoundedRectangleBorder) _then;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_self.copyWith(
      side: freezed == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacRoundedRectangleBorder].
extension StacRoundedRectangleBorderPatterns on StacRoundedRectangleBorder {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StacRoundedRectangleBorder value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacRoundedRectangleBorder() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StacRoundedRectangleBorder value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacRoundedRectangleBorder():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StacRoundedRectangleBorder value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacRoundedRectangleBorder() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(StacBorderSide? side, StacBorderRadius? borderRadius)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacRoundedRectangleBorder() when $default != null:
        return $default(_that.side, _that.borderRadius);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(StacBorderSide? side, StacBorderRadius? borderRadius)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacRoundedRectangleBorder():
        return $default(_that.side, _that.borderRadius);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(StacBorderSide? side, StacBorderRadius? borderRadius)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacRoundedRectangleBorder() when $default != null:
        return $default(_that.side, _that.borderRadius);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacRoundedRectangleBorder implements StacRoundedRectangleBorder {
  const _StacRoundedRectangleBorder({this.side, this.borderRadius});
  factory _StacRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacRoundedRectangleBorderFromJson(json);

  @override
  final StacBorderSide? side;
  @override
  final StacBorderRadius? borderRadius;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacRoundedRectangleBorderCopyWith<_StacRoundedRectangleBorder>
      get copyWith => __$StacRoundedRectangleBorderCopyWithImpl<
          _StacRoundedRectangleBorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacRoundedRectangleBorderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacRoundedRectangleBorder &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  @override
  String toString() {
    return 'StacRoundedRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }
}

/// @nodoc
abstract mixin class _$StacRoundedRectangleBorderCopyWith<$Res>
    implements $StacRoundedRectangleBorderCopyWith<$Res> {
  factory _$StacRoundedRectangleBorderCopyWith(
          _StacRoundedRectangleBorder value,
          $Res Function(_StacRoundedRectangleBorder) _then) =
      __$StacRoundedRectangleBorderCopyWithImpl;
  @override
  @useResult
  $Res call({StacBorderSide? side, StacBorderRadius? borderRadius});
}

/// @nodoc
class __$StacRoundedRectangleBorderCopyWithImpl<$Res>
    implements _$StacRoundedRectangleBorderCopyWith<$Res> {
  __$StacRoundedRectangleBorderCopyWithImpl(this._self, this._then);

  final _StacRoundedRectangleBorder _self;
  final $Res Function(_StacRoundedRectangleBorder) _then;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? side = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_StacRoundedRectangleBorder(
      side: freezed == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
    ));
  }
}

// dart format on
