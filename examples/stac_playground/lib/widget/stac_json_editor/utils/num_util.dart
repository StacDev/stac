extension NumUtil on num {
  String format() {
    if (isInfinite) {
      return toStringAsFixed(2);
    } else {
      return truncateToDouble() == this ? toStringAsFixed(0) : toString();
    }
  }
}
