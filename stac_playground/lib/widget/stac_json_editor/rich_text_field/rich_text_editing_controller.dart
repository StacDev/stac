import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stac_playground/widget/stac_json_editor/analyzer/error.dart';
import 'package:stac_playground/widget/stac_json_editor/analyzer/lexer/error_token.dart';
import 'package:stac_playground/widget/stac_json_editor/analyzer/lexer/lexer.dart';
import 'package:stac_playground/widget/stac_json_editor/analyzer/lexer/token.dart';
import 'package:stac_playground/widget/stac_json_editor/json_editor_theme.dart';
import 'package:stac_playground/widget/stac_json_editor/rich_text_field/highlight_theme/theme.dart';

class RichTextEditingController extends TextEditingController {
  final _lexer = Lexer();

  Error? _analyzeError;

  set analyzeError(Error? error) {
    _analyzeError = error;
    notifyListeners();
  }

  // Grammar highlight
  TextSpan _buildRichText(
      {required BuildContext context, required String text, TextStyle? style}) {
    var jsonTheme = JsonEditorTheme.of(context)?.theme(context) ??
        JsonEditorThemeData.defaultTheme().theme(context);
    var children = <InlineSpan>[];
    var spanMap = <int, TextSpan>{};
    var renderEndOffset = <int, int>{};
    var tokens = _lexer.scan(text);

    if (_analyzeError != null && _analyzeError is SyntaxError) {
      spanMap[(_analyzeError as SyntaxError).charOffset] = TextSpan(
          text: (_analyzeError as SyntaxError).character,
          style: jsonTheme.typeStyle[HighlightDataType.error]);
      renderEndOffset[(_analyzeError as SyntaxError).charOffset] =
          (_analyzeError as SyntaxError).charOffset +
              (_analyzeError as SyntaxError).character.length;
    }
    while (!tokens.isEof) {
      if (tokens is! ErrorToken) {
        TextSpan? span;
        if (_analyzeError != null &&
            _analyzeError is SyntaxError &&
            (_analyzeError as SyntaxError).charOffset == tokens.charOffset) {
          //ignore
        } else if (tokens.lexeme == '{' ||
            tokens.lexeme == '}' ||
            tokens.lexeme == '[' ||
            tokens.lexeme == ']') {
          span = TextSpan(
              text: tokens.lexeme,
              style: jsonTheme.bracketsStyle[tokens.lexeme]);
        } else if (tokens.lexeme == 'true' || tokens.lexeme == 'false') {
          span = TextSpan(
              text: tokens.lexeme,
              style: jsonTheme.typeStyle[HighlightDataType.bool]);
        } else if (tokens.type == TokenType.INT) {
          span = TextSpan(
              text: tokens.lexeme,
              style: jsonTheme.typeStyle[HighlightDataType.int]);
        } else if (tokens.type == TokenType.DOUBLE) {
          span = TextSpan(
              text: tokens.lexeme,
              style: jsonTheme.typeStyle[HighlightDataType.double]);
        } else if (tokens.type == TokenType.STRING) {
          if (tokens.next?.lexeme == ':') {
            span = TextSpan(
                text: tokens.lexeme,
                style: jsonTheme.typeStyle[HighlightDataType.key]);
          } else {
            span = TextSpan(
                text: tokens.lexeme,
                style: jsonTheme.typeStyle[HighlightDataType.string]);
          }
        }
        if (tokens.precedingComments != null) {
          var commentStartOffset = tokens.precedingComments!.charOffset;
          var commentEndOffset = tokens.precedingComments!.charEnd;
          var commentToken = tokens.precedingComments!.next;
          while (commentToken is CommentToken) {
            commentEndOffset = commentToken.charEnd;
            commentToken = commentToken.next;
          }
          spanMap[commentStartOffset] = TextSpan(
              text: text.substring(commentStartOffset, commentEndOffset),
              style: jsonTheme.typeStyle[HighlightDataType.comment]);
          renderEndOffset[commentStartOffset] = commentEndOffset;
        }
        if (span != null) {
          spanMap[tokens.charOffset] = span;
          renderEndOffset[tokens.charOffset] = tokens.charEnd;
        }
      }
      tokens = tokens.next!;
    }
    String unrenderedText = '';
    var offset = 0;
    var renderOffsets = spanMap.keys;
    var utf8Codes = utf8.encode(text);
    while (offset < text.length) {
      if (renderOffsets.contains(offset)) {
        if (unrenderedText.isNotEmpty) {
          children.add(
              TextSpan(text: unrenderedText, style: jsonTheme.defaultStyle));
          unrenderedText = '';
        }
        children.add(spanMap[offset]!);
        offset = renderEndOffset[offset]!;
      } else {
        unrenderedText += text.substring(offset, offset + 1);
        offset++;
      }
    }
    if (unrenderedText.isNotEmpty) {
      children
          .add(TextSpan(text: unrenderedText, style: jsonTheme.defaultStyle));
      unrenderedText = '';
    }
    return TextSpan(children: children, style: style);
  }

  @override
  TextSpan buildTextSpan(
      {required BuildContext context,
      TextStyle? style,
      required bool withComposing}) {
    assert(!value.composing.isValid ||
        !withComposing ||
        value.isComposingRangeValid);
    // If the composing range is out of range for the current text, ignore it to
    // preserve the tree integrity, otherwise in release mode a RangeError will
    // be thrown and this EditableText will be built with a broken subtree.
    if (!value.isComposingRangeValid || !withComposing) {
      return _buildRichText(context: context, text: text, style: style);
    }
    final TextStyle composingStyle =
        style?.merge(const TextStyle(decoration: TextDecoration.underline)) ??
            const TextStyle(decoration: TextDecoration.underline);

    return TextSpan(
      style: style,
      children: <TextSpan>[
        TextSpan(text: value.composing.textBefore(value.text)),
        _buildRichText(
            context: context,
            text: value.composing.textInside(value.text),
            style: composingStyle),
        TextSpan(text: value.composing.textAfter(value.text)),
      ],
    );
  }
}
