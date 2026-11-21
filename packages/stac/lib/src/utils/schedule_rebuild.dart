import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

/// Runs [rebuild], which calls `setState`, now or, while Flutter is
/// building, laying out or removing widgets, once the current frame is done.
///
/// State can change at those times: a `setValue` widget writes its values as
/// it's built, and an `onDispose` action runs as its widget is removed.
/// Flutter doesn't allow marking another widget for a rebuild then.
void scheduleRebuild(VoidCallback rebuild) {
  final scheduler = SchedulerBinding.instance;
  if (scheduler.schedulerPhase == SchedulerPhase.persistentCallbacks) {
    scheduler.addPostFrameCallback((_) => rebuild());
  } else if (scheduler.schedulerPhase == SchedulerPhase.idle &&
      WidgetsBinding.instance.rootElement == null) {
    // `runApp` builds the first frame outside a frame, before it sets the
    // root element, so wait until that build is done.
    scheduleMicrotask(rebuild);
  } else {
    rebuild();
  }
}
