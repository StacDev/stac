// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacTable _$StacTableFromJson(Map<String, dynamic> json) {
  return _StacTable.fromJson(json);
}

/// @nodoc
mixin _$StacTable {
  List<StacTableRow> get children => throw _privateConstructorUsedError;
  Map<int, StacTableColumnWidth>? get columnWidths =>
      throw _privateConstructorUsedError;
  StacTableColumnWidth? get defaultColumnWidth =>
      throw _privateConstructorUsedError;
  TextDirection? get textDirection => throw _privateConstructorUsedError;
  StacTableBorder? get border => throw _privateConstructorUsedError;
  TableCellVerticalAlignment get defaultVerticalAlignment =>
      throw _privateConstructorUsedError;
  TextBaseline? get textBaseline => throw _privateConstructorUsedError;

  /// Serializes this StacTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacTableCopyWith<StacTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacTableCopyWith<$Res> {
  factory $StacTableCopyWith(StacTable value, $Res Function(StacTable) then) =
      _$StacTableCopyWithImpl<$Res, StacTable>;
  @useResult
  $Res call(
      {List<StacTableRow> children,
      Map<int, StacTableColumnWidth>? columnWidths,
      StacTableColumnWidth? defaultColumnWidth,
      TextDirection? textDirection,
      StacTableBorder? border,
      TableCellVerticalAlignment defaultVerticalAlignment,
      TextBaseline? textBaseline});

  $StacTableColumnWidthCopyWith<$Res>? get defaultColumnWidth;
  $StacTableBorderCopyWith<$Res>? get border;
}

