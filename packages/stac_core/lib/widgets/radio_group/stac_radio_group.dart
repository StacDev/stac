import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_radio_group.g.dart';

/// A Stac model representing a radio group scope similar to Flutter's form scope.
///
/// Establishes a [StacRadioGroupScope] at runtime so descendant radio widgets
/// can read and update a shared selected value via the scope. This widget does
/// not render UI itself; it provides the scope and renders its [child].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacRadioGroup(
///   id: 'favoriteFruit',
///   groupValue: 'apple',
///   child: StacColumn(children: [
///     StacRadio(value: 'apple'),
///     StacRadio(value: 'banana'),
///   ]),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "radioGroup",
///   "id": "favoriteFruit",
///   "groupValue": "apple",
///   "child": {
///     "type": "column",
///     "children": [
///       { "type": "radio", "value": "apple" },
///       { "type": "radio", "value": "banana" }
///     ]
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Radio documentation (`https://api.flutter.dev/flutter/material/Radio-class.html`)
@JsonSerializable()
class StacRadioGroup extends StacWidget {
  /// Creates a [StacRadioGroup].
  const StacRadioGroup({this.id, this.groupValue, this.child, this.onChanged});

  /// The identifier under which the selected value will be saved in a [StacFormScope]'s form data.
  final String? id;

  /// The initially selected value shared among descendant [StacRadio] widgets.
  final dynamic groupValue;

  /// The widget subtree to render within the radio group scope.
  final StacWidget? child;

  /// The function to call when the group value changes.
  final StacAction? onChanged;

  /// Widget type identifier.
  @override
  String get type => WidgetType.radioGroup.name;

  /// Creates a [StacRadioGroup] from a JSON map.
  factory StacRadioGroup.fromJson(Map<String, dynamic> json) =>
      _$StacRadioGroupFromJson(json);

  /// Converts this [StacRadioGroup] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacRadioGroupToJson(this);
}
