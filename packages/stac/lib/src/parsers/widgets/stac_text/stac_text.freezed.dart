// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacText {
  String get data;
  List<StacTextSpan> get children;
  StacTextStyle? get style;
  TextAlign? get textAlign;
  TextDirection? get textDirection;
  bool? get softWrap;
  TextOverflow? get overflow;
  StacDouble? get textScaleFactor;
  int? get maxLines;
  String? get semanticsLabel;
  TextWidthBasis? get textWidthBasis;
  String? get selectionColor;

  /// Create a copy of StacText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTextCopyWith<StacText> get copyWith =>
      _$StacTextCopyWithImpl<StacText>(this as StacText, _$identity);

  /// Serializes this StacText to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacText &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.textAlign, textAlign) ||
                other.textAlign == textAlign) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.softWrap, softWrap) ||
                other.softWrap == softWrap) &&
            (identical(other.overflow, overflow) ||
                other.overflow == overflow) &&
            (identical(other.textScaleFactor, textScaleFactor) ||
                other.textScaleFactor == textScaleFactor) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.textWidthBasis, textWidthBasis) ||
                other.textWidthBasis == textWidthBasis) &&
            (identical(other.selectionColor, selectionColor) ||
                other.selectionColor == selectionColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      data,
      const DeepCollectionEquality().hash(children),
      style,
      textAlign,
      textDirection,
      softWrap,
      overflow,
      textScaleFactor,
      maxLines,
      semanticsLabel,
      textWidthBasis,
      selectionColor);

  @override
  String toString() {
    return 'StacText(data: $data, children: $children, style: $style, textAlign: $textAlign, textDirection: $textDirection, softWrap: $softWrap, overflow: $overflow, textScaleFactor: $textScaleFactor, maxLines: $maxLines, semanticsLabel: $semanticsLabel, textWidthBasis: $textWidthBasis, selectionColor: $selectionColor)';
  }
}

