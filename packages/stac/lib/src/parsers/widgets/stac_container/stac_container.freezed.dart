// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacContainer {
  StacAlignment? get alignment;
  StacEdgeInsets? get padding;
  StacBoxDecoration? get decoration;
  StacBoxDecoration? get foregroundDecoration;
  String? get color;
  StacDouble? get width;
  StacDouble? get height;
  StacBoxConstraints? get constraints;
  StacEdgeInsets? get margin;
  Map<String, dynamic>? get child;
  Clip get clipBehavior;

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacContainerCopyWith<StacContainer> get copyWith =>
      _$StacContainerCopyWithImpl<StacContainer>(
          this as StacContainer, _$identity);

  /// Serializes this StacContainer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacContainer &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.foregroundDecoration, foregroundDecoration) ||
                other.foregroundDecoration == foregroundDecoration) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      alignment,
      padding,
      decoration,
      foregroundDecoration,
      color,
      width,
      height,
      constraints,
      margin,
      const DeepCollectionEquality().hash(child),
      clipBehavior);

  @override
  String toString() {
    return 'StacContainer(alignment: $alignment, padding: $padding, decoration: $decoration, foregroundDecoration: $foregroundDecoration, color: $color, width: $width, height: $height, constraints: $constraints, margin: $margin, child: $child, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacContainerCopyWith<$Res> {
  factory $StacContainerCopyWith(
          StacContainer value, $Res Function(StacContainer) _then) =
      _$StacContainerCopyWithImpl;
  @useResult
  $Res call(
      {StacAlignment? alignment,
      StacEdgeInsets? padding,
      StacBoxDecoration? decoration,
      StacBoxDecoration? foregroundDecoration,
      String? color,
      StacDouble? width,
      StacDouble? height,
      StacBoxConstraints? constraints,
      StacEdgeInsets? margin,
      Map<String, dynamic>? child,
      Clip clipBehavior});

  $StacEdgeInsetsCopyWith<$Res>? get padding;
  $StacBoxDecorationCopyWith<$Res>? get decoration;
  $StacBoxDecorationCopyWith<$Res>? get foregroundDecoration;
  $StacBoxConstraintsCopyWith<$Res>? get constraints;
  $StacEdgeInsetsCopyWith<$Res>? get margin;
}

