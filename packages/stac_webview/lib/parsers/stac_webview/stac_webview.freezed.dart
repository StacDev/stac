// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_webview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacWebView {
  /// The URL to load in the `WebView`.
  String get url;

  /// Sets whether JavaScript execution is enabled.
  ///
  /// Default value is `JavaScriptMode.unrestricted`.
  JavaScriptMode get javaScriptMode;

  /// Background color of the `WebView`.
  ///
  /// Default value is `#FFFFFF`.
  String get backgroundColor;

  /// The user agent for the `WebView`.
  String? get userAgent;

  /// Sets whether zoom is enabled for the `WebView`.
  ///
  /// Default value is `false`.
  bool get enableZoom;

  /// The layout direction for the `WebView`.
  ///
  /// Default value is `TextDirection.ltr`.
  TextDirection get layoutDirection;

  /// Create a copy of StacWebView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacWebViewCopyWith<StacWebView> get copyWith =>
      _$StacWebViewCopyWithImpl<StacWebView>(this as StacWebView, _$identity);

  /// Serializes this StacWebView to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacWebView &&
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

  @override
  String toString() {
    return 'StacWebView(url: $url, javaScriptMode: $javaScriptMode, backgroundColor: $backgroundColor, userAgent: $userAgent, enableZoom: $enableZoom, layoutDirection: $layoutDirection)';
  }
}

/// @nodoc
abstract mixin class $StacWebViewCopyWith<$Res> {
  factory $StacWebViewCopyWith(
          StacWebView value, $Res Function(StacWebView) _then) =
      _$StacWebViewCopyWithImpl;
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
class _$StacWebViewCopyWithImpl<$Res> implements $StacWebViewCopyWith<$Res> {
  _$StacWebViewCopyWithImpl(this._self, this._then);

  final StacWebView _self;
  final $Res Function(StacWebView) _then;

  /// Create a copy of StacWebView
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
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      javaScriptMode: null == javaScriptMode
          ? _self.javaScriptMode
          : javaScriptMode // ignore: cast_nullable_to_non_nullable
              as JavaScriptMode,
      backgroundColor: null == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: freezed == userAgent
          ? _self.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      enableZoom: null == enableZoom
          ? _self.enableZoom
          : enableZoom // ignore: cast_nullable_to_non_nullable
              as bool,
      layoutDirection: null == layoutDirection
          ? _self.layoutDirection
          : layoutDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacWebView implements StacWebView {
  const _StacWebView(
      {required this.url,
      this.javaScriptMode = JavaScriptMode.unrestricted,
      this.backgroundColor = "#FFFFFF",
      this.userAgent,
      this.enableZoom = false,
      this.layoutDirection = TextDirection.ltr});
  factory _StacWebView.fromJson(Map<String, dynamic> json) =>
      _$StacWebViewFromJson(json);

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

  /// Create a copy of StacWebView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacWebViewCopyWith<_StacWebView> get copyWith =>
      __$StacWebViewCopyWithImpl<_StacWebView>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacWebViewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacWebView &&
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

  @override
  String toString() {
    return 'StacWebView(url: $url, javaScriptMode: $javaScriptMode, backgroundColor: $backgroundColor, userAgent: $userAgent, enableZoom: $enableZoom, layoutDirection: $layoutDirection)';
  }
}

/// @nodoc
abstract mixin class _$StacWebViewCopyWith<$Res>
    implements $StacWebViewCopyWith<$Res> {
  factory _$StacWebViewCopyWith(
          _StacWebView value, $Res Function(_StacWebView) _then) =
      __$StacWebViewCopyWithImpl;
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
class __$StacWebViewCopyWithImpl<$Res> implements _$StacWebViewCopyWith<$Res> {
  __$StacWebViewCopyWithImpl(this._self, this._then);

  final _StacWebView _self;
  final $Res Function(_StacWebView) _then;

  /// Create a copy of StacWebView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? javaScriptMode = null,
    Object? backgroundColor = null,
    Object? userAgent = freezed,
    Object? enableZoom = null,
    Object? layoutDirection = null,
  }) {
    return _then(_StacWebView(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      javaScriptMode: null == javaScriptMode
          ? _self.javaScriptMode
          : javaScriptMode // ignore: cast_nullable_to_non_nullable
              as JavaScriptMode,
      backgroundColor: null == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: freezed == userAgent
          ? _self.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      enableZoom: null == enableZoom
          ? _self.enableZoom
          : enableZoom // ignore: cast_nullable_to_non_nullable
              as bool,
      layoutDirection: null == layoutDirection
          ? _self.layoutDirection
          : layoutDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
    ));
  }
}

// dart format on
