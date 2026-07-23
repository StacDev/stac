// Copyright (c) 2022, the json_editor project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'characters.dart';
import 'token.dart';
import 'scanner.dart';

class Lexer {
  Token scan(String expression) {
    var scanner =
        Utf8BytesScanner(bytes: List.from(utf8.encode(expression))..add($EOF));
    return scanner.tokenize();
  }
}
