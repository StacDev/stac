import 'package:stac_core/stac_core.dart';

extension StacSwitchTypeParser on StacSwitchType {
  StacSwitchType get parse {
    switch (this) {
      case StacSwitchType.adaptive:
        return StacSwitchType.adaptive;
      case StacSwitchType.cupertino:
        return StacSwitchType.cupertino;
      case StacSwitchType.material:
        return StacSwitchType.material;
    }
  }
}
