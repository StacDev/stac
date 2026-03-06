import 'package:interact/interact.dart';
import 'package:stac_cli/src/models/project/project.dart';
import 'package:stac_cli/src/models/project/project_access.dart';

import '../exceptions/stac_exception.dart';
import '../utils/console_logger.dart';
import '../utils/http_client.dart';

/// Service for managing Stac SDUI projects on the cloud
class ProjectService {
  final HttpClientService _httpClient = HttpClientService.instance;

  /// Fetch all projects from Firebase Functions (requires Firebase ID token)
  Future<List<Project>> fetchProjects({
    ProjectAccess minAccess = ProjectAccess.editor,
  }) async {
    try {
      ConsoleLogger.debug('Fetching projects from cloud functions...');

      final response = await _httpClient.get(
        '/projects',
        queryParameters: {'minAccess': minAccess.name},
      );
      final data = response.data as Map<String, dynamic>;
      final projectsJson = (data['projects'] as List?) ?? const [];

      return projectsJson
          .map((json) => Project.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw StacException('Failed to fetch projects: $e', cause: e);
    }
  }

  /// Create a new project via Firebase Functions
  Future<Project> createProject({
    required String name,
    required String description,
  }) async {
    try {
      final slug = _generateSlug(name);
      ConsoleLogger.debug('Creating project: $name (slug: $slug)');

      final response = await _httpClient.post(
        '/projects',
        data: {'name': name, 'slug': slug, 'description': description},
      );

      return Project.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw StacException('Failed to create project: $e', cause: e);
    }
  }

  /// Show interactive project selection menu
  Future<Project?> selectProjectInteractively() async {
    List<Project> projects = [];

    await ConsoleLogger.showLoader(
      'Fetching projects from Stac cloud',
      () async {
        projects = await fetchProjects();
      },
    );

    if (projects.isEmpty) {
      ConsoleLogger.info('No projects found. Create a new project first.');
      return null;
    }

    final options = projects.map((p) => p.name).toList();
    final selection = Select(
      prompt: 'Select a project to initialize:',
      options: options,
    ).interact();

    return projects[selection];
  }

  /// Generate URL-friendly slug from project name
  static String _generateSlug(String name) {
    final slug = name
        .toLowerCase()
        .replaceAll(_nonAlphanumericRegex, '')
        .replaceAll(_whitespaceRegex, '-')
        .replaceAll(_multipleHyphensRegex, '-')
        .trim();

    if (slug.isEmpty) {
      throw StacException(
        'Project name must contain at least one alphanumeric character',
      );
    }
    return slug;
  }

  static final _nonAlphanumericRegex = RegExp(r'[^a-z0-9\s-]');
  static final _whitespaceRegex = RegExp(r'\s+');
  static final _multipleHyphensRegex = RegExp(r'-+');
}
