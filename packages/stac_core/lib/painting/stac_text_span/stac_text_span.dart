import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/painting/stac_text_style/stac_text_style.dart';

part 'stac_text_span.g.dart';

@JsonSerializable()
class StacTextSpan implements StacElement {
  StacTextSpan({this.data, this.style, this.children = const [], this.onTap});

  final String? data;
  final StacTextStyle? style;
  final List<StacTextSpan> children;
  final Map<String, dynamic>? onTap;

  @override
  Map<String, dynamic> toJson() => _$StacTextSpanToJson(this);

  factory StacTextSpan.fromJson(Map<String, dynamic> json) =>
      _$StacTextSpanFromJson(json);
}
