// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacTable {
  List<StacTableRow> get children;
  Map<int, StacTableColumnWidth>? get columnWidths;
  StacTableColumnWidth? get defaultColumnWidth;
  TextDirection? get textDirection;
  StacTableBorder? get border;
  TableCellVerticalAlignment get defaultVerticalAlignment;
  TextBaseline? get textBaseline;

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTableCopyWith<StacTable> get copyWith =>
      _$StacTableCopyWithImpl<StacTable>(this as StacTable, _$identity);

  /// Serializes this StacTable to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTable &&
            const DeepCollectionEquality().equals(other.children, children) &&
            const DeepCollectionEquality()
                .equals(other.columnWidths, columnWidths) &&
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
      const DeepCollectionEquality().hash(children),
      const DeepCollectionEquality().hash(columnWidths),
      defaultColumnWidth,
      textDirection,
      border,
      defaultVerticalAlignment,
      textBaseline);

  @override
  String toString() {
    return 'StacTable(children: $children, columnWidths: $columnWidths, defaultColumnWidth: $defaultColumnWidth, textDirection: $textDirection, border: $border, defaultVerticalAlignment: $defaultVerticalAlignment, textBaseline: $textBaseline)';
  }
}

/// @nodoc
abstract mixin class $StacTableCopyWith<$Res> {
  factory $StacTableCopyWith(StacTable value, $Res Function(StacTable) _then) =
      _$StacTableCopyWithImpl;
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
class _$StacTableCopyWithImpl<$Res> implements $StacTableCopyWith<$Res> {
  _$StacTableCopyWithImpl(this._self, this._then);

  final StacTable _self;
  final $Res Function(StacTable) _then;

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
    return _then(_self.copyWith(
      children: null == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<StacTableRow>,
      columnWidths: freezed == columnWidths
          ? _self.columnWidths
          : columnWidths // ignore: cast_nullable_to_non_nullable
              as Map<int, StacTableColumnWidth>?,
      defaultColumnWidth: freezed == defaultColumnWidth
          ? _self.defaultColumnWidth
          : defaultColumnWidth // ignore: cast_nullable_to_non_nullable
              as StacTableColumnWidth?,
      textDirection: freezed == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      border: freezed == border
          ? _self.border
          : border // ignore: cast_nullable_to_non_nullable
              as StacTableBorder?,
      defaultVerticalAlignment: null == defaultVerticalAlignment
          ? _self.defaultVerticalAlignment
          : defaultVerticalAlignment // ignore: cast_nullable_to_non_nullable
              as TableCellVerticalAlignment,
      textBaseline: freezed == textBaseline
          ? _self.textBaseline
          : textBaseline // ignore: cast_nullable_to_non_nullable
              as TextBaseline?,
    ));
  }

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTableColumnWidthCopyWith<$Res>? get defaultColumnWidth {
    if (_self.defaultColumnWidth == null) {
      return null;
    }

    return $StacTableColumnWidthCopyWith<$Res>(_self.defaultColumnWidth!,
        (value) {
      return _then(_self.copyWith(defaultColumnWidth: value));
    });
  }

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTableBorderCopyWith<$Res>? get border {
    if (_self.border == null) {
      return null;
    }

    return $StacTableBorderCopyWith<$Res>(_self.border!, (value) {
      return _then(_self.copyWith(border: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacTable implements StacTable {
  const _StacTable(
      {final List<StacTableRow> children = const [],
      final Map<int, StacTableColumnWidth>? columnWidths,
      this.defaultColumnWidth,
      this.textDirection,
      this.border,
      this.defaultVerticalAlignment = TableCellVerticalAlignment.top,
      this.textBaseline})
      : _children = children,
        _columnWidths = columnWidths;
  factory _StacTable.fromJson(Map<String, dynamic> json) =>
      _$StacTableFromJson(json);

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

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTableCopyWith<_StacTable> get copyWith =>
      __$StacTableCopyWithImpl<_StacTable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTableToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTable &&
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

  @override
  String toString() {
    return 'StacTable(children: $children, columnWidths: $columnWidths, defaultColumnWidth: $defaultColumnWidth, textDirection: $textDirection, border: $border, defaultVerticalAlignment: $defaultVerticalAlignment, textBaseline: $textBaseline)';
  }
}

/// @nodoc
abstract mixin class _$StacTableCopyWith<$Res>
    implements $StacTableCopyWith<$Res> {
  factory _$StacTableCopyWith(
          _StacTable value, $Res Function(_StacTable) _then) =
      __$StacTableCopyWithImpl;
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
class __$StacTableCopyWithImpl<$Res> implements _$StacTableCopyWith<$Res> {
  __$StacTableCopyWithImpl(this._self, this._then);

  final _StacTable _self;
  final $Res Function(_StacTable) _then;

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? children = null,
    Object? columnWidths = freezed,
    Object? defaultColumnWidth = freezed,
    Object? textDirection = freezed,
    Object? border = freezed,
    Object? defaultVerticalAlignment = null,
    Object? textBaseline = freezed,
  }) {
    return _then(_StacTable(
      children: null == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<StacTableRow>,
      columnWidths: freezed == columnWidths
          ? _self._columnWidths
          : columnWidths // ignore: cast_nullable_to_non_nullable
              as Map<int, StacTableColumnWidth>?,
      defaultColumnWidth: freezed == defaultColumnWidth
          ? _self.defaultColumnWidth
          : defaultColumnWidth // ignore: cast_nullable_to_non_nullable
              as StacTableColumnWidth?,
      textDirection: freezed == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      border: freezed == border
          ? _self.border
          : border // ignore: cast_nullable_to_non_nullable
              as StacTableBorder?,
      defaultVerticalAlignment: null == defaultVerticalAlignment
          ? _self.defaultVerticalAlignment
          : defaultVerticalAlignment // ignore: cast_nullable_to_non_nullable
              as TableCellVerticalAlignment,
      textBaseline: freezed == textBaseline
          ? _self.textBaseline
          : textBaseline // ignore: cast_nullable_to_non_nullable
              as TextBaseline?,
    ));
  }

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTableColumnWidthCopyWith<$Res>? get defaultColumnWidth {
    if (_self.defaultColumnWidth == null) {
      return null;
    }

    return $StacTableColumnWidthCopyWith<$Res>(_self.defaultColumnWidth!,
        (value) {
      return _then(_self.copyWith(defaultColumnWidth: value));
    });
  }

  /// Create a copy of StacTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTableBorderCopyWith<$Res>? get border {
    if (_self.border == null) {
      return null;
    }

    return $StacTableBorderCopyWith<$Res>(_self.border!, (value) {
      return _then(_self.copyWith(border: value));
    });
  }
}

/// @nodoc
mixin _$StacTableRow {
  StacBoxDecoration? get decoration;
  List<Map<String, dynamic>> get children;

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTableRowCopyWith<StacTableRow> get copyWith =>
      _$StacTableRowCopyWithImpl<StacTableRow>(
          this as StacTableRow, _$identity);

  /// Serializes this StacTableRow to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTableRow &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, decoration, const DeepCollectionEquality().hash(children));

  @override
  String toString() {
    return 'StacTableRow(decoration: $decoration, children: $children)';
  }
}

/// @nodoc
abstract mixin class $StacTableRowCopyWith<$Res> {
  factory $StacTableRowCopyWith(
          StacTableRow value, $Res Function(StacTableRow) _then) =
      _$StacTableRowCopyWithImpl;
  @useResult
  $Res call(
      {StacBoxDecoration? decoration, List<Map<String, dynamic>> children});

  $StacBoxDecorationCopyWith<$Res>? get decoration;
}

/// @nodoc
class _$StacTableRowCopyWithImpl<$Res> implements $StacTableRowCopyWith<$Res> {
  _$StacTableRowCopyWithImpl(this._self, this._then);

  final StacTableRow _self;
  final $Res Function(StacTableRow) _then;

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decoration = freezed,
    Object? children = null,
  }) {
    return _then(_self.copyWith(
      decoration: freezed == decoration
          ? _self.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      children: null == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxDecorationCopyWith<$Res>? get decoration {
    if (_self.decoration == null) {
      return null;
    }

    return $StacBoxDecorationCopyWith<$Res>(_self.decoration!, (value) {
      return _then(_self.copyWith(decoration: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacTableRow implements StacTableRow {
  const _StacTableRow(
      {this.decoration, final List<Map<String, dynamic>> children = const []})
      : _children = children;
  factory _StacTableRow.fromJson(Map<String, dynamic> json) =>
      _$StacTableRowFromJson(json);

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

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTableRowCopyWith<_StacTableRow> get copyWith =>
      __$StacTableRowCopyWithImpl<_StacTableRow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTableRowToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTableRow &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, decoration, const DeepCollectionEquality().hash(_children));

  @override
  String toString() {
    return 'StacTableRow(decoration: $decoration, children: $children)';
  }
}

/// @nodoc
abstract mixin class _$StacTableRowCopyWith<$Res>
    implements $StacTableRowCopyWith<$Res> {
  factory _$StacTableRowCopyWith(
          _StacTableRow value, $Res Function(_StacTableRow) _then) =
      __$StacTableRowCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacBoxDecoration? decoration, List<Map<String, dynamic>> children});

  @override
  $StacBoxDecorationCopyWith<$Res>? get decoration;
}

/// @nodoc
class __$StacTableRowCopyWithImpl<$Res>
    implements _$StacTableRowCopyWith<$Res> {
  __$StacTableRowCopyWithImpl(this._self, this._then);

  final _StacTableRow _self;
  final $Res Function(_StacTableRow) _then;

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? decoration = freezed,
    Object? children = null,
  }) {
    return _then(_StacTableRow(
      decoration: freezed == decoration
          ? _self.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      children: null == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }

  /// Create a copy of StacTableRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxDecorationCopyWith<$Res>? get decoration {
    if (_self.decoration == null) {
      return null;
    }

    return $StacBoxDecorationCopyWith<$Res>(_self.decoration!, (value) {
      return _then(_self.copyWith(decoration: value));
    });
  }
}

/// @nodoc
mixin _$StacTableBorder {
  String get color;
  double get width;
  BorderStyle get style;
  StacBorderRadius get borderRadius;

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTableBorderCopyWith<StacTableBorder> get copyWith =>
      _$StacTableBorderCopyWithImpl<StacTableBorder>(
          this as StacTableBorder, _$identity);

  /// Serializes this StacTableBorder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTableBorder &&
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

  @override
  String toString() {
    return 'StacTableBorder(color: $color, width: $width, style: $style, borderRadius: $borderRadius)';
  }
}

/// @nodoc
abstract mixin class $StacTableBorderCopyWith<$Res> {
  factory $StacTableBorderCopyWith(
          StacTableBorder value, $Res Function(StacTableBorder) _then) =
      _$StacTableBorderCopyWithImpl;
  @useResult
  $Res call(
      {String color,
      double width,
      BorderStyle style,
      StacBorderRadius borderRadius});

  $StacBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class _$StacTableBorderCopyWithImpl<$Res>
    implements $StacTableBorderCopyWith<$Res> {
  _$StacTableBorderCopyWithImpl(this._self, this._then);

  final StacTableBorder _self;
  final $Res Function(StacTableBorder) _then;

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
    return _then(_self.copyWith(
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      style: null == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as BorderStyle,
      borderRadius: null == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius,
    ));
  }

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderRadiusCopyWith<$Res> get borderRadius {
    return $StacBorderRadiusCopyWith<$Res>(_self.borderRadius, (value) {
      return _then(_self.copyWith(borderRadius: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacTableBorder implements StacTableBorder {
  const _StacTableBorder(
      {this.color = '#000000',
      this.width = 1.0,
      this.style = BorderStyle.solid,
      this.borderRadius = const StacBorderRadius()});
  factory _StacTableBorder.fromJson(Map<String, dynamic> json) =>
      _$StacTableBorderFromJson(json);

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

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTableBorderCopyWith<_StacTableBorder> get copyWith =>
      __$StacTableBorderCopyWithImpl<_StacTableBorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTableBorderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTableBorder &&
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

  @override
  String toString() {
    return 'StacTableBorder(color: $color, width: $width, style: $style, borderRadius: $borderRadius)';
  }
}

/// @nodoc
abstract mixin class _$StacTableBorderCopyWith<$Res>
    implements $StacTableBorderCopyWith<$Res> {
  factory _$StacTableBorderCopyWith(
          _StacTableBorder value, $Res Function(_StacTableBorder) _then) =
      __$StacTableBorderCopyWithImpl;
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
class __$StacTableBorderCopyWithImpl<$Res>
    implements _$StacTableBorderCopyWith<$Res> {
  __$StacTableBorderCopyWithImpl(this._self, this._then);

  final _StacTableBorder _self;
  final $Res Function(_StacTableBorder) _then;

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? color = null,
    Object? width = null,
    Object? style = null,
    Object? borderRadius = null,
  }) {
    return _then(_StacTableBorder(
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      style: null == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as BorderStyle,
      borderRadius: null == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius,
    ));
  }

  /// Create a copy of StacTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderRadiusCopyWith<$Res> get borderRadius {
    return $StacBorderRadiusCopyWith<$Res>(_self.borderRadius, (value) {
      return _then(_self.copyWith(borderRadius: value));
    });
  }
}

/// @nodoc
mixin _$StacTableColumnWidth {
  StacTableColumnWidthType get type;
  double? get value;

  /// Create a copy of StacTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTableColumnWidthCopyWith<StacTableColumnWidth> get copyWith =>
      _$StacTableColumnWidthCopyWithImpl<StacTableColumnWidth>(
          this as StacTableColumnWidth, _$identity);

  /// Serializes this StacTableColumnWidth to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTableColumnWidth &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @override
  String toString() {
    return 'StacTableColumnWidth(type: $type, value: $value)';
  }
}

/// @nodoc
abstract mixin class $StacTableColumnWidthCopyWith<$Res> {
  factory $StacTableColumnWidthCopyWith(StacTableColumnWidth value,
          $Res Function(StacTableColumnWidth) _then) =
      _$StacTableColumnWidthCopyWithImpl;
  @useResult
  $Res call({StacTableColumnWidthType type, double? value});
}

/// @nodoc
class _$StacTableColumnWidthCopyWithImpl<$Res>
    implements $StacTableColumnWidthCopyWith<$Res> {
  _$StacTableColumnWidthCopyWithImpl(this._self, this._then);

  final StacTableColumnWidth _self;
  final $Res Function(StacTableColumnWidth) _then;

  /// Create a copy of StacTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacTableColumnWidthType,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacTableColumnWidth implements StacTableColumnWidth {
  const _StacTableColumnWidth(
      {this.type = StacTableColumnWidthType.flexColumnWidth, this.value});
  factory _StacTableColumnWidth.fromJson(Map<String, dynamic> json) =>
      _$StacTableColumnWidthFromJson(json);

  @override
  @JsonKey()
  final StacTableColumnWidthType type;
  @override
  final double? value;

  /// Create a copy of StacTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTableColumnWidthCopyWith<_StacTableColumnWidth> get copyWith =>
      __$StacTableColumnWidthCopyWithImpl<_StacTableColumnWidth>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTableColumnWidthToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTableColumnWidth &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @override
  String toString() {
    return 'StacTableColumnWidth(type: $type, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$StacTableColumnWidthCopyWith<$Res>
    implements $StacTableColumnWidthCopyWith<$Res> {
  factory _$StacTableColumnWidthCopyWith(_StacTableColumnWidth value,
          $Res Function(_StacTableColumnWidth) _then) =
      __$StacTableColumnWidthCopyWithImpl;
  @override
  @useResult
  $Res call({StacTableColumnWidthType type, double? value});
}

/// @nodoc
class __$StacTableColumnWidthCopyWithImpl<$Res>
    implements _$StacTableColumnWidthCopyWith<$Res> {
  __$StacTableColumnWidthCopyWithImpl(this._self, this._then);

  final _StacTableColumnWidth _self;
  final $Res Function(_StacTableColumnWidth) _then;

  /// Create a copy of StacTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_StacTableColumnWidth(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacTableColumnWidthType,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
