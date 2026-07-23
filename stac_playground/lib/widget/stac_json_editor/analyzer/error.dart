// Copyright (c) 2022, the json_editor project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class SyntaxError extends Error {
  SyntaxError(
      {required this.character,
      required this.charOffset,
      this.line = 0,
      this.message});

  final String character;
  final int charOffset;
  final int line;
  final String? message;

  @override
  String toString() =>
      "Syntax Error: Invalid '$character' at line $line position $charOffset${message != null ? ", $message" : "."}";
}

class UnexpectedError extends Error {
  UnexpectedError({required this.charOffset});

  final int charOffset;

  @override
  String toString() => "Unexpected error at position $charOffset";
}
