import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stac_playground/app/cubit/home_cubit.dart';
import 'package:stac_playground/app/cubit/home_state.dart';
import 'package:stac_playground/app/widgets/code_preview.dart';
import 'package:stac_playground/app/widgets/console_icon_rail.dart';
import 'package:stac_playground/app/widgets/editor_panel.dart';
import 'package:stac_playground/app/mobile/mobile_shell.dart';
import 'package:stac_playground/app/widgets/index_panel.dart';
import 'package:stac_playground/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Narrow viewports (and mobile builds) get the Console mobile UI; the
    // desktop web console renders above this breakpoint.
    if (MediaQuery.sizeOf(context).width < 700) {
      return const MobileShell();
    }
    return Scaffold(
      backgroundColor: context.colors.background,
      body: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            previous.showCodeView != current.showCodeView ||
            previous.view != current.view,
        builder: (context, state) {
          if (state.view == PlaygroundView.codeDiff) {
            return Row(
              children: [
                const ConsoleIconRail(),
                const IndexPanel(),
                const Expanded(
                  child: EditorPanel(languageOverride: CodeLanguage.dart),
                ),
                Container(width: 1, color: context.colors.outline),
                const Expanded(
                  child: EditorPanel(languageOverride: CodeLanguage.json),
                ),
              ],
            );
          }
          return LayoutBuilder(
            builder: (context, constraints) {
              // 560 like the console design, shrinking on narrow windows so
              // the editor keeps a usable width.
              final previewWidth =
                  (constraints.maxWidth * 0.36).clamp(400.0, 560.0);
              return Row(
                children: [
                  const ConsoleIconRail(),
                  const IndexPanel(),
                  if (state.showCodeView) ...[
                    const Expanded(child: EditorPanel()),
                    SizedBox(width: previewWidth, child: const CodePreview()),
                  ] else
                    const Expanded(child: CodePreview()),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
