import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_logger/stac_logger.dart';

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
    if ((model.op == StacListOp.set || model.op == StacListOp.appendAll) &&
        items is! List) {
      // Such as a placeholder that had no value. Treating it as an empty
      // list would wipe the stored one.
      Log.w(
        'updateList ${model.op.name} on ${model.key} needs a list of items, '
        'not $items',
      );
      return null;
    }
    bool matches(dynamic entry) => _matches(entry, model);
    // Such as a placeholder that had no value: adding it would add null. An
    // upsert only adds when no entry matches.
    final adds =
        _adds(model.op) ||
        (model.op == StacListOp.upsert && !list.any(matches));
    if (adds && model.item == null) {
      Log.w('updateList ${model.op.name} on ${model.key} needs an item');
      return null;
    }
    // Without them, remove would empty the list, which is what clear is for.
    if (model.op == StacListOp.remove && _noMatch(model) && !_byItem(model)) {
      Log.w(
        'updateList remove on ${model.key} needs match, or an item to look '
        'for; use clear to remove every entry',
      );
      return null;
    }
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
      // Fields can only be changed on entries that are maps.
      StacListOp.update => [
        for (final entry in list)
          entry is Map && matches(entry) ? _update(entry, model) : entry,
      ],
      StacListOp.upsert =>
        list.any(matches)
            ? [
                for (final entry in list)
                  entry is Map && matches(entry)
                      ? _update(entry, model)
                      : entry,
              ]
            : [...list, model.item],
      StacListOp.toggle => [
        for (final entry in list)
          entry is Map && matches(entry) ? _toggle(entry, model) : entry,
      ],
      StacListOp.remove => [
        for (final entry in list)
          if (!matches(entry)) entry,
      ],
      StacListOp.clear => <dynamic>[],
    };
    registry.setValue(model.key, updated, persist: model.persist == true);
    return null;
  }

  static bool _adds(StacListOp op) =>
      op == StacListOp.append ||
      op == StacListOp.prepend ||
      op == StacListOp.insert;

  static bool _noMatch(StacUpdateListAction model) =>
      model.match == null || model.match!.isEmpty;

  // Without `match`, remove and upsert look for entries equal to `item` when
  // it's a plain value, as in a list of tags.
  static bool _byItem(StacUpdateListAction model) {
    final item = model.item;
    return (model.op == StacListOp.remove || model.op == StacListOp.upsert) &&
        _noMatch(model) &&
        item != null &&
        item is! Map &&
        item is! List;
  }

  // Every field in `match` has to be on the entry and equal its value,
  // compared as text so that an id from a placeholder matches a number. A
  // null matches only null, not the text "null".
  // Without `match`, an entry matches when it equals a plain `item` (see
  // [_byItem]), and otherwise every entry matches.
  bool _matches(dynamic entry, StacUpdateListAction model) {
    if (_noMatch(model)) {
      if (!_byItem(model)) return true;
      return entry is! Map && entry is! List && '$entry' == '${model.item}';
    }
    if (entry is! Map) return false;
    return model.match!.entries.every((field) {
      if (!entry.containsKey(field.key)) return false;
      final value = entry[field.key];
      if (value == null || field.value == null) return value == field.value;
      return '$value' == '${field.value}';
    });
  }

  Map<String, dynamic> _update(Map entry, StacUpdateListAction model) {
    final result = <String, dynamic>{...entry.cast<String, dynamic>()};
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

  Map<String, dynamic> _toggle(Map entry, StacUpdateListAction model) {
    final result = <String, dynamic>{...entry.cast<String, dynamic>()};
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
