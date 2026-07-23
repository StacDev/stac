class HighlightConfig {
  HighlightConfig({this.brackets, this.autoClosingPairs, this.keywords});

  final List<Pair>? brackets;
  final List<Pair>? autoClosingPairs;
  final List<String>? keywords;
}

class Pair {
  Pair({this.open, this.close});
  final String? open;
  final String? close;

  @override
  bool operator ==(Object other) =>
      other is Pair && other.open == open && other.close == close;

  @override
  int get hashCode => (open?.isNotEmpty == true && close?.isNotEmpty == true)
      ? (open! + close!).hashCode
      : super.hashCode;
}
