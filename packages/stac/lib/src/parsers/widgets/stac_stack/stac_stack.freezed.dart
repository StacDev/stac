// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_stack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacStack {
  StacAlignmentDirectional get alignment;
  Clip get clipBehavior;
  StackFit get fit;
  TextDirection? get textDirection;
  List<Map<String, dynamic>> get children;

  /// Create a copy of StacStack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacStackCopyWith<StacStack> get copyWith =>
      _$StacStackCopyWithImpl<StacStack>(this as StacStack, _$identity);

  /// Serializes this StacStack to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacStack &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, alignment, clipBehavior, fit,
      textDirection, const DeepCollectionEquality().hash(children));

  @override
  String toString() {
    return 'StacStack(alignment: $alignment, clipBehavior: $clipBehavior, fit: $fit, textDirection: $textDirection, children: $children)';
  }
}

/// @nodoc
abstract mixin class $StacStackCopyWith<$Res> {
  factory $StacStackCopyWith(StacStack value, $Res Function(StacStack) _then) =
      _$StacStackCopyWithImpl;
  @useResult
  $Res call(
      {StacAlignmentDirectional alignment,
      Clip clipBehavior,
      StackFit fit,
      TextDirection? textDirection,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class _$StacStackCopyWithImpl<$Res> implements $StacStackCopyWith<$Res> {
  _$StacStackCopyWithImpl(this._self, this._then);

  final StacStack _self;
  final $Res Function(StacStack) _then;

  /// Create a copy of StacStack
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
    return _then(_self.copyWith(
      alignment: null == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentDirectional,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      fit: null == fit
          ? _self.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as StackFit,
      textDirection: freezed == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      children: null == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacStack implements StacStack {
  const _StacStack(
      {this.alignment = StacAlignmentDirectional.topStart,
      this.clipBehavior = Clip.hardEdge,
      this.fit = StackFit.loose,
      this.textDirection,
      final List<Map<String, dynamic>> children = const []})
      : _children = children;
  factory _StacStack.fromJson(Map<String, dynamic> json) =>
      _$StacStackFromJson(json);

  @override
  @JsonKey()
  final StacAlignmentDirectional alignment;
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

  /// Create a copy of StacStack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacStackCopyWith<_StacStack> get copyWith =>
      __$StacStackCopyWithImpl<_StacStack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacStackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacStack &&
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

  @override
  String toString() {
    return 'StacStack(alignment: $alignment, clipBehavior: $clipBehavior, fit: $fit, textDirection: $textDirection, children: $children)';
  }
}

/// @nodoc
abstract mixin class _$StacStackCopyWith<$Res>
    implements $StacStackCopyWith<$Res> {
  factory _$StacStackCopyWith(
          _StacStack value, $Res Function(_StacStack) _then) =
      __$StacStackCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacAlignmentDirectional alignment,
      Clip clipBehavior,
      StackFit fit,
      TextDirection? textDirection,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class __$StacStackCopyWithImpl<$Res> implements _$StacStackCopyWith<$Res> {
  __$StacStackCopyWithImpl(this._self, this._then);

  final _StacStack _self;
  final $Res Function(_StacStack) _then;

  /// Create a copy of StacStack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? alignment = null,
    Object? clipBehavior = null,
    Object? fit = null,
    Object? textDirection = freezed,
    Object? children = null,
  }) {
    return _then(_StacStack(
      alignment: null == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentDirectional,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      fit: null == fit
          ? _self.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as StackFit,
      textDirection: freezed == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      children: null == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

// dart format on
