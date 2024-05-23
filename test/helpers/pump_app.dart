import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:strawberry/app/app.dart';
import 'package:strawberry/app/routing/app_router.dart';
import 'package:strawberry/app/routing/routes.dart';
import 'package:strawberry/l10n/l10n.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }

  Future<void> pumpRouterApp() {
    goRouter.goNamed(AppRoutes.home);
    return pumpWidget(const App());
  }
}
