// Copyright (c) 2022, the json_editor project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import '../error.dart';

import 'token.dart';

ErrorToken buildUnexpectedCharacterToken(
    int character, int charOffset, int line) {
  if (character < 0x1f) {
    return AsciiControlCharacterToken(character, charOffset, line);
  }
  switch (character) {
    case unicodeReplacementCharacterRune:
      return EncodingErrorToken(charOffset, line);

    default:
      return NonAsciiToken(character, charOffset, line);
  }
}

abstract class ErrorToken extends SimpleToken {
  ErrorToken(int charOffset, int line)
      : super(type: TokenType.BAD_INPUT, charOffset: charOffset, line: line);

  @override
  String get lexeme {
    throw error;
  }

  @override
  String toString() => error.toString();

  Error get error;
}

/// Represents an encoding error.
class EncodingErrorToken extends ErrorToken {
  EncodingErrorToken(int charOffset, int line) : super(charOffset, line);

  @override
  Error get error => UnsupportedError("Unable to decode bytes as UTF-8.");
}

/// Represents a non-ASCII character outside a string or comment.
class NonAsciiToken extends ErrorToken {
  NonAsciiToken(this.character, int charOffset, int line)
      : super(charOffset, line);

  final int character;

  @override
  Error get error {
    var char = String.fromCharCode(character);
    String unicode =
        "U+${character.toRadixString(16).toUpperCase().padLeft(4, '0')}";
    return SyntaxError(
        character: char,
        charOffset: charOffset,
        line: line,
        message:
            "The non-ASCII character '$char' ($unicode) can only be used in strings and comments.");
  }
}

/// Represents an ASCII control character outside a string or comment.
class AsciiControlCharacterToken extends ErrorToken {
  AsciiControlCharacterToken(this.character, int charOffset, int line)
      : super(charOffset, line);

  final int character;

  @override
  Error get error {
    String unicode =
        "U+${character.toRadixString(16).toUpperCase().padLeft(4, '0')}";
    return UnsupportedError(
        "The control character $unicode can only be used in strings and comments.");
  }
}

class UnmatchedToken extends ErrorToken {
  UnmatchedToken(this.begin) : super(begin.charOffset, begin.line);

  final BeginToken begin;

  @override
  Error get error => SyntaxError(
      character: begin.lexeme,
      charOffset: charOffset,
      line: begin.line,
      message:
          "Can't find ${closeBraceFor(begin.lexeme)} to match ${begin.lexeme}.");
}

class UnterminatedToken extends ErrorToken {
  UnterminatedToken(
    this.errMessage,
    int charOffset,
    this.endOffset,
    int line,
  ) : super(charOffset, line);

  final int endOffset;

  int get length => endOffset - charOffset;

  final String errMessage;

  @override
  Error get error => UnsupportedError(errMessage);
}

class UnterminatedString extends ErrorToken {
  UnterminatedString(
    this.start,
    int charOffset,
    this.endOffset,
    int line,
  ) : super(charOffset, line);

  final String start;
  final int endOffset;

  int get length => endOffset - charOffset;

  @override
  Error get error => SyntaxError(
      character: start,
      charOffset: charOffset,
      line: line,
      message:
          "String starting with $start must end with ${closeQuoteFor(start)}");
}

String closeBraceFor(String openBrace) {
  return const {
    '[': ']',
    '{': '}',
  }[openBrace]!;
}

String closeQuoteFor(String openQuote) {
  return const {
    '"': '"',
    '\'': '\'',
  }[openQuote]!;
}
