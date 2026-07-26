import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/dart.dart';
import 'package:re_highlight/languages/json.dart';
import 'package:re_highlight/re_highlight.dart';
import 'package:stac_playground/app/cubit/home_cubit.dart';
import 'package:stac_playground/app/cubit/home_state.dart';
import 'package:stac_playground/app/widgets/find_panel.dart';
import 'package:stac_playground/app/widgets/section_nav.dart';
import 'package:stac_playground/data/dsl_to_json.dart';
import 'package:stac_playground/theme/app_theme.dart';

/// re_highlight's Dart grammar is purely regex-based, so it only tags a few
/// things (class definitions, annotations, strings, numbers, keywords) and
/// leaves most identifiers as plain foreground text — which reads as washed
/// out next to VS Code. VS Code colors the rest with the analysis server's
/// semantic tokens, which we can't run here; instead we approximate them from
/// Dart's rigid naming conventions with a handful of extra match rules,
/// injected at the front of the grammar so they win over plain-text fallback.
/// Patched once, before the grammar is compiled on first use.
final Mode _dartHighlightMode = _patchDartMode();

// Lowercase words that must stay keyword-blue even when followed by `(`, so the
// call-expression rule below doesn't repaint control flow as a function name.
const String _dartKeywordGuard =
    r'(?!(?:if|for|while|switch|return|new|await|yield|assert|is|as|in|else|do'
    r'|try|catch|finally|throw|rethrow|break|continue|case|default|void|true'
    r'|false|null|var|final|const|late|required|super|this|typedef|extends'
    r'|implements|with|mixin|enum|class|import|export|part|library|show|hide'
    r'|get|set|factory|operator|async|sync)\b)';

Mode _patchDartMode() {
  langDart.contains?.insertAll(0, [
    // Named-argument labels — `fontSize:`, `child:` → parameter light-blue.
    Mode(className: 'property', begin: r'\b[a-z_][A-Za-z0-9_]*(?=\s*:)'),
    // Call expressions — `helloStac(`, `.only(`, `.all(` → function yellow.
    Mode(
      className: 'title.function',
      begin: '\\b$_dartKeywordGuard[a-z_][A-Za-z0-9_]*(?=\\s*\\()',
    ),
    // Member access after a dot — `.w600`, `.start`, `.maxFinite` → light-blue.
    Mode(className: 'property', begin: r'(?<=\.)[a-z_][A-Za-z0-9_]*'),
    // Type / constructor usages (UpperCamelCase) — `StacText` → class teal.
    Mode(className: 'title.class', begin: r'\b[A-Z][A-Za-z0-9_]*'),
  ]);
  return langDart;
}

/// Minimal context menu for the code editor, mirroring the Stac Console.
class _EditorContextMenuController implements SelectionToolbarController {
  const _EditorContextMenuController();

  @override
  void hide(BuildContext context) {}

  @override
  void show({
    required BuildContext context,
    required CodeLineEditingController controller,
    required TextSelectionToolbarAnchors anchors,
    Rect? renderRect,
    required LayerLink layerLink,
    required ValueNotifier<bool> visibility,
  }) {
    showMenu<void>(
      context: context,
      position: RelativeRect.fromSize(
        anchors.primaryAnchor & const Size(150, double.infinity),
        MediaQuery.sizeOf(context),
      ),
      items: [
        PopupMenuItem<void>(
          child: const Text('Cut'),
          onTap: () => controller.cut(),
        ),
        PopupMenuItem<void>(
          child: const Text('Copy'),
          onTap: () => controller.copy(),
        ),
        PopupMenuItem<void>(
          child: const Text('Paste'),
          onTap: () => controller.paste(),
        ),
      ],
    );
  }
}

/// The central editor pane: filename bar on top of the code editor.
///
/// With [languageOverride] set the pane is pinned to that language and the
/// Dart/JSON switcher is hidden — used by the side-by-side code diff view.
class EditorPanel extends StatelessWidget {
  const EditorPanel({super.key, this.languageOverride});

