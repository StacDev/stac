/// Shared string helpers used across Stac packages.
class StringUtils {
  const StringUtils._();

  /// Fixes common UTF-8 encoding artifacts that appear in generated output.
  static String fixCharacterEncoding(String text) {
    return text
        .replaceAll('Â·', '·') // Fix middle dot encoding issue
        .replaceAll('Â–', '–') // Fix en dash encoding issues
        .replaceAll('Â—', '—') // Fix em dash encoding issues
        .replaceAll('Â…', '…') // Fix ellipsis encoding issues
        .replaceAll('Â©', '©') // Fix copyright encoding issues
        .replaceAll('Â®', '®') // Fix registered trademark encoding issues
        .replaceAll('Â°', '°') // Fix degree symbol encoding issues
        .replaceAll('Â±', '±') // Fix plus-minus encoding issues
        .replaceAll('Â²', '²') // Fix superscript 2 encoding issues
        .replaceAll('Â³', '³') // Fix superscript 3 encoding issues
        .replaceAll('Â¼', '¼') // Fix fraction encoding issues
        .replaceAll('Â½', '½') // Fix fraction encoding issues
        .replaceAll('Â¾', '¾'); // Fix fraction encoding issues
  }
}
