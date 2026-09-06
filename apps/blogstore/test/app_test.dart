import 'package:flutter_test/flutter_test.dart';
import 'package:blogstore/main.dart';

void main() {
  testWidgets('BlogStoreApp smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const BlogStoreApp());
    expect(find.text('BlogStore'), findsOneWidget);
  });
}
