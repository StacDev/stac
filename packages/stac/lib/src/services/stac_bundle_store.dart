import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac/src/models/stac_bundle.dart';
import 'package:stac_logger/stac_logger.dart';

/// Storage abstraction for persisting Stac bundles on-device.
///
/// The default implementation is [SharedPreferencesBundleStore]; hosts and
/// tests can provide their own implementation via
/// `StacBundleService.store`.
abstract class StacBundleStore {
  /// Reads the persisted bundle for [projectId].
  ///
  /// Returns `null` when no bundle is stored, when the stored blob cannot
  /// be parsed, or when the stored schema version does not match.
  Future<StacBundle?> read(String projectId);

  /// Persists [bundle] for its project.
  Future<bool> write(StacBundle bundle);

  /// Removes the persisted bundle for [projectId].
  Future<bool> clear(String projectId);
}

/// [StacBundleStore] backed by SharedPreferences.
///
/// Stores the bundle blob at key `stac_bundle_{projectId}` with an int
/// schema version alongside it; a schema mismatch on read is treated as
/// an empty store.
class SharedPreferencesBundleStore implements StacBundleStore {
  /// Creates a [SharedPreferencesBundleStore] instance.
  const SharedPreferencesBundleStore();

  /// Schema version of the persisted bundle blob.
  ///
  /// Bump this when the [StacBundle] persistence format changes in a
  /// backward-incompatible way; older blobs are then treated as empty.
  static const int bundleSchemaVersion = 1;

  static String _bundleKey(String projectId) => 'stac_bundle_$projectId';

  static String _schemaKey(String projectId) => 'stac_bundle_schema_$projectId';

  @override
  Future<StacBundle?> read(String projectId) async {
    try {
      final prefs = await SharedPreferences.getInstance();

      final schemaVersion = prefs.getInt(_schemaKey(projectId));
      if (schemaVersion != bundleSchemaVersion) {
        // Missing or mismatched schema version: treat as empty.
        return null;
      }

      final blob = prefs.getString(_bundleKey(projectId));
      if (blob == null) {
        return null;
      }

      return StacBundle.fromJsonString(blob);
    } catch (e) {
      Log.w('StacBundleStore: Failed to read bundle for $projectId: $e');
      return null;
    }
  }

  @override
  Future<bool> write(StacBundle bundle) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final wroteBlob = await prefs.setString(
        _bundleKey(bundle.projectId),
        bundle.toJsonString(),
      );
      final wroteSchema = await prefs.setInt(
        _schemaKey(bundle.projectId),
        bundleSchemaVersion,
      );
      return wroteBlob && wroteSchema;
    } catch (e) {
      Log.w(
        'StacBundleStore: Failed to write bundle for ${bundle.projectId}: $e',
      );
      return false;
    }
  }

  @override
  Future<bool> clear(String projectId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final removedBlob = await prefs.remove(_bundleKey(projectId));
      final removedSchema = await prefs.remove(_schemaKey(projectId));
      return removedBlob && removedSchema;
    } catch (e) {
      Log.w('StacBundleStore: Failed to clear bundle for $projectId: $e');
      return false;
    }
  }
}
