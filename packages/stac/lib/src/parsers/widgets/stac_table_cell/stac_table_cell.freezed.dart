// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_table_cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacTableCell {
  TableCellVerticalAlignment? get verticalAlignment;
  Map<String, dynamic>? get child;

  /// Create a copy of StacTableCell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTableCellCopyWith<StacTableCell> get copyWith =>
      _$StacTableCellCopyWithImpl<StacTableCell>(
          this as StacTableCell, _$identity);

  /// Serializes this StacTableCell to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTableCell &&
            (identical(other.verticalAlignment, verticalAlignment) ||
                other.verticalAlignment == verticalAlignment) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, verticalAlignment,
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacTableCell(verticalAlignment: $verticalAlignment, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacTableCellCopyWith<$Res> {
  factory $StacTableCellCopyWith(
          StacTableCell value, $Res Function(StacTableCell) _then) =
      _$StacTableCellCopyWithImpl;
  @useResult
  $Res call(
      {TableCellVerticalAlignment? verticalAlignment,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$StacTableCellCopyWithImpl<$Res>
    implements $StacTableCellCopyWith<$Res> {
  _$StacTableCellCopyWithImpl(this._self, this._then);

  final StacTableCell _self;
  final $Res Function(StacTableCell) _then;

  /// Create a copy of StacTableCell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verticalAlignment = freezed,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      verticalAlignment: freezed == verticalAlignment
          ? _self.verticalAlignment
          : verticalAlignment // ignore: cast_nullable_to_non_nullable
              as TableCellVerticalAlignment?,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacTableCell implements StacTableCell {
  const _StacTableCell(
      {this.verticalAlignment, final Map<String, dynamic>? child})
      : _child = child;
  factory _StacTableCell.fromJson(Map<String, dynamic> json) =>
      _$StacTableCellFromJson(json);

  @override
  final TableCellVerticalAlignment? verticalAlignment;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacTableCell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTableCellCopyWith<_StacTableCell> get copyWith =>
      __$StacTableCellCopyWithImpl<_StacTableCell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTableCellToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTableCell &&
            (identical(other.verticalAlignment, verticalAlignment) ||
                other.verticalAlignment == verticalAlignment) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, verticalAlignment,
      const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacTableCell(verticalAlignment: $verticalAlignment, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacTableCellCopyWith<$Res>
    implements $StacTableCellCopyWith<$Res> {
  factory _$StacTableCellCopyWith(
          _StacTableCell value, $Res Function(_StacTableCell) _then) =
      __$StacTableCellCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TableCellVerticalAlignment? verticalAlignment,
      Map<String, dynamic>? child});
}

/// @nodoc
class __$StacTableCellCopyWithImpl<$Res>
    implements _$StacTableCellCopyWith<$Res> {
  __$StacTableCellCopyWithImpl(this._self, this._then);

  final _StacTableCell _self;
  final $Res Function(_StacTableCell) _then;

  /// Create a copy of StacTableCell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? verticalAlignment = freezed,
    Object? child = freezed,
  }) {
    return _then(_StacTableCell(
      verticalAlignment: freezed == verticalAlignment
          ? _self.verticalAlignment
          : verticalAlignment // ignore: cast_nullable_to_non_nullable
              as TableCellVerticalAlignment?,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
