import 'package:flutter/material.dart';
import 'package:stac_playground/theme/app_theme.dart';

/// 44px header bar used at the top of the editor and preview panes.
class SectionNav extends StatelessWidget {
  const SectionNav({super.key, required this.child});

  final Widget child;

  static const double height = 44;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: const Color(0x800B0B0D),
        border: Border(bottom: BorderSide(color: context.colors.outline)),
      ),
      child: child,
    );
  }
}

/// Short vertical hairline separating groups of actions in a [SectionNav].
class NavDivider extends StatelessWidget {
  const NavDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 10,
      color: Colors.white.withValues(alpha: 0.15),
    );
  }
}
