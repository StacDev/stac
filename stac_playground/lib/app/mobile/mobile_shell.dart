import 'dart:convert';
import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/dart.dart';
import 'package:re_highlight/languages/json.dart';
import 'package:stac/stac.dart';
import 'package:stac_playground/app/cubit/home_cubit.dart';
import 'package:stac_playground/app/cubit/home_state.dart';
import 'package:stac_playground/app/widgets/code_preview.dart';
import 'package:stac_playground/data/playground_entry.dart';
import 'package:url_launcher/url_launcher.dart';

/// Console mobile design tokens, mirrored for dark and light themes.
class MobileColors {
  const MobileColors({
    required this.surface,
    required this.surfaceBright,
    required this.container,
    required this.outline,
    required this.outlineVariant,
    required this.onSurface,
    required this.onSurfaceVariant,
    required this.onSurfaceVariantII,
    required this.secondary,
    required this.iconHex,
  });

  /// Values come from the Console Figma file's theme variables
  /// (Surface, On Surface, Outline, Secondary, ...) for each mode.
  factory MobileColors.of(bool dark) => dark
      ? const MobileColors(
          surface: Color(0xFF0B0B0D),
          surfaceBright: Color(0xFF101112),
          container: Color(0x0AFFFFFF),
          outline: Color(0x0FFFFFFF),
          outlineVariant: Color(0x1AFFFFFF),
          onSurface: Colors.white,
          onSurfaceVariant: Color(0xB2FFFFFF),
          onSurfaceVariantII: Color(0x80FFFFFF),
          secondary: Color(0xFF50D59D),
          iconHex: '#B2FFFFFF',
        )
      : const MobileColors(
          surface: Color(0xFFF3F3F3),
          surfaceBright: Colors.white,
          container: Color(0x0A07090A),
          outline: Color(0x1407090A),
          outlineVariant: Color(0x1F07090A),
          onSurface: Color(0xFF07090A),
          onSurfaceVariant: Color(0xB207090A),
          onSurfaceVariantII: Color(0x8007090A),
          secondary: Color(0xFF15803D),
          iconHex: '#B207090A',
        );

  final Color surface;
  final Color surfaceBright;
  final Color container;
  final Color outline;
  final Color outlineVariant;
  final Color onSurface;
  final Color onSurfaceVariant;
  final Color onSurfaceVariantII;

  /// Accent green (Console `Secondary` token, darker in light mode).
  final Color secondary;

  /// [onSurfaceVariant] as a hex string for Stac-rendered icons.
  final String iconHex;
}

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
          backgroundColor: colors.surface,
          body: SafeArea(
            child: Column(
              children: [
                _ExploreTopBar(colors: colors),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 40),
                    children: [
                      // Hero: Title Large, medium weight, 1.3 line height.
                      Text(
                        'Explore Screens,',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          height: 1.3,
                          fontVariations: const [FontVariation('wght', 500)],
                          color: colors.onSurface,
                        ),
                      ),
                      Text(
                        'Components, Code, etc',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          height: 1.3,
                          fontVariations: const [FontVariation('wght', 500)],
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 24),
                      _MobileSearchField(colors: colors),
                      const SizedBox(height: 24),
                      Text(
                        query.isEmpty
                            ? '${entries.length} COMPONENTS'
                            : '${entries.length} '
                                'RESULT${entries.length == 1 ? '' : 'S'}',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          height: 1.3,
                          letterSpacing: 1.04,
                          fontVariations: const [FontVariation('wght', 500)],
                          color: colors.onSurfaceVariantII,
                        ),
                      ),
                      const SizedBox(height: 10),
                      for (final entry in entries) ...[
                        _EntryCard(
                          entry: entry,
                          colors: colors,
                          onTap: () {
                            final cubit = context.read<HomeCubit>();
                            cubit.selectEntry(entry);
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
                        const SizedBox(height: 10),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// 56px top bar: circular logo, "Stac Playground" wordmark, menu icon.
class _ExploreTopBar extends StatelessWidget {
  const _ExploreTopBar({required this.colors});

  final MobileColors colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          const SizedBox(width: 16),
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: colors.outline),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/logo_console.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            'Stac',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 1.3,
              fontVariations: const [FontVariation('wght', 500)],
              color: colors.onSurface,
            ),
          ),
          const SizedBox(width: 7),
          Text(
            'Playground',
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: colors.secondary,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () => _openMenu(context),
            child: PhosphorIcon(
              PhosphorIcons.list,
              size: 20,
              color: colors.onSurface,
            ),
          ),
          const SizedBox(width: 18),
        ],
      ),
    );
  }
}

