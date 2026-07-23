import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/dart.dart';
import 'package:re_highlight/languages/json.dart';
import 'package:stac/stac.dart';
import 'package:stac_playground/app/cubit/home_cubit.dart';
import 'package:stac_playground/app/cubit/home_state.dart';
import 'package:stac_playground/app/widgets/code_preview.dart';
import 'package:stac_playground/data/playground_entry.dart';
import 'package:url_launcher/url_launcher.dart';

/// Palette for the mobile UI, following the Console mobile designs in both
/// dark and light themes.
class MobileColors {
  const MobileColors({
    required this.background,
    required this.card,
    required this.tile,
    required this.textPrimary,
    required this.textSecondary,
    required this.outline,
  });

  factory MobileColors.of(bool dark) => dark
      ? const MobileColors(
          background: Color(0xFF0B0B0D),
          card: Color(0xFF17181A),
          tile: Color(0xFF2A2B2E),
          textPrimary: Colors.white,
          textSecondary: Color(0x99FFFFFF),
          outline: Color(0x1AFFFFFF),
        )
      : const MobileColors(
          background: Colors.white,
          card: Color(0xFFEFEFEF),
          tile: Color(0xFFD9D9D9),
          textPrimary: Color(0xFF111111),
          textSecondary: Color(0x99111111),
          outline: Color(0x1A000000),
        );

  final Color background;
  final Color card;
  final Color tile;
  final Color textPrimary;
  final Color textSecondary;
  final Color outline;
}

const Color _accent = Color(0xFF27BA68);

/// Root of the mobile experience: the explore list.
class MobileShell extends StatelessWidget {
  const MobileShell({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileExploreScreen();
  }
}

class MobileExploreScreen extends StatelessWidget {
  const MobileExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (p, c) => p.mobileDark != c.mobileDark || p.query != c.query,
      builder: (context, state) {
        final colors = MobileColors.of(state.mobileDark);
        final query = state.query.toLowerCase();
        final entries = playgroundEntries
            .where((e) =>
                query.isEmpty ||
                e.id.contains(query) ||
                e.title.toLowerCase().contains(query))
            .toList();
        return Scaffold(
          backgroundColor: colors.background,
          endDrawer: _MobileDrawer(colors: colors, dark: state.mobileDark),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  _ExploreHeader(colors: colors),
                  const SizedBox(height: 28),
                  Text(
                    'Explore Screens,',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                      fontVariations: const [FontVariation('wght', 600)],
                      color: colors.textPrimary,
                    ),
                  ),
                  Text(
                    'Components, Code, etc',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                      fontVariations: const [FontVariation('wght', 600)],
                      color: colors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _MobileSearchField(colors: colors),
                  const SizedBox(height: 20),
                  Text(
                    '${entries.length} COMPONENTS',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.88,
                      fontVariations: const [FontVariation('wght', 500)],
                      color: colors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.only(bottom: 16),
                      itemCount: entries.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 10),
                      itemBuilder: (context, i) => _EntryCard(
                        entry: entries[i],
                        colors: colors,
                        onTap: () {
                          final cubit = context.read<HomeCubit>();
                          cubit.selectEntry(entries[i]);
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => BlocProvider.value(
                                value: cubit,
                                child: const MobileDetailScreen(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ExploreHeader extends StatelessWidget {
  const _ExploreHeader({required this.colors});

  final MobileColors colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            'assets/images/logo_console.png',
            width: 26,
            height: 26,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          'Stac',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            fontVariations: const [FontVariation('wght', 700)],
            color: colors.textPrimary,
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          'Playground',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontVariations: [FontVariation('wght', 500)],
            color: _accent,
          ),
        ),
        const Spacer(),
        Builder(
          builder: (context) => InkWell(
            onTap: () => Scaffold.of(context).openEndDrawer(),
            child: PhosphorIcon(
              PhosphorIcons.list(),
              size: 22,
              color: colors.textPrimary,
            ),
          ),
        ),
      ],
    );
  }
}

class _MobileSearchField extends StatelessWidget {
  const _MobileSearchField({required this.colors});

  final MobileColors colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 14),
          PhosphorIcon(
            PhosphorIcons.magnifyingGlass(),
            size: 18,
            color: colors.textSecondary,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              onChanged: (v) => context.read<HomeCubit>().setQuery(v),
              style: TextStyle(fontSize: 15, color: colors.textPrimary),
              decoration: InputDecoration(
                isCollapsed: true,
                border: InputBorder.none,
                hintText: 'Search..',
                hintStyle: TextStyle(fontSize: 15, color: colors.textSecondary),
              ),
            ),
          ),
          const SizedBox(width: 14),
        ],
      ),
    );
  }
}

