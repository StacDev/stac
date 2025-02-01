// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_column.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacColumn _$StacColumnFromJson(Map<String, dynamic> json) {
  return _StacColumn.fromJson(json);
}

/// @nodoc
mixin _$StacColumn {
  MainAxisAlignment get mainAxisAlignment => throw _privateConstructorUsedError;
  CrossAxisAlignment get crossAxisAlignment =>
      throw _privateConstructorUsedError;
  MainAxisSize get mainAxisSize => throw _privateConstructorUsedError;
  TextDirection? get textDirection => throw _privateConstructorUsedError;
  VerticalDirection get verticalDirection => throw _privateConstructorUsedError;
  double get spacing => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get children => throw _privateConstructorUsedError;

  /// Serializes this StacColumn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacColumn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacColumnCopyWith<StacColumn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacColumnCopyWith<$Res> {
  factory $StacColumnCopyWith(
          StacColumn value, $Res Function(StacColumn) then) =
      _$StacColumnCopyWithImpl<$Res, StacColumn>;
  @useResult
  $Res call(
      {MainAxisAlignment mainAxisAlignment,
      CrossAxisAlignment crossAxisAlignment,
      MainAxisSize mainAxisSize,
      TextDirection? textDirection,
      VerticalDirection verticalDirection,
      double spacing,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class _$StacColumnCopyWithImpl<$Res, $Val extends StacColumn>
    implements $StacColumnCopyWith<$Res> {
  _$StacColumnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacColumn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainAxisAlignment = null,
    Object? crossAxisAlignment = null,
    Object? mainAxisSize = null,
    Object? textDirection = freezed,
    Object? verticalDirection = null,
    Object? spacing = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      mainAxisAlignment: null == mainAxisAlignment
          ? _value.mainAxisAlignment
          : mainAxisAlignment // ignore: cast_nullable_to_non_nullable
              as MainAxisAlignment,
      crossAxisAlignment: null == crossAxisAlignment
          ? _value.crossAxisAlignment
          : crossAxisAlignment // ignore: cast_nullable_to_non_nullable
              as CrossAxisAlignment,
      mainAxisSize: null == mainAxisSize
          ? _value.mainAxisSize
          : mainAxisSize // ignore: cast_nullable_to_non_nullable
              as MainAxisSize,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      verticalDirection: null == verticalDirection
          ? _value.verticalDirection
          : verticalDirection // ignore: cast_nullable_to_non_nullable
              as VerticalDirection,
      spacing: null == spacing
          ? _value.spacing
          : spacing // ignore: cast_nullable_to_non_nullable
              as double,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacColumnImplCopyWith<$Res>
    implements $StacColumnCopyWith<$Res> {
  factory _$$StacColumnImplCopyWith(
          _$StacColumnImpl value, $Res Function(_$StacColumnImpl) then) =
      __$$StacColumnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MainAxisAlignment mainAxisAlignment,
      CrossAxisAlignment crossAxisAlignment,
      MainAxisSize mainAxisSize,
      TextDirection? textDirection,
      VerticalDirection verticalDirection,
      double spacing,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class __$$StacColumnImplCopyWithImpl<$Res>
    extends _$StacColumnCopyWithImpl<$Res, _$StacColumnImpl>
    implements _$$StacColumnImplCopyWith<$Res> {
  __$$StacColumnImplCopyWithImpl(
      _$StacColumnImpl _value, $Res Function(_$StacColumnImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacColumn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainAxisAlignment = null,
    Object? crossAxisAlignment = null,
    Object? mainAxisSize = null,
    Object? textDirection = freezed,
    Object? verticalDirection = null,
    Object? spacing = null,
    Object? children = null,
  }) {
    return _then(_$StacColumnImpl(
      mainAxisAlignment: null == mainAxisAlignment
          ? _value.mainAxisAlignment
          : mainAxisAlignment // ignore: cast_nullable_to_non_nullable
              as MainAxisAlignment,
      crossAxisAlignment: null == crossAxisAlignment
          ? _value.crossAxisAlignment
          : crossAxisAlignment // ignore: cast_nullable_to_non_nullable
              as CrossAxisAlignment,
      mainAxisSize: null == mainAxisSize
          ? _value.mainAxisSize
          : mainAxisSize // ignore: cast_nullable_to_non_nullable
              as MainAxisSize,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      verticalDirection: null == verticalDirection
          ? _value.verticalDirection
          : verticalDirection // ignore: cast_nullable_to_non_nullable
              as VerticalDirection,
      spacing: null == spacing
          ? _value.spacing
          : spacing // ignore: cast_nullable_to_non_nullable
              as double,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacColumnImpl implements _StacColumn {
  const _$StacColumnImpl(
      {this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.mainAxisSize = MainAxisSize.max,
      this.textDirection,
      this.verticalDirection = VerticalDirection.down,
      this.spacing = 0,
      final List<Map<String, dynamic>> children = const []})
      : _children = children;

  factory _$StacColumnImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacColumnImplFromJson(json);

  @override
  @JsonKey()
  final MainAxisAlignment mainAxisAlignment;
  @override
  @JsonKey()
  final CrossAxisAlignment crossAxisAlignment;
  @override
  @JsonKey()
  final MainAxisSize mainAxisSize;
  @override
  final TextDirection? textDirection;
  @override
  @JsonKey()
  final VerticalDirection verticalDirection;
  @override
  @JsonKey()
  final double spacing;
  final List<Map<String, dynamic>> _children;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'StacColumn(mainAxisAlignment: $mainAxisAlignment, crossAxisAlignment: $crossAxisAlignment, mainAxisSize: $mainAxisSize, textDirection: $textDirection, verticalDirection: $verticalDirection, spacing: $spacing, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacColumnImpl &&
            (identical(other.mainAxisAlignment, mainAxisAlignment) ||
                other.mainAxisAlignment == mainAxisAlignment) &&
            (identical(other.crossAxisAlignment, crossAxisAlignment) ||
                other.crossAxisAlignment == crossAxisAlignment) &&
            (identical(other.mainAxisSize, mainAxisSize) ||
                other.mainAxisSize == mainAxisSize) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.verticalDirection, verticalDirection) ||
                other.verticalDirection == verticalDirection) &&
            (identical(other.spacing, spacing) || other.spacing == spacing) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainAxisAlignment,
      crossAxisAlignment,
      mainAxisSize,
      textDirection,
      verticalDirection,
      spacing,
      const DeepCollectionEquality().hash(_children));

  /// Create a copy of StacColumn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacColumnImplCopyWith<_$StacColumnImpl> get copyWith =>
      __$$StacColumnImplCopyWithImpl<_$StacColumnImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacColumnImplToJson(
      this,
    );
  }
}

abstract class _StacColumn implements StacColumn {
  const factory _StacColumn(
      {final MainAxisAlignment mainAxisAlignment,
      final CrossAxisAlignment crossAxisAlignment,
      final MainAxisSize mainAxisSize,
      final TextDirection? textDirection,
      final VerticalDirection verticalDirection,
      final double spacing,
      final List<Map<String, dynamic>> children}) = _$StacColumnImpl;

  factory _StacColumn.fromJson(Map<String, dynamic> json) =
      _$StacColumnImpl.fromJson;

  @override
  MainAxisAlignment get mainAxisAlignment;
  @override
  CrossAxisAlignment get crossAxisAlignment;
  @override
  MainAxisSize get mainAxisSize;
  @override
  TextDirection? get textDirection;
  @override
  VerticalDirection get verticalDirection;
  @override
  double get spacing;
  @override
  List<Map<String, dynamic>> get children;

  /// Create a copy of StacColumn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacColumnImplCopyWith<_$StacColumnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
