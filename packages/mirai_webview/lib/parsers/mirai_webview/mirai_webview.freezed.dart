// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_webview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiWebView _$MiraiWebViewFromJson(Map<String, dynamic> json) {
  return _MiraiWebView.fromJson(json);
}

/// @nodoc
mixin _$MiraiWebView {
  /// The URL to load in the `WebView`.
  String get url => throw _privateConstructorUsedError;

  /// Sets whether JavaScript execution is enabled.
  ///
  /// Default value is `JavaScriptMode.unrestricted`.
  JavaScriptMode get javaScriptMode => throw _privateConstructorUsedError;

  /// Background color of the `WebView`.
  ///
  /// Default value is `#FFFFFF`.
  String get backgroundColor => throw _privateConstructorUsedError;

  /// The user agent for the `WebView`.
  String? get userAgent => throw _privateConstructorUsedError;

  /// Sets whether zoom is enabled for the `WebView`.
  ///
  /// Default value is `false`.
  bool get enableZoom => throw _privateConstructorUsedError;

  /// The layout direction for the `WebView`.
  ///
  /// Default value is `TextDirection.ltr`.
  TextDirection get layoutDirection => throw _privateConstructorUsedError;

  /// Serializes this MiraiWebView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiWebView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiWebViewCopyWith<MiraiWebView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiWebViewCopyWith<$Res> {
  factory $MiraiWebViewCopyWith(
          MiraiWebView value, $Res Function(MiraiWebView) then) =
      _$MiraiWebViewCopyWithImpl<$Res, MiraiWebView>;
  @useResult
  $Res call(
      {String url,
      JavaScriptMode javaScriptMode,
      String backgroundColor,
      String? userAgent,
      bool enableZoom,
      TextDirection layoutDirection});
}

/// @nodoc
class _$MiraiWebViewCopyWithImpl<$Res, $Val extends MiraiWebView>
    implements $MiraiWebViewCopyWith<$Res> {
  _$MiraiWebViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiWebView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? javaScriptMode = null,
    Object? backgroundColor = null,
    Object? userAgent = freezed,
    Object? enableZoom = null,
    Object? layoutDirection = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      javaScriptMode: null == javaScriptMode
          ? _value.javaScriptMode
          : javaScriptMode // ignore: cast_nullable_to_non_nullable
              as JavaScriptMode,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      enableZoom: null == enableZoom
          ? _value.enableZoom
          : enableZoom // ignore: cast_nullable_to_non_nullable
              as bool,
      layoutDirection: null == layoutDirection
          ? _value.layoutDirection
          : layoutDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiWebViewImplCopyWith<$Res>
    implements $MiraiWebViewCopyWith<$Res> {
  factory _$$MiraiWebViewImplCopyWith(
          _$MiraiWebViewImpl value, $Res Function(_$MiraiWebViewImpl) then) =
      __$$MiraiWebViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      JavaScriptMode javaScriptMode,
      String backgroundColor,
      String? userAgent,
      bool enableZoom,
      TextDirection layoutDirection});
}

/// @nodoc
class __$$MiraiWebViewImplCopyWithImpl<$Res>
    extends _$MiraiWebViewCopyWithImpl<$Res, _$MiraiWebViewImpl>
    implements _$$MiraiWebViewImplCopyWith<$Res> {
  __$$MiraiWebViewImplCopyWithImpl(
      _$MiraiWebViewImpl _value, $Res Function(_$MiraiWebViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiWebView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? javaScriptMode = null,
    Object? backgroundColor = null,
    Object? userAgent = freezed,
    Object? enableZoom = null,
    Object? layoutDirection = null,
  }) {
    return _then(_$MiraiWebViewImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      javaScriptMode: null == javaScriptMode
          ? _value.javaScriptMode
          : javaScriptMode // ignore: cast_nullable_to_non_nullable
              as JavaScriptMode,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      enableZoom: null == enableZoom
          ? _value.enableZoom
          : enableZoom // ignore: cast_nullable_to_non_nullable
              as bool,
      layoutDirection: null == layoutDirection
          ? _value.layoutDirection
          : layoutDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiWebViewImpl implements _MiraiWebView {
  const _$MiraiWebViewImpl(
      {required this.url,
      this.javaScriptMode = JavaScriptMode.unrestricted,
      this.backgroundColor = "#FFFFFF",
      this.userAgent,
      this.enableZoom = false,
      this.layoutDirection = TextDirection.ltr});

  factory _$MiraiWebViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiWebViewImplFromJson(json);

  /// The URL to load in the `WebView`.
  @override
  final String url;

  /// Sets whether JavaScript execution is enabled.
  ///
  /// Default value is `JavaScriptMode.unrestricted`.
  @override
  @JsonKey()
  final JavaScriptMode javaScriptMode;

  /// Background color of the `WebView`.
  ///
  /// Default value is `#FFFFFF`.
  @override
  @JsonKey()
  final String backgroundColor;

  /// The user agent for the `WebView`.
  @override
  final String? userAgent;

  /// Sets whether zoom is enabled for the `WebView`.
  ///
  /// Default value is `false`.
  @override
  @JsonKey()
  final bool enableZoom;

  /// The layout direction for the `WebView`.
  ///
  /// Default value is `TextDirection.ltr`.
  @override
  @JsonKey()
  final TextDirection layoutDirection;

  @override
  String toString() {
    return 'MiraiWebView(url: $url, javaScriptMode: $javaScriptMode, backgroundColor: $backgroundColor, userAgent: $userAgent, enableZoom: $enableZoom, layoutDirection: $layoutDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiWebViewImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.javaScriptMode, javaScriptMode) ||
                other.javaScriptMode == javaScriptMode) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.enableZoom, enableZoom) ||
                other.enableZoom == enableZoom) &&
            (identical(other.layoutDirection, layoutDirection) ||
                other.layoutDirection == layoutDirection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, javaScriptMode,
      backgroundColor, userAgent, enableZoom, layoutDirection);

  /// Create a copy of MiraiWebView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiWebViewImplCopyWith<_$MiraiWebViewImpl> get copyWith =>
      __$$MiraiWebViewImplCopyWithImpl<_$MiraiWebViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiWebViewImplToJson(
      this,
    );
  }
}

abstract class _MiraiWebView implements MiraiWebView {
  const factory _MiraiWebView(
      {required final String url,
      final JavaScriptMode javaScriptMode,
      final String backgroundColor,
      final String? userAgent,
      final bool enableZoom,
      final TextDirection layoutDirection}) = _$MiraiWebViewImpl;

  factory _MiraiWebView.fromJson(Map<String, dynamic> json) =
      _$MiraiWebViewImpl.fromJson;

  /// The URL to load in the `WebView`.
  @override
  String get url;

  /// Sets whether JavaScript execution is enabled.
  ///
  /// Default value is `JavaScriptMode.unrestricted`.
  @override
  JavaScriptMode get javaScriptMode;

  /// Background color of the `WebView`.
  ///
  /// Default value is `#FFFFFF`.
  @override
  String get backgroundColor;

  /// The user agent for the `WebView`.
  @override
  String? get userAgent;

  /// Sets whether zoom is enabled for the `WebView`.
  ///
  /// Default value is `false`.
  @override
  bool get enableZoom;

  /// The layout direction for the `WebView`.
  ///
  /// Default value is `TextDirection.ltr`.
  @override
  TextDirection get layoutDirection;

  /// Create a copy of MiraiWebView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiWebViewImplCopyWith<_$MiraiWebViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