class _EntryCard extends StatelessWidget {
  const _EntryCard({
    required this.entry,
    required this.colors,
    required this.onTap,
  });

  final PlaygroundEntry entry;
  final MobileColors colors;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: colors.card,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: colors.tile,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: PhosphorIcon(
                  PhosphorIcons.bracketsAngle(),
                  size: 14,
                  color: colors.textSecondary,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontVariations: const [FontVariation('wght', 600)],
                      color: colors.textPrimary,
                    ),
                  ),
                  if (entry.description.isNotEmpty) ...[
                    const SizedBox(height: 3),
                    Text(
                      entry.description,
                      style: TextStyle(
                        fontSize: 13,
                        height: 1.4,
                        color: colors.textSecondary,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MobileDrawer extends StatelessWidget {
  const _MobileDrawer({required this.colors, required this.dark});

  final MobileColors colors;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    ListTile link(IconData icon, String label, String url) => ListTile(
          leading: PhosphorIcon(icon, size: 20, color: colors.textSecondary),
          title: Text(label, style: TextStyle(color: colors.textPrimary)),
          onTap: () => launchUrl(Uri.parse(url)),
        );
    return Drawer(
      backgroundColor: colors.background,
      child: SafeArea(
        child: ListView(
          children: [
            SwitchListTile(
              secondary: PhosphorIcon(
                dark ? PhosphorIcons.moonStars() : PhosphorIcons.sunDim(),
                size: 20,
                color: colors.textSecondary,
              ),
              title: Text(
                'Dark theme',
                style: TextStyle(color: colors.textPrimary),
              ),
              value: dark,
              activeColor: _accent,
              onChanged: (v) => context.read<HomeCubit>().setMobileDark(v),
            ),
            Divider(color: colors.outline),
            link(PhosphorIcons.fileText(), 'Documentation',
                'https://docs.stac.dev'),
            link(PhosphorIcons.githubLogo(), 'GitHub',
                'https://github.com/StacDev/stac'),
            link(PhosphorIcons.linkedinLogo(), 'LinkedIn',
                'https://www.linkedin.com/company/stacdev'),
            link(PhosphorIcons.xLogo(), 'X', 'https://x.com/stac_dev'),
          ],
        ),
      ),
    );
  }
}

/// Component detail: Preview / Dart / JSON tabs, per the Console mobile design.
class MobileDetailScreen extends StatefulWidget {
  const MobileDetailScreen({super.key});

  @override
  State<MobileDetailScreen> createState() => _MobileDetailScreenState();
}

class _MobileDetailScreenState extends State<MobileDetailScreen> {
  int _tab = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final colors = MobileColors.of(state.mobileDark);
        return Scaffold(
          backgroundColor: colors.background,
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: PhosphorIcon(
                          PhosphorIcons.caretLeft(),
                          size: 20,
                          color: colors.textPrimary,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          state.selectedEntry.title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            fontVariations: const [FontVariation('wght', 600)],
                            color: colors.textPrimary,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => context
                            .read<HomeCubit>()
                            .setMobileDark(!state.mobileDark),
                        child: PhosphorIcon(
                          state.mobileDark
                              ? PhosphorIcons.sun()
                              : PhosphorIcons.moonStars(),
                          size: 20,
                          color: colors.textPrimary,
                        ),
                      ),
                      const SizedBox(width: 16),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => BlocProvider.value(
                              value: context.read<HomeCubit>(),
                              child: const _FullScreenPreview(),
                            ),
                          ),
                        ),
                        child: PhosphorIcon(
                          PhosphorIcons.cornersOut(),
                          size: 20,
                          color: colors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: colors.outline)),
                  ),
                  child: Row(
                    children: [
                      _MobileTab(
                        icon: PhosphorIcons.crop(),
                        label: 'Preview',
                        active: _tab == 0,
                        colors: colors,
                        onTap: () => setState(() => _tab = 0),
                      ),
                      _MobileTab(
                        icon: PhosphorIcons.code(),
                        label: 'Dart',
                        active: _tab == 1,
                        colors: colors,
                        onTap: () => setState(() => _tab = 1),
                      ),
                      _MobileTab(
                        icon: PhosphorIcons.bracketsCurly(),
                        label: 'JSON',
                        active: _tab == 2,
                        colors: colors,
                        onTap: () => setState(() => _tab = 2),
                      ),
                    ],
                  ),
                ),
                Expanded(child: _tabBody(state)),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _tabBody(HomeState state) {
    switch (_tab) {
      case 1:
        return _MobileCodeView(
          key: ValueKey('dart-${state.selectedEntry.id}'),
          text: state.dartCode,
          isDart: true,
        );
      case 2:
        return _MobileCodeView(
          key: ValueKey('json-${state.selectedEntry.id}'),
          text: const JsonEncoder.withIndent('    ').convert(
            jsonDecode(state.jsonElement.toPrettyString()),
          ),
          isDart: false,
        );
      default:
        return _MobilePreview(state: state);
    }
  }
}

