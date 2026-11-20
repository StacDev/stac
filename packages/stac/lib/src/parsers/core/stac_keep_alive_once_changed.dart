import 'package:flutter/widgets.dart';

/// Keeps an input's state alive in lazy lists and page views once the user has
/// changed its value, so scrolling it out of view or switching tabs doesn't
/// reset it. Inputs the user hasn't touched are still disposed as usual.
///
/// Call [markChangedByUser] when the user changes the value, and
/// `super.build(context)` at the start of `build`.
mixin StacKeepAliveOnceChanged<T extends StatefulWidget>
    on AutomaticKeepAliveClientMixin<T> {
  bool _changedByUser = false;

  @override
  bool get wantKeepAlive => _changedByUser;

  /// Records that the user changed this input's value.
  ///
  /// Does nothing once the input is disposed: a menu, for example, can report
  /// a selection after its input has gone.
  void markChangedByUser() {
    if (_changedByUser || !mounted) return;
    _changedByUser = true;
    updateKeepAlive();
  }
}
