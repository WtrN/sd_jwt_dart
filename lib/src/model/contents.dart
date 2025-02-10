import 'dart:convert';
import 'dart:math';

import '../utils/salt_generator.dart';

class Contents<T> {
  const Contents(this.salt, this.key, this.value);

  factory Contents.generate({
    required String key,
    required T value,
    SaltGenerator? random,
  }) {
    final generate = random ?? SaltGenerator();
    final salt = generate.generateSecureSalt();
    return Contents(salt, key, value);
  }

  final String salt;
  final String key;
  final T value;

  String get toJsonList => jsonEncode([salt, key, value]);

  @override
  String toString() {
    return 'Contents{salt: $salt, key: $key, value: $value}';
  }
}
