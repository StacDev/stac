// Copyright (c) 2022, the json_editor project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'characters.dart';

const int EOF_TOKEN = 0;
const int IDENTIFIER_TOKEN = $a;
const int DOUBLE_TOKEN = $d;
const int INT_TOKEN = $i;
const int STRING_TOKEN = $SQ;
const int COLON_TOKEN = $COLON;
const int COMMA_TOKEN = $COMMA;
const int BAD_INPUT_TOKEN = $X;
const int RECOVERY_TOKEN = $r;

const int OPEN_CURLY_BRACKET_TOKEN = $OPEN_CURLY_BRACKET;
const int OPEN_SQUARE_BRACKET_TOKEN = $OPEN_SQUARE_BRACKET;
const int CLOSE_CURLY_BRACKET_TOKEN = $CLOSE_CURLY_BRACKET;
const int CLOSE_SQUARE_BRACKET_TOKEN = $CLOSE_SQUARE_BRACKET;
const int PERIOD_TOKEN = $PERIOD;

const int COMMENT_TOKEN = 129;
