// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_image_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacImageFilter {
  StacImageFilterType get type;
  StacDouble get sigmaX;
  StacDouble? get sigmaY;
  StacDouble get radiusX;
  StacDouble? get radiusY;
  List<StacDouble>? get matrix;
  StacImageFilter? get inner;
  StacImageFilter? get outer;

  /// Create a copy of StacImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacImageFilterCopyWith<StacImageFilter> get copyWith =>
      _$StacImageFilterCopyWithImpl<StacImageFilter>(
          this as StacImageFilter, _$identity);

  /// Serializes this StacImageFilter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacImageFilter &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sigmaX, sigmaX) || other.sigmaX == sigmaX) &&
            (identical(other.sigmaY, sigmaY) || other.sigmaY == sigmaY) &&
            (identical(other.radiusX, radiusX) || other.radiusX == radiusX) &&
            (identical(other.radiusY, radiusY) || other.radiusY == radiusY) &&
            const DeepCollectionEquality().equals(other.matrix, matrix) &&
            (identical(other.inner, inner) || other.inner == inner) &&
            (identical(other.outer, outer) || other.outer == outer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, sigmaX, sigmaY, radiusX,
      radiusY, const DeepCollectionEquality().hash(matrix), inner, outer);

  @override
  String toString() {
    return 'StacImageFilter(type: $type, sigmaX: $sigmaX, sigmaY: $sigmaY, radiusX: $radiusX, radiusY: $radiusY, matrix: $matrix, inner: $inner, outer: $outer)';
  }
}

/// @nodoc
abstract mixin class $StacImageFilterCopyWith<$Res> {
  factory $StacImageFilterCopyWith(
          StacImageFilter value, $Res Function(StacImageFilter) _then) =
      _$StacImageFilterCopyWithImpl;
  @useResult
  $Res call(
      {StacImageFilterType type,
      StacDouble sigmaX,
      StacDouble? sigmaY,
      StacDouble radiusX,
      StacDouble? radiusY,
      List<StacDouble>? matrix,
      StacImageFilter? inner,
      StacImageFilter? outer});

  $StacImageFilterCopyWith<$Res>? get inner;
  $StacImageFilterCopyWith<$Res>? get outer;
}

