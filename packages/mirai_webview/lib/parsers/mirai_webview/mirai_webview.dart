import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_flutter/webview_flutter.dart';

export 'mirai_webview_parser.dart';

part 'mirai_webview.freezed.dart';
part 'mirai_webview.g.dart';

/// `MiraiWebView` is a widget that renders a web page within a flutter application.
@freezed
class MiraiWebView with _$MiraiWebView {
  /// `MiraiWebView` constructor.
  const factory MiraiWebView({
    /// The URL to load in the `WebView`.
    required String url,

    /// Sets whether JavaScript execution is enabled.
    ///
    /// Default value is `JavaScriptMode.unrestricted`.
    @Default(JavaScriptMode.unrestricted) JavaScriptMode javaScriptMode,

    /// Background color of the `WebView`.
    ///
    /// Default value is `#FFFFFF`.
    @Default("#FFFFFF") String backgroundColor,

    /// The user agent for the `WebView`.
    String? userAgent,

    /// Sets whether zoom is enabled for the `WebView`.
    ///
    /// Default value is `false`.
    @Default(false) bool enableZoom,

    /// The layout direction for the `WebView`.
    ///
    /// Default value is `TextDirection.ltr`.
    @Default(TextDirection.ltr) TextDirection layoutDirection,
  }) = _MiraiWebView;

  factory MiraiWebView.fromJson(Map<String, dynamic> json) =>
      _$MiraiWebViewFromJson(json);
}
