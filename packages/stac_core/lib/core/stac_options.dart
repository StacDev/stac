/// Immutable configuration for Stac projects and exports.
///
/// Use `StacOptions` to describe your project's identity and where Stac
/// should read source files and write generated output.
///
/// Example:
/// ```dart
/// const options = StacOptions(
///   name: 'MyProject',
///   projectId: 'my_project_id',
///   // Override the runtime API endpoint for local debugging:
///   // apiBaseUrl: 'http://127.0.0.1:45700',
///   // apiKey: '...optional...',
///   // Override paths if needed (absolute or relative to your project root):
///   // sourceDir: '/stac/',
///   // outputDir: '/stac/.build',
/// );
/// ```
class StacOptions {
  /// Creates a [StacOptions] with the given configuration.
  const StacOptions({
    required this.name,
    this.description,
    required this.projectId,
    this.apiBaseUrl = 'https://api.stac.dev',
    this.sourceDir = '/stac/',
    this.outputDir = '/stac/.build',
  });

  /// Human‑readable project name.
  final String name;

  /// Optional short description of the project.
  final String? description;

  /// Unique identifier for the project, used by tooling and integrations.
  final String projectId;

  /// Base URL used by the runtime when fetching screens and themes.
  ///
  /// Defaults to Stac Cloud. Point this at `stac dev` in debug builds to
  /// preview local screens without deploying them.
  final String apiBaseUrl;

  /// Directory path where Stac source files are located.
  ///
  /// Can be absolute or relative to your project root.
  final String sourceDir;

  /// Directory path where Stac generates build artifacts.
  ///
  /// Can be absolute or relative to your project root.
  final String outputDir;

  /// Creates a new [StacOptions] with selected fields replaced.
  StacOptions copyWith({
    String? name,
    String? description,
    String? projectId,
    String? apiBaseUrl,
    String? sourceDir,
    String? outputDir,
  }) {
    return StacOptions(
      name: name ?? this.name,
      description: description ?? this.description,
      projectId: projectId ?? this.projectId,
      apiBaseUrl: apiBaseUrl ?? this.apiBaseUrl,
      sourceDir: sourceDir ?? this.sourceDir,
      outputDir: outputDir ?? this.outputDir,
    );
  }
}
