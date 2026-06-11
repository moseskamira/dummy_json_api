import 'package:dummy_json_api/app/router/app_router.dart';
import 'package:dummy_json_api/app/themes/app_theme.dart';
import 'package:dummy_json_api/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:dummy_json_api/features/auth/logic/auth_cubit.dart';
import 'package:dummy_json_api/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:dummy_json_api/features/profile/logic/profile_cubit.dart';
import 'package:dummy_json_api/shared/providers/app_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => AuthRepositoryImpl()),
        RepositoryProvider(create: (_) => ProfileRepositoryImpl()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (ctx) => AuthCubit(ctx.read<AuthRepositoryImpl>()),
          ),
          BlocProvider(
            create: (ctx) => ProfileCubit(ctx.read<ProfileRepositoryImpl>()),
          ),
        ],
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => AppStateProvider()),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'DummyJson Demo',
            theme: AppTheme.lightTheme(),
            themeMode: ThemeMode.light,
            routerConfig: appRouter,
          ),
        ),
      ),
    );
  }
}
