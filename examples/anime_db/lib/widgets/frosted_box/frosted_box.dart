
class FrostedBox {
  FrostedBox({required this.color, required this.alpha, required this.blur});
  final String color;
  final int alpha;
  final double blur;

  factory FrostedBox.fromJson(Map<String, dynamic> json) {
    return FrostedBox(color: json['color'], alpha: json['alpha'], blur: json['blur']);
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'alpha': alpha,
      'blur': blur
    };
  }
}