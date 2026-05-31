import 'package:equatable/equatable.dart';

import '../data/models/login_response.dart';

class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class LoginInitial extends AuthState {
  const LoginInitial();
}

class LoginLoadingState extends AuthState {
  const LoginLoadingState();
}

class LoginSuccessState extends AuthState {
  final LoginResponse response;

  const LoginSuccessState({required this.response});

  @override
  List<Object?> get props => [response];
}

class LoginErrorState extends AuthState {
  final String message;

  const LoginErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
