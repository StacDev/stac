import 'package:flutter/material.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:stac_playground/theme/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

/// The 48px icon rail on the far left: logo on top, utility and social
/// links pinned to the bottom.
class ConsoleIconRail extends StatelessWidget {
  const ConsoleIconRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      decoration: BoxDecoration(
        color: const Color(0x80101112),
        border: Border(right: BorderSide(color: context.colors.outline)),
      ),
      child: Column(
        spacing: 8,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/images/logo_console.png',
                height: 24,
                width: 24,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Spacer(),
          _RailIcon(
            icon: PhosphorIcons.fileText,
            tooltip: 'Documentation',
            onTap: () => launchUrl(Uri.parse('https://docs.stac.dev')),
          ),
          SizedBox(
            height: 13,
            child: Center(
              child: Container(
                width: 8,
                height: 1,
                color: Colors.white.withValues(alpha: 0.15),
              ),
            ),
          ),
          _RailIcon(
            icon: PhosphorIcons.githubLogo,
            tooltip: 'GitHub',
            onTap: () =>
                launchUrl(Uri.parse('https://github.com/StacDev/stac')),
          ),
          _RailIcon(
            icon: PhosphorIcons.linkedinLogo,
            tooltip: 'LinkedIn',
            onTap: () => launchUrl(
              Uri.parse('https://www.linkedin.com/company/stacdev'),
            ),
          ),
          _RailIcon(
            icon: PhosphorIcons.xLogo,
            tooltip: 'X',
            onTap: () => launchUrl(Uri.parse('https://x.com/stac_dev')),
          ),
          const SizedBox(height: 3),
        ],
      ),
    );
  }
}

class _RailIcon extends StatelessWidget {
  const _RailIcon({
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
        child: SizedBox(
          width: 48,
          height: 30,
          child: Center(
            child: PhosphorIcon(
              icon,
              size: 18,
              color: context.colors.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
