// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:cold_turkey_remote_controller/main.dart';

void main() {
  testWidgets('Home page shows block controls', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.text('Enter the block you want to change:'), findsOneWidget);
    expect(find.text('Enter text'), findsOneWidget);
    expect(find.text('Submit'), findsOneWidget);
    expect(find.text('Add exception to block'), findsOneWidget);
    expect(find.text('Unlock block'), findsOneWidget);
  });

  testWidgets('Add exception button opens add exception page', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Add exception to block'));
    await tester.pumpAndSettle();

    expect(find.byType(AddExceptionPage), findsOneWidget);
  });

  testWidgets('Unlock block button opens unlock page', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Unlock block'));
    await tester.pumpAndSettle();

    expect(find.byType(UnlockPage), findsOneWidget);
  });
}
