// Copyright (c) 2022, the json_editor project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

Logger? _logger;

void initialLogger({bool openDebug = true}) {
  _logger = Logger(
    level: openDebug
        ? kReleaseMode
            ? Level.error
            : Level.debug
        : Level.nothing,
    printer: PrettyPrinter(
        stackTraceBeginIndex: 1,
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        printTime: true),
  );
}

void debug({String? tag, Object? object, String? message}) {
  var tagStr = tag ?? '';
  if (object != null) {
    tagStr += '(${object.runtimeType.toString()})';
  }

  _logger?.d('$tagStr: ${message ?? ''}');
}

void warn({String? tag, Object? object, String? message}) {
  var tagStr = tag ?? '';
  if (object != null) {
    tagStr += '(${object.runtimeType.toString()})';
  }
  _logger?.w('$tagStr: ${message ?? ''}');
}

void info({String? tag, Object? object, String? message}) {
  var tagStr = tag ?? '';
  if (object != null) {
    tagStr += '(${object.runtimeType.toString()})';
  }
  _logger?.i('$tagStr: ${message ?? ''}');
}

void error(
    {String? tag,
    Object? object,
    String? message,
    Object? err,
    StackTrace? trace}) {
  var tagStr = tag ?? '';
  if (object != null) {
    tagStr += '(${object.runtimeType.toString()})';
  }

  _logger?.e('$tagStr: ${message ?? ''}', err, trace);
}
