import 'package:flutter_test/flutter_test.dart';
import 'package:strawberry/app/app.dart';
import 'package:strawberry/match/view/home_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
