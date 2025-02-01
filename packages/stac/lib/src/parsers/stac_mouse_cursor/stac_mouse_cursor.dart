import 'package:flutter/services.dart';

enum StacMouseCursor {
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
      case StacMouseCursor.none:
        return SystemMouseCursors.none;
      case StacMouseCursor.basic:
        return SystemMouseCursors.basic;
      case StacMouseCursor.click:
        return SystemMouseCursors.click;
      case StacMouseCursor.forbidden:
        return SystemMouseCursors.forbidden;
      case StacMouseCursor.wait:
        return SystemMouseCursors.wait;
      case StacMouseCursor.progress:
        return SystemMouseCursors.progress;
      case StacMouseCursor.contextMenu:
        return SystemMouseCursors.contextMenu;
      case StacMouseCursor.help:
        return SystemMouseCursors.help;
      case StacMouseCursor.text:
        return SystemMouseCursors.text;
      case StacMouseCursor.verticalText:
        return SystemMouseCursors.verticalText;
      case StacMouseCursor.cell:
        return SystemMouseCursors.cell;
      case StacMouseCursor.precise:
        return SystemMouseCursors.precise;
      case StacMouseCursor.move:
        return SystemMouseCursors.move;
      case StacMouseCursor.grab:
        return SystemMouseCursors.grab;
      case StacMouseCursor.grabbing:
        return SystemMouseCursors.grabbing;
      case StacMouseCursor.noDrop:
        return SystemMouseCursors.noDrop;
      case StacMouseCursor.alias:
        return SystemMouseCursors.alias;
      case StacMouseCursor.copy:
        return SystemMouseCursors.copy;
      case StacMouseCursor.disappearing:
        return SystemMouseCursors.disappearing;
      case StacMouseCursor.allScroll:
        return SystemMouseCursors.allScroll;
      case StacMouseCursor.resizeLeftRight:
        return SystemMouseCursors.resizeLeftRight;
      case StacMouseCursor.resizeUpDown:
        return SystemMouseCursors.resizeUpDown;
      case StacMouseCursor.resizeUpLeftDownRight:
        return SystemMouseCursors.resizeUpLeftDownRight;
      case StacMouseCursor.resizeUpRightDownLeft:
        return SystemMouseCursors.resizeUpRightDownLeft;
      case StacMouseCursor.resizeUp:
        return SystemMouseCursors.resizeUp;
      case StacMouseCursor.resizeDown:
        return SystemMouseCursors.resizeDown;
      case StacMouseCursor.resizeLeft:
        return SystemMouseCursors.resizeLeft;
      case StacMouseCursor.resizeRight:
        return SystemMouseCursors.resizeRight;
      case StacMouseCursor.resizeUpLeft:
        return SystemMouseCursors.resizeUpLeft;
      case StacMouseCursor.resizeUpRight:
        return SystemMouseCursors.resizeUpRight;
      case StacMouseCursor.resizeDownLeft:
        return SystemMouseCursors.resizeDownLeft;
      case StacMouseCursor.resizeDownRight:
        return SystemMouseCursors.resizeDownRight;
      case StacMouseCursor.resizeColumn:
        return SystemMouseCursors.resizeColumn;
      case StacMouseCursor.resizeRow:
        return SystemMouseCursors.resizeRow;
      case StacMouseCursor.zoomIn:
        return SystemMouseCursors.zoomIn;
      case StacMouseCursor.zoomOut:
        return SystemMouseCursors.zoomOut;
    }
  }
}
