import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stac/src/framework/stac_registry.dart';
import 'package:stac/src/parsers/actions/stac_network_request/stac_network_request_parser.dart';
import 'package:stac/src/parsers/parsers.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac/src/utils/log.dart';
import 'package:stac_framework/stac_framework.dart';

typedef ErrorWidgetBuilder = Widget Function(
  BuildContext context,
  dynamic error,
);

typedef LoadingWidgetBuilder = Widget Function(BuildContext context);

/// The `Stac` class is a central part of the Stac framework.
/// It provides methods to parse and render widgets from JSON, handle actions from JSON, and fetch and render widgets from network requests or assets.
///
/// The `Stac` class uses a registry of parsers.md (`StacParser`) and action parsers.md (`StacActionParser`) to handle different types of widgets and actions.
/// These parsers.md can be registered during the initialization of the `Stac` class.
///
/// The `Stac` class also provides utility methods to convert a widget to a `PreferredSizeWidget`.
class Stac {
  static final _parsers = <StacParser>[
    const StacContainerParser(),
    const StacTextParser(),
    const StacTextFieldParser(),
    const StacElevatedButtonParser(),
    const StacImageParser(),
    const StacIconParser(),
    const StacCenterParser(),
    const StacRowParser(),
    const StacColumnParser(),
    const StacCustomScrollViewParser(),
    const StacStackParser(),
    const StacPositionedParser(),
    const StacIconButtonParser(),
    const StacFloatingActionButtonParser(),
    const StacOutlinedButtonParser(),
    const StacPaddingParser(),
    const StacAppBarParser(),
    const StacTextButtonParser(),
    const StacScaffoldParser(),
    const StacSizedBoxParser(),
    const StacFractionallySizedBoxParser(),
    const StacTextFormFieldParser(),
    const StacTabBarViewParser(),
    const StacTabBarParser(),
    const StacListTileParser(),
    const StacCardParser(),
    const StacBottomNavigationBarParser(),
    const StacListViewParser(),
    const StacDefaultTabControllerParser(),
    const StacSingleChildScrollViewParser(),
    const StacAlertDialogParser(),
    const StacTabParser(),
    const StacFormParser(),
    const StacCheckBoxParser(),
    const StacExpandedParser(),
    const StacFlexibleParser(),
    const StacSpacerParser(),
    const StacSafeAreaParser(),
    const StacSwitchParser(),
    const StacAlignParser(),
    const StacPageViewParser(),
    const StacRefreshIndicatorParser(),
    const StacNetworkWidgetParser(),
    const StacCircleAvatarParser(),
    const StacChipParser(),
    const StacGridViewParser(),
    const StacFilledButtonParser(),
    const StacBottomNavigationViewParser(),
    const StacDefaultBottomNavigationControllerParser(),
    const StacWrapParser(),
    const StacAutoCompleteParser(),
    const StacTableParser(),
    const StacTableCellParser(),
    const StacCarouselViewParser(),
    const StacColoredBoxParser(),
    const StacDividerParser(),
    const StacCircularProgressIndicatorParser(),
    const StacLinearProgressIndicatorParser(),
    const StacHeroParser(),
    const StacRadioParser(),
    const StacRadioGroupParser(),
    const StacSliderParser(),
    const StacSliverAppBarParser(),
    const StacOpacityParser(),
    const StacPlaceholderParser(),
    const StacAspectRatioParser(),
    const StacFittedBoxParser(),
    const StacLimitedBoxParser(),
    const StacDynamicViewParser(),
    const StacDropdownMenuParser(),
    const StacClipRRectParser(),
    const StacClipOvalParser(),
    const StacGestureDetectorParser(),
  ];

  static final _actionParsers = <StacActionParser>[
    const StacNoneActionParser(),
    const StacNavigateActionParser(),
    const StacNetworkRequestParser(),
    const StacModalBottomSheetActionParser(),
    const StacDialogActionParser(),
    const StacGetFormValueParser(),
    const StacFormValidateParser(),
    const StacSnackBarParser(),
  ];

  static Future<void> initialize({
    List<StacParser> parsers = const [],
    List<StacActionParser> actionParsers = const [],
    Dio? dio,
    bool override = false,
  }) async {
    _parsers.addAll(parsers);
    _actionParsers.addAll(actionParsers);
    StacRegistry.instance.registerAll(_parsers, override);
    StacRegistry.instance.registerAllActions(_actionParsers, override);
    StacNetworkService.initialize(dio ?? Dio());
  }

  static Widget? fromJson(Map<String, dynamic>? json, BuildContext context) {
    try {
      if (json != null) {
        String widgetType = json['type'];
        StacParser? stacParser = StacRegistry.instance.getParser(widgetType);
        if (stacParser != null) {
          final model = stacParser.getModel(json);
          Log.d(model);
          return stacParser.parse(context, model);
        } else {
          Log.w('Widget type [$widgetType] not supported');
        }
      }
    } catch (e) {
      Log.e(e);
    }
    return null;
  }

  static FutureOr<dynamic> onCallFromJson(
    Map<String, dynamic>? json,
    BuildContext context,
  ) {
    try {
      if (json != null && json['actionType'] != null) {
        String actionType = json['actionType'];
        StacActionParser? stacActionParser =
            StacRegistry.instance.getActionParser(actionType);
        if (stacActionParser != null) {
          final model = stacActionParser.getModel(json);
          return stacActionParser.onCall(context, model);
        } else {
          Log.w('Action type [$actionType] not supported');
        }
      }
    } catch (e) {
      Log.e(e);
    }
    return null;
  }

  static Widget fromNetwork({
    required BuildContext context,
    required StacNetworkRequest request,
    LoadingWidgetBuilder? loadingWidget,
    ErrorWidgetBuilder? errorWidget,
  }) {
    return FutureBuilder<Response?>(
      future: StacNetworkService.request(context, request),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            Widget? widget;
            if (loadingWidget != null) {
              widget = loadingWidget(context);
              return widget;
            }
            break;
          case ConnectionState.done:
            if (snapshot.hasData) {
              final json = jsonDecode(snapshot.data.toString());
              return Stac.fromJson(json, context) ?? const SizedBox();
            } else if (snapshot.hasError) {
              Log.e(snapshot.error);
              if (errorWidget != null) {
                final widget = errorWidget(context, snapshot.error);
                return widget;
              }
            }
            break;
          default:
            break;
        }
        return const SizedBox();
      },
    );
  }

  static Widget? fromAssets(
    String assetPath, {
    LoadingWidgetBuilder? loadingWidget,
    ErrorWidgetBuilder? errorWidget,
  }) {
    return FutureBuilder<String>(
      future: rootBundle.loadString(assetPath),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            Widget? widget;
            if (loadingWidget != null) {
              widget = loadingWidget(context);
              return widget;
            }
            break;
          case ConnectionState.done:
            if (snapshot.hasData) {
              final json = jsonDecode(snapshot.data.toString());
              return Stac.fromJson(json, context) ?? const SizedBox();
            } else if (snapshot.hasError) {
              Log.e(snapshot.error);
              if (errorWidget != null) {
                final widget = errorWidget(context, snapshot.error);
                return widget;
              }
            }
            break;
          default:
            break;
        }
        return const SizedBox();
      },
    );
  }
}

extension StacExtension on Widget? {
  PreferredSizeWidget? get toPreferredSizeWidget {
    if (this != null) {
      return this as PreferredSizeWidget;
    }
    return null;
  }
}
