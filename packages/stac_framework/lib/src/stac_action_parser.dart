import 'dart:async';

import 'package:flutter/widgets.dart';

typedef StacAction = Map<String, dynamic>;

/// [StacActionParser] is an abstract class that is used to parse a JSON object into
/// a model and then handle an action based on the model.
///
/// This is used to create a parser for each type of STAC action.
abstract class StacActionParser<T> {
  const StacActionParser();

  /// The `actionType` of the action that this parser can parse.
  ///
  /// This is used to identify the type of the action in the JSON object.
  String get actionType;

  /// Parses a JSON object into a model [T].
  ///
  /// This method should be implemented to parse a JSON object into a model.
  /// The JSON object is typically a part of the STAC action.
  /// The model [T] should contain all the necessary data to handle the action.
  T getModel(StacAction json);

  /// Handles the action based on the model [T].
  ///
  /// This method should be implemented to handle the action based on the model.
  /// The model [T] is the result of the [getModel] method.
  /// The [BuildContext] is the current build context.
  /// This method can return a [Future] if the action is asynchronous.
  FutureOr<dynamic> onCall(BuildContext context, T model);
}
