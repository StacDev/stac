import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/stac_error.dart';
import 'package:stac/src/framework/stac_service.dart';
import 'package:stac/src/services/stac_cloud.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_options.dart';
import 'package:stac_framework/stac_framework.dart';

typedef ErrorWidgetBuilder = Widget Function(
  BuildContext context,
  dynamic error,
);

typedef LoadingWidgetBuilder = Widget Function(BuildContext context);

/// Global parse-error widget builder for Stac.
///
/// Allows apps to provide a custom widget when parsing a Stac widget/action
/// fails. The builder receives useful context like the widget/action type,
/// original JSON and stack trace (when available).
///
/// Example:
/// ```dart
/// Stac.initialize(
///   errorWidgetBuilder: (context, errorDetails) {
///     return Text('Error in ${errorDetails.type}: ${errorDetails.error}');
///   },
/// );
/// ```
typedef StacErrorWidgetBuilder = Widget Function(
  BuildContext context,
  StacError errorDetails,
);

class Stac extends StatelessWidget {
  const Stac({
    super.key,
    required this.routeName,
    this.loadingWidget,
    this.errorWidget,
  });

  final String routeName;
  final Widget? loadingWidget;
  final Widget? errorWidget;

  static Future<void> initialize({
    StacOptions? options,
    List<StacParser> parsers = const [],
    List<StacActionParser> actionParsers = const [],
    Dio? dio,
    bool override = false,
    bool showErrorWidgets = true,
    bool logStackTraces = true,
    StacErrorWidgetBuilder? errorWidgetBuilder,
  }) async {
    return StacService.initialize(
      options: options,
      parsers: parsers,
      actionParsers: actionParsers,
      dio: dio,
      override: override,
      showErrorWidgets: showErrorWidgets,
      logStackTraces: logStackTraces,
      errorWidgetBuilder: errorWidgetBuilder,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _StacView(
      routeName: routeName,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
    );
  }

  static Widget? fromJson(
    Map<String, dynamic>? json,
    BuildContext context,
  ) {
    return StacService.fromJson(json, context);
  }

  static Widget fromAssets(
    String assetPath, {
    LoadingWidgetBuilder? loadingWidget,
    ErrorWidgetBuilder? errorWidget,
  }) {
    return StacService.fromAssets(
      assetPath,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
    );
  }

  static Widget fromNetwork({
    required BuildContext context,
    required StacNetworkRequest request,
    LoadingWidgetBuilder? loadingWidget,
    ErrorWidgetBuilder? errorWidget,
  }) {
    return StacService.fromNetwork(
      context: context,
      request: request,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
    );
  }

  static FutureOr<dynamic> onCallFromJson(
    Map<String, dynamic>? json,
    BuildContext context,
  ) {
    return StacService.onCallFromJson(json, context);
  }
}

class _StacView extends StatelessWidget {
  const _StacView({
    required this.routeName,
    this.loadingWidget,
    this.errorWidget,
  });

  final String routeName;
  final Widget? loadingWidget;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    final options = StacService.options;
    if (options == null) {
      throw Exception('StacOptions is not set');
    }

    return FutureBuilder<Response?>(
      future: StacCloud.fetchScreen(
        context: context,
        routeName: routeName,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return loadingWidget ?? const _LoadingWidget();
        }
        if (snapshot.hasError) {
          return errorWidget ?? const SizedBox();
        }
        if (snapshot.hasData) {
          final jsonString = snapshot.data!.data['stacJson'];
          return StacService.fromJson(jsonDecode(jsonString), context) ??
              const SizedBox();
        }
        return const SizedBox();
      },
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
