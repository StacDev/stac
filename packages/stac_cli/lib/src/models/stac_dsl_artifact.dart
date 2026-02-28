/// Represents an annotated callable (screen or theme) discovered in Stac DSL.
class StacDslArtifact {
  final StacDslArtifactType type;

  /// Function or getter name to invoke.
  final String callableName;

  /// Human-readable identifier (screenName or themeName).
  final String artifactName;

  /// Whether this callable should be read as a getter instead of invoked.
  final bool isGetter;

  const StacDslArtifact({
    required this.type,
    required this.callableName,
    required this.artifactName,
    this.isGetter = false,
  });

  factory StacDslArtifact.screen({
    required String functionName,
    required String screenName,
    bool isGetter = false,
  }) {
    return StacDslArtifact(
      type: StacDslArtifactType.screen,
      callableName: functionName,
      artifactName: screenName,
      isGetter: isGetter,
    );
  }

  factory StacDslArtifact.theme({
    required String memberName,
    required String themeName,
    required bool isGetter,
  }) {
    return StacDslArtifact(
      type: StacDslArtifactType.theme,
      callableName: memberName,
      artifactName: themeName,
      isGetter: isGetter,
    );
  }

  String get logLabel =>
      type == StacDslArtifactType.screen ? 'screen' : 'theme';

  String get resultKeyPrefix =>
      type == StacDslArtifactType.screen ? 'screens' : 'themes';
}

enum StacDslArtifactType { screen, theme }
