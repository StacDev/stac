import 'package:flutter/widgets.dart';

typedef StacWidget = Map<String, dynamic>;

/// [StacParser] is an abstract class that is used to parse a JSON object into
/// a model and then parse the model into a widget.
///
/// This is used to create a parser for each type of STAC item asset.
/// For example, a [StacTextParser] can be used to parse a STAC item asset
/// with a `"type": "text"` field into a [Text] widget.
abstract class StacParser<T> {
  const StacParser();

  /// The `type` of the model that this parser can parse.
  ///
  /// This is used to identify the type of the model in the JSON object.
  String get type;

  /// Parses a JSON object into a model [T].
  ///
  /// This method should be implemented to parse a JSON object into a model.
  /// The JSON object is typically a part of the STAC widget.
  /// The model [T] should contain all the necessary data to build a widget.
  T getModel(StacWidget json);

  /// Parses a model [T] into a [Widget].
  ///
  /// This method should be implemented to parse a model into a widget.
  /// The model [T] is the result of the [getModel] method.
  /// The [BuildContext] is the current build context.
  Widget parse(BuildContext context, T model);
}
