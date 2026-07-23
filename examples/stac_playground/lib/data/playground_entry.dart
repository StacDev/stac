enum EntryCategory { screen, component }

/// One item in the playground index: a full screen sample or a widget
/// component example. Content comes either inline ([json]/[dartCode]) or
/// from bundled assets ([jsonAsset]/[dartAsset]).
class PlaygroundEntry {
  const PlaygroundEntry({
    required this.id,
    required this.title,
    this.description = '',
    this.category = EntryCategory.screen,
    this.json,
    this.dartCode,
    this.jsonAsset,
    this.dartAsset,
    this.icon,
    this.iconType = 'material',
  });

  final String id;
  final String title;
  final String description;
  final EntryCategory category;
  final Map<String, dynamic>? json;
  final String? dartCode;
  final String? jsonAsset;
  final String? dartAsset;

  /// Icon name rendered through Stac's icon parser (material/cupertino set).
  final String? icon;
  final String iconType;
}
