import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

class SaltGenerator {
  String generateSecureSalt([int length = 16]) {
    final random = Random.secure();
    final values = List<int>.generate(length, (i) => random.nextInt(256));
    final bytes = Uint8List.fromList(values);
    return base64UrlEncode(bytes).replaceAll('=', '');
  }
}
