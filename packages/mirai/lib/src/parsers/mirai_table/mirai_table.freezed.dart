// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiTable _$MiraiTableFromJson(Map<String, dynamic> json) {
  return _MiraiTable.fromJson(json);
}

/// @nodoc
mixin _$MiraiTable {
  List<MiraiTableRow> get children => throw _privateConstructorUsedError;
  Map<int, MiraiTableColumnWidth>? get columnWidths =>
      throw _privateConstructorUsedError;
  MiraiTableColumnWidth? get defaultColumnWidth =>
      throw _privateConstructorUsedError;
  TextDirection? get textDirection => throw _privateConstructorUsedError;
  MiraiTableBorder? get border => throw _privateConstructorUsedError;
  TableCellVerticalAlignment get defaultVerticalAlignment =>
      throw _privateConstructorUsedError;
  TextBaseline? get textBaseline => throw _privateConstructorUsedError;

  /// Serializes this MiraiTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiTableCopyWith<MiraiTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiTableCopyWith<$Res> {
  factory $MiraiTableCopyWith(
          MiraiTable value, $Res Function(MiraiTable) then) =
      _$MiraiTableCopyWithImpl<$Res, MiraiTable>;
  @useResult
  $Res call(
      {List<MiraiTableRow> children,
      Map<int, MiraiTableColumnWidth>? columnWidths,
      MiraiTableColumnWidth? defaultColumnWidth,
      TextDirection? textDirection,
      MiraiTableBorder? border,
      TableCellVerticalAlignment defaultVerticalAlignment,
      TextBaseline? textBaseline});

  $MiraiTableColumnWidthCopyWith<$Res>? get defaultColumnWidth;
  $MiraiTableBorderCopyWith<$Res>? get border;
}