  final CodeLanguage? languageOverride;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.surface,
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            previous.selectedEntry.id != current.selectedEntry.id ||
            previous.dartCode != current.dartCode ||
            (languageOverride == null &&
                previous.codeLanguage != current.codeLanguage),
        builder: (context, state) {
          final language = languageOverride ?? state.codeLanguage;
          return _CodeEditorContent(
            key: ValueKey(
              '${state.selectedEntry.id}-$language-${languageOverride != null}',
            ),
            entryId: state.selectedEntry.id,
            language: language,
            showLanguageToggle: languageOverride == null,
          );
        },
      ),
    );
  }
}

class _CodeEditorContent extends StatefulWidget {
  const _CodeEditorContent({
    super.key,
    required this.entryId,
    required this.language,
    this.showLanguageToggle = true,
  });

  final String entryId;
  final CodeLanguage language;
  final bool showLanguageToggle;

  @override
  State<_CodeEditorContent> createState() => _CodeEditorContentState();
}

class _CodeEditorContentState extends State<_CodeEditorContent> {
  final _defaultFont = GoogleFonts.jetBrainsMono(
    fontSize: 13,
    color: Colors.white,
    height: 1.5,
  );

  late final String _baselineText;
  late final bool _baselineIsPristine;
  late final CodeLineEditingController _controller;
  late final CodeFindController _findController;
  String _lastText = '';

  /// Set when the Dart source falls outside the parseable subset, so the
  /// preview is showing the last good tree rather than the current text.
  String? _dslError;

  /// Reparsing the whole tree and rebuilding the preview on every keystroke is
  /// wasted work on the larger examples, so coalesce bursts of typing.
  Timer? _previewDebounce;
  static const _previewDelay = Duration(milliseconds: 200);

  bool get _isDart => widget.language == CodeLanguage.dart;

  static String _formatJson(Map<String, dynamic> json) {
    return const JsonEncoder.withIndent('    ').convert(json);
  }

  @override
  void initState() {
    super.initState();
    final state = context.read<HomeCubit>().state;
    if (_isDart) {
      _baselineText = state.dartCode;
      _baselineIsPristine = true;
    } else {
      // The current jsonData carries in-progress edits across language/view
      // switches; it equals the entry's JSON when unedited.
      var text = '';
      try {
        text = _formatJson(state.jsonData);
      } catch (_) {}
      _baselineText = text;
      _baselineIsPristine = !state.edited;
    }
    _lastText = _baselineText;
    _controller = CodeLineEditingController.fromText(_baselineText);
    _controller.addListener(_onEditorChanged);
    _findController = CodeFindController(_controller);
  }

  void _onEditorChanged() {
    final text = _controller.text;
    if (text == _lastText) return;
    _lastText = text;
    final cubit = context.read<HomeCubit>();
    if (_baselineIsPristine) {
      cubit.setEdited(text != _baselineText);
    } else if (text != _baselineText) {
      cubit.setEdited(true);
    }
    // The dirty indicator above stays immediate; only the parse and re-render
    // wait for typing to settle.
    _previewDebounce?.cancel();
    _previewDebounce = Timer(_previewDelay, () => _refreshPreview(text));
  }

  /// Dart goes through the DSL subset parser, JSON is decoded directly; either
  /// way the preview renders from the resulting widget map. When the source
  /// can't be converted the last good preview stays put.
  void _refreshPreview(String text) {
    if (!mounted) return;
    final result = parseEditorSource(text, isDart: _isDart);
    final json = result.json;
    if (json != null) context.read<HomeCubit>().updateJsonData(json);
    _setDslError(result.message);
  }

  void _setDslError(String? message) {
    if (!mounted || _dslError == message) return;
    setState(() => _dslError = message);
  }

