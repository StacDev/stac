import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_update_list_action.g.dart';

/// What [StacUpdateListAction] does to the list.
enum StacListOp {
  /// Replaces the whole list with `items`.
  set,

  /// Adds `item` at the end.
  append,

  /// Adds `item` at the start.
  prepend,

  /// Adds `item` at `index`.
  insert,

  /// Adds every entry of `items` at the end.
  appendAll,

  /// Changes the entries that match: `set` overwrites fields and `add` adds
  /// to numeric fields.
  update,

  /// Like [update] when an entry matches; adds `item` at the end when none
  /// does.
  upsert,

  /// Flips the boolean `field` of the entries that match, and adds 1 to or
  /// takes 1 from `counter` to go with it.
  toggle,

  /// Removes the entries that match.
  remove,

  /// Empties the list.
  clear,
}

/// A Stac action that changes a list kept in state.
///
/// The list is the value of [key]. Entries are matched by [match]: every
/// field in it has to equal the entry's field.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacUpdateListAction(
///   key: 'cart',
///   op: StacListOp.update,
///   match: {'id': '{{id}}'},
///   add: {'quantity': 1},
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "actionType": "updateList",
///   "key": "cart",
///   "op": "update",
///   "match": {"id": "{{id}}"},
///   "add": {"quantity": 1}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacUpdateListAction extends StacAction {
  /// Creates a [StacUpdateListAction] that applies [op] to the list at [key].
  const StacUpdateListAction({
    required this.key,
    required this.op,
    this.item,
    this.items,
    this.index,
    this.match,
    this.set,
    this.add,
    this.field,
    this.counter,
    this.persist,
  });

  /// The state key of the list.
  final String key;

  /// The change to make.
  final StacListOp op;

  /// The entry to add, for [StacListOp.append], [StacListOp.prepend],
  /// [StacListOp.insert] and [StacListOp.upsert].
  final dynamic item;

  /// The entries to add, for [StacListOp.appendAll], or the new list for
  /// [StacListOp.set]: a list, or a placeholder such as `{{response.posts}}`.
  final dynamic items;

  /// Where to add [item], for [StacListOp.insert]: a number, or a
  /// placeholder such as `{{index}}`. Without it, [item] goes at the end.
  @JsonKey(fromJson: _indexFromJson)
  final int? index;

  /// Fields an entry must have for [StacListOp.update], [StacListOp.toggle]
  /// and [StacListOp.remove] to apply to it. When null, every entry matches.
  final Map<String, dynamic>? match;

  /// Fields to overwrite on matching entries, for [StacListOp.update].
  final Map<String, dynamic>? set;

  /// Amounts to add to numeric fields of matching entries, for
  /// [StacListOp.update].
  final Map<String, dynamic>? add;

  /// The boolean field to flip, for [StacListOp.toggle].
  final String? field;

  /// A numeric field that goes up by 1 when [field] turns true and down by 1
  /// when it turns false, for [StacListOp.toggle].
  final String? counter;

  /// Whether the list is kept across app restarts from now on.
  final bool? persist;

  /// Action type identifier.
  @override
  String get actionType => ActionType.updateList.name;

  /// Creates a [StacUpdateListAction] from a JSON map.
  factory StacUpdateListAction.fromJson(Map<String, dynamic> json) =>
      _$StacUpdateListActionFromJson(json);

  /// Converts this [StacUpdateListAction] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacUpdateListActionToJson(this);
}

// A placeholder is filled in as text, so `{{index}}` arrives as "2".
int? _indexFromJson(Object? json) =>
    json is num ? json.toInt() : int.tryParse('$json');
