import 'package:dummy_json_api/app/router/app_router.dart';
import 'package:dummy_json_api/app/themes/app_theme.dart';
import 'package:dummy_json_api/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:dummy_json_api/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [RepositoryProvider(create: (_) => AuthRepositoryImpl())],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (ctx) => AuthCubit(ctx.read<AuthRepositoryImpl>()),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme(),
          routerConfig: appRouter,
        ),
      ),
    );
  }
}
