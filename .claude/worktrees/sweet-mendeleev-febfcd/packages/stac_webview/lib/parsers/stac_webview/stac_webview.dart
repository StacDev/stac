import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';
import 'package:webview_flutter/webview_flutter.dart';

export 'stac_webview_parser.dart';

part 'stac_webview.g.dart';

/// A Stac model representing Flutter's [WebView] widget.
///
/// Renders a web page within a Flutter application using the webview_flutter package.
/// Supports JavaScript execution, custom user agents, zoom controls, and layout direction.
///
/// ```dart
/// StacWebView(
///   url: 'https://example.com',
///   javaScriptMode: JavaScriptMode.unrestricted,
///   backgroundColor: '#FFFFFF',
/// )
/// ```
///
/// ```json
/// {
///   "type": "webView",
///   "url": "https://example.com",
///   "javaScriptMode": "unrestricted",
///   "backgroundColor": "#FFFFFF",
///   "enableZoom": false,
///   "layoutDirection": "ltr"
/// }
/// ```
@JsonSerializable()
class StacWebView extends StacWidget {
  /// Creates a [StacWebView] with the given configuration.
  const StacWebView({
    required this.url,
    this.javaScriptMode,
    this.backgroundColor,
    this.userAgent,
    this.enableZoom,
    this.layoutDirection,
  });

  /// The URL to load in the WebView.
  final String url;

  /// Sets whether JavaScript execution is enabled.
  ///
  /// Default value is `JavaScriptMode.unrestricted` when null.
  final JavaScriptMode? javaScriptMode;

  /// Background color of the WebView.
  ///
  /// Default value is `#FFFFFF` when null.
  final String? backgroundColor;

  /// The user agent for the WebView.
  final String? userAgent;

  /// Sets whether zoom is enabled for the WebView.
  ///
  /// Default value is `false` when null.
  final bool? enableZoom;

  /// The layout direction for the WebView.
  ///
  /// Default value is `TextDirection.ltr` when null.
  final TextDirection? layoutDirection;

  /// Widget type identifier.
  @override
  String get type => 'webView';

  /// Creates a [StacWebView] from JSON.
  factory StacWebView.fromJson(Map<String, dynamic> json) =>
      _$StacWebViewFromJson(json);

  /// Converts this WebView to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacWebViewToJson(this);
}
