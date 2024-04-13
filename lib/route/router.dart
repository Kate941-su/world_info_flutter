import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:rate_converter_flutter/ui/main_screen.dart';
import 'package:rate_converter_flutter/ui/result_page/result_page.dart';

import '../ui/setting_page/setting_page.dart';

enum AppPages {
  splash,
  main,
  result,
  information;

  String get path {
    switch (this) {
      case AppPages.main:
        return '/';
      case AppPages.splash:
        return '/splash';
      case AppPages.result:
        return '/result';
      case AppPages.information:
        return '/information';
    }
  }

  String get name {
    switch (this) {
      case AppPages.main:
        return 'home';
      case AppPages.splash:
        return 'splash';
      case AppPages.result:
        return 'result';
      case AppPages.information:
        return 'information';
    }
  }
}

class AppRouter {
  static get goRouter => _goRouter;

  AppRouter._();

  static final GoRouter _goRouter =
      GoRouter(initialLocation: AppPages.main.path, routes: <GoRoute>[
    GoRoute(
        path: AppPages.main.path,
        name: AppPages.main.name,
        builder: (context, state) => const MainScreen()),
    GoRoute(
        path: AppPages.result.path,
        name: AppPages.result.name,
        builder: (context, state) => const ResultPage()),
    GoRoute(
        path: AppPages.splash.path,
        name: AppPages.splash.name,
        builder: (context, state) => const Placeholder()),
    GoRoute(
        path: AppPages.information.path,
        name: AppPages.information.name,
        builder: (context, state) => const SettingPage()),
  ]);
}