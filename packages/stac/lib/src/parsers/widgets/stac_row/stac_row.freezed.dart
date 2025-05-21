// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacRow {
  MainAxisAlignment get mainAxisAlignment;
  CrossAxisAlignment get crossAxisAlignment;
  MainAxisSize get mainAxisSize;
  TextDirection? get textDirection;
  VerticalDirection get verticalDirection;
  StacDouble get spacing;
  List<Map<String, dynamic>> get children;

  /// Create a copy of StacRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacRowCopyWith<StacRow> get copyWith =>
      _$StacRowCopyWithImpl<StacRow>(this as StacRow, _$identity);

  /// Serializes this StacRow to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacRow &&
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
            const DeepCollectionEquality().equals(other.children, children));
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
      const DeepCollectionEquality().hash(children));

  @override
  String toString() {
    return 'StacRow(mainAxisAlignment: $mainAxisAlignment, crossAxisAlignment: $crossAxisAlignment, mainAxisSize: $mainAxisSize, textDirection: $textDirection, verticalDirection: $verticalDirection, spacing: $spacing, children: $children)';
  }
}

/// @nodoc
abstract mixin class $StacRowCopyWith<$Res> {
  factory $StacRowCopyWith(StacRow value, $Res Function(StacRow) _then) =
      _$StacRowCopyWithImpl;
  @useResult
  $Res call(
      {MainAxisAlignment mainAxisAlignment,
      CrossAxisAlignment crossAxisAlignment,
      MainAxisSize mainAxisSize,
      TextDirection? textDirection,
      VerticalDirection verticalDirection,
      StacDouble spacing,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class _$StacRowCopyWithImpl<$Res> implements $StacRowCopyWith<$Res> {
  _$StacRowCopyWithImpl(this._self, this._then);

  final StacRow _self;
  final $Res Function(StacRow) _then;

  /// Create a copy of StacRow
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
    return _then(_self.copyWith(
      mainAxisAlignment: null == mainAxisAlignment
          ? _self.mainAxisAlignment
          : mainAxisAlignment // ignore: cast_nullable_to_non_nullable
              as MainAxisAlignment,
      crossAxisAlignment: null == crossAxisAlignment
          ? _self.crossAxisAlignment
          : crossAxisAlignment // ignore: cast_nullable_to_non_nullable
              as CrossAxisAlignment,
      mainAxisSize: null == mainAxisSize
          ? _self.mainAxisSize
          : mainAxisSize // ignore: cast_nullable_to_non_nullable
              as MainAxisSize,
      textDirection: freezed == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      verticalDirection: null == verticalDirection
          ? _self.verticalDirection
          : verticalDirection // ignore: cast_nullable_to_non_nullable
              as VerticalDirection,
      spacing: null == spacing
          ? _self.spacing
          : spacing // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      children: null == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacRow implements StacRow {
  const _StacRow(
      {this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.mainAxisSize = MainAxisSize.max,
      this.textDirection,
      this.verticalDirection = VerticalDirection.down,
      this.spacing = StacDouble.zero,
      final List<Map<String, dynamic>> children = const []})
      : _children = children;
  factory _StacRow.fromJson(Map<String, dynamic> json) =>
      _$StacRowFromJson(json);

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
  final StacDouble spacing;
  final List<Map<String, dynamic>> _children;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  /// Create a copy of StacRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacRowCopyWith<_StacRow> get copyWith =>
      __$StacRowCopyWithImpl<_StacRow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacRowToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacRow &&
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

  @override
  String toString() {
    return 'StacRow(mainAxisAlignment: $mainAxisAlignment, crossAxisAlignment: $crossAxisAlignment, mainAxisSize: $mainAxisSize, textDirection: $textDirection, verticalDirection: $verticalDirection, spacing: $spacing, children: $children)';
  }
}

/// @nodoc
abstract mixin class _$StacRowCopyWith<$Res> implements $StacRowCopyWith<$Res> {
  factory _$StacRowCopyWith(_StacRow value, $Res Function(_StacRow) _then) =
      __$StacRowCopyWithImpl;
  @override
  @useResult
  $Res call(
      {MainAxisAlignment mainAxisAlignment,
      CrossAxisAlignment crossAxisAlignment,
      MainAxisSize mainAxisSize,
      TextDirection? textDirection,
      VerticalDirection verticalDirection,
      StacDouble spacing,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class __$StacRowCopyWithImpl<$Res> implements _$StacRowCopyWith<$Res> {
  __$StacRowCopyWithImpl(this._self, this._then);

  final _StacRow _self;
  final $Res Function(_StacRow) _then;

  /// Create a copy of StacRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mainAxisAlignment = null,
    Object? crossAxisAlignment = null,
    Object? mainAxisSize = null,
    Object? textDirection = freezed,
    Object? verticalDirection = null,
    Object? spacing = null,
    Object? children = null,
  }) {
    return _then(_StacRow(
      mainAxisAlignment: null == mainAxisAlignment
          ? _self.mainAxisAlignment
          : mainAxisAlignment // ignore: cast_nullable_to_non_nullable
              as MainAxisAlignment,
      crossAxisAlignment: null == crossAxisAlignment
          ? _self.crossAxisAlignment
          : crossAxisAlignment // ignore: cast_nullable_to_non_nullable
              as CrossAxisAlignment,
      mainAxisSize: null == mainAxisSize
          ? _self.mainAxisSize
          : mainAxisSize // ignore: cast_nullable_to_non_nullable
              as MainAxisSize,
      textDirection: freezed == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      verticalDirection: null == verticalDirection
          ? _self.verticalDirection
          : verticalDirection // ignore: cast_nullable_to_non_nullable
              as VerticalDirection,
      spacing: null == spacing
          ? _self.spacing
          : spacing // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      children: null == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

// dart format on
