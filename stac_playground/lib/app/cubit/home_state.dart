import 'package:stac_playground/data/playground_entry.dart';

/// The language shown in the code editor. Dart is the Stac DSL source that
/// `stac build` compiles to the deployed JSON.
enum CodeLanguage { dart, json }

/// Top-level playground layout: editor + live preview, or Dart and JSON
/// editors side by side with no preview.
enum PlaygroundView { preview, codeDiff }

class HomeState {
  HomeState({
    required this.jsonData,
    required this.selectedEntry,
    this.dartCode = '',
    this.showCodeView = true,
    this.scale = 1.0,
    this.darkMode = false,
    this.edited = false,
    this.codeLanguage = CodeLanguage.dart,
    this.view = PlaygroundView.preview,
    this.query = '',
    this.mobileDark = true,
  });

  /// The widget tree currently rendered by the preview.
  final Map<String, dynamic> jsonData;
  final PlaygroundEntry selectedEntry;

  /// Dart DSL source for [selectedEntry] (inline or loaded from assets).
  final String dartCode;
  final bool showCodeView;
  final double scale;
  final bool darkMode;
  final CodeLanguage codeLanguage;
  final PlaygroundView view;

  /// Search query filtering the entry index.
  final String query;

  /// Whether the mobile UI renders in dark theme.
  final bool mobileDark;

  /// Whether the JSON has been modified since the entry was loaded.
  final bool edited;

  HomeState copyWith({
    Map<String, dynamic>? jsonData,
    PlaygroundEntry? selectedEntry,
    String? dartCode,
    bool? showCodeView,
    double? scale,
    bool? darkMode,
    bool? edited,
    CodeLanguage? codeLanguage,
    PlaygroundView? view,
    String? query,
    bool? mobileDark,
  }) {
    return HomeState(
      jsonData: jsonData ?? this.jsonData,
      selectedEntry: selectedEntry ?? this.selectedEntry,
      dartCode: dartCode ?? this.dartCode,
      showCodeView: showCodeView ?? this.showCodeView,
      scale: scale ?? this.scale,
      darkMode: darkMode ?? this.darkMode,
      edited: edited ?? this.edited,
      codeLanguage: codeLanguage ?? this.codeLanguage,
      view: view ?? this.view,
      query: query ?? this.query,
      mobileDark: mobileDark ?? this.mobileDark,
    );
  }
}
