// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_update_list_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacUpdateListAction _$StacUpdateListActionFromJson(
  Map<String, dynamic> json,
) => StacUpdateListAction(
  key: json['key'] as String,
  op: $enumDecode(_$StacListOpEnumMap, json['op']),
  item: json['item'],
  items: json['items'],
  index: _indexFromJson(json['index']),
  match: json['match'] as Map<String, dynamic>?,
  set: json['set'] as Map<String, dynamic>?,
  add: json['add'] as Map<String, dynamic>?,
  field: json['field'] as String?,
  counter: json['counter'] as String?,
  persist: json['persist'] as bool?,
);

Map<String, dynamic> _$StacUpdateListActionToJson(
  StacUpdateListAction instance,
) => <String, dynamic>{
  'key': instance.key,
  'op': _$StacListOpEnumMap[instance.op]!,
  'item': instance.item,
  'items': instance.items,
  'index': instance.index,
  'match': instance.match,
  'set': instance.set,
  'add': instance.add,
  'field': instance.field,
  'counter': instance.counter,
  'persist': instance.persist,
  'actionType': instance.actionType,
};

const _$StacListOpEnumMap = {
  StacListOp.set: 'set',
  StacListOp.append: 'append',
  StacListOp.prepend: 'prepend',
  StacListOp.insert: 'insert',
  StacListOp.appendAll: 'appendAll',
  StacListOp.update: 'update',
  StacListOp.upsert: 'upsert',
  StacListOp.toggle: 'toggle',
  StacListOp.remove: 'remove',
  StacListOp.clear: 'clear',
};
