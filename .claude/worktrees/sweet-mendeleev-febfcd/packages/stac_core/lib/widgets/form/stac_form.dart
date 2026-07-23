import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_form.g.dart';

/// A Stac model representing a form scope used to coordinate input fields and actions.
///
/// This widget establishes a [StacFormScope] at runtime so input widgets can
/// register and retrieve values (e.g., via the `getFormValue` action), and so
/// actions like validation can be performed consistently across fields.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacForm(
///   autovalidateMode: StacAutovalidateMode.onUserInteraction,
///   child: StacColumn(children: [
///     StacTextFormField(id: 'username'),
///     StacTextFormField(id: 'password'),
///   ]),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "form",
///   "autovalidateMode": "always",
///   "child": {
///     "type": "column",
///     "children": [
///       { "type": "textFormField", "id": "username" },
///       { "type": "textFormField", "id": "password" }
///     ]
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [Form documentation](https://api.flutter.dev/flutter/widgets/Form-class.html)
@JsonSerializable()
class StacForm extends StacWidget {
  /// Creates a [StacForm].
  const StacForm({this.autovalidateMode, this.child});

  /// The mode to control auto validation of fields within the form.
  final StacAutovalidateMode? autovalidateMode;

  /// The widget subtree to display inside the form scope.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.form.name;

  /// Creates a [StacForm] from a JSON map.
  factory StacForm.fromJson(Map<String, dynamic> json) =>
      _$StacFormFromJson(json);

  /// Converts this [StacForm] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacFormToJson(this);
}
