import 'package:go_router/go_router.dart';
import 'package:strawberry/app/routing/routes.dart';
import 'package:strawberry/error/view/error_page.dart';
import 'package:strawberry/match/view/home_page.dart';
import 'package:strawberry/onboarding/view/onboarding_page.dart';
import 'package:strawberry/statistics/view/statistics_page.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home,
      builder: (_, __) => const HomePage(),
      routes: [
        GoRoute(
          path: 'stats',
          name: AppRoutes.statistics,
          builder: (_, state) => const StatisticsPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/onboarding',
      name: AppRoutes.onboarding,
      builder: (_, __) => const OnboardingPage(),
    ),
    GoRoute(
      path: '/error',
      name: AppRoutes.error,
      builder: (_, __) => const ErrorPage(),
    ),
  ],
  onException: (_, __, route) {
    route.pushNamed(AppRoutes.error);
  },
);
