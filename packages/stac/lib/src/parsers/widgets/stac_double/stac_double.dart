class StacDouble {
  final double _value;

  const StacDouble(this._value);

  static const StacDouble zero = StacDouble(0);
  static const StacDouble infinity = StacDouble(double.infinity);
  static const StacDouble maxFinite = StacDouble(double.maxFinite);
  static const StacDouble minPositive = StacDouble(double.minPositive);
  static const StacDouble nan = StacDouble(double.nan);
  static const StacDouble negativeInfinity =
      StacDouble(double.negativeInfinity);

  factory StacDouble.fromJson(dynamic json) => _fromJson(json);

  static StacDouble _fromJson(dynamic json) {
    if (json is num) {
      return StacDouble(json.toDouble());
    } else if (json is String) {
      return StacDouble(json.parseDouble());
    }
    throw ("Unsupported StacDouble value");
  }

  dynamic toJson() {
    if (_value == double.infinity) {
      return "infinity";
    } else if (_value == double.negativeInfinity) {
      return "negativeInfinity";
    } else if (_value.isNaN) {
      return "nan";
    } else if (_value == double.minPositive) {
      return "minPositive";
    } else if (_value == double.maxFinite) {
      return "maxFinite";
    }
    return _value;
  }
}

extension StacDoubleParser on StacDouble {
  double get parse {
    return _value.toDouble();
  }
}

extension on String {
  double parseDouble() {
    try {
      switch (this) {
        case "infinity":
          return double.infinity;
        case "negativeInfinity":
          return double.negativeInfinity;
        case "nan":
          return double.nan;
        case "minPositive":
          return double.minPositive;
        case "maxFinite":
          return double.maxFinite;
        default:
          return double.parse(this);
      }
    } catch (e) {
      throw ("Error parsing double: $this");
    }
  }
}
