import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_for_each.g.dart';

/// A Stac widget that builds [itemTemplate] once for each entry in [items].
///
/// In a list of widgets, such as the `children` of a column, a stack or a
/// custom scroll view's `slivers`, the built items take the place of the
/// `forEach`, between the widgets around it. Anywhere else they are shown
/// in a column.
///
/// {@template stac.items}
/// Inside the template, `$item` is the current entry and `$index` its
/// position, starting at 0. When an entry changes, only the widgets that
/// read it rebuild.
/// {@endtemplate}
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacColumn(
///   children: [
///     StacText(data: 'Cart'),
///     StacForEach(
///       items: '{{cart}}',
///       keyPath: 'id',
///       itemTemplate: StacText(data: '{{\$index + 1}}. {{\$item.name}}'),
///       emptyWidget: StacText(data: 'Your cart is empty'),
///     ),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "column",
///   "children": [
///     { "type": "text", "data": "Cart" },
///     {
///       "type": "forEach",
///       "items": "{{cart}}",
///       "keyPath": "id",
///       "itemTemplate": { "type": "text", "data": "{{$index + 1}}. {{$item.name}}" },
///       "emptyWidget": { "type": "text", "data": "Your cart is empty" }
///     }
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacForEach extends StacWidget {
  /// Creates a [StacForEach] that builds [itemTemplate] for each of [items].
  const StacForEach({
    this.items,
    required this.itemTemplate,
    this.emptyWidget,
    this.keyPath,
  });

  /// {@template stac.items.items}
  /// The entries to build [itemTemplate] for: a list, or a placeholder that
  /// reads one, such as `'{{movies.data}}'`.
  /// {@endtemplate}
  final Object? items;

  /// {@template stac.items.itemTemplate}
  /// The widget built for each entry of `items`. It reads the entry as
  /// `$item` and its position as `$index`.
  /// {@endtemplate}
  final StacWidget itemTemplate;

  /// {@template stac.items.emptyWidget}
  /// Shown instead when `items` is an empty list.
  /// {@endtemplate}
  final StacWidget? emptyWidget;

  /// {@template stac.items.keyPath}
  /// A path inside each entry that identifies it, such as `id`. Item widgets
  /// then keep their state when entries are added, removed or reordered.
  /// {@endtemplate}
  final String? keyPath;

  /// Widget type identifier.
  @override
  String get type => WidgetType.forEach.name;

  /// Creates a [StacForEach] from a JSON map.
  factory StacForEach.fromJson(Map<String, dynamic> json) =>
      _$StacForEachFromJson(json);

  /// Converts this widget to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacForEachToJson(this);
}
