import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mybutton_lib/mybutton_lib.dart';

void main() {
  group('CustomButton Tests', () {
    // tes tampiliin text label di button
    testWidgets('CustomButton renders with correct label', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomButton(label: 'Click Me', onPressed: () {}),
          ),
        ),
      );

      expect(find.text('Click Me'), findsOneWidget);
    });

    // test warna default(warna biru)
    testWidgets('CustomButton uses default blue color', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomButton(label: 'Test Button', onPressed: () {}),
          ),
        ),
      );

      final buttonFinder = find.byType(ElevatedButton);
      expect(buttonFinder, findsOneWidget);

      final button = tester.widget<ElevatedButton>(buttonFinder);
      expect(button.style?.backgroundColor?.resolve({}), Colors.blue);
    });

    // test warna custom
    testWidgets('CustomButton uses custom color when provided', (
      WidgetTester tester,
    ) async {
      const customColor = Colors.red;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomButton(
              label: 'Red Button',
              onPressed: () {},
              color: customColor,
            ),
          ),
        ),
      );

      final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      expect(button.style?.backgroundColor?.resolve({}), customColor);
    });

    // tes onpressed ke trigger
    testWidgets('CustomButton callback is triggered on press', (
      WidgetTester tester,
    ) async {
      bool wasPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomButton(
              label: 'Press Me',
              onPressed: () {
                wasPressed = true;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(wasPressed, isTrue);
    });

    // test default warna text dan font weight
    testWidgets('CustomButton has correct text styling', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomButton(label: 'Styled Button', onPressed: () {}),
          ),
        ),
      );

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.color, Colors.brown);
      expect(textWidget.style?.fontWeight, FontWeight.w600);
    });

    // test custom padding
    testWidgets('CustomButton has correct padding', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomButton(label: 'Padded Button', onPressed: () {}),
          ),
        ),
      );

      final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      final padding = button.style?.padding?.resolve({});

      expect(padding, const EdgeInsets.symmetric(horizontal: 24, vertical: 12));
    });

    // test ujung button tumpul/border radius
    testWidgets('CustomButton has rounded corners', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomButton(label: 'Rounded Button', onPressed: () {}),
          ),
        ),
      );

      final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      final shape = button.style?.shape?.resolve({}) as RoundedRectangleBorder?;

      expect(shape?.borderRadius, BorderRadius.circular(8));
    });
  });
}
