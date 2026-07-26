import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:stac/stac.dart';
import 'package:stac_playground/app/cubit/home_cubit.dart';
import 'package:stac_playground/app/cubit/home_state.dart';
import 'package:stac_playground/app/widgets/section_nav.dart';
import 'package:stac_playground/theme/app_theme.dart';

/// The right-hand preview pane: theme/device/zoom controls on top of a
/// live device frame rendering the current Stac JSON.
class CodePreview extends StatelessWidget {
  const CodePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final jsonData = state.jsonData;
        return Container(
          decoration: BoxDecoration(
            color: context.colors.background,
            border: Border(left: BorderSide(color: context.colors.outline)),
          ),
          child: Column(
            children: [
              _PreviewNav(state: state),
              Expanded(
                child: jsonData.isEmpty
                    ? const _EmptyPreview()
                    : _DeviceFrame(state: state, jsonData: jsonData),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PreviewNav extends StatelessWidget {
  const _PreviewNav({required this.state});

  final HomeState state;

  @override
  Widget build(BuildContext context) {
    return SectionNav(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(width: 12),
          Center(
            child: Tooltip(
              message: state.showCodeView ? 'Hide editor' : 'Show editor',
              child: InkWell(
                onTap: () => context.read<HomeCubit>().toggleCodeView(),
                hoverColor: context.colors.surfaceVariant,
                child: PhosphorIcon(
                  state.showCodeView
                      ? PhosphorIcons.caretLineLeft
                      : PhosphorIcons.caretLineRight,
                  size: 18,
                  color: context.colors.onBackground2,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          const Center(child: NavDivider()),
          const SizedBox(width: 12),
          Center(child: _ThemeSelector(darkMode: state.darkMode)),
          const Spacer(),
          Center(
            child: _NavIconButton(
              icon: PhosphorIcons.magnifyingGlassPlus,
              tooltip: 'Zoom in',
              onTap: () => context.read<HomeCubit>().increaseScale(),
            ),
          ),
          const SizedBox(width: 12),
          Center(
            child: _NavIconButton(
              icon: PhosphorIcons.magnifyingGlassMinus,
              tooltip: 'Zoom out (${(state.scale * 100).toInt()}%)',
              onTap: () => context.read<HomeCubit>().reduceScale(),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}

class _ThemeSelector extends StatelessWidget {
  const _ThemeSelector({required this.darkMode});

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      menuChildren: [
        for (final dark in [true, false])
          MenuItemButton(
            onPressed: () {
              if (darkMode != dark) {
                context.read<HomeCubit>().toggleDarkMode();
              }
            },
            child: Text(
              dark ? 'Dark Theme' : 'Light Theme',
              style: TextStyle(
                fontSize: 12,
                height: 1.5,
                color: context.colors.onBackground,
              ),
            ),
          ),
      ],
      builder: (context, controller, child) => InkWell(
        onTap: () => controller.isOpen ? controller.close() : controller.open(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'THEME',
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w500,
                height: 1.3,
                letterSpacing: 0.72,
                fontVariations: const [FontVariation('wght', 500)],
                color: Colors.white.withValues(alpha: 0.5),
              ),
            ),
            Row(
              children: [
                Text(
                  darkMode ? 'Dark Theme' : 'Light Theme',
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.5,
                    color: context.colors.onBackground,
                  ),
                ),
                const SizedBox(width: 4),
                PhosphorIcon(
                  PhosphorIcons.caretDown,
                  size: 10,
                  color: context.colors.onBackground,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NavIconButton extends StatelessWidget {
  const _NavIconButton({
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: InkWell(
        onTap: onTap,
        hoverColor: context.colors.surfaceVariant,
        child: PhosphorIcon(
          icon,
          size: 18,
          color: context.colors.onBackground2,
        ),
      ),
    );
  }
}

class _DeviceFrame extends StatelessWidget {
  const _DeviceFrame({required this.state, required this.jsonData});

  final HomeState state;
  final Map<String, dynamic> jsonData;

  @override
  Widget build(BuildContext context) {
    const frameSize = Size(390, 844);
    const radius = 40.0;

    // Built outside the scroll/fit wrappers so the nested MaterialApp is
    // never (re)inflated during layout.
    final frame = Container(
      width: frameSize.width,
      height: frameSize.height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: Colors.white.withValues(alpha: 0.15)),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withValues(alpha: 0.04),
            blurRadius: 40,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          scrollBehavior: const AppScrollBehavior(),
          theme: state.darkMode ? ThemeData.dark() : ThemeData.light(),
          home: Stac.fromJson(jsonData, context),
        ),
      ),
    );

    return ScrollConfiguration(
      behavior: const AppScrollBehavior(),
      child: SingleChildScrollView(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: SizedBox.fromSize(
                size: frameSize * state.scale,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: frame,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyPreview extends StatelessWidget {
  const _EmptyPreview();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PhosphorIcon(
          PhosphorIcons.swatchesThin,
          size: 96,
          color: context.colors.onBackground.withValues(alpha: 0.24),
        ),
        const SizedBox(height: 16),
        Text(
          'Select a sample or write a code\nto start preview',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 1.5,
            color: context.colors.onBackground.withValues(alpha: 0.24),
          ),
        )
      ],
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  const AppScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
