// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main() {
  testWidgets('Redux Dev Tools show the current action',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(new FlutterReduxApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsWidgets);
    expect(find.text('1'), findsNothing);

    // Tap the 'Increment' button and trigger a frame.
    await tester.tap(find.text("Increment"));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsWidgets);
  });
}