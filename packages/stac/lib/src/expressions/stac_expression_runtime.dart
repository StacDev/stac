import 'package:stac/src/framework/stac_registry.dart';
import 'package:stac/src/state/stac_state_reader.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_logger/stac_logger.dart';

/// The scope expressions read when there is no widget to read from: the
/// running action's values (such as `$value`), then app state.
StacScopeReader stacRuntimeScope() => StacStateReader.forAction(null);

/// Resolves placeholders in widget and action JSON at runtime.
final StacJsonResolver stacJsonResolver = StacJsonResolver(
  isWidgetType: (type) => StacRegistry.instance.getParser(type) != null,
  onError: stacReportPlaceholderError,
);

/// Logs a placeholder that could not be parsed or evaluated, once.
void stacReportPlaceholderError(
  StacTemplatePlaceholder placeholder,
  StacExpressionException error,
) {
  stacWarnOnce(
    'placeholder ${placeholder.raw}',
    'Could not resolve ${placeholder.raw}: ${error.message}',
  );
}

final Set<String> _warned = <String>{};

/// Logs [message] once per [key], so an expression that fails inside a long
/// list does not flood the log.
void stacWarnOnce(String key, String message) {
  if (_warned.length >= 512) _warned.clear();
  if (_warned.add(key)) Log.w(message);
}