/// @nodoc
abstract mixin class $StacTextCopyWith<$Res> {
  factory $StacTextCopyWith(StacText value, $Res Function(StacText) _then) =
      _$StacTextCopyWithImpl;
  @useResult
  $Res call(
      {String data,
      List<StacTextSpan> children,
      StacTextStyle? style,
      TextAlign? textAlign,
      TextDirection? textDirection,
      bool? softWrap,
      TextOverflow? overflow,
      StacDouble? textScaleFactor,
      int? maxLines,
      String? semanticsLabel,
      TextWidthBasis? textWidthBasis,
      String? selectionColor});

  $StacTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$StacTextCopyWithImpl<$Res> implements $StacTextCopyWith<$Res> {
  _$StacTextCopyWithImpl(this._self, this._then);

  final StacText _self;
  final $Res Function(StacText) _then;

  /// Create a copy of StacText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? children = null,
    Object? style = freezed,
    Object? textAlign = freezed,
    Object? textDirection = freezed,
    Object? softWrap = freezed,
    Object? overflow = freezed,
    Object? textScaleFactor = freezed,
    Object? maxLines = freezed,
    Object? semanticsLabel = freezed,
    Object? textWidthBasis = freezed,
    Object? selectionColor = freezed,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<StacTextSpan>,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      textAlign: freezed == textAlign
          ? _self.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign?,
      textDirection: freezed == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      softWrap: freezed == softWrap
          ? _self.softWrap
          : softWrap // ignore: cast_nullable_to_non_nullable
              as bool?,
      overflow: freezed == overflow
          ? _self.overflow
          : overflow // ignore: cast_nullable_to_non_nullable
              as TextOverflow?,
      textScaleFactor: freezed == textScaleFactor
          ? _self.textScaleFactor
          : textScaleFactor // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      maxLines: freezed == maxLines
          ? _self.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      textWidthBasis: freezed == textWidthBasis
          ? _self.textWidthBasis
          : textWidthBasis // ignore: cast_nullable_to_non_nullable
              as TextWidthBasis?,
      selectionColor: freezed == selectionColor
          ? _self.selectionColor
          : selectionColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StacText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get style {
    if (_self.style == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.style!, (value) {
      return _then(_self.copyWith(style: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacText implements StacText {
  const _StacText(
      {required this.data,
      final List<StacTextSpan> children = const [],
      this.style,
      this.textAlign,
      this.textDirection,
      this.softWrap,
      this.overflow,
      this.textScaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.textWidthBasis,
      this.selectionColor})
      : _children = children;
  factory _StacText.fromJson(Map<String, dynamic> json) =>
      _$StacTextFromJson(json);

  @override
  final String data;
  final List<StacTextSpan> _children;
  @override
  @JsonKey()
  List<StacTextSpan> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  final StacTextStyle? style;
  @override
  final TextAlign? textAlign;
  @override
  final TextDirection? textDirection;
  @override
  final bool? softWrap;
  @override
  final TextOverflow? overflow;
  @override
  final StacDouble? textScaleFactor;
  @override
  final int? maxLines;
  @override
  final String? semanticsLabel;
  @override
  final TextWidthBasis? textWidthBasis;
  @override
  final String? selectionColor;

  /// Create a copy of StacText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTextCopyWith<_StacText> get copyWith =>
      __$StacTextCopyWithImpl<_StacText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTextToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacText &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.textAlign, textAlign) ||
                other.textAlign == textAlign) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.softWrap, softWrap) ||
                other.softWrap == softWrap) &&
            (identical(other.overflow, overflow) ||
                other.overflow == overflow) &&
            (identical(other.textScaleFactor, textScaleFactor) ||
                other.textScaleFactor == textScaleFactor) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.textWidthBasis, textWidthBasis) ||
                other.textWidthBasis == textWidthBasis) &&
            (identical(other.selectionColor, selectionColor) ||
                other.selectionColor == selectionColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      data,
      const DeepCollectionEquality().hash(_children),
      style,
      textAlign,
      textDirection,
      softWrap,
      overflow,
      textScaleFactor,
      maxLines,
      semanticsLabel,
      textWidthBasis,
      selectionColor);

  @override
  String toString() {
    return 'StacText(data: $data, children: $children, style: $style, textAlign: $textAlign, textDirection: $textDirection, softWrap: $softWrap, overflow: $overflow, textScaleFactor: $textScaleFactor, maxLines: $maxLines, semanticsLabel: $semanticsLabel, textWidthBasis: $textWidthBasis, selectionColor: $selectionColor)';
  }
}

/// @nodoc
abstract mixin class _$StacTextCopyWith<$Res>
    implements $StacTextCopyWith<$Res> {
  factory _$StacTextCopyWith(_StacText value, $Res Function(_StacText) _then) =
      __$StacTextCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String data,
      List<StacTextSpan> children,
      StacTextStyle? style,
      TextAlign? textAlign,
      TextDirection? textDirection,
      bool? softWrap,
      TextOverflow? overflow,
      StacDouble? textScaleFactor,
      int? maxLines,
      String? semanticsLabel,
      TextWidthBasis? textWidthBasis,
      String? selectionColor});

  @override
  $StacTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$StacTextCopyWithImpl<$Res> implements _$StacTextCopyWith<$Res> {
  __$StacTextCopyWithImpl(this._self, this._then);

  final _StacText _self;
  final $Res Function(_StacText) _then;

  /// Create a copy of StacText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? children = null,
    Object? style = freezed,
    Object? textAlign = freezed,
    Object? textDirection = freezed,
    Object? softWrap = freezed,
    Object? overflow = freezed,
    Object? textScaleFactor = freezed,
    Object? maxLines = freezed,
    Object? semanticsLabel = freezed,
    Object? textWidthBasis = freezed,
    Object? selectionColor = freezed,
  }) {
    return _then(_StacText(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<StacTextSpan>,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      textAlign: freezed == textAlign
          ? _self.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign?,
      textDirection: freezed == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      softWrap: freezed == softWrap
          ? _self.softWrap
          : softWrap // ignore: cast_nullable_to_non_nullable
              as bool?,
      overflow: freezed == overflow
          ? _self.overflow
          : overflow // ignore: cast_nullable_to_non_nullable
              as TextOverflow?,
      textScaleFactor: freezed == textScaleFactor
          ? _self.textScaleFactor
          : textScaleFactor // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      maxLines: freezed == maxLines
          ? _self.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      textWidthBasis: freezed == textWidthBasis
          ? _self.textWidthBasis
          : textWidthBasis // ignore: cast_nullable_to_non_nullable
              as TextWidthBasis?,
      selectionColor: freezed == selectionColor
          ? _self.selectionColor
          : selectionColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StacText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get style {
    if (_self.style == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.style!, (value) {
      return _then(_self.copyWith(style: value));
    });
  }
}

/// @nodoc
mixin _$StacTextSpan {
  String? get data;
  StacTextStyle? get style;
  Map<String, dynamic>? get onTap;

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTextSpanCopyWith<StacTextSpan> get copyWith =>
      _$StacTextSpanCopyWithImpl<StacTextSpan>(
          this as StacTextSpan, _$identity);

  /// Serializes this StacTextSpan to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTextSpan &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other.onTap, onTap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, style, const DeepCollectionEquality().hash(onTap));

  @override
  String toString() {
    return 'StacTextSpan(data: $data, style: $style, onTap: $onTap)';
  }
}

/// @nodoc
abstract mixin class $StacTextSpanCopyWith<$Res> {
  factory $StacTextSpanCopyWith(
          StacTextSpan value, $Res Function(StacTextSpan) _then) =
      _$StacTextSpanCopyWithImpl;
  @useResult
  $Res call({String? data, StacTextStyle? style, Map<String, dynamic>? onTap});

  $StacTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$StacTextSpanCopyWithImpl<$Res> implements $StacTextSpanCopyWith<$Res> {
  _$StacTextSpanCopyWithImpl(this._self, this._then);

  final StacTextSpan _self;
  final $Res Function(StacTextSpan) _then;

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? style = freezed,
    Object? onTap = freezed,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      onTap: freezed == onTap
          ? _self.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get style {
    if (_self.style == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.style!, (value) {
      return _then(_self.copyWith(style: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacTextSpan implements StacTextSpan {
  const _StacTextSpan(
      {this.data, this.style, final Map<String, dynamic>? onTap})
      : _onTap = onTap;
  factory _StacTextSpan.fromJson(Map<String, dynamic> json) =>
      _$StacTextSpanFromJson(json);

  @override
  final String? data;
  @override
  final StacTextStyle? style;
  final Map<String, dynamic>? _onTap;
  @override
  Map<String, dynamic>? get onTap {
    final value = _onTap;
    if (value == null) return null;
    if (_onTap is EqualUnmodifiableMapView) return _onTap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTextSpanCopyWith<_StacTextSpan> get copyWith =>
      __$StacTextSpanCopyWithImpl<_StacTextSpan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTextSpanToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTextSpan &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other._onTap, _onTap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, style, const DeepCollectionEquality().hash(_onTap));

  @override
  String toString() {
    return 'StacTextSpan(data: $data, style: $style, onTap: $onTap)';
  }
}

/// @nodoc
abstract mixin class _$StacTextSpanCopyWith<$Res>
    implements $StacTextSpanCopyWith<$Res> {
  factory _$StacTextSpanCopyWith(
          _StacTextSpan value, $Res Function(_StacTextSpan) _then) =
      __$StacTextSpanCopyWithImpl;
  @override
  @useResult
  $Res call({String? data, StacTextStyle? style, Map<String, dynamic>? onTap});

  @override
  $StacTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$StacTextSpanCopyWithImpl<$Res>
    implements _$StacTextSpanCopyWith<$Res> {
  __$StacTextSpanCopyWithImpl(this._self, this._then);

  final _StacTextSpan _self;
  final $Res Function(_StacTextSpan) _then;

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? style = freezed,
    Object? onTap = freezed,
  }) {
    return _then(_StacTextSpan(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      onTap: freezed == onTap
          ? _self._onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get style {
    if (_self.style == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.style!, (value) {
      return _then(_self.copyWith(style: value));
    });
  }
}

// dart format on
