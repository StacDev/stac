// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacText _$StacTextFromJson(Map<String, dynamic> json) {
  return _StacText.fromJson(json);
}

/// @nodoc
mixin _$StacText {
  String get data => throw _privateConstructorUsedError;
  List<StacTextSpan> get children => throw _privateConstructorUsedError;
  StacTextStyle? get style => throw _privateConstructorUsedError;
  TextAlign? get textAlign => throw _privateConstructorUsedError;
  TextDirection? get textDirection => throw _privateConstructorUsedError;
  bool? get softWrap => throw _privateConstructorUsedError;
  TextOverflow? get overflow => throw _privateConstructorUsedError;
  double? get textScaleFactor => throw _privateConstructorUsedError;
  int? get maxLines => throw _privateConstructorUsedError;
  String? get semanticsLabel => throw _privateConstructorUsedError;
  TextWidthBasis? get textWidthBasis => throw _privateConstructorUsedError;
  String? get selectionColor => throw _privateConstructorUsedError;

  /// Serializes this StacText to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacTextCopyWith<StacText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacTextCopyWith<$Res> {
  factory $StacTextCopyWith(StacText value, $Res Function(StacText) then) =
      _$StacTextCopyWithImpl<$Res, StacText>;
  @useResult
  $Res call(
      {String data,
      List<StacTextSpan> children,
      StacTextStyle? style,
      TextAlign? textAlign,
      TextDirection? textDirection,
      bool? softWrap,
      TextOverflow? overflow,
      double? textScaleFactor,
      int? maxLines,
      String? semanticsLabel,
      TextWidthBasis? textWidthBasis,
      String? selectionColor});

  $StacTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$StacTextCopyWithImpl<$Res, $Val extends StacText>
    implements $StacTextCopyWith<$Res> {
  _$StacTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<StacTextSpan>,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      textAlign: freezed == textAlign
          ? _value.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign?,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      softWrap: freezed == softWrap
          ? _value.softWrap
          : softWrap // ignore: cast_nullable_to_non_nullable
              as bool?,
      overflow: freezed == overflow
          ? _value.overflow
          : overflow // ignore: cast_nullable_to_non_nullable
              as TextOverflow?,
      textScaleFactor: freezed == textScaleFactor
          ? _value.textScaleFactor
          : textScaleFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      maxLines: freezed == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      semanticsLabel: freezed == semanticsLabel
          ? _value.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      textWidthBasis: freezed == textWidthBasis
          ? _value.textWidthBasis
          : textWidthBasis // ignore: cast_nullable_to_non_nullable
              as TextWidthBasis?,
      selectionColor: freezed == selectionColor
          ? _value.selectionColor
          : selectionColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of StacText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacTextImplCopyWith<$Res>
    implements $StacTextCopyWith<$Res> {
  factory _$$StacTextImplCopyWith(
          _$StacTextImpl value, $Res Function(_$StacTextImpl) then) =
      __$$StacTextImplCopyWithImpl<$Res>;
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
      double? textScaleFactor,
      int? maxLines,
      String? semanticsLabel,
      TextWidthBasis? textWidthBasis,
      String? selectionColor});

  @override
  $StacTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$$StacTextImplCopyWithImpl<$Res>
    extends _$StacTextCopyWithImpl<$Res, _$StacTextImpl>
    implements _$$StacTextImplCopyWith<$Res> {
  __$$StacTextImplCopyWithImpl(
      _$StacTextImpl _value, $Res Function(_$StacTextImpl) _then)
      : super(_value, _then);

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
    return _then(_$StacTextImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<StacTextSpan>,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      textAlign: freezed == textAlign
          ? _value.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign?,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      softWrap: freezed == softWrap
          ? _value.softWrap
          : softWrap // ignore: cast_nullable_to_non_nullable
              as bool?,
      overflow: freezed == overflow
          ? _value.overflow
          : overflow // ignore: cast_nullable_to_non_nullable
              as TextOverflow?,
      textScaleFactor: freezed == textScaleFactor
          ? _value.textScaleFactor
          : textScaleFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      maxLines: freezed == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      semanticsLabel: freezed == semanticsLabel
          ? _value.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      textWidthBasis: freezed == textWidthBasis
          ? _value.textWidthBasis
          : textWidthBasis // ignore: cast_nullable_to_non_nullable
              as TextWidthBasis?,
      selectionColor: freezed == selectionColor
          ? _value.selectionColor
          : selectionColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacTextImpl implements _StacText {
  const _$StacTextImpl(
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

  factory _$StacTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacTextImplFromJson(json);

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
  final double? textScaleFactor;
  @override
  final int? maxLines;
  @override
  final String? semanticsLabel;
  @override
  final TextWidthBasis? textWidthBasis;
  @override
  final String? selectionColor;

  @override
  String toString() {
    return 'StacText(data: $data, children: $children, style: $style, textAlign: $textAlign, textDirection: $textDirection, softWrap: $softWrap, overflow: $overflow, textScaleFactor: $textScaleFactor, maxLines: $maxLines, semanticsLabel: $semanticsLabel, textWidthBasis: $textWidthBasis, selectionColor: $selectionColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacTextImpl &&
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

  /// Create a copy of StacText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacTextImplCopyWith<_$StacTextImpl> get copyWith =>
      __$$StacTextImplCopyWithImpl<_$StacTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacTextImplToJson(
      this,
    );
  }
}

abstract class _StacText implements StacText {
  const factory _StacText(
      {required final String data,
      final List<StacTextSpan> children,
      final StacTextStyle? style,
      final TextAlign? textAlign,
      final TextDirection? textDirection,
      final bool? softWrap,
      final TextOverflow? overflow,
      final double? textScaleFactor,
      final int? maxLines,
      final String? semanticsLabel,
      final TextWidthBasis? textWidthBasis,
      final String? selectionColor}) = _$StacTextImpl;

  factory _StacText.fromJson(Map<String, dynamic> json) =
      _$StacTextImpl.fromJson;

  @override
  String get data;
  @override
  List<StacTextSpan> get children;
  @override
  StacTextStyle? get style;
  @override
  TextAlign? get textAlign;
  @override
  TextDirection? get textDirection;
  @override
  bool? get softWrap;
  @override
  TextOverflow? get overflow;
  @override
  double? get textScaleFactor;
  @override
  int? get maxLines;
  @override
  String? get semanticsLabel;
  @override
  TextWidthBasis? get textWidthBasis;
  @override
  String? get selectionColor;

  /// Create a copy of StacText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacTextImplCopyWith<_$StacTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StacTextSpan _$StacTextSpanFromJson(Map<String, dynamic> json) {
  return _StacTextSpan.fromJson(json);
}

/// @nodoc
mixin _$StacTextSpan {
  String? get data => throw _privateConstructorUsedError;
  StacTextStyle? get style => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onTap => throw _privateConstructorUsedError;

  /// Serializes this StacTextSpan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacTextSpanCopyWith<StacTextSpan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacTextSpanCopyWith<$Res> {
  factory $StacTextSpanCopyWith(
          StacTextSpan value, $Res Function(StacTextSpan) then) =
      _$StacTextSpanCopyWithImpl<$Res, StacTextSpan>;
  @useResult
  $Res call({String? data, StacTextStyle? style, Map<String, dynamic>? onTap});

  $StacTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$StacTextSpanCopyWithImpl<$Res, $Val extends StacTextSpan>
    implements $StacTextSpanCopyWith<$Res> {
  _$StacTextSpanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? style = freezed,
    Object? onTap = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacTextSpanImplCopyWith<$Res>
    implements $StacTextSpanCopyWith<$Res> {
  factory _$$StacTextSpanImplCopyWith(
          _$StacTextSpanImpl value, $Res Function(_$StacTextSpanImpl) then) =
      __$$StacTextSpanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? data, StacTextStyle? style, Map<String, dynamic>? onTap});

  @override
  $StacTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$$StacTextSpanImplCopyWithImpl<$Res>
    extends _$StacTextSpanCopyWithImpl<$Res, _$StacTextSpanImpl>
    implements _$$StacTextSpanImplCopyWith<$Res> {
  __$$StacTextSpanImplCopyWithImpl(
      _$StacTextSpanImpl _value, $Res Function(_$StacTextSpanImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? style = freezed,
    Object? onTap = freezed,
  }) {
    return _then(_$StacTextSpanImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      onTap: freezed == onTap
          ? _value._onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacTextSpanImpl implements _StacTextSpan {
  const _$StacTextSpanImpl(
      {this.data, this.style, final Map<String, dynamic>? onTap})
      : _onTap = onTap;

  factory _$StacTextSpanImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacTextSpanImplFromJson(json);

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

  @override
  String toString() {
    return 'StacTextSpan(data: $data, style: $style, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacTextSpanImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other._onTap, _onTap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, style, const DeepCollectionEquality().hash(_onTap));

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacTextSpanImplCopyWith<_$StacTextSpanImpl> get copyWith =>
      __$$StacTextSpanImplCopyWithImpl<_$StacTextSpanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacTextSpanImplToJson(
      this,
    );
  }
}

abstract class _StacTextSpan implements StacTextSpan {
  const factory _StacTextSpan(
      {final String? data,
      final StacTextStyle? style,
      final Map<String, dynamic>? onTap}) = _$StacTextSpanImpl;

  factory _StacTextSpan.fromJson(Map<String, dynamic> json) =
      _$StacTextSpanImpl.fromJson;

  @override
  String? get data;
  @override
  StacTextStyle? get style;
  @override
  Map<String, dynamic>? get onTap;

  /// Create a copy of StacTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacTextSpanImplCopyWith<_$StacTextSpanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