  @override
  void dispose() {
    _previewDebounce?.cancel();
    _controller.removeListener(_onEditorChanged);
    _controller.dispose();
    super.dispose();
  }

  /// VS Code Dark+–style colors, same as the Stac Console editor.
  Map<String, TextStyle> _editorTheme() {
    final font = _defaultFont;
    const foreground = Color(0xFFD4D4D4);
    const string = Color(0xFFCE9178);
    const key = Color(0xFF9CDCFE);
    const number = Color(0xFFB5CEA8);
    const keywordLiteral = Color(0xFF569CD6);
    const comment = Color(0xFF6A9955);
    const bracketYellow = Color(0xFFD7BA7D);
    return {
      'root': font.copyWith(color: foreground),
      'punctuation': font.copyWith(color: bracketYellow),
      'bracket': font.copyWith(color: bracketYellow),
      'brace': font.copyWith(color: bracketYellow),
      'tag': font.copyWith(color: bracketYellow),
      'comment': font.copyWith(color: comment),
      'quote': font.copyWith(color: comment),
      'keyword': font.copyWith(color: keywordLiteral),
      'name': font.copyWith(color: key),
      'literal': font.copyWith(color: keywordLiteral),
      'string': font.copyWith(color: string),
      'number': font.copyWith(color: number),
      'property': font.copyWith(color: key),
      'attr': font.copyWith(color: key),
      // Dart-specific scopes (annotations, types, function names).
      'title': font.copyWith(color: const Color(0xFFDCDCAA)),
      'title.class': font.copyWith(color: const Color(0xFF4EC9B0)),
      'title.function': font.copyWith(color: const Color(0xFFDCDCAA)),
      'built_in': font.copyWith(color: const Color(0xFF4EC9B0)),
      'meta': font.copyWith(color: key),
      'variable': font.copyWith(color: key),
      'params': font.copyWith(color: foreground),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionNav(
          child: Row(
            children: [
              const SizedBox(width: 12),
              Expanded(
                child: Row(
                  children: [
                    BlocBuilder<HomeCubit, HomeState>(
                      buildWhen: (previous, current) =>
                          previous.edited != current.edited,
                      builder: (context, state) => PhosphorIcon(
                        PhosphorIcons.bracketsAngle,
                        size: 14,
                        color: state.edited && !_isDart
                            ? context.colors.warning
                            : context.colors.onBackground,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        '${widget.entryId}.${_isDart ? 'dart' : 'json'}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          color: context.colors.onBackground,
                        ),
                      ),
                    ),
                    if (widget.showLanguageToggle) ...[
                      const SizedBox(width: 12),
                      _LanguageToggle(language: widget.language),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: 12),
              _NavIcon(
                icon: PhosphorIcons.magnifyingGlass,
                tooltip: 'Search',
                onTap: () {
                  _findController.findMode();
                  _findController.focusOnFindInput();
                },
              ),
              if (!_isDart) ...[
                const SizedBox(width: 12),
                const NavDivider(),
                const SizedBox(width: 12),
                _NavIcon(
                  icon: PhosphorIcons.arrowCounterClockwise,
                  tooltip: 'Undo',
                  onTap: () => _controller.undo(),
                ),
                const SizedBox(width: 12),
                _NavIcon(
                  icon: PhosphorIcons.arrowClockwise,
                  tooltip: 'Redo',
                  onTap: () => _controller.redo(),
                ),
              ],
              const SizedBox(width: 12),
              const NavDivider(),
              const SizedBox(width: 12),
              _CopyCodeButton(
                onCopy: () => Clipboard.setData(
                  ClipboardData(text: _controller.text),
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
        Expanded(
          child: CodeEditor(
            controller: _controller,
            findController: _findController,
            readOnly: false,
            style: CodeEditorStyle(
              fontFamily: 'JetBrainsMono',
              fontSize: 13,
              fontHeight: 1.5,
              codeTheme: CodeHighlightTheme(
                languages: _isDart
                    ? {'dart': CodeHighlightThemeMode(mode: _dartHighlightMode)}
                    : {'json': CodeHighlightThemeMode(mode: langJson)},
                theme: _editorTheme(),
              ),
            ),
            wordWrap: false,
            indicatorBuilder: (
              context,
              editingController,
              chunkController,
              notifier,
            ) {
              return Row(
                children: [
                  const SizedBox(width: 12),
                  DefaultCodeLineNumber(
                    controller: editingController,
                    notifier: notifier,
                    textStyle: _defaultFont.copyWith(
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                    focusedTextStyle: _defaultFont,
                  ),
                  const SizedBox(width: 2),
                  DefaultCodeChunkIndicator(
                    width: 20,
                    controller: chunkController,
                    notifier: notifier,
                  ),
                ],
              );
            },
            findBuilder: (context, controller, readOnly) => CodeFindPanelView(
              controller: controller,
              readOnly: readOnly,
            ),
            toolbarController: const _EditorContextMenuController(),
          ),
        ),
        if (_isDart && _dslError != null) _dslNotice(context, _dslError!),
      ],
    );
  }

  /// Status strip shown when the Dart source can't be turned into JSON, so it's
  /// obvious the preview has stopped following the editor.
  Widget _dslNotice(BuildContext context, String message) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      color: const Color(0xFF3A2D00),
      child: Row(
        children: [
          const PhosphorIcon(
            PhosphorIcons.warningDiamond,
            size: 14,
            color: Color(0xFFE2C08D),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'Preview not updated — $message',
              style: const TextStyle(
                fontSize: 11,
                height: 1.4,
                color: Color(0xFFE2C08D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Segmented Dart/JSON switcher: Dart shows the Stac DSL source, JSON the
/// deployed output that `stac build` generates from it.
class _LanguageToggle extends StatelessWidget {
  const _LanguageToggle({required this.language});

  final CodeLanguage language;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: context.colors.outline2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _segment(context, label: 'Dart', value: CodeLanguage.dart),
          Container(width: 1, color: context.colors.outline2),
          _segment(context, label: 'JSON', value: CodeLanguage.json),
        ],
      ),
    );
  }

  Widget _segment(
    BuildContext context, {
    required String label,
    required CodeLanguage value,
  }) {
    final selected = language == value;
    return Tooltip(
      message: value == CodeLanguage.dart
          ? 'Stac DSL source (compiled to JSON by stac build)'
          : 'Deployed JSON output',
      child: InkWell(
        onTap: () => context.read<HomeCubit>().setCodeLanguage(value),
        hoverColor: context.colors.surfaceVariant,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          color: selected ? context.colors.surfaceVariant : null,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                height: 1.5,
                fontVariations: [
                  FontVariation('wght', selected ? 600 : 400),
                ],
                color: selected
                    ? context.colors.onBackground
                    : Colors.white.withValues(alpha: 0.5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavIcon extends StatelessWidget {
  const _NavIcon({
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

class _CopyCodeButton extends StatefulWidget {
  const _CopyCodeButton({required this.onCopy});

  final VoidCallback onCopy;

  @override
  State<_CopyCodeButton> createState() => _CopyCodeButtonState();
}

class _CopyCodeButtonState extends State<_CopyCodeButton> {
  bool _copied = false;

  void _handleTap() {
    widget.onCopy();
    setState(() => _copied = true);
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) setState(() => _copied = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _handleTap,
      hoverColor: context.colors.surfaceVariant,
      child: Container(
        height: 24,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: context.colors.surfaceVariant,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: context.colors.outline2),
        ),
        child: Center(
          child: Text(
            _copied ? 'Copied!' : 'Copy Code',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              height: 1.5,
              fontVariations: const [FontVariation('wght', 600)],
              color: _copied
                  ? context.colors.secondary
                  : context.colors.onBackground2,
            ),
          ),
        ),
      ),
    );
  }
}
