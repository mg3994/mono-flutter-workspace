import 'package:flutter_test/flutter_test.dart';
import 'package:domain/domain.dart';

void main() {
  test('Result success instantiation test', () {
    const result = Result.success('test_data');
    expect(result.isSuccess, isTrue);
    expect(result.dataOrNull, equals('test_data'));
  });
}
