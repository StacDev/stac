import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:stac/stac.dart';
import 'package:stac_playground/theme/app_theme.dart';

/// Shows the Stac state the preview holds, level by level, and the changes
/// made to it, updating as the preview runs.
class StateInspector extends StatefulWidget {
  const StateInspector({super.key, this.codeStyle});

  /// The style for values. Defaults to the ambient text style.
  final TextStyle? codeStyle;

  @override
  State<StateInspector> createState() => _StateInspectorState();
}

class _StateInspectorState extends State<StateInspector> {
  static const _maxChanges = 200;

  late final _InspectorObserver _observer = _InspectorObserver(this);
  final List<_LoggedChange> _changes = [];
  bool _showChanges = false;
  bool _refreshScheduled = false;

  @override
  void initState() {
    super.initState();
    Stac.stateObservers.add(_observer);
  }

  @override
  void dispose() {
    Stac.stateObservers.remove(_observer);
    super.dispose();
  }

  void _record(StacStateChange change) {
    _changes.insert(0, _LoggedChange(DateTime.now(), change));
    if (_changes.length > _maxChanges) _changes.removeLast();
    _refresh();
  }

  /// Rebuilds after the current frame. Observers can be called while
  /// widgets build, when setState is not allowed.
  void _refresh() {
    if (_refreshScheduled || !mounted) return;
    _refreshScheduled = true;
    SchedulerBinding.instance
      ..addPostFrameCallback((_) {
        _refreshScheduled = false;
        if (mounted) setState(() {});
      })
      ..ensureVisualUpdate();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final code = (widget.codeStyle ?? const TextStyle()).copyWith(
      fontSize: 12,
      height: 1.5,
      color: colors.onBackground,
    );
    return Container(
      decoration: BoxDecoration(
        color: colors.background,
        border: Border(top: BorderSide(color: colors.outline)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _Header(
            showChanges: _showChanges,
            changeCount: _changes.length,
            onShowChanges: (show) => setState(() => _showChanges = show),
            onClear: _showChanges
                ? () => setState(_changes.clear)
                : () => Stac.state.clear(),
            clearLabel: _showChanges ? 'Clear changes' : 'Clear app state',
          ),
          Expanded(
            child: _showChanges
                ? _ChangeList(changes: _changes, style: code)
                : _LevelList(style: code),
          ),
        ],
      ),
    );
  }
}

class _InspectorObserver extends StacStateObserver {
  _InspectorObserver(this._inspector);

  final _StateInspectorState _inspector;

  @override
  void onChange(StacStateChange change) => _inspector._record(change);

  @override
  void onLevelCreated(StacStateLevel level) => _inspector._refresh();

  @override
  void onLevelDisposed(StacStateLevel level) => _inspector._refresh();
}

class _LoggedChange {
  const _LoggedChange(this.time, this.change);

  final DateTime time;
  final StacStateChange change;
}

class _Header extends StatelessWidget {
  const _Header({
    required this.showChanges,
    required this.changeCount,
    required this.onShowChanges,
    required this.onClear,
    required this.clearLabel,
  });

