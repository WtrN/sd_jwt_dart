import 'package:sd_jwt_dart/src/model/contents.dart';
import 'package:sd_jwt_dart/src/model/disclosure.dart';
import 'package:test/test.dart';

void main() {
  test('Disclosure.toJsonList returns correct list', () {
    const contens = Contents(
      '_26bc4LT-ac6q2KI6cBW5es',
      'family_name',
      'Möbius',
    );
    const disclosure = Disclosure(contens);
    expect(
      disclosure.excecute(),
      'WyJfMjZiYzRMVC1hYzZxMktJNmNCVzVlcyIsImZhbWlseV9uYW1lIiwiTcO2Yml1cyJd',
    );
  });
}
