// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:frontend_sayhello_app/main.dart';
import 'package:frontend_sayhello_app/providers/theme_provider.dart';
import 'package:frontend_sayhello_app/providers/language_provider.dart';

void main() {
  testWidgets('Landing page renders correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
          ChangeNotifierProvider(create: (_) => LanguageProvider()),
        ],
        child: const MyApp(),
      ),
    );

    // Wait for the app to settle
    await tester.pumpAndSettle();

    // Verify that the landing page is displayed
    expect(find.text('I am a Learner'), findsOneWidget);
    expect(find.text('I am an Instructor'), findsOneWidget);

    // Verify that the theme toggle button is present
    expect(find.byIcon(Icons.dark_mode), findsOneWidget);
  });

  testWidgets('Navigation to learner signin works', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
          ChangeNotifierProvider(create: (_) => LanguageProvider()),
        ],
        child: const MyApp(),
      ),
    );

    // Wait for the app to settle
    await tester.pumpAndSettle();

    // Tap the "I am a Learner" button
    await tester.tap(find.text('I am a Learner'));
    await tester.pumpAndSettle();

    // This would navigate to the learner signin page
    // You can add more specific checks here based on your signin page content
  });
}