/// 48px search input: container fill, hairline border, 8px radius.
class _MobileSearchField extends StatelessWidget {
  const _MobileSearchField({required this.colors});

  final MobileColors colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: colors.container,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: colors.outlineVariant, width: 0.5),
      ),
      child: Row(
        children: [
          PhosphorIcon(
            PhosphorIcons.magnifyingGlass,
            size: 20,
            color: colors.onSurfaceVariantII,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              onChanged: (v) => context.read<HomeCubit>().setQuery(v),
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: colors.onSurface,
              ),
              decoration: InputDecoration(
                isCollapsed: true,
                border: InputBorder.none,
                hintText: 'Search..',
                hintStyle: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: colors.onSurfaceVariantII,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Component card: 8px radius container, circular icon chip, title and
/// description per the Console mobile design.
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
      borderRadius: BorderRadius.circular(8),
      child: Container(
        constraints: const BoxConstraints(minHeight: 94),
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: BoxDecoration(
          color: colors.container,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: colors.outlineVariant, width: 0.5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: colors.container,
                shape: BoxShape.circle,
              ),
              child: entry.icon == null
                  ? PhosphorIcon(
                      PhosphorIcons.square,
                      size: 16,
                      color: colors.onSurfaceVariant,
                    )
                  : SizedBox(
                      width: 16,
                      height: 16,
                      child: Stac.fromJson(
                        {
                          'type': 'icon',
                          'iconType': entry.iconType,
                          'icon': entry.icon,
                          'size': 16,
                          'color': colors.iconHex,
                        },
                        context,
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
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      fontVariations: const [FontVariation('wght', 600)],
                      color: colors.onSurface,
                    ),
                  ),
                  Text(
                    entry.description.isEmpty
                        ? 'Stac ${entry.id} example'
                        : entry.description,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Opens the full-screen menu overlay, per the Console mobile design.
void _openMenu(BuildContext context) {
  final cubit = context.read<HomeCubit>();
  showGeneralDialog<void>(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.transparent,
    transitionDuration: const Duration(milliseconds: 150),
    transitionBuilder: (_, animation, __, child) =>
        FadeTransition(opacity: animation, child: child),
    pageBuilder: (_, __, ___) => BlocProvider.value(
      value: cubit,
      child: const _MobileMenuOverlay(),
    ),
  );
}

/// Blurred surface overlay with plain link rows and the theme row.
class _MobileMenuOverlay extends StatelessWidget {
  const _MobileMenuOverlay();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (p, c) => p.mobileDark != c.mobileDark,
      builder: (context, state) {
        final colors = MobileColors.of(state.mobileDark);
        Widget row({required String label, required VoidCallback onTap}) =>
            InkWell(
              onTap: onTap,
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: colors.onSurface,
                  ),
                ),
              ),
            );
        final divider = Container(height: 1, color: colors.outline);
        return Material(
          color: Colors.transparent,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
            child: Container(
              color: colors.surface.withValues(alpha: 0.95),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 56,
                      child: Row(
                        children: [
                          const SizedBox(width: 16),
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: colors.outline),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/logo_console.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Stac',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 1.3,
                              fontVariations: const [
                                FontVariation('wght', 500),
                              ],
                              color: colors.onSurface,
                            ),
                          ),
                          const SizedBox(width: 7),
                          Text(
                            'Playground',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              color: colors.secondary,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: SizedBox(
                              width: 36,
                              height: 36,
                              child: Center(
                                child: PhosphorIcon(
                                  PhosphorIcons.x,
                                  size: 24,
                                  color: colors.onSurface,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 56,
                        vertical: 32,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          row(
                            label: 'Documentation',
                            onTap: () =>
                                launchUrl(Uri.parse('https://docs.stac.dev')),
                          ),
                          const SizedBox(height: 16),
                          divider,
                          const SizedBox(height: 16),
                          row(
                            label: 'Github',
                            onTap: () => launchUrl(
                              Uri.parse('https://github.com/StacDev/stac'),
                            ),
                          ),
                          const SizedBox(height: 16),
                          divider,
                          const SizedBox(height: 16),
                          row(
                            label: 'LinkedIn',
                            onTap: () => launchUrl(
                              Uri.parse(
                                'https://www.linkedin.com/company/stacdev',
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          divider,
                          const SizedBox(height: 16),
                          row(
                            label: 'X',
                            onTap: () => launchUrl(
                              Uri.parse('https://x.com/stac_dev'),
                            ),
                          ),
                          const SizedBox(height: 16),
                          divider,
                          const SizedBox(height: 16),
                          InkWell(
                            onTap: () => context
                                .read<HomeCubit>()
                                .setMobileDark(!state.mobileDark),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Theme',
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 1.5,
                                      color: colors.onSurface,
                                    ),
                                  ),
                                ),
                                Text(
                                  state.mobileDark ? 'Dark' : 'Light',
                                  style: TextStyle(
                                    fontSize: 16,
                                    height: 1.5,
                                    color: colors.onSurface,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                PhosphorIcon(
                                  state.mobileDark
                                      ? PhosphorIcons.moonStars
                                      : PhosphorIcons.sunDim,
                                  size: 20,
                                  color: colors.onSurface,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
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
          backgroundColor: colors.surface,
          body: SafeArea(
            child: Column(
              children: [
                // Header on surface-bright with hairline bottom border.
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: colors.surfaceBright,
                    border: Border(bottom: BorderSide(color: colors.outline)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: PhosphorIcon(
                            PhosphorIcons.caretLeft,
                            size: 20,
                            color: colors.onSurface,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          state.selectedEntry.title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                            fontVariations: const [FontVariation('wght', 500)],
                            color: colors.onSurface,
                          ),
                        ),
                      ),
                      // Toggles the component preview theme only; the app
                      // theme is switched from the explore drawer.
                      _HeaderIcon(
                        icon: state.darkMode
                            ? PhosphorIcons.sunDim
                            : PhosphorIcons.moonStars,
                        colors: colors,
                        onTap: () => context.read<HomeCubit>().toggleDarkMode(),
                      ),
                      const SizedBox(width: 4),
                      _HeaderIcon(
                        icon: PhosphorIcons.frameCorners,
                        colors: colors,
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => BlocProvider.value(
                              value: context.read<HomeCubit>(),
                              child: const _FullScreenPreview(),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                    ],
                  ),
                ),
                // Centered tab bar with the accent underline on the active tab.
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: colors.surfaceBright,
                    border: Border(bottom: BorderSide(color: colors.outline)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _MobileTab(
                        icon: PhosphorIcons.crop,
                        label: 'Preview',
                        active: _tab == 0,
                        colors: colors,
                        onTap: () => setState(() => _tab = 0),
                      ),
                      const SizedBox(width: 64),
                      _MobileTab(
                        customIcon: Opacity(
                          opacity: _tab == 1 ? 1 : 0.7,
                          child: Image.asset(
                            'assets/images/dart_logo.png',
                            width: 16,
                            height: 16,
                            fit: BoxFit.contain,
                          ),
                        ),
                        label: 'Dart',
                        active: _tab == 1,
                        colors: colors,
                        onTap: () => setState(() => _tab = 1),
                      ),
                      const SizedBox(width: 64),
                      _MobileTab(
                        icon: PhosphorIcons.fileCode,
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
          key: ValueKey('dart-${state.selectedEntry.id}-${state.mobileDark}'),
          text: state.dartCode,
          isDart: true,
          dark: state.mobileDark,
        );
      case 2:
        return _MobileCodeView(
          key: ValueKey('json-${state.selectedEntry.id}-${state.mobileDark}'),
          text: const JsonEncoder.withIndent('    ').convert(state.jsonData),
          isDart: false,
          dark: state.mobileDark,
        );
      default:
        return _MobilePreview(state: state);
    }
  }
}

/// 36px tappable header icon with 24px glyph.
class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon({
    required this.icon,
    required this.colors,
    required this.onTap,
  });

  final IconData icon;
  final MobileColors colors;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: SizedBox(
        width: 36,
        height: 36,
        child: Center(
          child: PhosphorIcon(icon, size: 24, color: colors.onSurfaceVariant),
        ),
      ),
    );
  }
}

class _MobileTab extends StatelessWidget {
  const _MobileTab({
    this.icon,
    this.customIcon,
    required this.label,
    required this.active,
    required this.colors,
    required this.onTap,
  });

  final IconData? icon;
  final Widget? customIcon;
  final String label;
  final bool active;
  final MobileColors colors;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = active ? colors.onSurface : colors.onSurfaceVariant;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active ? colors.secondary : Colors.transparent,
            ),
          ),
        ),
        child: Row(
          children: [
            customIcon ?? PhosphorIcon(icon!, size: 16, color: color),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(fontSize: 14, height: 1.5, color: color),
            ),
          ],
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
    final jsonData = state.jsonData;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const AppScrollBehavior(),
      // Follows the preview theme toggle in the detail header, independent
      // of the app theme.
      theme: state.darkMode ? ThemeData.dark() : ThemeData.light(),
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
          backgroundColor: colors.surface,
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
                      color: colors.surfaceBright.withValues(alpha: 0.9),
                      shape: BoxShape.circle,
                      border: Border.all(color: colors.outlineVariant),
                    ),
                    child: PhosphorIcon(
                      PhosphorIcons.x,
                      size: 16,
                      color: colors.onSurface,
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

/// Read-only code view with the console editor styling, in a dark
/// (VS Code Dark+) or light (VS Code Light+) variant following the app theme.
class _MobileCodeView extends StatefulWidget {
  const _MobileCodeView({
    super.key,
    required this.text,
    required this.isDart,
    required this.dark,
  });

  final String text;
  final bool isDart;
  final bool dark;

  @override
  State<_MobileCodeView> createState() => _MobileCodeViewState();
}

class _MobileCodeViewState extends State<_MobileCodeView> {
  late final _font = GoogleFonts.jetBrainsMono(
    fontSize: 12,
    color: widget.dark ? Colors.white : const Color(0xFF1F1F1F),
    height: 1.5,
  );
  late final CodeLineEditingController _controller =
      CodeLineEditingController.fromText(widget.text);

  Map<String, TextStyle> _theme() {
    final f = _font;
    if (widget.dark) {
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
    return {
      'root': f.copyWith(color: const Color(0xFF1F1F1F)),
      'punctuation': f.copyWith(color: const Color(0xFF3B3B3B)),
      'comment': f.copyWith(color: const Color(0xFF008000)),
      'keyword': f.copyWith(color: const Color(0xFF0000FF)),
      'literal': f.copyWith(color: const Color(0xFF0000FF)),
      'string': f.copyWith(color: const Color(0xFFA31515)),
      'number': f.copyWith(color: const Color(0xFF098658)),
      'attr': f.copyWith(color: const Color(0xFF0451A5)),
      'meta': f.copyWith(color: const Color(0xFF0451A5)),
      'title': f.copyWith(color: const Color(0xFF795E26)),
      'title.class': f.copyWith(color: const Color(0xFF267F99)),
      'built_in': f.copyWith(color: const Color(0xFF267F99)),
    };
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lineNumber = widget.dark
        ? Colors.white.withValues(alpha: 0.4)
        : Colors.black.withValues(alpha: 0.35);
    return Container(
      color: widget.dark ? const Color(0xFF101112) : const Color(0xFFF7F7F8),
      child: CodeEditor(
        controller: _controller,
        readOnly: true,
        style: CodeEditorStyle(
          fontFamily: 'JetBrainsMono',
          fontSize: 12,
          fontHeight: 1.5,
          textColor:
              widget.dark ? const Color(0xFFD4D4D4) : const Color(0xFF1F1F1F),
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
                textStyle: _font.copyWith(color: lineNumber),
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
