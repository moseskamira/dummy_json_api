import 'package:dummy_json_api/app/router/app_router.dart';
import 'package:dummy_json_api/app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme(),
      routerConfig: appRouter,
    );
  }
}