/// @nodoc
class _$StacContainerCopyWithImpl<$Res>
    implements $StacContainerCopyWith<$Res> {
  _$StacContainerCopyWithImpl(this._self, this._then);

  final StacContainer _self;
  final $Res Function(StacContainer) _then;

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignment = freezed,
    Object? padding = freezed,
    Object? decoration = freezed,
    Object? foregroundDecoration = freezed,
    Object? color = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? constraints = freezed,
    Object? margin = freezed,
    Object? child = freezed,
    Object? clipBehavior = null,
  }) {
    return _then(_self.copyWith(
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      decoration: freezed == decoration
          ? _self.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      foregroundDecoration: freezed == foregroundDecoration
          ? _self.foregroundDecoration
          : foregroundDecoration // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      constraints: freezed == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      margin: freezed == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ));
  }

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get padding {
    if (_self.padding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.padding!, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }

  /// Create a copy of StacContainer
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

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxDecorationCopyWith<$Res>? get foregroundDecoration {
    if (_self.foregroundDecoration == null) {
      return null;
    }

    return $StacBoxDecorationCopyWith<$Res>(_self.foregroundDecoration!,
        (value) {
      return _then(_self.copyWith(foregroundDecoration: value));
    });
  }

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.constraints!, (value) {
      return _then(_self.copyWith(constraints: value));
    });
  }

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get margin {
    if (_self.margin == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.margin!, (value) {
      return _then(_self.copyWith(margin: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacContainer implements StacContainer {
  const _StacContainer(
      {this.alignment,
      this.padding,
      this.decoration,
      this.foregroundDecoration,
      this.color,
      this.width,
      this.height,
      this.constraints,
      this.margin,
      final Map<String, dynamic>? child,
      this.clipBehavior = Clip.none})
      : _child = child;
  factory _StacContainer.fromJson(Map<String, dynamic> json) =>
      _$StacContainerFromJson(json);

  @override
  final StacAlignment? alignment;
  @override
  final StacEdgeInsets? padding;
  @override
  final StacBoxDecoration? decoration;
  @override
  final StacBoxDecoration? foregroundDecoration;
  @override
  final String? color;
  @override
  final StacDouble? width;
  @override
  final StacDouble? height;
  @override
  final StacBoxConstraints? constraints;
  @override
  final StacEdgeInsets? margin;
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
  @JsonKey()
  final Clip clipBehavior;

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacContainerCopyWith<_StacContainer> get copyWith =>
      __$StacContainerCopyWithImpl<_StacContainer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacContainerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacContainer &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.foregroundDecoration, foregroundDecoration) ||
                other.foregroundDecoration == foregroundDecoration) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      alignment,
      padding,
      decoration,
      foregroundDecoration,
      color,
      width,
      height,
      constraints,
      margin,
      const DeepCollectionEquality().hash(_child),
      clipBehavior);

  @override
  String toString() {
    return 'StacContainer(alignment: $alignment, padding: $padding, decoration: $decoration, foregroundDecoration: $foregroundDecoration, color: $color, width: $width, height: $height, constraints: $constraints, margin: $margin, child: $child, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacContainerCopyWith<$Res>
    implements $StacContainerCopyWith<$Res> {
  factory _$StacContainerCopyWith(
          _StacContainer value, $Res Function(_StacContainer) _then) =
      __$StacContainerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacAlignment? alignment,
      StacEdgeInsets? padding,
      StacBoxDecoration? decoration,
      StacBoxDecoration? foregroundDecoration,
      String? color,
      StacDouble? width,
      StacDouble? height,
      StacBoxConstraints? constraints,
      StacEdgeInsets? margin,
      Map<String, dynamic>? child,
      Clip clipBehavior});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $StacBoxDecorationCopyWith<$Res>? get decoration;
  @override
  $StacBoxDecorationCopyWith<$Res>? get foregroundDecoration;
  @override
  $StacBoxConstraintsCopyWith<$Res>? get constraints;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get margin;
}

/// @nodoc
class __$StacContainerCopyWithImpl<$Res>
    implements _$StacContainerCopyWith<$Res> {
  __$StacContainerCopyWithImpl(this._self, this._then);

  final _StacContainer _self;
  final $Res Function(_StacContainer) _then;

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? alignment = freezed,
    Object? padding = freezed,
    Object? decoration = freezed,
    Object? foregroundDecoration = freezed,
    Object? color = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? constraints = freezed,
    Object? margin = freezed,
    Object? child = freezed,
    Object? clipBehavior = null,
  }) {
    return _then(_StacContainer(
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      decoration: freezed == decoration
          ? _self.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      foregroundDecoration: freezed == foregroundDecoration
          ? _self.foregroundDecoration
          : foregroundDecoration // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      constraints: freezed == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      margin: freezed == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ));
  }

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get padding {
    if (_self.padding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.padding!, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }

  /// Create a copy of StacContainer
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

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxDecorationCopyWith<$Res>? get foregroundDecoration {
    if (_self.foregroundDecoration == null) {
      return null;
    }

    return $StacBoxDecorationCopyWith<$Res>(_self.foregroundDecoration!,
        (value) {
      return _then(_self.copyWith(foregroundDecoration: value));
    });
  }

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.constraints!, (value) {
      return _then(_self.copyWith(constraints: value));
    });
  }

  /// Create a copy of StacContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get margin {
    if (_self.margin == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.margin!, (value) {
      return _then(_self.copyWith(margin: value));
    });
  }
}

// dart format on
