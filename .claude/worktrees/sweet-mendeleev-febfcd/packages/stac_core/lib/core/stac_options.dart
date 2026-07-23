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
    this.sourceDir = '/stac/',
    this.outputDir = '/stac/.build',
  });

  /// Human‑readable project name.
  final String name;

  /// Optional short description of the project.
  final String? description;

  /// Unique identifier for the project, used by tooling and integrations.
  final String projectId;

  /// Directory path where Stac source files are located.
  ///
  /// Can be absolute or relative to your project root.
  final String sourceDir;

  /// Directory path where Stac generates build artifacts.
  ///
  /// Can be absolute or relative to your project root.
  final String outputDir;
}
