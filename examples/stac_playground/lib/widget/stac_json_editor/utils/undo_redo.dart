// Copyright (c) 2022, the json_editor project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class UndoRedo {
  final _stack = <String>[];
  int _peek = 0;

  void set(String text) {
    _stack.add(text);
    _peek = 0;
  }

  void input(String text) {
    if (_peek < _stack.length - 1) {
      _stack.removeRange(_peek + 1, _stack.length);
    }
    _stack.add(text);
    _peek++;
  }

  String? undo() {
    if (_stack.isNotEmpty && _peek > 0) {
      var value = _stack[--_peek];
      return value;
    }
    return null;
  }

  String? redo() {
    if (_stack.isNotEmpty && _peek < _stack.length - 1) {
      return _stack[++_peek];
    }
    return null;
  }

  String? get current => _stack.isNotEmpty ? _stack.last : null;
}
