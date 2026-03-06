import 'dart:convert';
import 'dart:math';

import 'package:cryptography/cryptography.dart';

String _base64UrlEncode(List<int> bytes) {
  return base64
      .encode(bytes)
      .replaceAll('+', '-')
      .replaceAll('/', '_')
      .replaceAll('=', '');
}

String generateSecureState({int bytesLength = 32}) {
  final random = Random.secure();
  final bytes = List<int>.generate(bytesLength, (_) => random.nextInt(256));
  return _base64UrlEncode(bytes);
}

String generateCodeVerifier({int bytesLength = 64}) {
  final random = Random.secure();
  final bytes = List<int>.generate(bytesLength, (_) => random.nextInt(256));
  return _base64UrlEncode(bytes);
}

Future<String> createCodeChallenge(String codeVerifier) async {
  final algorithm = Sha256();
  final hash = await algorithm.hash(utf8.encode(codeVerifier));
  return _base64UrlEncode(hash.bytes);
}