/// @nodoc
class _$StacImageFilterCopyWithImpl<$Res>
    implements $StacImageFilterCopyWith<$Res> {
  _$StacImageFilterCopyWithImpl(this._self, this._then);

  final StacImageFilter _self;
  final $Res Function(StacImageFilter) _then;

  /// Create a copy of StacImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? sigmaX = null,
    Object? sigmaY = freezed,
    Object? radiusX = null,
    Object? radiusY = freezed,
    Object? matrix = freezed,
    Object? inner = freezed,
    Object? outer = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacImageFilterType,
      sigmaX: null == sigmaX
          ? _self.sigmaX
          : sigmaX // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      sigmaY: freezed == sigmaY
          ? _self.sigmaY
          : sigmaY // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      radiusX: null == radiusX
          ? _self.radiusX
          : radiusX // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      radiusY: freezed == radiusY
          ? _self.radiusY
          : radiusY // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      matrix: freezed == matrix
          ? _self.matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as List<StacDouble>?,
      inner: freezed == inner
          ? _self.inner
          : inner // ignore: cast_nullable_to_non_nullable
              as StacImageFilter?,
      outer: freezed == outer
          ? _self.outer
          : outer // ignore: cast_nullable_to_non_nullable
              as StacImageFilter?,
    ));
  }

  /// Create a copy of StacImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacImageFilterCopyWith<$Res>? get inner {
    if (_self.inner == null) {
      return null;
    }

    return $StacImageFilterCopyWith<$Res>(_self.inner!, (value) {
      return _then(_self.copyWith(inner: value));
    });
  }

  /// Create a copy of StacImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacImageFilterCopyWith<$Res>? get outer {
    if (_self.outer == null) {
      return null;
    }

    return $StacImageFilterCopyWith<$Res>(_self.outer!, (value) {
      return _then(_self.copyWith(outer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacImageFilter implements StacImageFilter {
  const _StacImageFilter(
      {required this.type,
      this.sigmaX = const StacDouble(0.0),
      this.sigmaY,
      this.radiusX = const StacDouble(0.0),
      this.radiusY,
      final List<StacDouble>? matrix,
      this.inner,
      this.outer})
      : _matrix = matrix;
  factory _StacImageFilter.fromJson(Map<String, dynamic> json) =>
      _$StacImageFilterFromJson(json);

  @override
  final StacImageFilterType type;
  @override
  @JsonKey()
  final StacDouble sigmaX;
  @override
  final StacDouble? sigmaY;
  @override
  @JsonKey()
  final StacDouble radiusX;
  @override
  final StacDouble? radiusY;
  final List<StacDouble>? _matrix;
  @override
  List<StacDouble>? get matrix {
    final value = _matrix;
    if (value == null) return null;
    if (_matrix is EqualUnmodifiableListView) return _matrix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final StacImageFilter? inner;
  @override
  final StacImageFilter? outer;

  /// Create a copy of StacImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacImageFilterCopyWith<_StacImageFilter> get copyWith =>
      __$StacImageFilterCopyWithImpl<_StacImageFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacImageFilterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacImageFilter &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sigmaX, sigmaX) || other.sigmaX == sigmaX) &&
            (identical(other.sigmaY, sigmaY) || other.sigmaY == sigmaY) &&
            (identical(other.radiusX, radiusX) || other.radiusX == radiusX) &&
            (identical(other.radiusY, radiusY) || other.radiusY == radiusY) &&
            const DeepCollectionEquality().equals(other._matrix, _matrix) &&
            (identical(other.inner, inner) || other.inner == inner) &&
            (identical(other.outer, outer) || other.outer == outer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, sigmaX, sigmaY, radiusX,
      radiusY, const DeepCollectionEquality().hash(_matrix), inner, outer);

  @override
  String toString() {
    return 'StacImageFilter(type: $type, sigmaX: $sigmaX, sigmaY: $sigmaY, radiusX: $radiusX, radiusY: $radiusY, matrix: $matrix, inner: $inner, outer: $outer)';
  }
}

/// @nodoc
abstract mixin class _$StacImageFilterCopyWith<$Res>
    implements $StacImageFilterCopyWith<$Res> {
  factory _$StacImageFilterCopyWith(
          _StacImageFilter value, $Res Function(_StacImageFilter) _then) =
      __$StacImageFilterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacImageFilterType type,
      StacDouble sigmaX,
      StacDouble? sigmaY,
      StacDouble radiusX,
      StacDouble? radiusY,
      List<StacDouble>? matrix,
      StacImageFilter? inner,
      StacImageFilter? outer});

  @override
  $StacImageFilterCopyWith<$Res>? get inner;
  @override
  $StacImageFilterCopyWith<$Res>? get outer;
}

/// @nodoc
class __$StacImageFilterCopyWithImpl<$Res>
    implements _$StacImageFilterCopyWith<$Res> {
  __$StacImageFilterCopyWithImpl(this._self, this._then);

  final _StacImageFilter _self;
  final $Res Function(_StacImageFilter) _then;

  /// Create a copy of StacImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? sigmaX = null,
    Object? sigmaY = freezed,
    Object? radiusX = null,
    Object? radiusY = freezed,
    Object? matrix = freezed,
    Object? inner = freezed,
    Object? outer = freezed,
  }) {
    return _then(_StacImageFilter(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacImageFilterType,
      sigmaX: null == sigmaX
          ? _self.sigmaX
          : sigmaX // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      sigmaY: freezed == sigmaY
          ? _self.sigmaY
          : sigmaY // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      radiusX: null == radiusX
          ? _self.radiusX
          : radiusX // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      radiusY: freezed == radiusY
          ? _self.radiusY
          : radiusY // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      matrix: freezed == matrix
          ? _self._matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as List<StacDouble>?,
      inner: freezed == inner
          ? _self.inner
          : inner // ignore: cast_nullable_to_non_nullable
              as StacImageFilter?,
      outer: freezed == outer
          ? _self.outer
          : outer // ignore: cast_nullable_to_non_nullable
              as StacImageFilter?,
    ));
  }

  /// Create a copy of StacImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacImageFilterCopyWith<$Res>? get inner {
    if (_self.inner == null) {
      return null;
    }

    return $StacImageFilterCopyWith<$Res>(_self.inner!, (value) {
      return _then(_self.copyWith(inner: value));
    });
  }

  /// Create a copy of StacImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacImageFilterCopyWith<$Res>? get outer {
    if (_self.outer == null) {
      return null;
    }

    return $StacImageFilterCopyWith<$Res>(_self.outer!, (value) {
      return _then(_self.copyWith(outer: value));
    });
  }
}

// dart format on
