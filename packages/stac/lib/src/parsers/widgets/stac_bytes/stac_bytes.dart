import 'dart:convert';
import 'dart:typed_data';

class StacBytes {
  final Uint8List _bytes;

  const StacBytes(this._bytes);

  factory StacBytes.fromJson(dynamic json) => _fromJson(json);

  static StacBytes _fromJson(dynamic json) {
    if (json is String) {
      // Decode from base64 string
      try {
        return StacBytes(base64Decode(json));
      } catch (e) {
        throw ("Error decoding base64 string for StacBytes: $json");
      }
    } else if (json is List<int>) {
      // Support if JSON decoder returns list of ints (rare for Uint8List)
      return StacBytes(Uint8List.fromList(json));
    }
    throw ("Unsupported StacBytes value: $json");
  }

  dynamic toJson() {
    // Encode bytes to base64 string for JSON transport
    return base64Encode(_bytes);
  }

  Uint8List get bytes => _bytes;
}

extension StacBytesParser on StacBytes {
  Uint8List get parse => _bytes;
}
