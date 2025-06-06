import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'stac_circle_avatar_parser.dart';

part 'stac_circle_avatar.freezed.dart';
part 'stac_circle_avatar.g.dart';

@freezed
abstract class StacCircleAvatar with _$StacCircleAvatar {
  const factory StacCircleAvatar({
    Map<String, dynamic>? child,
    String? backgroundColor,
    String? backgroundImage,
    String? foregroundImage,
    Map<String, dynamic>? onBackgroundImageError,
    Map<String, dynamic>? onForegroundImageError,
    String? foregroundColor,
    StacDouble? radius,
    StacDouble? minRadius,
    StacDouble? maxRadius,
  }) = _StacCircleAvatar;

  factory StacCircleAvatar.fromJson(Map<String, dynamic> json) =>
      _$StacCircleAvatarFromJson(json);
}
