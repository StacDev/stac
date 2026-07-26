import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:stac/stac.dart';
import 'package:stac_playground/app/cubit/home_cubit.dart';
import 'package:stac_playground/app/cubit/home_state.dart';
import 'package:stac_playground/data/playground_entry.dart';
import 'package:stac_playground/theme/app_theme.dart';

/// Console-styled search input filtering the entry index.
class _IndexSearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      decoration: BoxDecoration(
        color: context.colors.surfaceVariant,
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: context.colors.outline2),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          PhosphorIcon(
            PhosphorIcons.magnifyingGlass,
            size: 12,
            color: context.colors.onSurfaceVariant,
          ),
          const SizedBox(width: 6),
          Expanded(
            child: TextField(
              onChanged: (v) => context.read<HomeCubit>().setQuery(v),
              style: TextStyle(
                fontSize: 12,
                height: 1.5,
                color: context.colors.onBackground,
              ),
              decoration: InputDecoration(
                isCollapsed: true,
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: 12,
                  height: 1.5,
                  color: context.colors.onBackground3,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}

/// Small uppercase section label between index groups.
class _GroupLabel extends StatelessWidget {
  const _GroupLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 4),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 9,
          fontWeight: FontWeight.w500,
          height: 1.3,
          letterSpacing: 0.72,
          fontVariations: const [FontVariation('wght', 500)],
          color: Colors.white.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}

/// The 280px screen index: playground title plus the list of sample screens.
class IndexPanel extends StatelessWidget {
  const IndexPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: context.colors.background,
        border: Border(right: BorderSide(color: context.colors.outline)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Playground',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 1.5,
                fontVariations: const [FontVariation('wght', 600)],
                color: context.colors.onBackground,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) => previous.view != current.view,
              builder: (context, state) => _ViewToggle(view: state.view),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
            child: _IndexSearchField(),
          ),
          Expanded(
            child: BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) =>
                  previous.selectedEntry.id != current.selectedEntry.id ||
                  previous.edited != current.edited ||
                  previous.query != current.query,
              builder: (context, state) {
                final query = state.query.toLowerCase();
                bool matches(PlaygroundEntry e) =>
                    query.isEmpty ||
                    e.id.contains(query) ||
                    e.title.toLowerCase().contains(query);
                final screens = playgroundEntries
                    .where((e) => e.category == EntryCategory.screen)
                    .where(matches)
                    .toList();
                final components = playgroundEntries
                    .where((e) => e.category == EntryCategory.component)
                    .where(matches)
                    .toList();
                Widget row(PlaygroundEntry e) => _IndexRow(
                      iconName: e.icon,
                      iconType: e.iconType,
                      label: e.id,
                      selected: state.selectedEntry.id == e.id,
                      showChangeDot:
                          state.selectedEntry.id == e.id && state.edited,
                      onTap: () => context.read<HomeCubit>().selectEntry(e),
                    );
                return ListView(
                  padding: const EdgeInsets.only(bottom: 12),
                  children: [
                    if (screens.isNotEmpty) ...[
                      const _GroupLabel('EXAMPLES'),
                      ...screens.map(row),
                    ],
                    if (components.isNotEmpty) ...[
                      const _GroupLabel('WIDGETS'),
                      ...components.map(row),
                    ],
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// Switches the playground between the live preview layout and the
/// side-by-side Dart/JSON code view.
class _ViewToggle extends StatelessWidget {
  const _ViewToggle({required this.view});

  final PlaygroundView view;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: context.colors.outline2),
      ),
      child: Row(
        // Stretch segments to the toggle's full height so the selected
        // segment's background fills it instead of leaving bars top and bottom.
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _segment(
            context,
            icon: PhosphorIcons.eye,
            label: 'Preview',
            value: PlaygroundView.preview,
            tooltip: 'Code editor with live preview',
          ),
          Container(width: 1, color: context.colors.outline2),
          _segment(
            context,
            icon: PhosphorIcons.columns,
            label: 'Code Diff',
            value: PlaygroundView.codeDiff,
            tooltip: 'Dart DSL and JSON side by side',
          ),
        ],
      ),
    );
  }

  Widget _segment(
    BuildContext context, {
    required IconData icon,
    required String label,
    required PlaygroundView value,
    required String tooltip,
  }) {
    final selected = view == value;
    final color = selected
        ? context.colors.onBackground
        : Colors.white.withValues(alpha: 0.5);
    return Expanded(
      child: Tooltip(
        message: tooltip,
        child: InkWell(
          onTap: () => context.read<HomeCubit>().setView(value),
          hoverColor: context.colors.surfaceVariant,
          child: Container(
            color: selected ? context.colors.surfaceVariant : null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PhosphorIcon(icon, size: 12, color: color),
                const SizedBox(width: 6),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                    height: 1.5,
                    fontVariations: [
                      FontVariation('wght', selected ? 600 : 400),
                    ],
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// `#AARRGGBB` string for Stac's color parser (the icon renderer takes a hex
/// string, not a Flutter [Color]).
String _hex(Color color) =>
    '#${color.toARGB32().toRadixString(16).padLeft(8, '0')}';

class _IndexRow extends StatelessWidget {
  const _IndexRow({
    required this.iconName,
    required this.iconType,
    required this.label,
    this.selected = false,
    this.showChangeDot = false,
    this.onTap,
  });

  /// Icon name resolved through Stac's icon parser, matching the mobile list.
  final String? iconName;
  final String iconType;
  final String label;
  final bool selected;
  final bool showChangeDot;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final color =
        selected ? context.colors.onBackground : context.colors.onBackground2;

    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: ListTile(
        onTap: onTap,
        selected: selected,
        selectedTileColor: context.colors.surfaceVariant,
        hoverColor: context.colors.surfaceVariant,
        // The index is an IDE-style file list, so it sits far tighter than a
        // stock tile: no vertical padding, and only as tall as the label.
        dense: true,
        visualDensity: VisualDensity.compact,
        minTileHeight: 24,
        minVerticalPadding: 0,
        minLeadingWidth: 14,
        horizontalTitleGap: 8,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        leading: SizedBox(
          width: 14,
          height: 14,
          child: iconName == null
              ? PhosphorIcon(
                  PhosphorIcons.bracketsAngle,
                  size: 12,
                  color: color,
                )
              : Stac.fromJson({
                  'type': 'icon',
                  'iconType': iconType,
                  'icon': iconName,
                  'size': 14,
                  'color': _hex(color),
                }, context),
        ),
        title: Text(
          label,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: color,
          ),
        ),
        trailing: !showChangeDot
            ? null
            : Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: context.colors.warning,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
      ),
    );
  }
}
