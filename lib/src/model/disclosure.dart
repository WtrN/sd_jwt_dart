import 'dart:convert';

import 'package:crypto/crypto.dart';

import 'contents.dart';

class Disclosure {
  const Disclosure(this.contents);

  final Contents contents;

  String excecute() {
    final target = contents.toJsonList;
    return base64UrlEncode(utf8.encode(target)).replaceAll('=', '');
  }

  String toHash() {
    final bytes = excecute().codeUnits;
    final digest = sha256.convert(bytes);
    return base64UrlEncode(digest.bytes).replaceAll('=', '');
  }

  @override
  String toString() {
    return 'Disclosure{contents: $contents}';
  }
}
