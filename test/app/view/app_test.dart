import 'package:flutter_test/flutter_test.dart';
import 'package:strawberry/match/view/home_page.dart';

import '../../helpers/helpers.dart';

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpRouterApp();
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
