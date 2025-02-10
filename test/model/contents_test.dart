import 'package:sd_jwt_dart/src/model/contents.dart';
import 'package:test/test.dart';

void main() {
  test('Contents.toJsonList returns correct list', () {
    const contents = Contents<String>(
      '_26bc4LT-ac6q2KI6cBW5es',
      'family_name',
      'Möbius',
    );
    expect(
      contents.toJsonList,
      '["_26bc4LT-ac6q2KI6cBW5es","family_name","Möbius"]',
    );
  });
}
