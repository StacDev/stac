import 'package:stac_gen_ui/src/models/stac_custom_widget_schema.dart';
import 'package:stac_gen_ui/src/models/stac_gen_ui_config.dart';
import 'package:stac_gen_ui/src/services/stac_prompt_definitions.dart';

/// Builds the system prompt for Claude with the Stac widget catalog.
///
/// Uses a minimal prompt approach (~2000 tokens) with widget type names
/// and a few representative examples to keep API costs low.
class StacSchemaProvider {
  StacSchemaProvider._();

  /// Builds a stable prompt section intended for prompt caching.
  ///
  /// This section includes role, built-in widget/action catalogs, core rules,
  /// and examples. Keep this string byte-identical across requests to improve
  /// cache hit rates.
  static String buildEphemeralPromptBase() {
    final buffer = StringBuffer();

    buffer.writeln(_role);
    buffer.writeln();
    buffer.writeln(buildWidgetOutlineInstructions());
    buffer.writeln();
    buffer.writeln(buildActionOutlineInstructions());
    buffer.writeln();
    buffer.writeln(_rules);
    buffer.writeln();
    buffer.writeln(_examples);

    return buffer.toString();
  }

  /// Builds the complete system prompt for Claude.
  ///
  /// Includes built-in widget types, key rules, examples, and any
  /// [StacCustomWidgetSchema]s registered via [StacGenUiConfig.initialize].
  static String buildSystemPrompt({String? extras}) {
    final buffer = StringBuffer();

    buffer.write(buildEphemeralPromptBase());

    final customWidgets = StacGenUiConfig.customWidgets;
    if (customWidgets.isNotEmpty) {
      buffer.writeln();
      buffer.writeln(_buildCustomWidgetSection(customWidgets));
    }

    if (customWidgets.isNotEmpty) {
      buffer.writeln();
      buffer.writeln(_buildCustomWidgetExamples(customWidgets));
    }

    if (extras != null && extras.isNotEmpty) {
      buffer.writeln();
      buffer.writeln('## Additional Instructions');
      buffer.writeln(extras);
    }

    return buffer.toString();
  }

  /// Builds the system prompt as a list of content blocks suitable for the
  /// Anthropic Messages API with prompt caching.
  ///
  /// The stable schema block is marked with `cache_control: {type: "ephemeral"}`
  /// so repeated requests benefit from cached input tokens.
  /// Dynamic content (custom widgets, extras) is sent as a separate uncached block.
  static List<Map<String, dynamic>> buildSystemBlocks({String? extras}) {
    final blocks = <Map<String, dynamic>>[];

    blocks.add({
      'type': 'text',
      'text': buildEphemeralPromptBase(),
      'cache_control': const {'type': 'ephemeral'},
    });

    final dynamicBuffer = StringBuffer();

    final customWidgets = StacGenUiConfig.customWidgets;
    if (customWidgets.isNotEmpty) {
      dynamicBuffer.writeln(_buildCustomWidgetSection(customWidgets));
      dynamicBuffer.writeln();
      dynamicBuffer.writeln(_buildCustomWidgetExamples(customWidgets));
    }

    if (extras != null && extras.isNotEmpty) {
      if (dynamicBuffer.isNotEmpty) dynamicBuffer.writeln();
      dynamicBuffer.writeln('## Additional Instructions');
      dynamicBuffer.writeln(extras);
    }

    final dynamicText = dynamicBuffer.toString().trim();
    if (dynamicText.isNotEmpty) {
      blocks.add({'type': 'text', 'text': dynamicText});
    }

    return blocks;
  }

  static String _buildCustomWidgetSection(
    List<StacCustomWidgetSchema> widgets,
  ) {
    final buffer = StringBuffer();
    buffer.writeln('## Custom Widget Types');
    for (final widget in widgets) {
      buffer.writeln('- ${widget.type}: ${widget.description}');
    }
    return buffer.toString();
  }

