import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:blog/blog.dart';

void main() {
  testWidgets('BlogScreen renders title and button', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const WidgetWrapper(child: BlogScreen()));

    expect(find.text('BlogStore'), findsOneWidget);
    expect(find.text('Explore Posts'), findsOneWidget);
  });
}

class WidgetWrapper extends StatelessWidget {
  final Widget child;
  const WidgetWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: child);
  }
}