/// @nodoc
class _$MiraiTableCopyWithImpl<$Res, $Val extends MiraiTable>
    implements $MiraiTableCopyWith<$Res> {
  _$MiraiTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiTable
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
              as List<MiraiTableRow>,
      columnWidths: freezed == columnWidths
          ? _value.columnWidths
          : columnWidths // ignore: cast_nullable_to_non_nullable
              as Map<int, MiraiTableColumnWidth>?,
      defaultColumnWidth: freezed == defaultColumnWidth
          ? _value.defaultColumnWidth
          : defaultColumnWidth // ignore: cast_nullable_to_non_nullable
              as MiraiTableColumnWidth?,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      border: freezed == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as MiraiTableBorder?,
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

  /// Create a copy of MiraiTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiTableColumnWidthCopyWith<$Res>? get defaultColumnWidth {
    if (_value.defaultColumnWidth == null) {
      return null;
    }

    return $MiraiTableColumnWidthCopyWith<$Res>(_value.defaultColumnWidth!,
        (value) {
      return _then(_value.copyWith(defaultColumnWidth: value) as $Val);
    });
  }

  /// Create a copy of MiraiTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiTableBorderCopyWith<$Res>? get border {
    if (_value.border == null) {
      return null;
    }

    return $MiraiTableBorderCopyWith<$Res>(_value.border!, (value) {
      return _then(_value.copyWith(border: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiTableImplCopyWith<$Res>
    implements $MiraiTableCopyWith<$Res> {
  factory _$$MiraiTableImplCopyWith(
          _$MiraiTableImpl value, $Res Function(_$MiraiTableImpl) then) =
      __$$MiraiTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MiraiTableRow> children,
      Map<int, MiraiTableColumnWidth>? columnWidths,
      MiraiTableColumnWidth? defaultColumnWidth,
      TextDirection? textDirection,
      MiraiTableBorder? border,
      TableCellVerticalAlignment defaultVerticalAlignment,
      TextBaseline? textBaseline});

  @override
  $MiraiTableColumnWidthCopyWith<$Res>? get defaultColumnWidth;
  @override
  $MiraiTableBorderCopyWith<$Res>? get border;
}

/// @nodoc
class __$$MiraiTableImplCopyWithImpl<$Res>
    extends _$MiraiTableCopyWithImpl<$Res, _$MiraiTableImpl>
    implements _$$MiraiTableImplCopyWith<$Res> {
  __$$MiraiTableImplCopyWithImpl(
      _$MiraiTableImpl _value, $Res Function(_$MiraiTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiTable
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
    return _then(_$MiraiTableImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<MiraiTableRow>,
      columnWidths: freezed == columnWidths
          ? _value._columnWidths
          : columnWidths // ignore: cast_nullable_to_non_nullable
              as Map<int, MiraiTableColumnWidth>?,
      defaultColumnWidth: freezed == defaultColumnWidth
          ? _value.defaultColumnWidth
          : defaultColumnWidth // ignore: cast_nullable_to_non_nullable
              as MiraiTableColumnWidth?,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      border: freezed == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as MiraiTableBorder?,
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
class _$MiraiTableImpl implements _MiraiTable {
  const _$MiraiTableImpl(
      {final List<MiraiTableRow> children = const [],
      final Map<int, MiraiTableColumnWidth>? columnWidths,
      this.defaultColumnWidth,
      this.textDirection,
      this.border,
      this.defaultVerticalAlignment = TableCellVerticalAlignment.top,
      this.textBaseline})
      : _children = children,
        _columnWidths = columnWidths;

  factory _$MiraiTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiTableImplFromJson(json);

  final List<MiraiTableRow> _children;
  @override
  @JsonKey()
  List<MiraiTableRow> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  final Map<int, MiraiTableColumnWidth>? _columnWidths;
  @override
  Map<int, MiraiTableColumnWidth>? get columnWidths {
    final value = _columnWidths;
    if (value == null) return null;
    if (_columnWidths is EqualUnmodifiableMapView) return _columnWidths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final MiraiTableColumnWidth? defaultColumnWidth;
  @override
  final TextDirection? textDirection;
  @override
  final MiraiTableBorder? border;
  @override
  @JsonKey()
  final TableCellVerticalAlignment defaultVerticalAlignment;
  @override
  final TextBaseline? textBaseline;

  @override
  String toString() {
    return 'MiraiTable(children: $children, columnWidths: $columnWidths, defaultColumnWidth: $defaultColumnWidth, textDirection: $textDirection, border: $border, defaultVerticalAlignment: $defaultVerticalAlignment, textBaseline: $textBaseline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiTableImpl &&
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

  /// Create a copy of MiraiTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiTableImplCopyWith<_$MiraiTableImpl> get copyWith =>
      __$$MiraiTableImplCopyWithImpl<_$MiraiTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiTableImplToJson(
      this,
    );
  }
}

abstract class _MiraiTable implements MiraiTable {
  const factory _MiraiTable(
      {final List<MiraiTableRow> children,
      final Map<int, MiraiTableColumnWidth>? columnWidths,
      final MiraiTableColumnWidth? defaultColumnWidth,
      final TextDirection? textDirection,
      final MiraiTableBorder? border,
      final TableCellVerticalAlignment defaultVerticalAlignment,
      final TextBaseline? textBaseline}) = _$MiraiTableImpl;

  factory _MiraiTable.fromJson(Map<String, dynamic> json) =
      _$MiraiTableImpl.fromJson;

  @override
  List<MiraiTableRow> get children;
  @override
  Map<int, MiraiTableColumnWidth>? get columnWidths;
  @override
  MiraiTableColumnWidth? get defaultColumnWidth;
  @override
  TextDirection? get textDirection;
  @override
  MiraiTableBorder? get border;
  @override
  TableCellVerticalAlignment get defaultVerticalAlignment;
  @override
  TextBaseline? get textBaseline;

  /// Create a copy of MiraiTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiTableImplCopyWith<_$MiraiTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MiraiTableRow _$MiraiTableRowFromJson(Map<String, dynamic> json) {
  return _MiraiTableRow.fromJson(json);
}

/// @nodoc
mixin _$MiraiTableRow {
  MiraiBoxDecoration? get decoration => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get children => throw _privateConstructorUsedError;

  /// Serializes this MiraiTableRow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiTableRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiTableRowCopyWith<MiraiTableRow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiTableRowCopyWith<$Res> {
  factory $MiraiTableRowCopyWith(
          MiraiTableRow value, $Res Function(MiraiTableRow) then) =
      _$MiraiTableRowCopyWithImpl<$Res, MiraiTableRow>;
  @useResult
  $Res call(
      {MiraiBoxDecoration? decoration, List<Map<String, dynamic>> children});

  $MiraiBoxDecorationCopyWith<$Res>? get decoration;
}

/// @nodoc
class _$MiraiTableRowCopyWithImpl<$Res, $Val extends MiraiTableRow>
    implements $MiraiTableRowCopyWith<$Res> {
  _$MiraiTableRowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiTableRow
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
              as MiraiBoxDecoration?,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }

  /// Create a copy of MiraiTableRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBoxDecorationCopyWith<$Res>? get decoration {
    if (_value.decoration == null) {
      return null;
    }

    return $MiraiBoxDecorationCopyWith<$Res>(_value.decoration!, (value) {
      return _then(_value.copyWith(decoration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiTableRowImplCopyWith<$Res>
    implements $MiraiTableRowCopyWith<$Res> {
  factory _$$MiraiTableRowImplCopyWith(
          _$MiraiTableRowImpl value, $Res Function(_$MiraiTableRowImpl) then) =
      __$$MiraiTableRowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MiraiBoxDecoration? decoration, List<Map<String, dynamic>> children});

  @override
  $MiraiBoxDecorationCopyWith<$Res>? get decoration;
}

/// @nodoc
class __$$MiraiTableRowImplCopyWithImpl<$Res>
    extends _$MiraiTableRowCopyWithImpl<$Res, _$MiraiTableRowImpl>
    implements _$$MiraiTableRowImplCopyWith<$Res> {
  __$$MiraiTableRowImplCopyWithImpl(
      _$MiraiTableRowImpl _value, $Res Function(_$MiraiTableRowImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiTableRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decoration = freezed,
    Object? children = null,
  }) {
    return _then(_$MiraiTableRowImpl(
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as MiraiBoxDecoration?,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiTableRowImpl implements _MiraiTableRow {
  const _$MiraiTableRowImpl(
      {this.decoration, final List<Map<String, dynamic>> children = const []})
      : _children = children;

  factory _$MiraiTableRowImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiTableRowImplFromJson(json);

  @override
  final MiraiBoxDecoration? decoration;
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
    return 'MiraiTableRow(decoration: $decoration, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiTableRowImpl &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, decoration, const DeepCollectionEquality().hash(_children));

  /// Create a copy of MiraiTableRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiTableRowImplCopyWith<_$MiraiTableRowImpl> get copyWith =>
      __$$MiraiTableRowImplCopyWithImpl<_$MiraiTableRowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiTableRowImplToJson(
      this,
    );
  }
}

abstract class _MiraiTableRow implements MiraiTableRow {
  const factory _MiraiTableRow(
      {final MiraiBoxDecoration? decoration,
      final List<Map<String, dynamic>> children}) = _$MiraiTableRowImpl;

  factory _MiraiTableRow.fromJson(Map<String, dynamic> json) =
      _$MiraiTableRowImpl.fromJson;

  @override
  MiraiBoxDecoration? get decoration;
  @override
  List<Map<String, dynamic>> get children;

  /// Create a copy of MiraiTableRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiTableRowImplCopyWith<_$MiraiTableRowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MiraiTableBorder _$MiraiTableBorderFromJson(Map<String, dynamic> json) {
  return _MiraiTableBorder.fromJson(json);
}

/// @nodoc
mixin _$MiraiTableBorder {
  MiraiBorderSide? get top => throw _privateConstructorUsedError;
  MiraiBorderSide? get right => throw _privateConstructorUsedError;
  MiraiBorderSide? get bottom => throw _privateConstructorUsedError;
  MiraiBorderSide? get left => throw _privateConstructorUsedError;
  MiraiBorderSide? get horizontalInside => throw _privateConstructorUsedError;
  MiraiBorderSide? get verticalInside => throw _privateConstructorUsedError;
  MiraiBorderRadius? get borderRadius => throw _privateConstructorUsedError;

  /// Serializes this MiraiTableBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiTableBorderCopyWith<MiraiTableBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiTableBorderCopyWith<$Res> {
  factory $MiraiTableBorderCopyWith(
          MiraiTableBorder value, $Res Function(MiraiTableBorder) then) =
      _$MiraiTableBorderCopyWithImpl<$Res, MiraiTableBorder>;
  @useResult
  $Res call(
      {MiraiBorderSide? top,
      MiraiBorderSide? right,
      MiraiBorderSide? bottom,
      MiraiBorderSide? left,
      MiraiBorderSide? horizontalInside,
      MiraiBorderSide? verticalInside,
      MiraiBorderRadius? borderRadius});

  $MiraiBorderSideCopyWith<$Res>? get top;
  $MiraiBorderSideCopyWith<$Res>? get right;
  $MiraiBorderSideCopyWith<$Res>? get bottom;
  $MiraiBorderSideCopyWith<$Res>? get left;
  $MiraiBorderSideCopyWith<$Res>? get horizontalInside;
  $MiraiBorderSideCopyWith<$Res>? get verticalInside;
  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class _$MiraiTableBorderCopyWithImpl<$Res, $Val extends MiraiTableBorder>
    implements $MiraiTableBorderCopyWith<$Res> {
  _$MiraiTableBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
    Object? left = freezed,
    Object? horizontalInside = freezed,
    Object? verticalInside = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_value.copyWith(
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      horizontalInside: freezed == horizontalInside
          ? _value.horizontalInside
          : horizontalInside // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      verticalInside: freezed == verticalInside
          ? _value.verticalInside
          : verticalInside // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as MiraiBorderRadius?,
    ) as $Val);
  }

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res>? get top {
    if (_value.top == null) {
      return null;
    }

    return $MiraiBorderSideCopyWith<$Res>(_value.top!, (value) {
      return _then(_value.copyWith(top: value) as $Val);
    });
  }

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res>? get right {
    if (_value.right == null) {
      return null;
    }

    return $MiraiBorderSideCopyWith<$Res>(_value.right!, (value) {
      return _then(_value.copyWith(right: value) as $Val);
    });
  }

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res>? get bottom {
    if (_value.bottom == null) {
      return null;
    }

    return $MiraiBorderSideCopyWith<$Res>(_value.bottom!, (value) {
      return _then(_value.copyWith(bottom: value) as $Val);
    });
  }

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res>? get left {
    if (_value.left == null) {
      return null;
    }

    return $MiraiBorderSideCopyWith<$Res>(_value.left!, (value) {
      return _then(_value.copyWith(left: value) as $Val);
    });
  }

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res>? get horizontalInside {
    if (_value.horizontalInside == null) {
      return null;
    }

    return $MiraiBorderSideCopyWith<$Res>(_value.horizontalInside!, (value) {
      return _then(_value.copyWith(horizontalInside: value) as $Val);
    });
  }

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res>? get verticalInside {
    if (_value.verticalInside == null) {
      return null;
    }

    return $MiraiBorderSideCopyWith<$Res>(_value.verticalInside!, (value) {
      return _then(_value.copyWith(verticalInside: value) as $Val);
    });
  }

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius {
    if (_value.borderRadius == null) {
      return null;
    }

    return $MiraiBorderRadiusCopyWith<$Res>(_value.borderRadius!, (value) {
      return _then(_value.copyWith(borderRadius: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiTableBorderImplCopyWith<$Res>
    implements $MiraiTableBorderCopyWith<$Res> {
  factory _$$MiraiTableBorderImplCopyWith(_$MiraiTableBorderImpl value,
          $Res Function(_$MiraiTableBorderImpl) then) =
      __$$MiraiTableBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MiraiBorderSide? top,
      MiraiBorderSide? right,
      MiraiBorderSide? bottom,
      MiraiBorderSide? left,
      MiraiBorderSide? horizontalInside,
      MiraiBorderSide? verticalInside,
      MiraiBorderRadius? borderRadius});

  @override
  $MiraiBorderSideCopyWith<$Res>? get top;
  @override
  $MiraiBorderSideCopyWith<$Res>? get right;
  @override
  $MiraiBorderSideCopyWith<$Res>? get bottom;
  @override
  $MiraiBorderSideCopyWith<$Res>? get left;
  @override
  $MiraiBorderSideCopyWith<$Res>? get horizontalInside;
  @override
  $MiraiBorderSideCopyWith<$Res>? get verticalInside;
  @override
  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class __$$MiraiTableBorderImplCopyWithImpl<$Res>
    extends _$MiraiTableBorderCopyWithImpl<$Res, _$MiraiTableBorderImpl>
    implements _$$MiraiTableBorderImplCopyWith<$Res> {
  __$$MiraiTableBorderImplCopyWithImpl(_$MiraiTableBorderImpl _value,
      $Res Function(_$MiraiTableBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
    Object? left = freezed,
    Object? horizontalInside = freezed,
    Object? verticalInside = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_$MiraiTableBorderImpl(
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      horizontalInside: freezed == horizontalInside
          ? _value.horizontalInside
          : horizontalInside // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      verticalInside: freezed == verticalInside
          ? _value.verticalInside
          : verticalInside // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as MiraiBorderRadius?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiTableBorderImpl implements _MiraiTableBorder {
  const _$MiraiTableBorderImpl(
      {this.top,
      this.right,
      this.bottom,
      this.left,
      this.horizontalInside,
      this.verticalInside,
      this.borderRadius});

  factory _$MiraiTableBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiTableBorderImplFromJson(json);

  @override
  final MiraiBorderSide? top;
  @override
  final MiraiBorderSide? right;
  @override
  final MiraiBorderSide? bottom;
  @override
  final MiraiBorderSide? left;
  @override
  final MiraiBorderSide? horizontalInside;
  @override
  final MiraiBorderSide? verticalInside;
  @override
  final MiraiBorderRadius? borderRadius;

  @override
  String toString() {
    return 'MiraiTableBorder(top: $top, right: $right, bottom: $bottom, left: $left, horizontalInside: $horizontalInside, verticalInside: $verticalInside, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiTableBorderImpl &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.horizontalInside, horizontalInside) ||
                other.horizontalInside == horizontalInside) &&
            (identical(other.verticalInside, verticalInside) ||
                other.verticalInside == verticalInside) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, top, right, bottom, left,
      horizontalInside, verticalInside, borderRadius);

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiTableBorderImplCopyWith<_$MiraiTableBorderImpl> get copyWith =>
      __$$MiraiTableBorderImplCopyWithImpl<_$MiraiTableBorderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiTableBorderImplToJson(
      this,
    );
  }
}

abstract class _MiraiTableBorder implements MiraiTableBorder {
  const factory _MiraiTableBorder(
      {final MiraiBorderSide? top,
      final MiraiBorderSide? right,
      final MiraiBorderSide? bottom,
      final MiraiBorderSide? left,
      final MiraiBorderSide? horizontalInside,
      final MiraiBorderSide? verticalInside,
      final MiraiBorderRadius? borderRadius}) = _$MiraiTableBorderImpl;

  factory _MiraiTableBorder.fromJson(Map<String, dynamic> json) =
      _$MiraiTableBorderImpl.fromJson;

  @override
  MiraiBorderSide? get top;
  @override
  MiraiBorderSide? get right;
  @override
  MiraiBorderSide? get bottom;
  @override
  MiraiBorderSide? get left;
  @override
  MiraiBorderSide? get horizontalInside;
  @override
  MiraiBorderSide? get verticalInside;
  @override
  MiraiBorderRadius? get borderRadius;

  /// Create a copy of MiraiTableBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiTableBorderImplCopyWith<_$MiraiTableBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MiraiTableColumnWidth _$MiraiTableColumnWidthFromJson(
    Map<String, dynamic> json) {
  return _MiraiTableColumnWidth.fromJson(json);
}

/// @nodoc
mixin _$MiraiTableColumnWidth {
  MiraiTableColumnWidthType get type => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;

  /// Serializes this MiraiTableColumnWidth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiTableColumnWidthCopyWith<MiraiTableColumnWidth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiTableColumnWidthCopyWith<$Res> {
  factory $MiraiTableColumnWidthCopyWith(MiraiTableColumnWidth value,
          $Res Function(MiraiTableColumnWidth) then) =
      _$MiraiTableColumnWidthCopyWithImpl<$Res, MiraiTableColumnWidth>;
  @useResult
  $Res call({MiraiTableColumnWidthType type, double? value});
}

/// @nodoc
class _$MiraiTableColumnWidthCopyWithImpl<$Res,
        $Val extends MiraiTableColumnWidth>
    implements $MiraiTableColumnWidthCopyWith<$Res> {
  _$MiraiTableColumnWidthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiTableColumnWidth
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
              as MiraiTableColumnWidthType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiTableColumnWidthImplCopyWith<$Res>
    implements $MiraiTableColumnWidthCopyWith<$Res> {
  factory _$$MiraiTableColumnWidthImplCopyWith(
          _$MiraiTableColumnWidthImpl value,
          $Res Function(_$MiraiTableColumnWidthImpl) then) =
      __$$MiraiTableColumnWidthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MiraiTableColumnWidthType type, double? value});
}

/// @nodoc
class __$$MiraiTableColumnWidthImplCopyWithImpl<$Res>
    extends _$MiraiTableColumnWidthCopyWithImpl<$Res,
        _$MiraiTableColumnWidthImpl>
    implements _$$MiraiTableColumnWidthImplCopyWith<$Res> {
  __$$MiraiTableColumnWidthImplCopyWithImpl(_$MiraiTableColumnWidthImpl _value,
      $Res Function(_$MiraiTableColumnWidthImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_$MiraiTableColumnWidthImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MiraiTableColumnWidthType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiTableColumnWidthImpl implements _MiraiTableColumnWidth {
  const _$MiraiTableColumnWidthImpl(
      {this.type = MiraiTableColumnWidthType.flexColumnWidth, this.value});

  factory _$MiraiTableColumnWidthImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiTableColumnWidthImplFromJson(json);

  @override
  @JsonKey()
  final MiraiTableColumnWidthType type;
  @override
  final double? value;

  @override
  String toString() {
    return 'MiraiTableColumnWidth(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiTableColumnWidthImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  /// Create a copy of MiraiTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiTableColumnWidthImplCopyWith<_$MiraiTableColumnWidthImpl>
      get copyWith => __$$MiraiTableColumnWidthImplCopyWithImpl<
          _$MiraiTableColumnWidthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiTableColumnWidthImplToJson(
      this,
    );
  }
}

abstract class _MiraiTableColumnWidth implements MiraiTableColumnWidth {
  const factory _MiraiTableColumnWidth(
      {final MiraiTableColumnWidthType type,
      final double? value}) = _$MiraiTableColumnWidthImpl;

  factory _MiraiTableColumnWidth.fromJson(Map<String, dynamic> json) =
      _$MiraiTableColumnWidthImpl.fromJson;

  @override
  MiraiTableColumnWidthType get type;
  @override
  double? get value;

  /// Create a copy of MiraiTableColumnWidth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiTableColumnWidthImplCopyWith<_$MiraiTableColumnWidthImpl>
      get copyWith => throw _privateConstructorUsedError;
}
