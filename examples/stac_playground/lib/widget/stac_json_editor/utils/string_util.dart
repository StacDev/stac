// Copyright (c) 2022, the json_editor project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

extension StringUtil on String {
  String insertStringAt(int position, String s) {
    assert(position <= length);
    var sub1 = substring(0, position);
    var sub2 = substring(position, length);
    return sub1 + s + sub2;
  }

  String removeCharAt(int position) {
    assert(position < length);
    var sub1 = substring(0, position);

    var sub2 = substring(position + 1, length);

    return sub1 + sub2;
  }
}
