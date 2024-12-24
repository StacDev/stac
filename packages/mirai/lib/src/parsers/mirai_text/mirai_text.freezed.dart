// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiText _$MiraiTextFromJson(Map<String, dynamic> json) {
  return _MiraiText.fromJson(json);
}

/// @nodoc
mixin _$MiraiText {
  String get data => throw _privateConstructorUsedError;
  List<MiraiTextSpan> get children => throw _privateConstructorUsedError;
  MiraiTextStyle? get style => throw _privateConstructorUsedError;
  TextAlign? get textAlign => throw _privateConstructorUsedError;
  TextDirection? get textDirection => throw _privateConstructorUsedError;
  bool? get softWrap => throw _privateConstructorUsedError;
  TextOverflow? get overflow => throw _privateConstructorUsedError;
  double? get textScaleFactor => throw _privateConstructorUsedError;
  int? get maxLines => throw _privateConstructorUsedError;
  String? get semanticsLabel => throw _privateConstructorUsedError;
  TextWidthBasis? get textWidthBasis => throw _privateConstructorUsedError;
  String? get selectionColor => throw _privateConstructorUsedError;

  /// Serializes this MiraiText to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiTextCopyWith<MiraiText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiTextCopyWith<$Res> {
  factory $MiraiTextCopyWith(MiraiText value, $Res Function(MiraiText) then) =
      _$MiraiTextCopyWithImpl<$Res, MiraiText>;
  @useResult
  $Res call(
      {String data,
      List<MiraiTextSpan> children,
      MiraiTextStyle? style,
      TextAlign? textAlign,
      TextDirection? textDirection,
      bool? softWrap,
      TextOverflow? overflow,
      double? textScaleFactor,
      int? maxLines,
      String? semanticsLabel,
      TextWidthBasis? textWidthBasis,
      String? selectionColor});

  $MiraiTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$MiraiTextCopyWithImpl<$Res, $Val extends MiraiText>
    implements $MiraiTextCopyWith<$Res> {
  _$MiraiTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiText
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
              as List<MiraiTextSpan>,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MiraiTextStyle?,
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

  /// Create a copy of MiraiText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiTextStyleCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $MiraiTextStyleCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiTextImplCopyWith<$Res>
    implements $MiraiTextCopyWith<$Res> {
  factory _$$MiraiTextImplCopyWith(
          _$MiraiTextImpl value, $Res Function(_$MiraiTextImpl) then) =
      __$$MiraiTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String data,
      List<MiraiTextSpan> children,
      MiraiTextStyle? style,
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
  $MiraiTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$$MiraiTextImplCopyWithImpl<$Res>
    extends _$MiraiTextCopyWithImpl<$Res, _$MiraiTextImpl>
    implements _$$MiraiTextImplCopyWith<$Res> {
  __$$MiraiTextImplCopyWithImpl(
      _$MiraiTextImpl _value, $Res Function(_$MiraiTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiText
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
    return _then(_$MiraiTextImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<MiraiTextSpan>,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MiraiTextStyle?,
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
class _$MiraiTextImpl implements _MiraiText {
  const _$MiraiTextImpl(
      {required this.data,
      final List<MiraiTextSpan> children = const [],
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

  factory _$MiraiTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiTextImplFromJson(json);

  @override
  final String data;
  final List<MiraiTextSpan> _children;
  @override
  @JsonKey()
  List<MiraiTextSpan> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  final MiraiTextStyle? style;
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
    return 'MiraiText(data: $data, children: $children, style: $style, textAlign: $textAlign, textDirection: $textDirection, softWrap: $softWrap, overflow: $overflow, textScaleFactor: $textScaleFactor, maxLines: $maxLines, semanticsLabel: $semanticsLabel, textWidthBasis: $textWidthBasis, selectionColor: $selectionColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiTextImpl &&
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

  /// Create a copy of MiraiText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiTextImplCopyWith<_$MiraiTextImpl> get copyWith =>
      __$$MiraiTextImplCopyWithImpl<_$MiraiTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiTextImplToJson(
      this,
    );
  }
}

abstract class _MiraiText implements MiraiText {
  const factory _MiraiText(
      {required final String data,
      final List<MiraiTextSpan> children,
      final MiraiTextStyle? style,
      final TextAlign? textAlign,
      final TextDirection? textDirection,
      final bool? softWrap,
      final TextOverflow? overflow,
      final double? textScaleFactor,
      final int? maxLines,
      final String? semanticsLabel,
      final TextWidthBasis? textWidthBasis,
      final String? selectionColor}) = _$MiraiTextImpl;

  factory _MiraiText.fromJson(Map<String, dynamic> json) =
      _$MiraiTextImpl.fromJson;

  @override
  String get data;
  @override
  List<MiraiTextSpan> get children;
  @override
  MiraiTextStyle? get style;
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

  /// Create a copy of MiraiText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiTextImplCopyWith<_$MiraiTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MiraiTextSpan _$MiraiTextSpanFromJson(Map<String, dynamic> json) {
  return _MiraiTextSpan.fromJson(json);
}

/// @nodoc
mixin _$MiraiTextSpan {
  String? get data => throw _privateConstructorUsedError;
  MiraiTextStyle? get style => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onTap => throw _privateConstructorUsedError;

  /// Serializes this MiraiTextSpan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiTextSpanCopyWith<MiraiTextSpan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiTextSpanCopyWith<$Res> {
  factory $MiraiTextSpanCopyWith(
          MiraiTextSpan value, $Res Function(MiraiTextSpan) then) =
      _$MiraiTextSpanCopyWithImpl<$Res, MiraiTextSpan>;
  @useResult
  $Res call({String? data, MiraiTextStyle? style, Map<String, dynamic>? onTap});

  $MiraiTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$MiraiTextSpanCopyWithImpl<$Res, $Val extends MiraiTextSpan>
    implements $MiraiTextSpanCopyWith<$Res> {
  _$MiraiTextSpanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiTextSpan
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
              as MiraiTextStyle?,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of MiraiTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiTextStyleCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $MiraiTextStyleCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiTextSpanImplCopyWith<$Res>
    implements $MiraiTextSpanCopyWith<$Res> {
  factory _$$MiraiTextSpanImplCopyWith(
          _$MiraiTextSpanImpl value, $Res Function(_$MiraiTextSpanImpl) then) =
      __$$MiraiTextSpanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? data, MiraiTextStyle? style, Map<String, dynamic>? onTap});

  @override
  $MiraiTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$$MiraiTextSpanImplCopyWithImpl<$Res>
    extends _$MiraiTextSpanCopyWithImpl<$Res, _$MiraiTextSpanImpl>
    implements _$$MiraiTextSpanImplCopyWith<$Res> {
  __$$MiraiTextSpanImplCopyWithImpl(
      _$MiraiTextSpanImpl _value, $Res Function(_$MiraiTextSpanImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? style = freezed,
    Object? onTap = freezed,
  }) {
    return _then(_$MiraiTextSpanImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MiraiTextStyle?,
      onTap: freezed == onTap
          ? _value._onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiTextSpanImpl implements _MiraiTextSpan {
  const _$MiraiTextSpanImpl(
      {this.data, this.style, final Map<String, dynamic>? onTap})
      : _onTap = onTap;

  factory _$MiraiTextSpanImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiTextSpanImplFromJson(json);

  @override
  final String? data;
  @override
  final MiraiTextStyle? style;
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
    return 'MiraiTextSpan(data: $data, style: $style, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiTextSpanImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other._onTap, _onTap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, style, const DeepCollectionEquality().hash(_onTap));

  /// Create a copy of MiraiTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiTextSpanImplCopyWith<_$MiraiTextSpanImpl> get copyWith =>
      __$$MiraiTextSpanImplCopyWithImpl<_$MiraiTextSpanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiTextSpanImplToJson(
      this,
    );
  }
}

abstract class _MiraiTextSpan implements MiraiTextSpan {
  const factory _MiraiTextSpan(
      {final String? data,
      final MiraiTextStyle? style,
      final Map<String, dynamic>? onTap}) = _$MiraiTextSpanImpl;

  factory _MiraiTextSpan.fromJson(Map<String, dynamic> json) =
      _$MiraiTextSpanImpl.fromJson;

  @override
  String? get data;
  @override
  MiraiTextStyle? get style;
  @override
  Map<String, dynamic>? get onTap;

  /// Create a copy of MiraiTextSpan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiTextSpanImplCopyWith<_$MiraiTextSpanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
