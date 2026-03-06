enum ProjectAccess {
  owner,
  admin,
  editor,
  viewer;

  /// Returns the numeric value for comparison
  /// Owner (4) > Admin (3) > Editor (2) > Viewer (1)
  int get value {
    switch (this) {
      case ProjectAccess.owner:
        return 4;
      case ProjectAccess.admin:
        return 3;
      case ProjectAccess.editor:
        return 2;
      case ProjectAccess.viewer:
        return 1;
    }
  }

  /// Compares two ProjectAccess values
  /// Returns true if this access level is greater than the other
  bool operator >(ProjectAccess other) => value > other.value;

  /// Compares two ProjectAccess values
  /// Returns true if this access level is greater than or equal to the other
  bool operator >=(ProjectAccess other) => value >= other.value;

  /// Compares two ProjectAccess values
  /// Returns true if this access level is less than the other
  bool operator <(ProjectAccess other) => value < other.value;

  /// Compares two ProjectAccess values
  /// Returns true if this access level is less than or equal to the other
  bool operator <=(ProjectAccess other) => value <= other.value;

  /// Compares two ProjectAccess values
  /// Returns true if this access level is equal to the other
  bool isEqual(ProjectAccess other) => value == other.value;

  /// Returns all access levels that are lower than the current one
  List<ProjectAccess> lowerLevels() {
    return ProjectAccess.values.where((access) => access < this).toList();
  }
}
