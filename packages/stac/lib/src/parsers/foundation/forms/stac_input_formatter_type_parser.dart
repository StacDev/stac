import 'package:stac/src/utils/input_formatters.dart';
import 'package:stac_core/stac_core.dart';

extension StacInputFormatterTypeCoreParser on StacInputFormatterType {
  InputFormatterType get parse {
    switch (this) {
      case StacInputFormatterType.allow:
        return InputFormatterType.allow;
      case StacInputFormatterType.deny:
        return InputFormatterType.deny;
      case StacInputFormatterType.mask:
        return InputFormatterType.mask;
    }
  }
}
