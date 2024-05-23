import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:strawberry/app/routing/routes.dart';
import 'package:strawberry/error/view/error_page.dart';
import 'package:strawberry/match/view/home_page.dart';
import 'package:strawberry/onboarding/view/onboarding_page.dart';
import 'package:strawberry/statistics/view/statistics_page.dart';

import '../../helpers/helpers.dart';

void main() {
  group('AppRouter', () {
    testWidgets('finds HomePage', (tester) async {
      await tester.pumpRouterApp();
      expect(find.byType(HomePage), findsOneWidget);
    });

    testWidgets('finds nested route for StatisticsPage', (tester) async {
      await tester.pumpRouterApp();
      tester.element(find.byType(HomePage)).goNamed(AppRoutes.statistics);
      await tester.pumpAndSettle();
      expect(find.byType(StatisticsPage), findsOneWidget);
    });

    testWidgets('finds OnboardingPage', (tester) async {
      await tester.pumpRouterApp();
      tester.element(find.byType(HomePage)).goNamed(AppRoutes.onboarding);
      await tester.pumpAndSettle();
      expect(find.byType(OnboardingPage), findsOneWidget);
    });

    testWidgets('displays ErrorPage on unknown location', (tester) async {
      await tester.pumpRouterApp();
      tester.element(find.byType(HomePage)).go('unknown');
      await tester.pumpAndSettle();
      expect(find.byType(ErrorPage), findsOneWidget);
    });
  });
}
