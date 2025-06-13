import 'package:flutter/material.dart';
import 'package:movie_app/widgets/ani_list_description_text/ani_list_description_text.dart';
import 'package:stac/stac.dart';

class AniListDescriptionTextParser extends StacParser<AniListDescriptionText> {
  const AniListDescriptionTextParser();

  @override
  String get type => 'aniListDescriptionText';

  @override
  AniListDescriptionText getModel(Map<String, dynamic> json) =>
      AniListDescriptionText.fromJson(json);

  @override
  Widget parse(BuildContext context, AniListDescriptionText model) {
    return Text(
        _htmlToPlainText(model.data),
        style: Theme.of(context).textTheme.bodyMedium,
    );
  }

  String _htmlToPlainText(String? htmlString) {
    if (htmlString == null || htmlString.isEmpty) {
      return "";
    }

    String text = htmlString;

    text = text.replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '\n');
    text = text.replaceAll(RegExp(r'<[^>]*>'), '');

    text = text.replaceAll('&amp;', '&');
    text = text.replaceAll('&lt;', '<');
    text = text.replaceAll('&gt;', '>');
    text = text.replaceAll('&quot;', '"');
    text = text.replaceAll('&#39;', "'");
    text = text.replaceAll('&nbsp;', ' ');

    text = text.trim().replaceAll(RegExp(r'\n{2,}'), '\n\n');

    return text;
  }
}