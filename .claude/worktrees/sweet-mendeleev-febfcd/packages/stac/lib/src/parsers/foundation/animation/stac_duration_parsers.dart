import 'package:stac_core/stac_core.dart';

extension StacDurationParser on StacDuration {
  Duration get parse {
    return Duration(
      days: days ?? 0,
      hours: hours ?? 0,
      minutes: minutes ?? 0,
      seconds: seconds ?? 0,
      milliseconds: milliseconds ?? 0,
      microseconds: microseconds ?? 0,
    );
  }
}
