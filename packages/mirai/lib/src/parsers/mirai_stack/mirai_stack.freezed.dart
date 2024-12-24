// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_stack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiStack _$MiraiStackFromJson(Map<String, dynamic> json) {
  return _MiraiStack.fromJson(json);
}

/// @nodoc
mixin _$MiraiStack {
  MiraiAlignmentDirectional get alignment => throw _privateConstructorUsedError;
  Clip get clipBehavior => throw _privateConstructorUsedError;
  StackFit get fit => throw _privateConstructorUsedError;
  TextDirection? get textDirection => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get children => throw _privateConstructorUsedError;

  /// Serializes this MiraiStack to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiStack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiStackCopyWith<MiraiStack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiStackCopyWith<$Res> {
  factory $MiraiStackCopyWith(
          MiraiStack value, $Res Function(MiraiStack) then) =
      _$MiraiStackCopyWithImpl<$Res, MiraiStack>;
  @useResult
  $Res call(
      {MiraiAlignmentDirectional alignment,
      Clip clipBehavior,
      StackFit fit,
      TextDirection? textDirection,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class _$MiraiStackCopyWithImpl<$Res, $Val extends MiraiStack>
    implements $MiraiStackCopyWith<$Res> {
  _$MiraiStackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiStack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignment = null,
    Object? clipBehavior = null,
    Object? fit = null,
    Object? textDirection = freezed,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as MiraiAlignmentDirectional,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      fit: null == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as StackFit,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiStackImplCopyWith<$Res>
    implements $MiraiStackCopyWith<$Res> {
  factory _$$MiraiStackImplCopyWith(
          _$MiraiStackImpl value, $Res Function(_$MiraiStackImpl) then) =
      __$$MiraiStackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MiraiAlignmentDirectional alignment,
      Clip clipBehavior,
      StackFit fit,
      TextDirection? textDirection,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class __$$MiraiStackImplCopyWithImpl<$Res>
    extends _$MiraiStackCopyWithImpl<$Res, _$MiraiStackImpl>
    implements _$$MiraiStackImplCopyWith<$Res> {
  __$$MiraiStackImplCopyWithImpl(
      _$MiraiStackImpl _value, $Res Function(_$MiraiStackImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiStack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignment = null,
    Object? clipBehavior = null,
    Object? fit = null,
    Object? textDirection = freezed,
    Object? children = null,
  }) {
    return _then(_$MiraiStackImpl(
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as MiraiAlignmentDirectional,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      fit: null == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as StackFit,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiStackImpl implements _MiraiStack {
  const _$MiraiStackImpl(
      {this.alignment = MiraiAlignmentDirectional.topStart,
      this.clipBehavior = Clip.hardEdge,
      this.fit = StackFit.loose,
      this.textDirection,
      final List<Map<String, dynamic>> children = const []})
      : _children = children;

  factory _$MiraiStackImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiStackImplFromJson(json);

  @override
  @JsonKey()
  final MiraiAlignmentDirectional alignment;
  @override
  @JsonKey()
  final Clip clipBehavior;
  @override
  @JsonKey()
  final StackFit fit;
  @override
  final TextDirection? textDirection;
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
    return 'MiraiStack(alignment: $alignment, clipBehavior: $clipBehavior, fit: $fit, textDirection: $textDirection, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiStackImpl &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, alignment, clipBehavior, fit,
      textDirection, const DeepCollectionEquality().hash(_children));

  /// Create a copy of MiraiStack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiStackImplCopyWith<_$MiraiStackImpl> get copyWith =>
      __$$MiraiStackImplCopyWithImpl<_$MiraiStackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiStackImplToJson(
      this,
    );
  }
}

abstract class _MiraiStack implements MiraiStack {
  const factory _MiraiStack(
      {final MiraiAlignmentDirectional alignment,
      final Clip clipBehavior,
      final StackFit fit,
      final TextDirection? textDirection,
      final List<Map<String, dynamic>> children}) = _$MiraiStackImpl;

  factory _MiraiStack.fromJson(Map<String, dynamic> json) =
      _$MiraiStackImpl.fromJson;

  @override
  MiraiAlignmentDirectional get alignment;
  @override
  Clip get clipBehavior;
  @override
  StackFit get fit;
  @override
  TextDirection? get textDirection;
  @override
  List<Map<String, dynamic>> get children;

  /// Create a copy of MiraiStack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiStackImplCopyWith<_$MiraiStackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
