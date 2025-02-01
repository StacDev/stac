import 'package:flutter/material.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_webview/parsers/stac_webview/stac_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// [StacWebViewParser] is a class that parses the `webView` widget from JSON.
class StacWebViewParser extends StacParser<StacWebView> {
  const StacWebViewParser();

  /// [webView] is the type defined for StacWebViewParser.
  @override
  String get type => 'webView';

  /// [getModel] method parses the JSON data and returns a [StacWebView] object.
  ///
  /// {@macro getModel}
  @override
  StacWebView getModel(Map<String, dynamic> json) => StacWebView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacWebView model) {
    return _WebView(model: model);
  }
}

/// [_WebView] is a stateful widget that displays a webview.
class _WebView extends StatefulWidget {
  /// [_WebView] constructor.
  const _WebView({required this.model});

  /// `model` is the data that will be used to configure the webview.
  final StacWebView model;

  /// [createState] method creates the state for the [_WebView] widget.
  @override
  State<_WebView> createState() => _WebViewState();
}

/// [_WebViewState] is the state for the [_WebView] widget.
class _WebViewState extends State<_WebView> {
  /// `_controller` is the controller for the webview.
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    /// [_controller] is the controller for the webview.
    _controller = WebViewController()

      /// Loads the request.
      ..loadRequest(Uri.parse(widget.model.url))

      /// Sets the JavaScript mode.
      ..setJavaScriptMode(widget.model.javaScriptMode)

      /// Sets the background color.
      ..setBackgroundColor(
        widget.model.backgroundColor.toColor ?? Colors.white,
      )

      /// Sets the user agent.
      ..setUserAgent(widget.model.userAgent)

      /// Enables or disables zoom.
      ..enableZoom(widget.model.enableZoom);
  }

  /// [build] method builds the widget.
  ///
  /// {@macro build}
  @override
  Widget build(BuildContext context) {
    /// [WebViewWidget] is a widget that displays a webview.
    return WebViewWidget(
      controller: _controller,
      layoutDirection: widget.model.layoutDirection,
    );
  }
}

/// Extension on [String] to convert to [Color].
///
/// {@macro toColor}
extension ColorExt on String? {
  Color? get toColor {
    if (this?.isEmpty ?? true) return null;

    final buffer = StringBuffer();
    if (this!.length == 6 || this!.length == 7) buffer.write('ff');
    buffer.write(this!.replaceFirst('#', ''));

    /// convert to int
    int? intColor = int.tryParse(buffer.toString(), radix: 16);
    intColor = intColor ?? 0x00000000;
    return Color(intColor);
  }
}
