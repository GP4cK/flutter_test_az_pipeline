import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_az_pipeline/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('golden test', (tester) async {
    await tester.pumpWidget(const MyApp());
    await expectLater(
        find.byType(MaterialApp), matchesGoldenFile('golden/test.png'));
  });

  test('failing test', () {
    expect(1, 2);
  });
}
