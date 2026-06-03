import 'package:dummy_json_api/app/router/route_path.dart';
import 'package:dummy_json_api/core/utils/app_snack_bar.dart';
import 'package:dummy_json_api/core/utils/common_functions.dart';
import 'package:dummy_json_api/core/utils/constants.dart';
import 'package:dummy_json_api/features/auth/data/models/login_request.dart';
import 'package:dummy_json_api/features/auth/logic/auth_cubit.dart';
import 'package:dummy_json_api/features/auth/logic/auth_state.dart';
import 'package:dummy_json_api/features/auth/ui/widgets/login_hint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/themes/app_colors.dart';
import '../../../../shared/widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  void submitLoginData() {
    if (!_formKey.currentState!.validate()) return;
    final request = LoginRequest(
      username: _userNameController.text.trim(),
      password: _passwordController.text.trim(),
    );
    context.read<AuthCubit>().login(request);
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final baseStyle = CommonFunctions.baseStyle;
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (ctx, state) {
          if (state is LoginSuccessState) {
            ctx.go(RoutePath.appShell);
          }
          if (state is LoginErrorState) {
            AppSnackBar.show(context: ctx, message: state.message);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width,
              ),
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding * 3),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Welcome Back',
                        style: baseStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text('Sign in to continue', style: baseStyle),
                      const SizedBox(height: 32),
                      CustomTextFormField(
                        controller: _userNameController,
                        validator: CommonFunctions.validateInput(
                          'UserName',
                        ).call,
                        prefix: Icon(Icons.person_2_outlined),
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        validator: CommonFunctions.validateInput(
                          'Password',
                        ).call,
                        prefix: Icon(Icons.lock_outline),
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      state is LoginLoadingState
                          ? Center(child: const CircularProgressIndicator())
                          : SizedBox(
                              width: double.infinity,
                              height: 55,
                              child: ElevatedButton(
                                onPressed: state is LoginLoadingState
                                    ? null
                                    : submitLoginData,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                      const SizedBox(height: 24),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColors.borderColor),
                        ),
                        child: const LoginHint(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
