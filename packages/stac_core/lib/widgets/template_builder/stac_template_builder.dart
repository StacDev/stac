import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_template_builder.g.dart';

/// A Stac model that iterates over a list of data, applies an [itemTemplate]
/// to each item, and injects the resulting widgets as children of [child].
///
/// Data can be provided directly via [data], or looked up from a
/// [DynamicDataProvider] ancestor using [providerId] and [dataPath].
///
/// ```dart
/// StacTemplateBuilder(
///   providerId: 'moviesData',
///   dataPath: 'results',
///   itemTemplate: StacText(data: '{{title}}'),
///   child: StacListView(scrollDirection: Axis.horizontal),
/// )
/// ```
///
/// With direct data:
/// ```dart
/// StacTemplateBuilder(
///   data: [
///     {'name': 'Alice', 'role': 'Admin'},
///     {'name': 'Bob', 'role': 'User'},
///   ],
///   itemTemplate: StacListTile(
///     title: StacText(data: '{{name}} - {{role}}'),
///   ),
///   child: StacListView(),
/// )
/// ```
///
/// ```json
/// {
///   "type": "templateBuilder",
///   "providerId": "moviesData",
///   "dataPath": "results",
///   "itemTemplate": {
///     "type": "text",
///     "data": "{{title}}"
///   },
///   "child": {
///     "type": "listView",
///     "scrollDirection": "horizontal"
///   }
/// }
/// ```
@JsonSerializable()
class StacTemplateBuilder extends StacWidget {
  /// Creates a [StacTemplateBuilder] with the given properties.
  const StacTemplateBuilder({
    this.data,
    this.providerId,
    this.dataPath,
    required this.itemTemplate,
    required this.child,
    this.emptyWidget,
  });

  /// Direct list of JSON data objects to iterate over.
  /// Takes priority over [providerId] if both are set.
  final List<dynamic>? data;

  /// ID of a [DynamicDataProvider] ancestor to read data from.
  final String? providerId;

  /// Dot-notation path within the provider's data to extract the list.
  /// Only used when [providerId] is set.
  final String? dataPath;

  /// Template widget applied to each item in the data list.
  final StacWidget itemTemplate;

  /// Layout widget that receives the generated children.
  final StacWidget child;

  /// Optional widget to display if the resolved data list is empty.
  final StacWidget? emptyWidget;

  @override
  String get type => WidgetType.templateBuilder.name;

  /// Creates a [StacTemplateBuilder] from a JSON map.
  factory StacTemplateBuilder.fromJson(Map<String, dynamic> json) =>
      _$StacTemplateBuilderFromJson(json);

  /// Converts this [StacTemplateBuilder] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacTemplateBuilderToJson(this);
}
