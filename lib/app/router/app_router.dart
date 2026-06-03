import 'package:dummy_json_api/app/router/route_path.dart';
import 'package:dummy_json_api/features/auth/ui/pages/app_shell_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/ui/pages/login_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final appRouter = GoRouter(
  initialLocation: RoutePath.loginPage,
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      name: 'login',
      path: RoutePath.loginPage,
      builder: (_, _) => LoginPage(),
    ),
    GoRoute(
      name: 'app_shell',
      path: RoutePath.appShell,
      builder: (_, _) => AppShellPage(),
    ),
  ],
);