class _MobileTab extends StatelessWidget {
  const _MobileTab({
    required this.icon,
    required this.label,
    required this.active,
    required this.colors,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool active;
  final MobileColors colors;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = active ? colors.textPrimary : colors.textSecondary;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: active ? colors.textPrimary : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PhosphorIcon(icon, size: 15, color: color),
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: active ? FontWeight.w600 : FontWeight.w400,
                  fontVariations: [
                    FontVariation('wght', active ? 600 : 400),
                  ],
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MobilePreview extends StatelessWidget {
  const _MobilePreview({required this.state});

  final HomeState state;

  @override
  Widget build(BuildContext context) {
    final jsonData =
        jsonDecode(state.jsonElement.toPrettyString()) as Map<String, dynamic>;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const AppScrollBehavior(),
      theme: state.mobileDark ? ThemeData.dark() : ThemeData.light(),
      home: Stac.fromJson(jsonData, context),
    );
  }
}

class _FullScreenPreview extends StatelessWidget {
  const _FullScreenPreview();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final colors = MobileColors.of(state.mobileDark);
        return Scaffold(
          backgroundColor: colors.background,
          body: Stack(
            children: [
              Positioned.fill(child: _MobilePreview(state: state)),
              Positioned(
                top: MediaQuery.of(context).padding.top + 8,
                right: 16,
                child: InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: colors.card.withValues(alpha: 0.85),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: PhosphorIcon(
                      PhosphorIcons.x(),
                      size: 16,
                      color: colors.textPrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Read-only code view with the console editor styling.
class _MobileCodeView extends StatefulWidget {
  const _MobileCodeView({super.key, required this.text, required this.isDart});

  final String text;
  final bool isDart;

  @override
  State<_MobileCodeView> createState() => _MobileCodeViewState();
}

class _MobileCodeViewState extends State<_MobileCodeView> {
  final _font = GoogleFonts.jetBrainsMono(
    fontSize: 12,
    color: Colors.white,
    height: 1.5,
  );
  late final CodeLineEditingController _controller =
      CodeLineEditingController.fromText(widget.text);

  Map<String, TextStyle> _theme() {
    final f = _font;
    return {
      'root': f.copyWith(color: const Color(0xFFD4D4D4)),
      'punctuation': f.copyWith(color: const Color(0xFFD7BA7D)),
      'comment': f.copyWith(color: const Color(0xFF6A9955)),
      'keyword': f.copyWith(color: const Color(0xFF569CD6)),
      'literal': f.copyWith(color: const Color(0xFF569CD6)),
      'string': f.copyWith(color: const Color(0xFFCE9178)),
      'number': f.copyWith(color: const Color(0xFFB5CEA8)),
      'attr': f.copyWith(color: const Color(0xFF9CDCFE)),
      'meta': f.copyWith(color: const Color(0xFF9CDCFE)),
      'title': f.copyWith(color: const Color(0xFFDCDCAA)),
      'title.class': f.copyWith(color: const Color(0xFF4EC9B0)),
      'built_in': f.copyWith(color: const Color(0xFF4EC9B0)),
    };
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF101112),
      child: CodeEditor(
        controller: _controller,
        readOnly: true,
        style: CodeEditorStyle(
          fontFamily: 'JetBrainsMono',
          fontSize: 12,
          fontHeight: 1.5,
          codeTheme: CodeHighlightTheme(
            languages: widget.isDart
                ? {'dart': CodeHighlightThemeMode(mode: langDart)}
                : {'json': CodeHighlightThemeMode(mode: langJson)},
            theme: _theme(),
          ),
        ),
        wordWrap: false,
        indicatorBuilder:
            (context, editingController, chunkController, notifier) {
          return Row(
            children: [
              const SizedBox(width: 8),
              DefaultCodeLineNumber(
                controller: editingController,
                notifier: notifier,
                textStyle:
                    _font.copyWith(color: Colors.white.withValues(alpha: 0.4)),
                focusedTextStyle: _font,
              ),
              const SizedBox(width: 8),
            ],
          );
        },
      ),
    );
  }
}
