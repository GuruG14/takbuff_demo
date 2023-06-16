import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/tournament.dart';
// import 'package:ttl_app_code/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // group('end-to-end test', () {
  //   testWidgets('tap on the floating action button, verify counter',
  //       (tester) async {
  //     app.main();
  //     await tester.pumpAndSettle();

  //     // Verify the counter starts at 0.
  //     expect(find.text('0'), findsOneWidget);

  //     // Finds the floating action button to tap on.
  //     final Finder fab = find.byTooltip('Increment');

  //     // Emulate a tap on the floating action button.
  //     await tester.tap(fab);

  //     // Trigger a frame.
  //     await tester.pumpAndSettle();

  //     // Verify the counter increments by 1.
  //     expect(find.text('1'), findsOneWidget);

  //     await tester.tap(fab);

  //     await tester.pumpAndSettle();

  //     expect(find.text('2'), findsOneWidget);
  //   });
  // });
  group('tournament get dates', () {
    testWidgets('two dates are same - print any one date -> MMM DD YYYY',
        (tester) async {
      Tournament tour = Tournament("", "", "", DateTime.parse('2023-08-24'),
          DateTime.parse('2023-08-24'), "", []);

      String dateRange = tour.getDates();

      expect("Aug 24 2023", dateRange);
    });
    testWidgets(
        ' two dates are same year, month but different date -> MMM DD - DD YYYY',
        (tester) async {
      Tournament tour = Tournament('', '', '', DateTime.parse('2023-08-24'),
          DateTime.parse('2023-08-25'), '', []);
      String dateRange = tour.getDates();
      expect("Aug 24 - 25 2023", dateRange);
    });
    testWidgets(
        'two dates are same year, but different month -> MMM DD - MMM DD YYYY',
        (tester) async {
      Tournament tour = Tournament('', '', '', DateTime.parse('2023-08-24'),
          DateTime.parse('2023-09-25'), '', []);
      String dateRange = tour.getDates();
      expect("Aug 24 - Sept 25 2023", dateRange);
    });
    testWidgets('two dates with diferent years ->  MMM DD YYYY - MMM DD YYYY',
        (tester) async {
      Tournament tour = Tournament('', '', '', DateTime.parse('2023-08-24'),
          DateTime.parse('2024-09-25'), '', []);
      String dateRange = tour.getDates();
      expect("Aug 24 2023 - Sept 25 2024", dateRange);
    });
  });
}
