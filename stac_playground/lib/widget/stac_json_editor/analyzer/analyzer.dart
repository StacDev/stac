// Copyright (c) 2022, the json_editor project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:stac_playground/utils/log.dart';
import 'package:stac_playground/widget/stac_json_editor/analyzer/lexer/error_token.dart';

import 'error.dart';
import 'lexer/lexer.dart';
import 'lexer/token.dart';

class JsonAnalyzer {
  final _lexer = Lexer();

  Error? analyze(String str) {
    var tokens = _lexer.scan(str);
    return _analyzeToken(tokens);
  }

  Error? _analyzeToken(Token token) {
    try {
      Token? advanceToken = token;
      while (advanceToken != null && !advanceToken.isEof) {
        if (optional('{', advanceToken)) {
          advanceToken = _analyzeObject(advanceToken);
        } else if (optional('[', advanceToken)) {
          advanceToken = _analyzeArray(advanceToken);
        } else {
          throw SyntaxError(
            character: token.lexeme,
            charOffset: token.charOffset,
            line: token.line,
          );
        }
      }
      return null;
    } catch (e) {
      Log.error(object: this, message: "Analyze Error", err: e);
      if (e is Error) {
        return e;
      } else {
        return UnsupportedError(e.toString());
      }
    }
  }

  /// Analyze json object: `{ ... }`
  Token _analyzeObject(Token token) {
    assert(token.next != null);
    Token advanceToken = token.next!;
    Error? error;
    while (!advanceToken.isEof && !optional('}', advanceToken)) {
      if (advanceToken is StringToken) {
        advanceToken = _analyzeKey(advanceToken);
      } else {
        var lexeme = advanceToken.lexeme;
        error = SyntaxError(
            character: lexeme,
            charOffset: advanceToken.charOffset,
            line: token.line);
        break;
      }
    }

    if (error == null) {
      if (optional('}', advanceToken)) {
        assert(advanceToken.next != null);
        return advanceToken.next!;
      }
      throw UnexpectedError(charOffset: advanceToken.charOffset);
    } else {
      throw error;
    }
  }

  /// Analyze json object key: `{ "key": ... }`
  Token _analyzeKey(Token token) {
    assert(token.next != null);
    Token advanceToken = token.next!;
    if (!optional(':', advanceToken)) {
      throw SyntaxError(
          character: advanceToken.lexeme,
          charOffset: advanceToken.charOffset,
          line: advanceToken.line,
          message: "Behind the key must have a colon ':'.");
    }
    assert(advanceToken.next != null);
    advanceToken = advanceToken.next!;
    return _analyzeValue(advanceToken);
  }

  /// Analyze json object value: `{ "...": value }`
  Token _analyzeValue(Token token) {
    if (_isValueToken(token) ||
        _isObjectStartToken(token) ||
        _isArrayStartToken(token)) {
      assert(token.next != null);
      late Token advanceToken;
      if (_isObjectStartToken(token)) {
        advanceToken = _analyzeObject(token);
      } else if (_isArrayStartToken(token)) {
        advanceToken = _analyzeArray(token);
      } else {
        advanceToken = token.next!;
      }

      if (optional(',', advanceToken)) {
        assert(advanceToken.next != null);
        if (optional('}', advanceToken.next!) ||
            optional(']', advanceToken.next!)) {
          throw SyntaxError(
              character: advanceToken.lexeme,
              charOffset: advanceToken.charOffset);
        } else {
          return advanceToken.next!;
        }
      } else if (optional('}', advanceToken) || optional(']', advanceToken)) {
        return advanceToken;
      } else {
        throw SyntaxError(
            character: advanceToken.lexeme,
            charOffset: advanceToken.charOffset,
            line: advanceToken.line);
      }
    } else {
      throw SyntaxError(
          character: token.lexeme,
          charOffset: token.charOffset,
          line: token.line,
          message: "Json value should be a String, Number, Bool, Array or Map");
    }
  }

  /// Analyze json array: `[ ... ]`
  Token _analyzeArray(Token token) {
    assert(token.next != null);
    var advanceToken = token.next!;
    Error? error;
    while (!advanceToken.isEof && !optional(']', advanceToken)) {
      advanceToken = _analyzeValue(advanceToken);
    }
    if (error == null) {
      if (optional(']', advanceToken)) {
        assert(advanceToken.next != null);
        return advanceToken.next!;
      }
      throw UnexpectedError(charOffset: advanceToken.charOffset);
    } else {
      throw error;
    }
  }

  bool optional(String value, Token token) {
    if (token is ErrorToken) {
      throw token.error;
    }
    return identical(value, token.toString());
  }

  bool _isValueToken(Token token) =>
      token.type == TokenType.INT ||
      token.type == TokenType.DOUBLE ||
      token.type == TokenType.STRING ||
      (token.type == TokenType.IDENTIFIER &&
          ('true' == token.toString() || 'false' == token.toString()));

  bool _isObjectStartToken(Token token) => token.lexeme == '{';

  bool _isArrayStartToken(Token token) => token.lexeme == '[';
}
