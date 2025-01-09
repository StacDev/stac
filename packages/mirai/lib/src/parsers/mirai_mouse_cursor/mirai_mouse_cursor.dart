import 'package:flutter/services.dart';

enum MiraiMouseCursor {
  none,
  basic,
  click,
  forbidden,
  wait,
  progress,
  contextMenu,
  help,
  text,
  verticalText,
  cell,
  precise,
  move,
  grab,
  grabbing,
  noDrop,
  alias,
  copy,
  disappearing,
  allScroll,
  resizeLeftRight,
  resizeUpDown,
  resizeUpLeftDownRight,
  resizeUpRightDownLeft,
  resizeUp,
  resizeDown,
  resizeLeft,
  resizeRight,
  resizeUpLeft,
  resizeUpRight,
  resizeDownLeft,
  resizeDownRight,
  resizeColumn,
  resizeRow,
  zoomIn,
  zoomOut;

  SystemMouseCursor get value {
    switch (this) {
      case MiraiMouseCursor.none:
        return SystemMouseCursors.none;
      case MiraiMouseCursor.basic:
        return SystemMouseCursors.basic;
      case MiraiMouseCursor.click:
        return SystemMouseCursors.click;
      case MiraiMouseCursor.forbidden:
        return SystemMouseCursors.forbidden;
      case MiraiMouseCursor.wait:
        return SystemMouseCursors.wait;
      case MiraiMouseCursor.progress:
        return SystemMouseCursors.progress;
      case MiraiMouseCursor.contextMenu:
        return SystemMouseCursors.contextMenu;
      case MiraiMouseCursor.help:
        return SystemMouseCursors.help;
      case MiraiMouseCursor.text:
        return SystemMouseCursors.text;
      case MiraiMouseCursor.verticalText:
        return SystemMouseCursors.verticalText;
      case MiraiMouseCursor.cell:
        return SystemMouseCursors.cell;
      case MiraiMouseCursor.precise:
        return SystemMouseCursors.precise;
      case MiraiMouseCursor.move:
        return SystemMouseCursors.move;
      case MiraiMouseCursor.grab:
        return SystemMouseCursors.grab;
      case MiraiMouseCursor.grabbing:
        return SystemMouseCursors.grabbing;
      case MiraiMouseCursor.noDrop:
        return SystemMouseCursors.noDrop;
      case MiraiMouseCursor.alias:
        return SystemMouseCursors.alias;
      case MiraiMouseCursor.copy:
        return SystemMouseCursors.copy;
      case MiraiMouseCursor.disappearing:
        return SystemMouseCursors.disappearing;
      case MiraiMouseCursor.allScroll:
        return SystemMouseCursors.allScroll;
      case MiraiMouseCursor.resizeLeftRight:
        return SystemMouseCursors.resizeLeftRight;
      case MiraiMouseCursor.resizeUpDown:
        return SystemMouseCursors.resizeUpDown;
      case MiraiMouseCursor.resizeUpLeftDownRight:
        return SystemMouseCursors.resizeUpLeftDownRight;
      case MiraiMouseCursor.resizeUpRightDownLeft:
        return SystemMouseCursors.resizeUpRightDownLeft;
      case MiraiMouseCursor.resizeUp:
        return SystemMouseCursors.resizeUp;
      case MiraiMouseCursor.resizeDown:
        return SystemMouseCursors.resizeDown;
      case MiraiMouseCursor.resizeLeft:
        return SystemMouseCursors.resizeLeft;
      case MiraiMouseCursor.resizeRight:
        return SystemMouseCursors.resizeRight;
      case MiraiMouseCursor.resizeUpLeft:
        return SystemMouseCursors.resizeUpLeft;
      case MiraiMouseCursor.resizeUpRight:
        return SystemMouseCursors.resizeUpRight;
      case MiraiMouseCursor.resizeDownLeft:
        return SystemMouseCursors.resizeDownLeft;
      case MiraiMouseCursor.resizeDownRight:
        return SystemMouseCursors.resizeDownRight;
      case MiraiMouseCursor.resizeColumn:
        return SystemMouseCursors.resizeColumn;
      case MiraiMouseCursor.resizeRow:
        return SystemMouseCursors.resizeRow;
      case MiraiMouseCursor.zoomIn:
        return SystemMouseCursors.zoomIn;
      case MiraiMouseCursor.zoomOut:
        return SystemMouseCursors.zoomOut;
    }
  }
}
