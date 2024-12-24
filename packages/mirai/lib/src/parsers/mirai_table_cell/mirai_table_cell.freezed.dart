// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_table_cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiTableCell _$MiraiTableCellFromJson(Map<String, dynamic> json) {
  return _MiraiTableCell.fromJson(json);
}

/// @nodoc
mixin _$MiraiTableCell {
  TableCellVerticalAlignment? get verticalAlignment =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiTableCell to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiTableCell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiTableCellCopyWith<MiraiTableCell> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiTableCellCopyWith<$Res> {
  factory $MiraiTableCellCopyWith(
          MiraiTableCell value, $Res Function(MiraiTableCell) then) =
      _$MiraiTableCellCopyWithImpl<$Res, MiraiTableCell>;
  @useResult
  $Res call(
      {TableCellVerticalAlignment? verticalAlignment,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$MiraiTableCellCopyWithImpl<$Res, $Val extends MiraiTableCell>
    implements $MiraiTableCellCopyWith<$Res> {
  _$MiraiTableCellCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiTableCell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verticalAlignment = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      verticalAlignment: freezed == verticalAlignment
          ? _value.verticalAlignment
          : verticalAlignment // ignore: cast_nullable_to_non_nullable
              as TableCellVerticalAlignment?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiTableCellImplCopyWith<$Res>
    implements $MiraiTableCellCopyWith<$Res> {
  factory _$$MiraiTableCellImplCopyWith(_$MiraiTableCellImpl value,
          $Res Function(_$MiraiTableCellImpl) then) =
      __$$MiraiTableCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TableCellVerticalAlignment? verticalAlignment,
      Map<String, dynamic>? child});
}

/// @nodoc
class __$$MiraiTableCellImplCopyWithImpl<$Res>
    extends _$MiraiTableCellCopyWithImpl<$Res, _$MiraiTableCellImpl>
    implements _$$MiraiTableCellImplCopyWith<$Res> {
  __$$MiraiTableCellImplCopyWithImpl(
      _$MiraiTableCellImpl _value, $Res Function(_$MiraiTableCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiTableCell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verticalAlignment = freezed,
    Object? child = freezed,
  }) {
    return _then(_$MiraiTableCellImpl(
      verticalAlignment: freezed == verticalAlignment
          ? _value.verticalAlignment
          : verticalAlignment // ignore: cast_nullable_to_non_nullable
              as TableCellVerticalAlignment?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiTableCellImpl implements _MiraiTableCell {
  const _$MiraiTableCellImpl(
      {this.verticalAlignment, final Map<String, dynamic>? child})
      : _child = child;

  factory _$MiraiTableCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiTableCellImplFromJson(json);

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

  @override
  String toString() {
    return 'MiraiTableCell(verticalAlignment: $verticalAlignment, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiTableCellImpl &&
            (identical(other.verticalAlignment, verticalAlignment) ||
                other.verticalAlignment == verticalAlignment) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, verticalAlignment,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of MiraiTableCell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiTableCellImplCopyWith<_$MiraiTableCellImpl> get copyWith =>
      __$$MiraiTableCellImplCopyWithImpl<_$MiraiTableCellImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiTableCellImplToJson(
      this,
    );
  }
}

abstract class _MiraiTableCell implements MiraiTableCell {
  const factory _MiraiTableCell(
      {final TableCellVerticalAlignment? verticalAlignment,
      final Map<String, dynamic>? child}) = _$MiraiTableCellImpl;

  factory _MiraiTableCell.fromJson(Map<String, dynamic> json) =
      _$MiraiTableCellImpl.fromJson;

  @override
  TableCellVerticalAlignment? get verticalAlignment;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of MiraiTableCell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiTableCellImplCopyWith<_$MiraiTableCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
