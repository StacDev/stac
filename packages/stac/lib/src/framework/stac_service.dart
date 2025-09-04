import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart' hide ErrorWidgetBuilder;
import 'package:flutter/services.dart';
import 'package:stac/src/framework/stac.dart';
import 'package:stac/src/framework/stac_registry.dart';
import 'package:stac/src/parsers/actions/stac_form_validate/stac_form_validate_parser.dart';
import 'package:stac/src/parsers/actions/stac_get_form_value/stac_get_form_value_parser.dart';
import 'package:stac/src/parsers/actions/stac_network_request/stac_network_request_parser.dart';
import 'package:stac/src/parsers/parsers.dart';
import 'package:stac/src/parsers/widgets/stac_app_bar/stac_app_bar_parser.dart';
import 'package:stac/src/parsers/widgets/stac_image/stac_image_parser.dart';
import 'package:stac/src/parsers/widgets/stac_inkwell/stac_inkwell_parser.dart';
import 'package:stac/src/parsers/widgets/stac_row/stac_row_parser.dart';
import 'package:stac/src/parsers/widgets/stac_set_value/stac_set_value_parser.dart';
import 'package:stac/src/parsers/widgets/stac_text/stac_text_parser.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac/src/utils/variable_resolver.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_core/core/stac_options.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

/// Internal service that holds parsers, actions and helper methods for Stac.
class StacService {
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
    const StacDrawerParser(),
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
    const StacSetValueParser(),
    const StacInkwellParser(),
    const StacConditionalParser(),
    const StacVisibilityParser(),
    const StacBackdropFilterParser(),
    const StacVerticalDividerParser(),
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
    const StacSetValueActionParser(),
    const StacMultiActionParser(),
    const StacDelayActionParser(),
  ];

  static StacOptions? _options;
  static StacOptions? get options => _options;

  static Future<void> initialize({
    StacOptions? options,
    List<StacParser> parsers = const [],
    List<StacActionParser> actionParsers = const [],
    Dio? dio,
    bool override = false,
  }) async {
    _options = options;
    _parsers.addAll(parsers);
    _actionParsers.addAll(actionParsers);
    StacRegistry.instance.registerAll(_parsers, override);
    StacRegistry.instance.registerAllActions(_actionParsers, override);
    StacNetworkService.initialize(dio ?? Dio());
  }

  static Widget? fromJson(
    Map<String, dynamic>? json,
    BuildContext context,
  ) {
    try {
      if (json != null) {
        String widgetType = json['type'];
        StacParser? stacParser = StacRegistry.instance.getParser(widgetType);

        if (stacParser != null) {
          Map<String, dynamic> resolvedJson;
          if (widgetType == WidgetType.setValue.name) {
            resolvedJson = json;
          } else {
            resolvedJson = resolveVariablesInJson(json, StacRegistry.instance);
          }
          final model = stacParser.getModel(resolvedJson);

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

  static Widget? fromStacWidget({
    required StacWidget widget,
    required BuildContext context,
  }) {
    try {
      String widgetType = widget.type;
      StacParser? stacParser = StacRegistry.instance.getParser(widgetType);

      if (stacParser != null) {
        Map<String, dynamic> resolvedJson;
        if (widgetType == WidgetType.setValue.name) {
          resolvedJson = widget.toJson();
        } else {
          resolvedJson = resolveVariablesInJson(
            widget.toJson(),
            StacRegistry.instance,
          );
        }

        Log.d(resolvedJson);
        final model = stacParser.getModel(resolvedJson);

        return stacParser.parse(context, model);
      } else {
        Log.w('Widget type [$widgetType] not supported');
      }
    } catch (e) {
      Log.e('error in ${widget.type}');
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
    required StacNetworkRequest request,
    required BuildContext context,
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
              return StacService.fromJson(json, context) ?? const SizedBox();
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

  static Widget fromAssets(
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
              return StacService.fromJson(json, context) ?? const SizedBox();
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
