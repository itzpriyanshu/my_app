import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/app/app.dart';

// ignore: unused_import
import 'package:my_app/main.dart';

void main() {
  testWidgets('Flutter Learn test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.byType(Container), findsOneWidget);
    expect(find.byType(Container), findsOneWidget);
  });
}
