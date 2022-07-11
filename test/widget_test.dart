import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:volantis_weather_app/main.dart';

void main() {
  testWidgets('search city', (WidgetTester tester) async {
    // find the widget's needed
    final addField = find.byKey(const ValueKey('add field'));
    final searchCity = find.byKey(const ValueKey('search city'));

    // execute the test
    await tester.pumpWidget(
      const MyApp(),
    );

    await tester.enterText(addField, 'makassar');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.tap(searchCity);
    await tester.pump(); // rebuild the widget

    // check output
    expect(find.text('makassar'), findsOneWidget);
  });
}