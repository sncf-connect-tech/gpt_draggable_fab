/* Generated with ChatGPT : https://chat.openai.com/chat/6258744a-f9ff-4730-bf55-49251ae952d1 */
import 'package:gpt_draggable_fab/gpt_draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Floating action button is draggable',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
        home: DraggableFab(
      iconData: Icons.access_alarm,
    )));
    final fab = find.byType(FloatingActionButton);
    expect(fab, findsOneWidget);

    final fabOffset = tester.getTopLeft(fab);
    final gesture = await tester.startGesture(fabOffset);
    await tester.pumpAndSettle();

    await gesture.moveBy(const Offset(0, 100));
    await tester.pumpAndSettle();
    await tester.pumpAndSettle();

    expect(tester.getTopLeft(fab), equals(fabOffset + const Offset(0, 100)));
  });
}
