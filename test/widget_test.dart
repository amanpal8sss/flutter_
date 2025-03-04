// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.



import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pob_ui/core/widgets_keys.dart';
import 'package:pob_ui/main.dart';
import 'package:pob_ui/screens/pob/pob_page/pob_list.dart';
import 'package:pob_ui/screens/pob/pob_page/pob_new_page.dart';
import 'package:pob_ui/screens/pob/pob_page/pob_page.dart';
import 'package:pob_ui/widgets/app_custom_dialog_card.dart';

Future<void> appTest(WidgetTester tester) async {

  // Initial Build the App.
  await tester.pump();
  //default page
  expect(find.byType(PobList), findsOneWidget);
  // click on the forward arrow in the list page
  await tester.tap(find.byIcon(Icons.arrow_forward_ios_rounded).first);
  await tester.pumpAndSettle();
  expect(find.byType(PobPage), findsOneWidget);
  // click on back arrow 
  await tester.tap(find.byIcon(Icons.arrow_back));
  await tester.pumpAndSettle();
  expect(find.byType(PobList), findsOneWidget);
  //click on new button
  await tester.tap(find.text('New'));
  await tester.pumpAndSettle();
  //A Dialog will appear
  expect(find.byType(NewPOBWidget), findsOneWidget);
  await tester.tap(find.byKey(dropDownKey));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Dr. Johnson'));
  await tester.pumpAndSettle();
  //expect the selected doctor from the dropdown
  expect(find.text('Dr. Johnson'), findsOneWidget); 
  //on clicking the proceed button, the new pob page will appear 
  await tester.tap(find.byKey(proceedButtonKey));
  await tester.pumpAndSettle(); 
  expect(find.byType(PobNewPage), findsOneWidget);
  //click on back arrow to move from new pob page to pob list page
  await tester.tap(find.byIcon(Icons.arrow_back));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Cancel'));
  await tester.pumpAndSettle();
  expect(find.byType(PobList), findsOneWidget);
}


void main() {
  testWidgets('POB UI TEST', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp(
    
    ));
    await appTest(tester);
  });
}
