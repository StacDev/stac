import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

class StacUpdateListActionParser
    extends StacActionParser<StacUpdateListAction> {
  const StacUpdateListActionParser();

  @override
  String get actionType => ActionType.updateList.name;

  @override
  StacUpdateListAction getModel(Map<String, dynamic> json) =>
      StacUpdateListAction.fromJson(json);

  @override
  FutureOr<dynamic> onCall(BuildContext context, StacUpdateListAction model) {
    final registry = StacRegistry.instance;
    final current = registry.getValue(model.key);
    final list = [if (current is List) ...current];
    final items = model.items;
    final updated = switch (model.op) {
      StacListOp.set => [if (items is List) ...items],
      StacListOp.append => [...list, model.item],
      StacListOp.prepend => [model.item, ...list],
      StacListOp.insert =>
        list..insert(
          (model.index ?? list.length).clamp(0, list.length),
          model.item,
        ),
      StacListOp.appendAll => [...list, if (items is List) ...items],
      StacListOp.update => [
        for (final entry in list)
          _matches(entry, model.match) ? _update(entry, model) : entry,
      ],
      StacListOp.upsert =>
        list.any((entry) => _matches(entry, model.match))
            ? [
                for (final entry in list)
                  _matches(entry, model.match) ? _update(entry, model) : entry,
              ]
            : [...list, model.item],
      StacListOp.toggle => [
        for (final entry in list)
          _matches(entry, model.match) ? _toggle(entry, model) : entry,
      ],
      StacListOp.remove => [
        for (final entry in list)
          if (!_matches(entry, model.match)) entry,
      ],
      StacListOp.clear => <dynamic>[],
    };
    registry.setValue(model.key, updated, persist: model.persist == true);
    return null;
  }

  // Every field in [match] has to equal the entry's field, compared as text
  // so that an id from a placeholder matches a number.
  bool _matches(dynamic entry, Map<String, dynamic>? match) {
    if (match == null || match.isEmpty) return true;
    if (entry is! Map) return false;
    return match.entries.every(
      (field) => '${entry[field.key]}' == '${field.value}',
    );
  }

  Map<String, dynamic> _update(dynamic entry, StacUpdateListAction model) {
    final result = <String, dynamic>{
      ...?(entry as Map?)?.cast<String, dynamic>(),
    };
    model.set?.forEach((key, value) => result[key] = value);
    model.add?.forEach((key, amount) {
      result[key] = _number(result[key]) + _number(amount);
    });
    return result;
  }

  // A placeholder is filled in as text, so an amount such as `{{step}}`
  // arrives as "2". Anything that isn't a number counts as 0.
  num _number(Object? value) =>
      value is num ? value : num.tryParse('$value') ?? 0;

  Map<String, dynamic> _toggle(dynamic entry, StacUpdateListAction model) {
    final result = <String, dynamic>{
      ...?(entry as Map?)?.cast<String, dynamic>(),
    };
    final field = model.field;
    if (field == null) return result;
    final on = result[field] != true;
    result[field] = on;
    final counter = model.counter;
    if (counter != null) {
      result[counter] = _number(result[counter]) + (on ? 1 : -1);
    }
    return result;
  }
}