  final bool showChanges;
  final int changeCount;
  final ValueChanged<bool> onShowChanges;
  final VoidCallback onClear;
  final String clearLabel;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: colors.outline)),
      ),
      child: Row(
        children: [
          Text(
            'STATE',
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.72,
              color: colors.onBackground2,
            ),
          ),
          const SizedBox(width: 16),
          _Tab(
            label: 'Values',
            selected: !showChanges,
            onTap: () => onShowChanges(false),
          ),
          const SizedBox(width: 12),
          _Tab(
            label: changeCount == 0 ? 'Changes' : 'Changes ($changeCount)',
            selected: showChanges,
            onTap: () => onShowChanges(true),
          ),
          const Spacer(),
          Tooltip(
            message: clearLabel,
            child: InkWell(
              onTap: onClear,
              hoverColor: colors.surfaceVariant,
              child: PhosphorIcon(
                showChanges ? PhosphorIcons.trash : PhosphorIcons.broom,
                size: 16,
                color: colors.onBackground2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Tab extends StatelessWidget {
  const _Tab({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return InkWell(
      onTap: onTap,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
          color: selected ? colors.onBackground : colors.onBackground2,
        ),
      ),
    );
  }
}

/// Every level of state that holds something, each below the level
/// around it. Empty levels, such as those of small widgets the playground
/// itself renders with Stac, are counted instead of listed.
class _LevelList extends StatelessWidget {
  const _LevelList({required this.style});

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    final levels = Stac.stateLevels;
    final inside = <StacStateLevel, List<StacStateLevel>>{};
    for (final level in levels) {
      final parent = level.parent;
      if (parent != null) (inside[parent] ??= []).add(level);
    }
    final holds = <StacStateLevel, bool>{};
    bool holdsSomething(StacStateLevel level) {
      return holds[level] ??= level.store.data.isNotEmpty ||
          (level.kind == StacScopeKind.screen && level.arguments.isNotEmpty) ||
          (inside[level] ?? const <StacStateLevel>[]).any(holdsSomething);
    }

    final rows = <Widget>[];
    var hidden = 0;
    void add(StacStateLevel level, int depth) {
      if (level.parent != null && !holdsSomething(level)) {
        hidden++;
        return;
      }
      rows.add(_LevelEntry(level: level, depth: depth, style: style));
      for (final child in inside[level] ?? const <StacStateLevel>[]) {
        add(child, depth + 1);
      }
    }

    for (final root in levels.where((level) => level.parent == null)) {
      add(root, 0);
    }
    if (hidden > 0) {
      rows.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
          child: Text(
            '$hidden empty ${hidden == 1 ? 'level' : 'levels'} not shown',
            style: TextStyle(fontSize: 11, color: context.colors.onBackground3),
          ),
        ),
      );
    }
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: rows,
    );
  }
}

class _LevelEntry extends StatelessWidget {
  const _LevelEntry({
    required this.level,
    required this.depth,
    required this.style,
  });

  final StacStateLevel level;
  final int depth;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final data = level.store.data;
    final arguments = level.kind == StacScopeKind.screen
        ? level.arguments
        : const <String, Object?>{};
    return Padding(
      padding: EdgeInsets.fromLTRB(12.0 + depth * 16, 4, 12, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            describeStacStateLevel(level),
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: _kindColor(context, level.kind),
            ),
          ),
          if (arguments.isNotEmpty)
            SelectableText(
              r'$args ' + _pretty(arguments),
              style: style.copyWith(color: colors.onBackground2),
            ),
          if (data.isEmpty)
            Text(
              'No values',
              style: style.copyWith(color: colors.onBackground3),
            )
          else
            SelectableText(_pretty(data), style: style),
        ],
      ),
    );
  }
}

/// The changes made since the inspector opened, newest first.
class _ChangeList extends StatelessWidget {
  const _ChangeList({required this.changes, required this.style});

  final List<_LoggedChange> changes;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    if (changes.isEmpty) {
      return Center(
        child: Text(
          'Changes appear here as the preview runs',
          style: TextStyle(fontSize: 12, color: colors.onBackground3),
        ),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: changes.length,
      itemBuilder: (context, index) {
        final logged = changes[index];
        final change = logged.change;
        final level = change.level;
        final where = level == null ? 'store' : describeStacStateLevel(level);
        final path = change.segments.isEmpty ? '(all)' : change.path;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${_time(logged.time)}  $where',
                style: TextStyle(
                  fontSize: 11,
                  color: level == null
                      ? colors.onBackground2
                      : _kindColor(context, level.kind),
                ),
              ),
              SelectableText(
                '$path: ${_compact(change.previous)} → '
                '${_compact(change.value)}',
                style: style,
              ),
            ],
          ),
        );
      },
    );
  }
}

Color _kindColor(BuildContext context, StacScopeKind kind) {
  final colors = context.colors;
  return switch (kind) {
    StacScopeKind.app => colors.primary,
    StacScopeKind.screen => colors.success,
    StacScopeKind.local => colors.warning,
    StacScopeKind.form => colors.secondary,
  };
}

String _pretty(Object? value) {
  try {
    return const JsonEncoder.withIndent('  ').convert(value);
  } on JsonUnsupportedObjectError {
    return '$value';
  }
}

String _compact(Object? value) {
  String text;
  try {
    text = jsonEncode(value);
  } on JsonUnsupportedObjectError {
    text = '$value';
  }
  return text.length > 120 ? '${text.substring(0, 117)}...' : text;
}

String _time(DateTime time) {
  String two(int value) => value.toString().padLeft(2, '0');
  return '${two(time.hour)}:${two(time.minute)}:${two(time.second)}';
}
