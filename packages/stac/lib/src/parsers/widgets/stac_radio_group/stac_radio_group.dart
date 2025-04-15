import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/widgets/stac_radio_group/stac_radio_group_parser.dart';

part 'stac_radio_group.freezed.dart';
part 'stac_radio_group.g.dart';

enum RadioAlignment { vertical, horizontal }

@freezed
abstract class StacRadioGroup with _$StacRadioGroup {
  const factory StacRadioGroup({
    String? id,
    dynamic groupValue,
    Map<String, dynamic>? child,
  }) = _StacRadioGroup;

  factory StacRadioGroup.fromJson(Map<String, dynamic> json) =>
      _$StacRadioGroupFromJson(json);
}
