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

  @override
  String toString() {
    return 'Disclosure{contents: $contents}';
  }
}