/// @nodoc
class _$StacTableCopyWithImpl<$Res, $Val extends StacTable>
    implements $StacTableCopyWith<$Res> {
  _$StacTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? columnWidths = freezed,
    Object? defaultColumnWidth = freezed,
    Object? textDirection = freezed,
    Object? border = freezed,
    Object? defaultVerticalAlignment = null,
    Object? textBaseline = freezed,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<StacTableRow>,
      columnWidths: freezed == columnWidths
          ? _value.columnWidths
          : columnWidths // ignore: cast_nullable_to_non_nullable
              as Map<int, StacTableColumnWidth>?,
      defaultColumnWidth: freezed == defaultColumnWidth
          ? _value.defaultColumnWidth
          : defaultColumnWidth // ignore: cast_nullable_to_non_nullable
              as StacTableColumnWidth?,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      border: freezed == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as StacTableBorder?,
      defaultVerticalAlignment: null == defaultVerticalAlignment
          ? _value.defaultVerticalAlignment
          : defaultVerticalAlignment // ignore: cast_nullable_to_non_nullable
              as TableCellVerticalAlignment,
      textBaseline: freezed == textBaseline
          ? _value.textBaseline
          : textBaseline // ignore: cast_nullable_to_non_nullable
              as TextBaseline?,
    ) as $Val);
  }

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTableColumnWidthCopyWith<$Res>? get defaultColumnWidth {
    if (_value.defaultColumnWidth == null) {
      return null;
    }

    return $StacTableColumnWidthCopyWith<$Res>(_value.defaultColumnWidth!,
        (value) {
      return _then(_value.copyWith(defaultColumnWidth: value) as $Val);
    });
  }

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTableBorderCopyWith<$Res>? get border {
    if (_value.border == null) {
      return null;
    }

    return $StacTableBorderCopyWith<$Res>(_value.border!, (value) {
      return _then(_value.copyWith(border: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacTableImplCopyWith<$Res>
    implements $StacTableCopyWith<$Res> {
  factory _$$StacTableImplCopyWith(
          _$StacTableImpl value, $Res Function(_$StacTableImpl) then) =
      __$$StacTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<StacTableRow> children,
      Map<int, StacTableColumnWidth>? columnWidths,
      StacTableColumnWidth? defaultColumnWidth,
      TextDirection? textDirection,
      StacTableBorder? border,
      TableCellVerticalAlignment defaultVerticalAlignment,
      TextBaseline? textBaseline});

  @override
  $StacTableColumnWidthCopyWith<$Res>? get defaultColumnWidth;
  @override
  $StacTableBorderCopyWith<$Res>? get border;
}

/// @nodoc
class __$$StacTableImplCopyWithImpl<$Res>
    extends _$StacTableCopyWithImpl<$Res, _$StacTableImpl>
    implements _$$StacTableImplCopyWith<$Res> {
  __$$StacTableImplCopyWithImpl(
      _$StacTableImpl _value, $Res Function(_$StacTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? columnWidths = freezed,
    Object? defaultColumnWidth = freezed,
    Object? textDirection = freezed,
    Object? border = freezed,
    Object? defaultVerticalAlignment = null,
    Object? textBaseline = freezed,
  }) {
    return _then(_$StacTableImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<StacTableRow>,
      columnWidths: freezed == columnWidths
          ? _value._columnWidths
          : columnWidths // ignore: cast_nullable_to_non_nullable
              as Map<int, StacTableColumnWidth>?,
      defaultColumnWidth: freezed == defaultColumnWidth
          ? _value.defaultColumnWidth
          : defaultColumnWidth // ignore: cast_nullable_to_non_nullable
              as StacTableColumnWidth?,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      border: freezed == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as StacTableBorder?,
      defaultVerticalAlignment: null == defaultVerticalAlignment
          ? _value.defaultVerticalAlignment
          : defaultVerticalAlignment // ignore: cast_nullable_to_non_nullable
              as TableCellVerticalAlignment,
      textBaseline: freezed == textBaseline
          ? _value.textBaseline
          : textBaseline // ignore: cast_nullable_to_non_nullable
              as TextBaseline?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacTableImpl implements _StacTable {
  const _$StacTableImpl(
      {final List<StacTableRow> children = const [],
      final Map<int, StacTableColumnWidth>? columnWidths,
      this.defaultColumnWidth,
      this.textDirection,
      this.border,
      this.defaultVerticalAlignment = TableCellVerticalAlignment.top,
      this.textBaseline})
      : _children = children,
        _columnWidths = columnWidths;

  factory _$StacTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacTableImplFromJson(json);

  final List<StacTableRow> _children;
  @override
  @JsonKey()
  List<StacTableRow> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  final Map<int, StacTableColumnWidth>? _columnWidths;
  @override
  Map<int, StacTableColumnWidth>? get columnWidths {
    final value = _columnWidths;
    if (value == null) return null;
    if (_columnWidths is EqualUnmodifiableMapView) return _columnWidths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacTableColumnWidth? defaultColumnWidth;
  @override
  final TextDirection? textDirection;
  @override
  final StacTableBorder? border;
  @override
  @JsonKey()
  final TableCellVerticalAlignment defaultVerticalAlignment;
  @override
  final TextBaseline? textBaseline;

  @override
  String toString() {
    return 'StacTable(children: $children, columnWidths: $columnWidths, defaultColumnWidth: $defaultColumnWidth, textDirection: $textDirection, border: $border, defaultVerticalAlignment: $defaultVerticalAlignment, textBaseline: $textBaseline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacTableImpl &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            const DeepCollectionEquality()
                .equals(other._columnWidths, _columnWidths) &&
            (identical(other.defaultColumnWidth, defaultColumnWidth) ||
                other.defaultColumnWidth == defaultColumnWidth) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.border, border) || other.border == border) &&
            (identical(
                    other.defaultVerticalAlignment, defaultVerticalAlignment) ||
                other.defaultVerticalAlignment == defaultVerticalAlignment) &&
            (identical(other.textBaseline, textBaseline) ||
                other.textBaseline == textBaseline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_children),
      const DeepCollectionEquality().hash(_columnWidths),
      defaultColumnWidth,
      textDirection,
      border,
      defaultVerticalAlignment,
      textBaseline);

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacTableImplCopyWith<_$StacTableImpl> get copyWith =>
      __$$StacTableImplCopyWithImpl<_$StacTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacTableImplToJson(
      this,
    );
  }
}

abstract class _StacTable implements StacTable {
  const factory _StacTable(
      {final List<StacTableRow> children,
      final Map<int, StacTableColumnWidth>? columnWidths,
      final StacTableColumnWidth? defaultColumnWidth,
      final TextDirection? textDirection,
      final StacTableBorder? border,
      final TableCellVerticalAlignment defaultVerticalAlignment,
      final TextBaseline? textBaseline}) = _$StacTableImpl;

  factory _StacTable.fromJson(Map<String, dynamic> json) =
      _$StacTableImpl.fromJson;

  @override
  List<StacTableRow> get children;
  @override
  Map<int, StacTableColumnWidth>? get columnWidths;
  @override
  StacTableColumnWidth? get defaultColumnWidth;
  @override
  TextDirection? get textDirection;
  @override
  StacTableBorder? get border;
  @override
  TableCellVerticalAlignment get defaultVerticalAlignment;
  @override
  TextBaseline? get textBaseline;

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacTableImplCopyWith<_$StacTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StacTableRow _$StacTableRowFromJson(Map<String, dynamic> json) {
  return _StacTableRow.fromJson(json);
}

/// @nodoc
mixin _$StacTableRow {
  StacBoxDecoration? get decoration => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get children => throw _privateConstructorUsedError;

  /// Serializes this StacTableRow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacTableRowCopyWith<StacTableRow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacTableRowCopyWith<$Res> {
  factory $StacTableRowCopyWith(
          StacTableRow value, $Res Function(StacTableRow) then) =
      _$StacTableRowCopyWithImpl<$Res, StacTableRow>;
  @useResult
  $Res call(
      {StacBoxDecoration? decoration, List<Map<String, dynamic>> children});

  $StacBoxDecorationCopyWith<$Res>? get decoration;
}

/// @nodoc
class _$StacTableRowCopyWithImpl<$Res, $Val extends StacTableRow>
    implements $StacTableRowCopyWith<$Res> {
  _$StacTableRowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decoration = freezed,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxDecorationCopyWith<$Res>? get decoration {
    if (_value.decoration == null) {
      return null;
    }

    return $StacBoxDecorationCopyWith<$Res>(_value.decoration!, (value) {
      return _then(_value.copyWith(decoration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacTableRowImplCopyWith<$Res>
    implements $StacTableRowCopyWith<$Res> {
  factory _$$StacTableRowImplCopyWith(
          _$StacTableRowImpl value, $Res Function(_$StacTableRowImpl) then) =
      __$$StacTableRowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StacBoxDecoration? decoration, List<Map<String, dynamic>> children});

  @override
  $StacBoxDecorationCopyWith<$Res>? get decoration;
}

/// @nodoc
class __$$StacTableRowImplCopyWithImpl<$Res>
    extends _$StacTableRowCopyWithImpl<$Res, _$StacTableRowImpl>
    implements _$$StacTableRowImplCopyWith<$Res> {
  __$$StacTableRowImplCopyWithImpl(
      _$StacTableRowImpl _value, $Res Function(_$StacTableRowImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decoration = freezed,
    Object? children = null,
  }) {
    return _then(_$StacTableRowImpl(
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacTableRowImpl implements _StacTableRow {
  const _$StacTableRowImpl(
      {this.decoration, final List<Map<String, dynamic>> children = const []})
      : _children = children;

  factory _$StacTableRowImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacTableRowImplFromJson(json);

  @override
  final StacBoxDecoration? decoration;
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
    return 'StacTableRow(decoration: $decoration, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacTableRowImpl &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, decoration, const DeepCollectionEquality().hash(_children));

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacTableRowImplCopyWith<_$StacTableRowImpl> get copyWith =>
      __$$StacTableRowImplCopyWithImpl<_$StacTableRowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacTableRowImplToJson(
      this,
    );
  }
}

abstract class _StacTableRow implements StacTableRow {
  const factory _StacTableRow(
      {final StacBoxDecoration? decoration,
      final List<Map<String, dynamic>> children}) = _$StacTableRowImpl;

  factory _StacTableRow.fromJson(Map<String, dynamic> json) =
      _$StacTableRowImpl.fromJson;

  @override
  StacBoxDecoration? get decoration;
  @override
  List<Map<String, dynamic>> get children;

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacTableRowImplCopyWith<_$StacTableRowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StacTableBorder _$StacTableBorderFromJson(Map<String, dynamic> json) {
  return _StacTableBorder.fromJson(json);
}

/// @nodoc
mixin _$StacTableBorder {
  String get color => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  BorderStyle get style => throw _privateConstructorUsedError;
  StacBorderRadius get borderRadius => throw _privateConstructorUsedError;

  /// Serializes this StacTableBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacTableBorderCopyWith<StacTableBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacTableBorderCopyWith<$Res> {
  factory $StacTableBorderCopyWith(
          StacTableBorder value, $Res Function(StacTableBorder) then) =
      _$StacTableBorderCopyWithImpl<$Res, StacTableBorder>;
  @useResult
  $Res call(
      {String color,
      double width,
      BorderStyle style,
      StacBorderRadius borderRadius});

  $StacBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class _$StacTableBorderCopyWithImpl<$Res, $Val extends StacTableBorder>
    implements $StacTableBorderCopyWith<$Res> {
  _$StacTableBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? width = null,
    Object? style = null,
    Object? borderRadius = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as BorderStyle,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius,
    ) as $Val);
  }

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderRadiusCopyWith<$Res> get borderRadius {
    return $StacBorderRadiusCopyWith<$Res>(_value.borderRadius, (value) {
      return _then(_value.copyWith(borderRadius: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacTableBorderImplCopyWith<$Res>
    implements $StacTableBorderCopyWith<$Res> {
  factory _$$StacTableBorderImplCopyWith(_$StacTableBorderImpl value,
          $Res Function(_$StacTableBorderImpl) then) =
      __$$StacTableBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String color,
      double width,
      BorderStyle style,
      StacBorderRadius borderRadius});

  @override
  $StacBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class __$$StacTableBorderImplCopyWithImpl<$Res>
    extends _$StacTableBorderCopyWithImpl<$Res, _$StacTableBorderImpl>
    implements _$$StacTableBorderImplCopyWith<$Res> {
  __$$StacTableBorderImplCopyWithImpl(
      _$StacTableBorderImpl _value, $Res Function(_$StacTableBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? width = null,
    Object? style = null,
    Object? borderRadius = null,
  }) {
    return _then(_$StacTableBorderImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as BorderStyle,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacTableBorderImpl implements _StacTableBorder {
  const _$StacTableBorderImpl(
      {this.color = '#000000',
      this.width = 1.0,
      this.style = BorderStyle.solid,
      this.borderRadius = const StacBorderRadius()});

  factory _$StacTableBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacTableBorderImplFromJson(json);

  @override
  @JsonKey()
  final String color;
  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final BorderStyle style;
  @override
  @JsonKey()
  final StacBorderRadius borderRadius;

  @override
  String toString() {
    return 'StacTableBorder(color: $color, width: $width, style: $style, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacTableBorderImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, color, width, style, borderRadius);

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacTableBorderImplCopyWith<_$StacTableBorderImpl> get copyWith =>
      __$$StacTableBorderImplCopyWithImpl<_$StacTableBorderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacTableBorderImplToJson(
      this,
    );
  }
}

abstract class _StacTableBorder implements StacTableBorder {
  const factory _StacTableBorder(
      {final String color,
      final double width,
      final BorderStyle style,
      final StacBorderRadius borderRadius}) = _$StacTableBorderImpl;

  factory _StacTableBorder.fromJson(Map<String, dynamic> json) =
      _$StacTableBorderImpl.fromJson;

  @override
  String get color;
  @override
  double get width;
  @override
  BorderStyle get style;
  @override
  StacBorderRadius get borderRadius;

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacTableBorderImplCopyWith<_$StacTableBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StacTableColumnWidth _$StacTableColumnWidthFromJson(Map<String, dynamic> json) {
  return _StacTableColumnWidth.fromJson(json);
}

/// @nodoc
mixin _$StacTableColumnWidth {
  StacTableColumnWidthType get type => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;

  /// Serializes this StacTableColumnWidth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacTableColumnWidthCopyWith<StacTableColumnWidth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacTableColumnWidthCopyWith<$Res> {
  factory $StacTableColumnWidthCopyWith(StacTableColumnWidth value,
          $Res Function(StacTableColumnWidth) then) =
      _$StacTableColumnWidthCopyWithImpl<$Res, StacTableColumnWidth>;
  @useResult
  $Res call({StacTableColumnWidthType type, double? value});
}

/// @nodoc
class _$StacTableColumnWidthCopyWithImpl<$Res,
        $Val extends StacTableColumnWidth>
    implements $StacTableColumnWidthCopyWith<$Res> {
  _$StacTableColumnWidthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacTableColumnWidthType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacTableColumnWidthImplCopyWith<$Res>
    implements $StacTableColumnWidthCopyWith<$Res> {
  factory _$$StacTableColumnWidthImplCopyWith(_$StacTableColumnWidthImpl value,
          $Res Function(_$StacTableColumnWidthImpl) then) =
      __$$StacTableColumnWidthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StacTableColumnWidthType type, double? value});
}

/// @nodoc
class __$$StacTableColumnWidthImplCopyWithImpl<$Res>
    extends _$StacTableColumnWidthCopyWithImpl<$Res, _$StacTableColumnWidthImpl>
    implements _$$StacTableColumnWidthImplCopyWith<$Res> {
  __$$StacTableColumnWidthImplCopyWithImpl(_$StacTableColumnWidthImpl _value,
      $Res Function(_$StacTableColumnWidthImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_$StacTableColumnWidthImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacTableColumnWidthType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacTableColumnWidthImpl implements _StacTableColumnWidth {
  const _$StacTableColumnWidthImpl(
      {this.type = StacTableColumnWidthType.flexColumnWidth, this.value});

  factory _$StacTableColumnWidthImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacTableColumnWidthImplFromJson(json);

  @override
  @JsonKey()
  final StacTableColumnWidthType type;
  @override
  final double? value;

  @override
  String toString() {
    return 'StacTableColumnWidth(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacTableColumnWidthImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  /// Create a copy of StacTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacTableColumnWidthImplCopyWith<_$StacTableColumnWidthImpl>
      get copyWith =>
          __$$StacTableColumnWidthImplCopyWithImpl<_$StacTableColumnWidthImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacTableColumnWidthImplToJson(
      this,
    );
  }
}

abstract class _StacTableColumnWidth implements StacTableColumnWidth {
  const factory _StacTableColumnWidth(
      {final StacTableColumnWidthType type,
      final double? value}) = _$StacTableColumnWidthImpl;

  factory _StacTableColumnWidth.fromJson(Map<String, dynamic> json) =
      _$StacTableColumnWidthImpl.fromJson;

  @override
  StacTableColumnWidthType get type;
  @override
  double? get value;

  /// Create a copy of StacTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacTableColumnWidthImplCopyWith<_$StacTableColumnWidthImpl>
      get copyWith => throw _privateConstructorUsedError;
}
