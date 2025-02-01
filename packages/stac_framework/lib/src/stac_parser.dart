import 'package:flutter/widgets.dart';

abstract class StacParser<T> {
  const StacParser();

  String get type;

  T getModel(Map<String, dynamic> json);

  Widget parse(BuildContext context, T model);
}
