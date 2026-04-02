/// Optional runtime capability for parsers that can provide JSON Schema.
///
/// Parsers implementing this interface can override generated default schemas
/// in registry lookups.
abstract interface class StacSchemaProvider {
  /// JSON Schema describing the parser's model contract.
  Map<String, dynamic> get jsonSchema;
}