  static String _buildCustomWidgetExamples(
    List<StacCustomWidgetSchema> widgets,
  ) {
    final withExamples = widgets.where((w) => w.example != null).toList();
    if (withExamples.isEmpty) return '';

    final buffer = StringBuffer();
    buffer.writeln('## Custom Widget Examples');
    for (final widget in withExamples) {
      buffer.writeln();
      buffer.writeln('### ${widget.type}');
      buffer.writeln(widget.example);
    }
    return buffer.toString();
  }

  static const String _role =
      'You are a UI generator for the Stac Server-Driven UI framework for Flutter. '
      'Generate a JSON specification using the available widget types below. '
      'The JSON will be rendered as Flutter widgets at runtime.';

  static const String _rules = '''## Key Rules
- Every widget object MUST have a "type" field (camelCase, matching the types above)
- Every action object MUST have an "actionType" field (camelCase, matching the action types above)
- Single child: use "child" key. Multiple children: use "children" key (array)
- Colors: hex strings like "#FF2196F3" (ARGB) or "#2196F3" (RGB), or theme colors like "primary", "primary@50"
- Padding/margin: {"left": n, "top": n, "right": n, "bottom": n} or a single number for uniform padding
- Text styles: {"fontSize": n, "fontWeight": "w600", "color": "#HEX"}
- Icons: {"type": "icon", "iconType": "material", "icon": "icon_name", "size": n}
- Buttons have "onPressed" for actions: {"actionType": "navigate", ...} or {} for no-op
- Use "scaffold" as root for full-screen layouts
- Use "form" with "textFormField" for input forms
- Use "sizedBox" for spacing between widgets
- STAC Jsons are static, be careful around adding interactive elements that change the UI and buttons as well since you will be generating just one page''';

  static const String _examples = r'''## Examples

### Login Form
{"type":"scaffold","appBar":{"type":"appBar","title":{"type":"text","data":"Sign In"}},"body":{"type":"padding","padding":{"left":16,"top":16,"right":16,"bottom":16},"child":{"type":"singleChildScrollView","child":{"type":"form","child":{"type":"column","children":[{"type":"textFormField","id":"email","decoration":{"hintText":"Email"},"keyboardType":"emailAddress","textInputAction":"next"},{"type":"sizedBox","height":16},{"type":"textFormField","id":"password","decoration":{"hintText":"Password"},"keyboardType":"visiblePassword","textInputAction":"done"},{"type":"sizedBox","height":24},{"type":"elevatedButton","child":{"type":"text","data":"Sign In"},"style":{"backgroundColor":"primary","foregroundColor":"#ffffff"},"onPressed":{}}]}}}}}

### Card with ListTile
{"type":"card","elevation":4,"margin":{"top":8,"bottom":8,"left":16,"right":16},"child":{"type":"listTile","leading":{"type":"circleAvatar","child":{"type":"icon","iconType":"material","icon":"person","size":24}},"title":{"type":"text","data":"John Doe","style":{"fontSize":18,"fontWeight":"w600"}},"subtitle":{"type":"text","data":"Software Engineer","style":{"fontSize":14,"color":"#666666"}},"trailing":{"type":"icon","iconType":"material","icon":"chevron_right","size":24}}}

### Grid Layout
{"type":"padding","padding":{"left":10,"top":10,"right":10,"bottom":10},"child":{"type":"gridView","crossAxisCount":2,"crossAxisSpacing":10,"mainAxisSpacing":10,"children":[{"type":"container","decoration":{"type":"boxDecoration","color":"#FFCDD2","borderRadius":{"all":8}},"child":{"type":"center","child":{"type":"text","data":"Item 1"}}},{"type":"container","decoration":{"type":"boxDecoration","color":"#C8E6C9","borderRadius":{"all":8}},"child":{"type":"center","child":{"type":"text","data":"Item 2"}}}]}}''';
}
